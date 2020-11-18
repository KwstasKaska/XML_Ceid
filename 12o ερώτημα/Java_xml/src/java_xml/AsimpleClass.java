package java_xml;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class AsimpleClass {

	public static void main(String[] args) {
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse("10_schedule.xml");
			NodeList lessonList = doc.getElementsByTagName("Schedule");
			for(int i=0;i<lessonList.getLength();i++) 
			{
			Node l= lessonList.item(i);
				if(l.getNodeType()==Node.ELEMENT_NODE) {
				Element schedule = (Element) l ;
				System.out.println(schedule.getTagName()+":");
				
				NodeList ldetails = l.getChildNodes();
					for(int j=0;j<ldetails.getLength();j++) {
					Node  detail = ldetails.item(j);
						if(detail.getNodeType() == Node.ELEMENT_NODE) {
							Element detailElement = (Element) detail;
							System.out.println("\t"+ detailElement.getTagName()+" "+":"+" " );
							
							NodeList moredetails = detail.getChildNodes();
							for(int z=0;z<moredetails.getLength();z++) {
								Node fin = moredetails.item(z);
								if(fin.getNodeType() == Node.ELEMENT_NODE) {
									Element finElement = (Element) fin;
									String attribute = finElement.getAttribute("Classroom");
									System.out.println("\t\t"+finElement.getTagName()+""+":"+""+attribute+""+finElement.getTextContent());
									
									NodeList finn = fin.getChildNodes();
									for(int k=0;k<finn.getLength();k++) {
										Node last = finn.item(k);
										if(last.getNodeType() == Node.ELEMENT_NODE) {
											Element lastElement = (Element) last ;
											System.out.println("\t\t\t"+lastElement.getTagName()+""+":"+""+lastElement.getTextContent());
										}
									}
								}
							}	
						}
					}
				}
			}
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
	}

}
