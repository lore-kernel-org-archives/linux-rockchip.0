From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [RFC PATCH 3/9] drm/rockchip: Convert to support atomic API
Date: Tue, 01 Dec 2015 17:31:28 +0800
Message-ID: <565D68F0.3010905@rock-chips.com>
References: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>	<1448940391-23333-4-git-send-email-mark.yao@rock-chips.com>
 <CAPj87rPtWgH2WE7_EEC-Q41c7Ew2z8CwPMMQD+cC08G7qNZTeg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAPj87rPtWgH2WE7_EEC-Q41c7Ew2z8CwPMMQD+cC08G7qNZTeg@mail.gmail.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Daniel Stone <daniel@fooishbar.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNeW5tDEy5pyIMDHml6UgMTY6MTgsIERhbmllbCBTdG9uZSB3cm90ZToKPiBIaSBNYXJr
LAo+Cj4gT24gMSBEZWNlbWJlciAyMDE1IGF0IDAzOjI2LCBNYXJrIFlhbzxtYXJrLnlhb0Byb2Nr
LWNoaXBzLmNvbT4gIHdyb3RlOgo+PiA+K3N0YXRpYyB2b2lkIHJvY2tjaGlwX2F0b21pY193YWl0
X2Zvcl9jb21wbGV0ZShzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4+ID4rewo+PiA+
KyAgICAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Cj4+ID4rICAgICAgIHN0
cnVjdCBkcm1fY3J0YyAqY3J0YzsKPj4gPisgICAgICAgaW50IGk7Cj4+ID4rCj4+ID4rICAgICAg
IGZvcl9lYWNoX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsKPj4g
PisgICAgICAgICAgICAgICBpZiAoIWNydGMtPnN0YXRlLT5hY3RpdmUpCj4+ID4rICAgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsKPj4gPisKPj4gPisgICAgICAgICAgICAgICBXQVJOX09O
KGRybV9jcnRjX3ZibGFua19nZXQoY3J0YykpOwo+PiA+KyAgICAgICB9Cj4+ID4rCj4+ID4rICAg
ICAgIGZvcl9lYWNoX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUsIGkpIHsK
Pj4gPisgICAgICAgICAgICAgICBpZiAoIWNydGMtPnN0YXRlLT5hY3RpdmUpCj4+ID4rICAgICAg
ICAgICAgICAgICAgICAgICBjb250aW51ZTsKPj4gPisKPj4gPisgICAgICAgICAgICAgICByb2Nr
Y2hpcF9jcnRjX3dhaXRfZm9yX3VwZGF0ZShjcnRjKTsKPj4gPisgICAgICAgfQo+IEknZCBiZSBt
dWNoIG1vcmUgY29tZm9ydGFibGUgaWYgdGhpcyBwYXNzZWQgaW4gYW4gZXhwbGljaXQgcG9pbnRl
ciB0bwo+IHN0YXRlLCBvciBhbiBhZGRyZXNzIHRvIHdhaXQgZm9yLCByYXRoZXIgdGhhbiBoYXZl
IHdhaXRfZm9yX2NvbXBsZXRlCj4gZGlnIG91dCBzdGF0ZSB3aXRoIG5vIGxvY2tpbmcuIFRoZSBs
YXR0ZXIgaXMgcG90ZW50aWFsbHkgcmFjeSBmb3IKPiBhc3luYyBvcGVyYXRpb25zLgo+CkhpIERh
bmllbAogICAgImlmIHRoaXMgcGFzc2VkIGluIGFuIGV4cGxpY2l0IHBvaW50ZXIgdG8gc3RhdGUs
IG9yIGFuIGFkZHJlc3MgdG8gCndhaXQgZm9yIiwgSSBkb24ndCB1bmRlcnN0YW5kLCBjYW4geW91
IHBvaW50IGhvdyBpdCB3b3JrPwoKLS0gCu+8rWFyayBZYW8KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
