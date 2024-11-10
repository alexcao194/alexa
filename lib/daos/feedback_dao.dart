import 'package:hive_flutter/hive_flutter.dart';
import '../models/feedback.dart';

class FeedbackDao {
  // Hive box name for feedback
  static const String feedbackBoxName = 'feedbackBox';

  // Add a feedback item
  Future<void> addFeedback(Feedback feedback) async {
    final box = Hive.box<Feedback>(feedbackBoxName);
    final newFeedbackId = box.values.isEmpty ? 0 : box.values.last.id + 1;
    await box.put(newFeedbackId, feedback.copyWith(id: newFeedbackId));
  }

  // Retrieve all feedback items
  List<Feedback> getAllFeedback() {
    final box = Hive.box<Feedback>(feedbackBoxName);
    return box.values.toList();
  }

  // Update a feedback item by index
  Future<void> updateFeedback(Feedback updatedFeedback) async {
    final box = Hive.box<Feedback>(feedbackBoxName);
    await box.put(updatedFeedback.id, updatedFeedback);
  }

  // Delete a feedback item by index
  Future<void> deleteFeedback(int id) async {
    final box = Hive.box<Feedback>(feedbackBoxName);
    await box.deleteAt(id);
  }

  // Get feedback by a specific ID
  Feedback? getFeedbackById(int id) {
    final box = Hive.box<Feedback>(feedbackBoxName);
    return box.get(id);
  }
}
