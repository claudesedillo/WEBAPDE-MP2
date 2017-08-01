package service;

import java.util.ArrayList;

import bean.Photo;

public class PhotoService {
	
	ArrayList<Photo> photos = new ArrayList<Photo>();
	
	public PhotoService() {
		Photo photo1 = new Photo();
		Photo photo2 = new Photo();
		Photo photo3 = new Photo();
		Photo photo4 = new Photo();
		Photo photo5 = new Photo();
		Photo photo6 = new Photo();
		Photo photo7 = new Photo();
		Photo photo8 = new Photo();		
		
		photos.add(photo1);
		photos.add(photo2);
		photos.add(photo3);
		photos.add(photo4);
		photos.add(photo5);
		photos.add(photo6);
		photos.add(photo7);
		photos.add(photo8);
		
		photo1.setTitle("photo 1");
		photo1.setDescription("first photo");
		photo1.setUploader("User 1");
		photo1.setUrl("img\\public\\000018.JPG");
		photo1.setTags("Outdoor");
		photo1.setTags("Nature");
		photo1.setPrivacy("public");
		
		photo2.setTitle("photo 2");
		photo2.setDescription("second photo");
		photo2.setUploader("User 2");
		photo2.setUrl("img\\public\\000019.JPG");
		photo2.setTags("Outdoor");
		photo2.setTags("Philosophy");
		photo2.setPrivacy("public");
		
		photo3.setTitle("photo 3");
		photo3.setDescription("third photo");
		photo3.setUploader("User 3");
		photo3.setUrl("img\\public\\000023.JPG");
		photo3.setTags("Indoor");
		photo3.setTags("Food");
		photo3.setPrivacy("public");
		
		photo4.setTitle("photo 4");
		photo4.setDescription("fourth photo");
		photo4.setUploader("User 4");
		photo4.setUrl("webContent\\img\\00660003.jpg");
		photo4.setTags("Family");
		photo4.setPrivacy("public");
		
		photo5.setTitle("photo 5");
		photo5.setDescription("fifth photo");
		photo5.setUploader("User 1");
		photo5.setUrl("webContent\\img\\DP.png");
		photo5.setTags("Work");
		photo5.setTags("Food");
		photo5.setPrivacy("private");
	
		photo6.setTitle("photo 6");
		photo6.setDescription("sixth photo");
		photo6.setUploader("User 2");
		photo6.setUrl("webContent\\img\\Screen Shot 2017-07-23 at 2.32.32 PM.png");
		photo6.setTags("Music");
		photo6.setTags("Fun");
		photo6.setPrivacy("private");
	
		photo7.setTitle("photo 7");
		photo7.setDescription("seventh photo");
		photo7.setUploader("User 3");
		photo7.setUrl("webContent\\img\\Screen Shot 2017-07-26 at 11.04.59 PM.png");
		photo7.setTags("Outdoor");
		photo7.setTags("Vacation");
		photo7.setPrivacy("private");
		
		photo8.setTitle("photo 8");
		photo8.setDescription("eighth photo");
		photo8.setUploader("User 4");
		photo8.setUrl("webContent\\img\\Screen Shot 2017-07-23 at 11.05.12 PM.png");
		photo8.setTags("Work");
		photo8.setTags("Food");
		photo8.setPrivacy("private");
	}
	public ArrayList<Photo> getPhotos() {
		return photos;
	}
	public void setPhotos(ArrayList<Photo> photos) {
		this.photos = photos;
	}
	public static void sortByUploader(ArrayList<Photo> photoList, String username) {
		System.out.println("============================================================");
		System.out.println("Filter by uploader");
		for(Photo p: photoList) {

			if(p.getUploader().equals(username)) {
				System.out.println(p.getTitle());
				System.out.println("Uploaded by: " + p.getUploader());
				System.out.println(p.getDescription());
				System.out.println("Privacy setting: " + p.getPrivacy());
				System.out.println("Tags");
				for(String tag: p.getTags()) {
					System.out.println(tag);
				}
			}
			System.out.println();
		}
		System.out.println("============================================================");
	}
	
	public static void sortPublic(ArrayList<Photo> photoList) {
		System.out.println("============================================================");
		System.out.println("Sort Public");
		for(Photo p: photoList) {
			if(p.getPrivacy().equals("public")) {
				System.out.println(p.getTitle());
				System.out.println("Uploaded by: " + p.getUploader());
				System.out.println(p.getDescription());
				System.out.println("Privacy setting: " + p.getPrivacy());
				System.out.println("Tags");
				for(String tag: p.getTags()) {
					System.out.println(tag);
				}
			}
			System.out.println();
		}
		System.out.println("============================================================");
	}
	
	public ArrayList<Photo> filterByTag(String tag) {
		ArrayList<Photo> returnList = new ArrayList<Photo>();
		for(Photo p: photos) {
			for(String s: p.getTags()) {
				if(s.equals(tag)) {
					returnList.add(p);
					System.out.println("Found photo with tag " + tag + ". Uploaded by " + p.getUploader());
				}
			}
		}
		if (returnList.size() != 0)
			return returnList;
		else
			return null;
	}
	
	public static void main(String[] args) {
		PhotoService ps = new PhotoService();
		ps.filterByTag("Nature");
	}
}
