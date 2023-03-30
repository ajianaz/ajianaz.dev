import 'package:ajianaz_dev/models/experience_model.dart';
import 'package:ajianaz_dev/models/project_model.dart';

const List listTechnologies1 = ['Flutter', 'Git', 'Firebase'];

const List listTechnologies2 = ['Rest-API', 'Figma', 'Postman'];

const List<ExperienceModel> listExperience = [
  ExperienceModel(
    companyLink: 'https://diskominfo.jatengprov.go.id/',
    companyName: 'Dinas Komunikasi dan Informatika Prov. Jateng',
    duration: 'Jan 2018 - Present',
    experiences: [
      // 'Developing the Laporgub Android application Version 1.',
      'Write, maintain code with implemented clean architecture in every project, and also supervisioned by senior engineer to write good code.',
      'Communicate with multi-disciplinary teams of engineers, designers, project managers, and clients on a daily basis.',
      'Fix bugs and ensuring the application can used properly when released.'
    ],
    position: 'Mobile Application Developer',
  )
];

const List<ProjectModel> listProject = [
  ProjectModel(
    companyLink: 'https://diskominfo.jatengprov.go.id/',
    companyName: 'Dinas Komunikasi dan Informatika Prov. Jateng',
    projectDesc:
        'Laporgub Admin application is used by Person In Charge (PIC) of SKPD, District / Municipal and environmental Vertical Institutions in Central Java province. Laporgub Admin helps PIC in managing complaints that came from laporgub.jatengprov.go.id and easy to respond to complaints that came in real time',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=id.go.jatengprov.laporgub.admin',
      'appstore': '',
      'github': '',
    },
    projectTitle: 'Laporgub Admin     ',
  ),
  ProjectModel(
    companyLink: 'https://diskominfo.jatengprov.go.id/',
    companyName: 'Dinas Komunikasi dan Informatika Prov. Jateng',
    projectDesc:
        'An application used by the admin to manage attendance data in an activity.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=id.go.jatengprov.absensikegiatan.absensi_kegiatan',
      'appstore': '',
      'github': '',
    },
    projectTitle: 'Esensi',
  ),
  ProjectModel(
    companyLink: 'https://diskominfo.jatengprov.go.id/',
    companyName: 'Dinas Komunikasi dan Informatika Prov. Jateng',
    projectDesc:
        'Application used to monitor the condition of RT / RW in Central Java Province. The application can be used at the RW level as input and the Kelurahan as a monitor of each RW in the area.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=go.id.jatengprov.jogotonggo',
      'appstore': '',
      'github': '',
    },
    projectTitle: 'Jogo Tonggo',
  ),
];

const List<ProjectModel> listProjectOther = [
  ProjectModel(
    companyName: 'Freelance',
    companyLink: 'https://www.linkedin.com/in/ajianaz/',
    projectDesc:
        'This Parenteral Nutrition Calculator is designed to assist pediatricians in prescribing parenteral nutrition (PN), also assist registered dietitians and pharmacists in preparing PN orders.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.ajianaz.parenteralnutritioncalculator',
      'appstore': '',
      'github': '',
    },
    projectTitle: 'Parenteral Nutrition',
  ),
  ProjectModel(
    companyName: 'Freelance',
    companyLink: 'https://www.linkedin.com/in/ajianaz/',
    projectDesc: 'Kassampah an Easy Way to Sell Junk Disaggregated Quickly',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.viluvasa.kassampah',
      'appstore': '',
      'github': '',
    },
    projectTitle: 'Kassampah',
  ),
  ProjectModel(
    companyName: 'Freelance',
    companyLink: 'https://www.linkedin.com/in/ajianaz/',
    projectDesc:
        'The CINTA LAPANGAN application is an information system that aims to provide presence for field workers from the Office of Highways and Human Settlements of Central Java Province.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=dpubinmarcipka.sapa.lapangan',
      'appstore': '',
      'github': '',
    },
    projectTitle: 'Cinta Lapangan',
  ),
];
