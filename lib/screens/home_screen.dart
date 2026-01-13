import 'package:flutter/material.dart';
import 'package:uni_pic_notes/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final titleController=TextEditingController();
 var _isEdit=false;
    return Scaffold(
      appBar:AppBar(
        title: Text("Notes"),
        backgroundColor: Colors.blueGrey,
      ) ,


      body:Padding(
        padding: const EdgeInsets.only(left: 18.0,top: 18),
        child: GridView.count(crossAxisCount: 2,
          childAspectRatio: 0.90/1,
          children:[ InkWell(
            child: Card(

            clipBehavior: Clip.antiAlias,
            shadowColor: Colors.blueGrey,
            elevation: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset( "assets/Cloudia.jpg",fit: BoxFit.cover,),
                  ),

                  GestureDetector(
onTap: ()=>_isEdit=true,
                      child: _isEdit ? TextField(
                        controller: titleController,
                        decoration: InputDecoration(

                        ),
                      ):Text("data"))
                ],
              )

            ),
          ),
        ]
        ),
      ),
    );

  }
  // void showAddNoteDialog() {
  //   final titleController = TextEditingController();
  //   final contentController = TextEditingController();
  //   // Color selectedColor = noteColors[0];
  //
  //   showModalBottomSheet(
  //     context:,
  //     isScrollControlled: true,
  //     backgroundColor: Colors.transparent,
  //     builder: (context) => StatefulBuilder(
  //       builder: (context, setModalState) => Container(
  //         height: MediaQuery.of(context).size.height * 0.9,
  //         decoration: const BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
  //         ),
  //         padding: EdgeInsets.only(
  //           bottom: MediaQuery.of(context).viewInsets.bottom,
  //           left: 24,
  //           right: 24,
  //           top: 24,
  //         ),
  //         child: SingleChildScrollView(
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   const Text(
  //                     'New Note',
  //                     style: TextStyle(
  //                       fontSize: 24,
  //                       fontWeight: FontWeight.bold,
  //                       color: Color(0xFF333333),
  //                     ),
  //                   ),
  //                   IconButton(
  //                     icon: const Icon(Icons.close),
  //                     onPressed: () => Navigator.pop(context),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 20),
  //               TextField(
  //                 controller: titleController,
  //                 decoration: const InputDecoration(
  //                   hintText: 'Note Title',
  //                   border: UnderlineInputBorder(),
  //                 ),
  //                 style: const TextStyle(
  //                   fontSize: 18,
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //               const SizedBox(height: 16),
  //               TextField(
  //                 controller: contentController,
  //                 maxLines: 8,
  //                 decoration: InputDecoration(
  //                   hintText: 'Note Content',
  //                   border: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(12),
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 20),
  //               const Text(
  //                 'Choose Color:',
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //               const SizedBox(height: 12),
  //               // Row(
  //               //   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               //   children: noteColors.map((color) {
  //               //     return GestureDetector(
  //               //       onTap: () => setModalState(() => selectedColor = color),
  //               //       child: Container(
  //               //         width: 50,
  //               //         height: 50,
  //               //         decoration: BoxDecoration(
  //               //           color: color,
  //               //           shape: BoxShape.circle,
  //               //           border: Border.all(
  //               //             color: selectedColor == color
  //               //                 ? Colors.black
  //               //                 : Colors.transparent,
  //               //             width: 4,
  //               //           ),
  //               //         ),
  //               //       ),
  //               //     );
  //               //   }).toList(),
  //               // ),
  //               const SizedBox(height: 126),
  //               SizedBox(
  //                 width: double.infinity,
  //                 child: ElevatedButton(
  //                   onPressed: () {
  //                     if (titleController.text.isNotEmpty ||
  //                         contentController.text.isNotEmpty) {
  //                       final newNote = Note(
  //                         id: DateTime.now().millisecondsSinceEpoch.toString(),
  //                         title: titleController.text.isEmpty
  //                             ? 'Untitled Note'
  //                             : titleController.text,
  //                         content: contentController.text,
  //                         createdAt: DateTime.now(),
  //                         updatedAt: DateTime.now(),
  //                         color: selectedColor,
  //                       );
  //                       setState(() {
  //                         notes.insert(0, newNote);
  //                       });
  //                       saveNotes();
  //                       Navigator.pop(context);
  //                     }
  //                   },
  //                   style: ElevatedButton.styleFrom(
  //                     backgroundColor: const Color(0xFF4A90E2),
  //                     padding: const EdgeInsets.symmetric(vertical: 16),
  //                     shape: RoundedRectangleBorder(
  //                       borderRadius: BorderRadius.circular(12),
  //                     ),
  //                   ),
  //                   child: const Text(
  //                     'Save Note',
  //                     style: TextStyle(color:Colors.white,fontSize: 18, fontWeight: FontWeight.bold),
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 16),
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
