From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 0/2] Improve drm_of_component_probe() and move rockchip
 to use it
Date: Tue, 24 Nov 2015 00:20:14 +0100
Message-ID: <1737461.8xCM7oo5S1@diego>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Russell King <rmk+kernel@arm.linux.org.uk>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

QW0gRnJlaXRhZywgMjAuIE5vdmVtYmVyIDIwMTUsIDE0OjIyOjAzIHNjaHJpZWIgTGl2aXUgRHVk
YXU6Cj4gSGVsbG8sCj4gCj4gVGhpcyBpcyB2MiBvZiB0aGUgcGF0Y2hzZXQgdHJ5aW5nIHRvIG1h
a2UgZHJtX29mX2NvbXBvbmVudF9wcm9iZSgpIGNvcGUgd2l0aAo+IGZpbmRpbmcgYm90aCBsb2Nh
bCBjcnRjIHBvcnRzIGFuZCByZW1vdGUgZW5jb2RlciBvbmVzLiBIZWlrbyBTdMO8Ym5lciB3YXMK
PiBuaWNlIGVub3VnaCB0byB0ZXN0IGFuIGVhcmxpZXIgdmVyc2lvbiB0aGF0IHdhcyBwYXRjaGVk
IGZvbGxvd2luZyBSdXNzZWxsJ3MKPiBzdWdnZXN0aW9ucyBvbiByazMyODgsIGJ1dCBJIGhhdmVu
J3Qgc2VlbiBhbnkgcmVwb3J0cyBmcm9tIGlNWCBvciBBcm1hZGEKPiB1c2Vycy4KPiAKPiBDaGFu
Z2Vsb2c6Cj4gIHYyOiBVcGRhdGVkIHRoZSBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkgY29tbWVu
dCB0byBleHBsYWluIHdoeSB0aGUKPiByZWZlcmVuY2UgY291bnQgaXMgbm90IGRyb3BwZWQuIEZp
eGVkIHRoZSBjb21wYXJlX3BvcnQoKSBmdW5jdGlvbiBmb3IKPiByb2NrY2hpcCBhcyBkZXNjcmli
ZWQgYnkgUnVzc2VsbC4KCk5vdyB3b3JrcyBuaWNlbHkgb24gbXkgcmszMjg4LXZleXJvbi1qZXJy
eSBhZ2Fpbi4KClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgpU
aGFua3MKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
