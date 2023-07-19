import http from 'k6/http';

const BASE_URL = 'http://35.76.111.5';

export default function () {
  http.get(`${BASE_URL}/`);
}
