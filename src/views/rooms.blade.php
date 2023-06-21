@extends('layout')

@section('content')
  <div class="hero">
    <p class="hero__subtitle hero__subtitle--subdomain">THE ULTIMATE LUXURY</p>
    <h2 class="hero__title">Ultimate Room</h2>
    <div class="hero__page">
      <a class="hero__page__link" href="../index.html">Home</a> |
      <a class="hero__page__link hero__page__link-active" href="rooms.html">Rooms</a>
    </div>
  </div>

  <section class="rooms-flex">
    @foreach ($rooms as $room)
    <div class="rooms-flex__box">
      <div style="position: relative;">
        <img class="rooms-flex__box__img" src="../../resources/img/rooms-1.jpg" alt="Hotel room">
        <div class="rooms-flex__box__rect">
          <img src="../../resources/img/icons/bed.svg" alt="">
          <img src="../../resources/img/icons/wifi.svg" alt="">
          <img src="../../resources/img/icons/car.svg" alt="">
          <img src="../../resources/img/icons/winter.svg" alt="">
          <img src="../../resources/img/icons/gym.svg" alt="">
          <img src="../../resources/img/icons/smoke.svg" alt="">
          <img src="../../resources/img/icons/cocktail.svg" alt="">
        </div>
      </div>
      <div class="rooms-flex__box__card">
        <h3 class="rooms-flex__box__card__title">{{ $room['name'] }} - {{ $room['bed_type'] }}</h3>
        <p class="rooms-flex__box__card__text">Lorem ipsum dolor sit amet, consectetur adipi sicing elit, sed do eiusmod tempor.</p>
        <div class="rooms-flex__box__card__bottom-flex">
          <p class="rooms-flex__box__card__price">{{ $room['offer'] }}/Night</p>
          <a class="rooms-flex__box__card__booking" href="/src/controllers/room_details.php">Book Now</a>
        </div>
      </div>
    </div>
    @endforeach
  </section>
  <div class="rooms-flex__pagination">
    <a class="rooms-flex__pagination__btn" href="">
      <img src="../../resources/img/icons/darrow-left.svg" alt="">
    </a>
    <a class="rooms-flex__pagination__btn rooms-flex__pagination__btn--active" href="">1</a>
    <a class="rooms-flex__pagination__btn" href="">2</a>
    <a class="rooms-flex__pagination__btn" href="">3</a>
    <p class="rooms-flex__pagination__btn" href="">...</p>
    <a class="rooms-flex__pagination__btn" href="">10</a>
    <a class="rooms-flex__pagination__btn" href="">
      <img src="../../resources/img/icons/darrow-right.svg" alt="">
    </a>
  </div>
@endsection