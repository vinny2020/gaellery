import grails.test.*

class PictureTests extends GrailsUnitTestCase {


    protected void setUp() {
        super.setUp()
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testGetSizes() {
    def pid = "3520616727"
    println "The Photo ID is " + pid
    String url = "http://api.flickr.com/services/rest/?api_key=${fid}&method=flickr.photos.getsizes&photo_id=${pid}"
    String xml = new URL(url).text
    def sizes = new XmlSlurper().parseText(xml).sizes

    def photopage = "http://www.flickr.com/photos/ghettojava/" + pid + "/"

    def flickrLink = sizes.size[4].@source

    println "the link is " + flickrLink

    }

  void testSelects() {
       //http://farm4.static.flickr.com/3341/3520616727_574944d71d_b.jpg
       List ids  = new ArrayList()
       def photoset_id = "72157614529783914"
       String url = "http://api.flickr.com/services/rest/?api_key=${fid}&method=flickr.photosets.getPhotos&per_page=20&extras=url_s,&photoset_id=${photoset_id}"
       //println "the link is " + url
       String xml = new URL(url).text
       println xml
       def photoset = new XmlSlurper().parseText(xml).photoset
       //println "the best id is " + photoset.photo[0].@id
    for(photo in photoset.photo) {

      //String urlString = "http://farm${photo.@farm}.static.flickr.com/${photo.@server}/${photo.@id}_${photo.@secret}_t.jpg"
      String   urlString =    photo.@url_s
      ids.add(urlString)
    }
    println ids.dump()
  }

  void testRandomLink() {
                List ids  = new ArrayList()
       def photoset_id = "72157614529783914"
       String url = "http://api.flickr.com/services/rest/?api_key=${fid}&method=flickr.photosets.getPhotos&per_page=20&extras=url_s,&photoset_id=${photoset_id}"
       //println "the link is " + url
       String xml = new URL(url).text
       println xml
       def photoset = new XmlSlurper().parseText(xml).photoset
       //println "the best id is " + photoset.photo[0].@id
    for(photo in photoset.photo) {

      //String urlString = "http://farm${photo.@farm}.static.flickr.com/${photo.@server}/${photo.@id}_${photo.@secret}_t.jpg"
      String   urlString =    photo.@url_s
      ids.add(urlString)
    }


    Integer which =  Math.floor(Math.random() * ids.size())
    print ids.get(which)


  }


}
