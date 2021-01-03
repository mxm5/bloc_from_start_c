part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostFailure extends PostState {}

class PostSuccess extends PostState {
  // 1 VARIABLES
  final List<Post> posts;
  final bool hasReachedMax;

  // 2 CONSTRUCTOR
  const PostSuccess({
    this.posts,
    this.hasReachedMax,
  });

  // 3 COPYMETHOD  => NEW OBJ
  PostSuccess copyWith({
    List<Post> posts,
    bool hasReachedMax,
  }) {
    return PostSuccess(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  // 4 COMPARE
  @override
  List<Object> get props => [posts, hasReachedMax];

  // 5 STRING
  @override
  String toString() =>
      'PostSuccess { posts: ${posts.length}, hasReachedMax: $hasReachedMax }';
}
