package DTO;

public class ImageDTO {
	private String aptname;
    private String imageurl;
    
    public ImageDTO() {
    	
    }

	public ImageDTO(String aptname, String imageurl) {
		super();
		this.aptname = aptname;
		this.imageurl = imageurl;
	}

	public String getAptname() {
		return aptname;
	}

	public void setAptname(String aptname) {
		this.aptname = aptname;
	}

	public String getImageurl() {
		return imageurl;
	}

	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
    
	
    
}
