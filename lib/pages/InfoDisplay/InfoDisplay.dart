import 'package:flutter/material.dart';

// Class for displaying information list
class InfoDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          // Build list item for Breast Self Examination
          _buildListItem(
              context,
              "Breast Self Examination (BSE)",
              "assets/logob1.png",
              DetailPage(title: "Breast Self Examination (BSE) Details")),
          SizedBox(height: 20),
          // Build list item for another topic (replace with your content)
          _buildListItem(context, "What is screening", "assets/logob1.png",
              secondPage(title: "What is screening")),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  // Function to build a single list item
  Widget _buildListItem(BuildContext context, String title, String imagePath,
      Widget destinationPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationPage),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFCFDF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipOval(
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}

// Class for displaying details of a topic (BSE in this case)
class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                """
Breast Self Examination (BSE):
Breast Self Examination(BSE) Screening method used in an attempt to detect early to detect early breast cancer. 
 
This is a way that can help in identification of changes in breasts such as lump, thickening etc. that may signal breast cancer in early stages, so chances of surviving disease are greatly improved.
About 80% of Breast Lump are not cancerous. 
 
When to conduct BSE:
-Once a month by all women above 20 Years of Age.
- Should be conducted one week after menstrual cycle, if she is not menstruating conduct BSE on fixed date every month.
 
Pattern: 
Circling, Massaging motion, and follow a clock pattern or wedge pattern or sweeping motion (outer part to towards nipples)
 
1. Clock Pattern:
-Visual Breast as face of clock, place left hand behind and examine left breast with right hand.
-Place right hand at 12 'O' Clock at very top of breast. 
-Place pads of three middle fingers firmly on breast in slight circling massage motion.
-Move hands down to 1 'o' Clock, then 2 'o' Clock and so on until return to 12 'o' Clock.
-Continue same pattern, moving hand in smaller circles towards the nipple.
-Place right hand behind on head and repeat examination on right breast. 
-Check for tissue under nipple and look for discharge.
-Check tissues under the armpit and surrounding breast.
 
2. Wedge Pattern:
-Visualize breast as a circles divided into wedge like piece of pie.
-Place left hand behind head and examine left breast by right hand.
-Press pads of three middle fingers firmly in slight circling and massaging motion.
-Start at the top of breast about half inch below the collar bone and slide fingers towards the nipple.
-Examine breast tissue in entire wedge. Move finger clockwise to next wedges, until complete breast and armpit.
-Place right hand behind head and repeat procedure for right breast with left hand.
 
3. Sweeping Pattern: 
- Place left hand behind the head and examine left breast with right hand.
- Instead of circling, massing motion, sweep three middle finger from collarbone to nipple.
- Clockwise around breast, sweep fingers outside to inside toward nipple.
- To feel deeper breast tissue repeat process using walking motion with fingers. 
- Place right hand behind head and examine right breast using left hand.
 
Physical Assessment finding in Healthy Adults:
 
1. By Inspection: Breast should be
-Symmetrical, full, rounded, smooth in all portions, without dumping, retraction, masses.
-Nipples everted, areola even.
-Axilla even, color normal, without masses or rash.
 
2. By Palpation:
-Firm without masses and lumps.
-No Discharges.
- Smooth Axilla.
 
Steps in breast self examination:
-Inspection on mirror
-Palpation (Lying Position)
-Palpation (Standing and Sitting Position)
 

Inspection on mirror:
-Stand and face the mirror with arms relaxed at sides or arms resting on hips, then turn to right and left for side view look.
-Bend forward form waist.
Stand straight with arms raised over head and move arms slowly up and down at sides(look for free movement of breast over the chest wall).
 
Sitting and standing position:
-Examine using clock pattern and wedge Pattern or sweeping pattern 
-Do upright BSE in shower, soapy hands glide more easily over wet area.
 
Palpation:
In Lying position:
-To examine left breast, Place pillow under right shoulder and place right hand behind head. This position evenly distribute the breast tissues.
-Examine in clock pattern, check for abnormalities. Repeat procedure for right breast.
 
Finding:
- Redness of skin on breast or nipple.
-Bloody or Clear Fluids or appearance of skin on nipple or breast like dimples, scaly, inflamed.
- Marble like area under skin.
- Mass or Lump feel as small as pea. 
- Change in size, shape, contour of breast.
- Normal Breasts and Nipples.
""",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Class for the main application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: InfoDisplay(),
    );
  }
}

// Class for another page (replace content for other topics)
class secondPage extends StatelessWidget {
  final String title;

  const secondPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                """
What is screening?
S﻿creening refers to tests and exams used to find a disease in people who don’t have any symptoms.
Benefit of Screening
The benefit of screening is finding cancer early, when it’s easier to treat.
Mammogram
A mammogram is an X-ray of the breast.  Mammograms are the best way to find breast cancer early.
At this time, a mammogram is the best way to find breast cancer for most women of screening age.
Why does the breast need to be compressed?
1.Compression holds the breast in place to minimize blurring of the x-ray image that can be caused by patient motion.
2.compression evens out the shape of the breast so that the x-rays can travel through a shorter path to reach the detector
3.compression reduces the radiation dose and improves the quality of the x-ray image.
Advantage – Mammograms are the best way to find breast cancer early.
The most common risks of mammography screening are
1.Overdiagnosis- The diagnosis of a condition that otherwise would not have caused symptoms or death.
2. False-positives- A test result which wrongly indicates that a particular condition is present.
3.Anxiety
4.Radiation injury – An individual is exposed to a small amount of radiation during a mammogram.
The limits of mammography-
For certain types of breasts, mammograms can be difficult to interpret.  This is because there is a wide variation in breast tissue density among women. Denser breasts are more difficult to image, and more difficult to assess for tumor diagnosis.  
For many difficult cases, x-ray mammography alone may not be sufficiently sensitive or accurate in detecting cancer, so additional imaging technologies, such as ultrasound or magnetic resonance imaging (MRI) may also be used to increase the sensitivity of the exam.
Breast Magnetic Resonance Imaging (MRI)
A breast MRI uses magnets and radio waves to take pictures of the breast. Breast MRI is used along with mammograms to screen women who are at high risk for getting breast cancer.
Advantage – Helps in early detection of Breast Cancer.
A breast MRI is safe. It doesn’t use radiation
Limitations
1.Breast MRIs may appear abnormal even when there is no cancer, they are not used for women at average risk.
2.Reaction to the contrast dye used- A breast MRI involves a dye called gadolinium that’s given through a vein to make the images easier to see. This dye can cause allergic reactions.
Clinical Breast Exam
A clinical breast exam is an examination by a doctor or nurse, who uses his or her hands to feel for lumps or other changes.
Breast self examination
Breast Self-examination is a common screening method which is done by the patient herself as an effort to detect the presence of breast cancer in its earliest stages by physically examining both the breasts for the possibility of any lumps, distortions, or swelling.
Advantage –
1. BSE can be done regularly at home, there is need to visit hospitals.
2. The chances of early detection of breast cancer in women increase thus enabling a quicker doctor consultation
Limitations-
An individual should know correct way of doing Breast Self-Examination
Ultra sound
It is an imaging method that uses sound waves to produce images of structures within your body.
Limitations-
1. Cannot take image of whole breast at once.
2. Maynot be able to take a clear image of areas deep inside the breast
3. Does not shows microcalcifications.
""",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
