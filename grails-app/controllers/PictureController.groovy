class PictureController {

    //def scaffold = true

  def flickrService



    def showBlack = {




    println "the param is " +  params["fid"]
    def fid =   params["fid"]
    String refer = request.getHeader('referer')
    Map resultMap =   flickrService.retrieveFlickrURL(fid,refer)
    return resultMap


  }

    def galleria = {}

    def show= {

      println "the param is " +  params["fid"] 
      
    }

}
