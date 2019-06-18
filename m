From: Ilia Mirkin <imirkin@alum.mit.edu>
Subject: Re: [RFC/WIP] drm/rockchip: Support CRTC gamma LUT
Date: Tue, 18 Jun 2019 12:57:24 -0400
Message-ID: <CAKb7Uvg1gfHdVv69sXFs8rgOP-bGkDuMXvikDMYdJO8EC1zxiQ@mail.gmail.com>
References: <20190613192244.5447-1-ezequiel@collabora.com>
 <CAKb7UvhxnysEPrw2javE=OK8qop=3LPuRphbu_WQKvgCJYU6Kg@mail.gmail.com>
 <6b0519240580229d1cc4ce6d2c98326f2ef7f97c.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <6b0519240580229d1cc4ce6d2c98326f2ef7f97c.camel@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Douglas Anderson <dianders@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip@lists.infradead.org, Boris Brezillon <boris.brezillon@collabora.com>, Sean Paul <seanpaul@chromium.org>, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgOTozNiBBTSBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVs
QGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gVGh1LCAyMDE5LTA2LTEzIGF0IDE1OjM2IC0w
NDAwLCBJbGlhIE1pcmtpbiB3cm90ZToKPiA+IE5vdGUgdGhhdCB1c2Vyc3BhY2UgbWF5IHByb3Zp
ZGUgYW55IHNpemUgb2YgZ2FtbWEgbHV0LiBIYXZlIGEgbG9vayBhdAo+ID4gaTkxNS9pbnRlbF9j
b2xvci5jOmludGVsX2NvbG9yX2NoZWNrIHdoaWNoIGZpbHRlcnMgb3V0IG9ubHkgdGhlCj4gPiBh
bGxvd2VkIHNpemVzLiBDb25zaWRlciBoYXZpbmcgYSBzcGVjaWFsIGFsbG93YW5jZSBmb3IgMjU2
LXNpemVkIExVVHMKPiA+IHNpbmNlIHRoYXQncyB3aGF0IG1vc3QgbGVnYWN5IHVzZXJzcGFjZSB3
aWxsIHNldCwgYW5kIGl0IHNlZW1zIGxpa2UgYQo+ID4gd2FzdGUgdG8gY3JlYXRlIGEgMTAtYml0
IExVVCBmb3IgUkdCQTggY29sb3IuCj4gPgo+Cj4gUmlnaHQuIEkgd2lsbCBhZGQgYSBjaGVjayBm
b3IgdGhlIGdhbW1hIGx1dCBzaXplLgo+Cj4gVW5mb3J0dW5hdGVseSwgdGhpcyBoYXJkd2FyZSBz
ZWVtcyB0byBvbmx5IHN1cHBvcnQgMTAtYml0LCAxMDI0LXNpemVkIExVVHMuCj4KPiBUaGUgc3Bl
YyBkb2VzIG1lbnRpb24gYSBzdXBwb3J0IDgtYml0LCAyNTYtZW50cmllcywgYnV0IGl0J3Mgbm90
IGF0IGFsbAo+IGNsZWFyIGhvdyBjb25maWd1cmUgdGhhdC4KCkl0J3MgdXAgdG8geW91LCBhbmQg
dGhlIG1vcmUgZXhwZXJpZW5jZWQgZHJtIHJldmlld2VycywgYnV0IGV2ZW4gaWYKeW91IGNhbid0
IGZpZ3VyZSBvdXQgaG93IHRvIGJlbmQgdGhlIGhhcmR3YXJlIHRvIHlvdXIgd2lsbCAod2hpY2gg
aXMKd29ydGggYSBiaXQgb2YgZXhwbG9yYXRpb24pLCB5b3UgY2FuIHN0aWxsIGVtdWxhdGUgaXQg
YnkganVzdApyZXBlYXRpbmcgYWxsIHRoZSB2YWx1ZXMgNHguIElNSE8gMjU2LXNpemVkIExVVHMg
YXJlIHdvcnRoIHN1cHBvcnRpbmcKd2hlbiBwb3NzaWJsZS4KCkNoZWVycywKCiAgLWlsaWEKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1h
aWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
