/* Copyright (c) 2018 PaddlePaddle Authors. All Rights Reserved.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License. */

#include <metal_stdlib>
using namespace metal;

#define P float

#include "FetchKernel.inc.metal"

#undef P

#define P half

#include "FetchKernel.inc.metal"

#undef P


kernel void fetch_placeholder(texture2d_array<float, access::read> inTexture [[texture(0)]],
                              device float *output [[buffer(0)]],
                              uint3 gid [[thread_position_in_grid]]) {
  
}

kernel void fetch_placeholder_half(texture2d_array<half, access::read> inTexture [[texture(0)]],
                                   device float *output [[buffer(0)]],
                                   uint3 gid [[thread_position_in_grid]]) {
}
