From: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 1/2] PM / devfreq: rockchip-dfi: add missing of_node_put()
Date: Sun, 15 Dec 2019 23:42:09 +0800
Message-ID: <CAEExFWs7YejweJLDxcx9bECgVRFAVx6xL2T+_76Z239Pa-XyNA@mail.gmail.com>
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
 <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Chanwoo Choi <chanwoo@kernel.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gU3VuLCBEZWMgMTUsIDIwMTkgYXQgMTE6MzEgUE0gQ2hhbndvbyBDaG9pIDxjaGFud29vQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gMjAxOeuFhCAxMuyblCAxNeydvCAo7J28KSDsmKTsoIQgMzox
MiwgWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPuuLmOydtCDsnpHshLE6Cj4gPgo+
ID4gb2Zfbm9kZV9wdXQgbmVlZHMgdG8gYmUgY2FsbGVkIHdoZW4gdGhlIGRldmljZSBub2RlIHdo
aWNoIGlzIGdvdAo+ID4gZnJvbSBvZl9wYXJzZV9waGFuZGxlIGhhcyBmaW5pc2hlZCB1c2luZy4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMgfCAxICsK
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kZXZmcmVxL2V2ZW50L3JvY2tjaGlwLWRmaS5jIGIvZHJpdmVycy9kZXZmcmVxL2V2
ZW50L3JvY2tjaGlwLWRmaS5jCj4gPiBpbmRleCA1ZDEwNDIxODg3MjcuLjQ1YjE5MGU0NDNkOCAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwo+ID4g
KysrIGIvZHJpdmVycy9kZXZmcmVxL2V2ZW50L3JvY2tjaGlwLWRmaS5jCj4gPiBAQCAtMjAwLDYg
KzIwMCw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZGZpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgIG5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAicm9j
a2NoaXAscG11IiwgMCk7Cj4gPiAgICAgICAgIGlmIChub2RlKSB7Cj4gPiAgICAgICAgICAgICAg
ICAgZGF0YS0+cmVnbWFwX3BtdSA9IHN5c2Nvbl9ub2RlX3RvX3JlZ21hcChub2RlKTsKPiA+ICsg
ICAgICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKPiA+ICAgICAgICAgICAgICAgICBpZiAo
SVNfRVJSKGRhdGEtPnJlZ21hcF9wbXUpKQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIoZGF0YS0+cmVnbWFwX3BtdSk7Cj4gPiAgICAgICAgIH0KPiA+IC0tCj4gPiAy
LjE3LjEKPiA+Cj4KPiBBcHBsaWVkIGl0LiBCZXR0ZXIgdG8gdXNlIHRoZSBjYXBpdGFsIGxldHRl
ciBmb3IgZmlyc3QgY2hhciBvZiBzZW50ZW5jZS4KClRoeCEKCllhbmd0YW8KCj4KPiAtLQo+IEJl
c3QgUmVnYXJkcywKPiBDaGFud29vIENob2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
