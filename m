From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v8 3/3] drm/rockchip: Add support for Rockchip Soc LVDS
Date: Fri, 8 Sep 2017 15:05:48 +0800
Message-ID: <29751b4e-a13a-e1e9-ffdf-c695fe162794@rock-chips.com>
References: <1504351723-135876-1-git-send-email-hjc@rock-chips.com>
 <2057816.0G3n1KPuPZ@diego>
 <06e92b85-45f3-b23d-b149-e130c863214b@rock-chips.com>
 <4080498.FZDnVPY7UJ@phil>
 <72a0da24-e61f-25a1-4971-b768dc119b4f@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <72a0da24-e61f-25a1-4971-b768dc119b4f@rock-chips.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxN+W5tDA55pyIMDjml6UgMTQ6MTIsIE1hcmsgeWFvIHdyb3RlOgo+IE9uIDIwMTflubQw
OeaciDA45pelIDEzOjA0LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4gQW0gRnJlaXRhZywgOC4g
U2VwdGVtYmVyIDIwMTcsIDA5OjIzOjA5IENFU1Qgc2NocmllYiBNYXJrIHlhbzoKPj4+IE9uIDIw
MTflubQwOeaciDA35pelIDIwOjA5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+PiBIaSBNYXJr
LAo+Pj4+Cj4+Pj4gQW0gRG9ubmVyc3RhZywgNy4gU2VwdGVtYmVyIDIwMTcsIDE4OjE2OjI5IENF
U1Qgc2NocmllYiBNYXJrIHlhbzoKPj4+Pj4gTG9va3MgZ29vZCBmb3IgbWUsIHNvOgo+Pj4+PiBS
ZXZpZXdlZC1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgo+Pj4+Pgo+Pj4+
PiBJJ2QgbGlrZSB0byBhcHBseSB0aGVzZSBsdmRzIHBhdGNoZXMgdG9tb3Jyb3cgaWYgdGhlcmUg
aXMgbm8gbW9yZSBkb3VidHMuCj4+Pj4gUm9iIGhhZCBzb21lIG1pbm9yIGNvbW1lbnRzIG9uIHY3
IG9mIHRoZSBkdC1iaW5kaW5nLCBzbyB5b3UgbWF5IHdhbnQKPj4+PiB0byBnaXZlIGhpbSBhIGJp
dCBtb3JlIHRpbWUgdG8gQWNrIHRoZSBob3BlZnVsbHkgdXBkYXRlZCBiaW5kaW5nLgo+Pj4gUm9i
IGFscmVhZHkgZ2F2ZSBhIFJldmlld2VkLWJ5IG9uIHY3IGR0LWJpbmRpbmcsIGJ1dCBtYXliZSBp
dCBoYXMgc29tZSBkb3VidHMgZm9yIGhpcyBBY2suCj4+Pgo+Pj4gT2ssIGxldCdzIHdhaXQgc29t
ZSBtb3JlIHRpbWUuCj4+IGFoLCBJIGxvb2tlZCBhdCB2NiBhbmQgZm91bmQgdGhlIGNvbW1lbnRz
LCBub3QgdjcgYW5kIHY3IGlzIG5vdCBpbiBteQo+PiBhcmNoaXZlIGJlY2F1c2UgSSBsaWtlbHkg
YWNjaWRlbnRpYWxseSBkZWxldGVkIGl0Lgo+PiBTbyBTYW5keSBqdXN0IGZvcmdvdCB0byBjYXJy
eSBvdmVyIHRoZSBBY2svUmV2aWV3IHRhZy4gU28gSSBndWVzcyB0aGVyZSBpcwo+PiBubyBuZWVk
IHRvIHdhaXQgYW55bW9yZSBhbmQgeW91IGp1c3QgbmVlZCB0byBwaWNrIHVwIFJvYidzIHRhZyBm
cm9tIHY3IHRoZW4uCj4KPiBSaWdodCwgU2FuZHkgZm9yZ290IHRvIGNhcnJ5IHRob3NlIHRhZyBv
biBuZXcgcGF0Y2hzZXQsIEkgd2lsbCBjYXJyeSB0aG9zZSB0YWc6Cj4gICAgIFRlc3RlZC1ieSBv
biB2NSwgUmV2aWV3ZWQtYnkgb24gdjYgYW5kIHY3Cj4KPiBUaGFua3MuCj4KClB1c2hlZCBwYXRj
aGVzIDErMyB0byBkcm0tbWlzYy1uZXh0LgoKQmVzdCBSZWdhcmRzCk1hcmsKPj4KPj4gSGVpa28K
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aS1kZXZlbAo=
