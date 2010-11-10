class GalleryController {
  def flickrService

    def index = { }
    def random ={

     def id = flickrService.retrieveLocalGallery()
      def imgurl = "${request.getContextPath()}/images/localGallery/img${id}.jpg"
      def bigurl = "${request.getContextPath()}/images/localGallery/big/img${id}.jpg"
     [imgurl:imgurl,id:id,bigurl:bigurl]


    }
}

