package bean;

import java.util.ArrayList;

public class Photo {

	private int id;
	private String title;
	private String url;
	private String uploader;
	private ArrayList<String> tags = new ArrayList<String>();
	private String privacy;
	private String description;

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUploader() {
		return uploader;
	}
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}
	public ArrayList<String> getTags() {
		return tags;
	}
	public void setTags(String tag) {
		tags.add(tag);
	}
	public String getPrivacy() {
		return privacy;
	}
	public void setPrivacy(String privacy) {
		this.privacy = privacy;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
