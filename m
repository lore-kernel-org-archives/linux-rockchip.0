From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH v3 8/9] drm/rockchip: gem: Don't alloc/free gem buf when
 dev_private is invalid
Date: Fri, 7 Apr 2017 08:30:46 +0200
Message-ID: <CAKMK7uEjyBwJKmZUnXZLZ_YzgajFMKNem-2Eoc80ZDXha-7o6g@mail.gmail.com>
References: <1491380967-28570-1-git-send-email-jeffy.chen@rock-chips.com>
 <1491380967-28570-9-git-send-email-jeffy.chen@rock-chips.com>
 <20170405162839.k6q4b3tpt6t2s3zm@art_vandelay>
 <20170406082612.qmwyfjr5uwcp3arr@phenom.ffwll.local>
 <58E621D7.3030205@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <58E621D7.3030205@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: jeffy <jeffy.chen@rock-chips.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Brian Norris <briannorris@chromium.org>, Douglas Anderson <dianders@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVGh1LCBBcHIgNiwgMjAxNyBhdCAxOjA5IFBNLCBqZWZmeSA8amVmZnkuY2hlbkByb2NrLWNo
aXBzLmNvbT4gd3JvdGU6Cj4KPiBPbiAwNC8wNi8yMDE3IDA0OjI2IFBNLCBEYW5pZWwgVmV0dGVy
IHdyb3RlOgo+Pgo+PiBPbiBXZWQsIEFwciAwNSwgMjAxNyBhdCAxMjoyODo0MFBNIC0wNDAwLCBT
ZWFuIFBhdWwgd3JvdGU6Cj4+Pgo+Pj4gT24gV2VkLCBBcHIgMDUsIDIwMTcgYXQgMDQ6Mjk6MjZQ
TSArMDgwMCwgSmVmZnkgQ2hlbiB3cm90ZToKPj4+Pgo+Pj4+IEFmdGVyIHVuYmluZGluZyBkcm0s
IHRoZSB1c2Vyc3BhY2UgbWF5IHN0aWxsIGhhcyBhIGNoYW5jZSB0byBhY2Nlc3MKPj4+PiBnZW0g
YnVmLgo+Pj4+Cj4+Pj4gQWRkIGEgc2FuaXR5IGNoZWNrIGZvciBhIE5VTEwgZGV2X3ByaXZhdGUg
dG8gcHJldmVudCB0aGF0IGZyb20KPj4+PiBoYXBwZW5pbmcuCj4+Pgo+Pj4KPj4+IEkgc3RpbGwg
ZG9uJ3QgdW5kZXJzdGFuZCBob3cgdGhpcyBpcyBoYXBwZW5pbmcuIFlvdSdyZSBzYXlpbmcgdGhh
dCB0aGVzZQo+Pj4gaG9va3MKPj4+IGNhbiBiZSBjYWxsZWQgYWZ0ZXIgcm9ja2NoaXBfZHJtX3Vu
YmluZCgpIGhhcyBmaW5pc2hlZD8KPj4KPj4KPj4gWWVhaCB0aGlzIGlzIHN1cHBvc2VkIHRvIGJl
IGltcG9zc2libGUuIElmIGl0IGlzbid0LCB3ZSBuZWVkIHRvIGRlYnVnIGFuZAo+PiBmaXggdGhp
cyBwcm9wZXJseS4gVGhpcyBzbWVsbHMgbGlrZSBwcmV0dHkgYmFkIGR1Y3QtdGFwZSAuLi4KPgo+
Cj4gaXQgbG9va3MgbGlrZSBhZnRlciB1bmJpbmQsIHRoZSB1c2VyIHNwYWNlIG1heSBzdGlsbCBv
d24gZHJtIGRldiBmZCwgYW5kCj4gY291bGQgYmUgYWJsZSB0byBjYWxsIGlvY3RsOgo+IGxyd3gt
LS0tLS0uIDEgY2hyb25vcyBjaHJvbm9zIDY0IE1hciAxNSAxMjo1MyAyOCAtPiAvZGV2L2RyaS9j
YXJkMSAoZGVsZXRlZCkKPgo+IGFuZCB0aGUgZHJtX3VucGx1Z19kZXYgbWF5IGhlbHAgaXQsIG1h
eWJlIHdlIHNob3VsZCBjYWxsIGl0IGluIHVuYmluZD8gb3IKPiBqdXN0IGJyZWFrIGRybV9pb2N0
bCB3aGVuIGRybV9kZXYgbm90IHJlZ2lzdGVyZWQ/CgpZZXMsIGJ5IGRlZmF1bHQgdW5iaW5kIHdo
aWxlIHVzZXJzcGFjZSBpcyBydW5uaW5nIGlzIHRvdGFsbHkgYnJva2VuIGluCmRybS4gZHJtX3Vu
cGx1Z19kZXYgd291bGQgYmUgdGhlIGZpeCwgYnV0IGl0J3Mgb25seSB1c2VkIGJ5IHVkbCBhbmQK
bm90IG1hbnkgdXNlIHRoYXQuIFlvdSBtaWdodCBuZWVkIHRvIGZpeCBpbmZyYXN0cnVjdHVyZSB1
cCBhIGJpdC4KCkZvciBub3JtYWwgbW9kdWxlIHVubG9hZCB0aGUgbW9kdWxlIHJlZmVyZW5jZSB3
aWxsIHByZXZlbnQgdW5sb2FkaW5nLgpTbyB3aHkgZXhhY3RseSBkbyB5b3UgY2FyZSBhYm91dCB0
aGUgdW5iaW5kIHVzZS1jYXNlPwotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo=
