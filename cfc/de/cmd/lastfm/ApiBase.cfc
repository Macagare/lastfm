/**
*
* @file  cfc/de/cmd/lastfm/ApiBase.cfc
* @author  Christian Mueller
* @description Base class for last.fm API, for more information see: http://www.lastfm.de/api/
*
*/

component output="false" displayname=""  {

    property string AUTHENTIFICATION_URL;
    property string AUTHENTIFICATION_ID;
    property string AUTHENTIFICATION_CALLBACK;

    public function init(){
        AUTHENTIFICATION_URL      = "http://www.last.fm/api/auth/?api_key="
        AUTHENTIFICATION_ID       = "";
        AUTHENTIFICATION_CALLBACK = "http://localhost:8888";
        return this;
    }


    /**
    * Request authorisation for last.fm user account. This is not a webserice. Instead this method will forward the user to last.fm and grant access to his account.
    */
    public void function requestAuthorisation() {
        location("#AUTHENTIFICATION_URL##AUTHENTIFICATION_ID#&cb=#AUTHENTIFICATION_CALLBACK#";
    }
}