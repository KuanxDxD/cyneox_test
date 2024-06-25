import 'package:cyneox_test/models/api_response_model.dart';
import 'package:cyneox_test/models/sample_model.dart';

class SampleRepository {
  Future<ApiResponseModel<List<SampleModel>>> getSampleModel() async {
    try {
      /// Mock Implementation
      final Map<String, dynamic> mockData = {
        'response': 'Successfully get mock data',
        'status': true,
        'message': 'Successfully get mock data.',
        'data': [
          {
            'id': 1,
            'title': 'Pet Universe',
            'subtitle': 'One Stop Pets Solutions',
            'description':
                "Welcome to Pet Universe – your all-in-one solution for premium pet care services right at your fingertips. With a user-friendly design and comprehensive features, we've got everything covered to ensure your furry friend gets the best care possible.",
            'app_icon_image':
                'https://play-lh.googleusercontent.com/rjmh6GfqLnKdQuciEKaqVrUKKmN_bAzBkmY6ecMghowTsOJIIiIt0mscZwiS5f1gUQ=w240-h480-rw',
            'rating': 5,
            'size': 52,
            'suitable_age': 3,
            'category': 'Health & Lifestyle',
            'developer': 'Pet Universe Sdn Bhd',
            'images': [
              'https://play-lh.googleusercontent.com/afODl6inlxp1sORh1k1OyOog4LiA_Z6O_Z5xTI-w7hiak3dFjcbyTQpQ05gAW6Bc7iHT=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/DYikE7uviRFbvZVdRr0MZS28LMfJx2DZsoLQ732MuIYQrg1wVrIfvQXpYaCa3kWg6wQ=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/bwJRhyKvoTp3QiAmzGgMks8Tr1OqAZK2TUvPUPyD6Io10c9asWIc8fy27O0688Jk8w10=w2560-h1440-rw',
            ]
          },
          {
            'id': 2,
            'title': 'Pet Universe',
            'subtitle': 'One Stop Pets Solutions',
            'description':
                "Welcome to Pet Universe – your all-in-one solution for premium pet care services right at your fingertips. With a user-friendly design and comprehensive features, we've got everything covered to ensure your furry friend gets the best care possible.",
            'app_icon_image':
                'https://play-lh.googleusercontent.com/rjmh6GfqLnKdQuciEKaqVrUKKmN_bAzBkmY6ecMghowTsOJIIiIt0mscZwiS5f1gUQ=w240-h480-rw',
            'rating': 5,
            'size': 52,
            'suitable_age': 3,
            'category': 'Health & Lifestyle',
            'developer': 'Pet Universe Sdn Bhd',
            'images': [
              'https://play-lh.googleusercontent.com/afODl6inlxp1sORh1k1OyOog4LiA_Z6O_Z5xTI-w7hiak3dFjcbyTQpQ05gAW6Bc7iHT=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/DYikE7uviRFbvZVdRr0MZS28LMfJx2DZsoLQ732MuIYQrg1wVrIfvQXpYaCa3kWg6wQ=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/bwJRhyKvoTp3QiAmzGgMks8Tr1OqAZK2TUvPUPyD6Io10c9asWIc8fy27O0688Jk8w10=w2560-h1440-rw',
            ]
          },
          {
            'id': 3,
            'title': 'Pet Universe',
            'subtitle': 'One Stop Pets Solutions',
            'description':
                "Welcome to Pet Universe – your all-in-one solution for premium pet care services right at your fingertips. With a user-friendly design and comprehensive features, we've got everything covered to ensure your furry friend gets the best care possible.",
            'app_icon_image':
                'https://play-lh.googleusercontent.com/rjmh6GfqLnKdQuciEKaqVrUKKmN_bAzBkmY6ecMghowTsOJIIiIt0mscZwiS5f1gUQ=w240-h480-rw',
            'rating': 5,
            'size': 52,
            'suitable_age': 3,
            'category': 'Health & Lifestyle',
            'developer': 'Pet Universe Sdn Bhd',
            'images': [
              'https://play-lh.googleusercontent.com/afODl6inlxp1sORh1k1OyOog4LiA_Z6O_Z5xTI-w7hiak3dFjcbyTQpQ05gAW6Bc7iHT=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/DYikE7uviRFbvZVdRr0MZS28LMfJx2DZsoLQ732MuIYQrg1wVrIfvQXpYaCa3kWg6wQ=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/bwJRhyKvoTp3QiAmzGgMks8Tr1OqAZK2TUvPUPyD6Io10c9asWIc8fy27O0688Jk8w10=w2560-h1440-rw',
            ]
          },
          {
            'id': 4,
            'title': 'Pet Universe',
            'subtitle': 'One Stop Pets Solutions',
            'description':
                "Welcome to Pet Universe – your all-in-one solution for premium pet care services right at your fingertips. With a user-friendly design and comprehensive features, we've got everything covered to ensure your furry friend gets the best care possible.",
            'app_icon_image':
                'https://play-lh.googleusercontent.com/rjmh6GfqLnKdQuciEKaqVrUKKmN_bAzBkmY6ecMghowTsOJIIiIt0mscZwiS5f1gUQ=w240-h480-rw',
            'rating': 5,
            'size': 52,
            'suitable_age': 3,
            'category': 'Health & Lifestyle',
            'developer': 'Pet Universe Sdn Bhd',
            'images': [
              'https://play-lh.googleusercontent.com/afODl6inlxp1sORh1k1OyOog4LiA_Z6O_Z5xTI-w7hiak3dFjcbyTQpQ05gAW6Bc7iHT=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/DYikE7uviRFbvZVdRr0MZS28LMfJx2DZsoLQ732MuIYQrg1wVrIfvQXpYaCa3kWg6wQ=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/bwJRhyKvoTp3QiAmzGgMks8Tr1OqAZK2TUvPUPyD6Io10c9asWIc8fy27O0688Jk8w10=w2560-h1440-rw',
            ]
          },
          {
            'id': 5,
            'title': 'Pet Universe',
            'subtitle': 'One Stop Pets Solutions',
            'description':
                "Welcome to Pet Universe – your all-in-one solution for premium pet care services right at your fingertips. With a user-friendly design and comprehensive features, we've got everything covered to ensure your furry friend gets the best care possible.",
            'app_icon_image':
                'https://play-lh.googleusercontent.com/rjmh6GfqLnKdQuciEKaqVrUKKmN_bAzBkmY6ecMghowTsOJIIiIt0mscZwiS5f1gUQ=w240-h480-rw',
            'rating': 5,
            'size': 52,
            'suitable_age': 3,
            'category': 'Health & Lifestyle',
            'developer': 'Pet Universe Sdn Bhd',
            'images': [
              'https://play-lh.googleusercontent.com/afODl6inlxp1sORh1k1OyOog4LiA_Z6O_Z5xTI-w7hiak3dFjcbyTQpQ05gAW6Bc7iHT=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/DYikE7uviRFbvZVdRr0MZS28LMfJx2DZsoLQ732MuIYQrg1wVrIfvQXpYaCa3kWg6wQ=w2560-h1440-rw',
              'https://play-lh.googleusercontent.com/bwJRhyKvoTp3QiAmzGgMks8Tr1OqAZK2TUvPUPyD6Io10c9asWIc8fy27O0688Jk8w10=w2560-h1440-rw',
            ]
          },
        ],
      };

      return ApiResponseModel(
        response: mockData['response'],
        status: mockData['status'],
        message: mockData['message'],
        httpStatusCode: 200,
        data: (mockData['data'] as List<dynamic>?)
                ?.map((e) => SampleModel.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
      );
    } catch (exception) {
      return ApiResponseModel(
        response: '-',
        status: false,
        message: 'Oops! Please try again later.',
        exception: exception,
      );
    }
  }
}
