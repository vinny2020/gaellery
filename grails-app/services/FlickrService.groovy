import java.util.Random

class FlickrService {

  boolean transactional = false
  def flickrID
  def referrer

   Map retrieveFlickrURL(String fid, String refer) {
    flickrID = fid
    referrer = refer
    String flickrLink
    String[] parts
    def pid


    if (flickrID != null ) {

      pid = flickrID
      println "valid param recieved in Service " + pid 
    }

    else if (referrer != null) {

      parts = referrer.split('/')

      if ((parts != null) && parts.length > 5) {
        pid = parts[5]
      }
      else {
        pid = "3520616727"
      }


    }
    else {
      pid = "3520616727"

    }


    //println "The Photo ID is " + pid
    String url = "http://api.flickr.com/services/rest/?api_key=${fid}&method=flickr.photos.getsizes&photo_id=${pid}"
    String xml = new URL(url).text
    def sizes = new XmlSlurper().parseText(xml).sizes
    //println "the best size is " + sizes.size[4].@source
    def photopage = "http://www.flickr.com/photos/ghettojava/" + pid + "/"

    flickrLink = sizes.size[4].@source

   // println "the link is " + flickrLink

    return [flickrLink: flickrLink, photopage: photopage]

  }

   List retrieveSelects(String flickUser) {
       List urls   = new ArrayList()
       def photoset_id = "72157614529783914"
       def dragonset_id = "72157622163739281"

       String url = "http://api.flickr.com/services/rest/?api_key=${fid}&method=flickr.photosets.getPhotos&per_page=20&extras=url_s,&photoset_id=${photoset_id}"
       //println "the link is " + url
       String xml = new URL(url).text
       //println "xml is "  + xml
       def photoset = new XmlSlurper().parseText(xml).photoset
       for(photo in photoset.photo) {
         String   urlString =    photo.@url_s
       urls.add(urlString)
      }
    return  photoIDs

  }

   List retrieveFavorites(String flickUser) {


  }

   List  retrieveCommented(String flickUser) {

  }

   def retrieveLocalGallery()  {
     //local files

      Random rand = new Random()
 int max = 32
 return rand.nextInt(max+1)   +1

  }
  Map retrieveRandomFrontImage(){
        Map info  = new HashMap()
       def photoset_id = "72157614529783914"
      // def dragonset_id = "72157622163739281"
       String url = "http://api.flickr.com/services/rest/?api_key=${fid}&method=flickr.photosets.getPhotos&per_page=20&extras=tags,title,url_m,&photoset_id=${photoset_id}"
       //println "the link is " + url
       String xml = new URL(url).text
      //debug
      //println xml
       def photoset = new XmlSlurper().parseText(xml).photoset
       //println "the best id is " + photoset.photo[0].@id

     Integer which =  Math.floor(Math.random() * 20)

   // println "which is "  + which
     def counter =0



    for(photo in photoset.photo) {

     // println "couter:  "  + counter
         if(counter == which ) {
         //  print "the random number is " + which
      //String urlString = "http://farm${photo.@farm}.static.flickr.com/${photo.@server}/${photo.@id}_${photo.@secret}_t.jpg"
      String   urlString =    photo.@url_m
      info.put("urlString",urlString)
      info.put("title",photo.@title)
      String taglist =  photo.@tags
     // println taglist
      info.put("tagList",taglist)
      info.put("id",photo.@id)
         }
      counter++

    }



   //println "random number is " +  which
 //  println "the obj is  " +  info
    return info
  }


}
