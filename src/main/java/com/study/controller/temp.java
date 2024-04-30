package com.study.controller;

class Solution {
	public int[] solution(int[] arr, int n) {
		int[] answer = {};
		answer = arr;
		if (arr.length % 2 != 0) {
			for (int i = 2; i < arr.length; i += 2) {

				answer[i] += n;
			}
		}

		if (arr.length % 2 == 0) {
			for (int i = 1; i < arr.length; i += 2) {

				answer[i] += n;
			}
		}
		return answer;
	}
}

