# Crime Tracker

**Illinois Uniform Crime Reporting (IUCR)** codes are four digit codes that law enforcement agencies use to classify criminal incidents when taking individual reports. These codes are also used to aggregate types of cases for statistical purposes. In Illinois, the Illinois State Police establish IUCR codes, but the agencies can add codes to suit their individual needs.  

The Chicago Police Department currently uses more than 350 IUCR codes to classify criminal offenses, divided into “Index” and “Non-Index” offenses. Index offenses are the offenses that are collected nation-wide by the Federal Bureaus of Investigation’s Uniform Crime Reports program to document crime trends over time (data released semi-annually), and include murder, criminal sexual assault, robbery, aggravated assault & battery, burglary, theft, motor vehicle theft, and arson. Non-index offenses are all other types of criminal incidents, including vandalism, weapons violations, public peace violations, etc.

## CLEAR

*Citizen Law Enforcement Analysis and Reporting*  

http://gis.chicagopolice.org/website/clearMap/viewer.htm?POLICEBEAT=1923&CRIMECODE=01A%2002%2003%2004A%2004B%2005%2006%2007%2009&DATEFROM=2013-10-01&DATETO=2013-10-14

### Disclaimer and Restriction of Use: 

This web application allows the public to query the Chicago Police Department's database of reported crime. The information on this web page is also accessible through the Chicago Police Department's Records Division.  

This data reflects crimes as reported to the police as of the current date, occurring during the selected date range for the selected area. These crimes are based upon preliminary information supplied to the Police Department by the reporting parties and have not all been verified. The preliminary crime classifications may be changed at a later date based upon additional investigation and there is always the possibility of mechanical or human error. Therefore, the Chicago Police Department does not guarantee (either expressed or implied) the accuracy, completeness, timeliness, or correct sequencing of the information and the information should not be used for comparison purposes over time. The summary counts shown on this web site should not be considered as official Chicago Police Department statistics. The Chicago Police Department will not be responsible for any error or omission, or for the use of, or the results obtained from the use of this information. All data visualizations on maps should be considered approximate.  

The Chicago Police Department is not responsible for the content of any off-site pages that are referenced by or that reference to this web page other than an official City of Chicago or Chicago Police Department web page. The user specifically acknowledges that the Chicago Police Department is not responsible for any defamatory, offensive, misleading, or illegal conduct of other users, links, or third parties and that the risk of injury from the foregoing rests entirely with the user. Any use of the information for commercial purposes is strictly prohibited. The unauthorized use of the words "Chicago Police Department," " Chicago Police," or any colorable imitation of these words or the unauthorized use of the Chicago Police Department logo is unlawful. This web page does not, in any way, authorize such use.  

## CLEAR DATA
case  
date  
block  
code  
crime_type  
secondary  
arrest  
location  
domestic  
beat  
ward  
nibrs  

http://api1.chicagopolice.org/clearpath/api/1.0/crimes/list?dateOccurred=10-01-2013&max=20&offset=20