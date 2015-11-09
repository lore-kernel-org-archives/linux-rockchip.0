From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Mon, 09 Nov 2015 20:49:18 +0100
Message-ID: <2772927.crXiDc9cOV@phil>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <20151109120334.GZ8644@n2100.arm.linux.org.uk>
 <20151109120720.GF963@e106497-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151109120720.GF963@e106497-lin.cambridge.arm.com>
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
Cc: Russell King - ARM Linux <linux@arm.linux.org.uk>, Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgTGl2aXUsCgpBbSBNb250YWcsIDkuIE5vdmVtYmVyIDIwMTUsIDEyOjA3OjIwIHNjaHJpZWIg
TGl2aXUgRHVkYXU6Cj4gT24gTW9uLCBOb3YgMDksIDIwMTUgYXQgMTI6MDM6MzVQTSArMDAwMCwg
UnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IHdyb3RlOgo+ID4gT24gTW9uLCBOb3YgMDksIDIwMTUg
YXQgMTE6NTc6MjdBTSArMDAwMCwgTGl2aXUgRHVkYXUgd3JvdGU6Cj4gPiA+IE1lYW53aGlsZSwg
d2hhdCBpcyB5b3VyIHN1Z2dlc3Rpb24gcmVnYXJkaW5nIHRoZSBwYXRjaHNldC4gSSd2ZSBzZWVu
IERhdmlkIGhhcwo+ID4gPiBzZW50IExpbnVzIGEgcHVsbCByZXF1ZXN0IGZvciA0LjQtcmMxIHRo
YXQgaW5jbHVkZXMgaXQuIFNob3VsZCB3ZSBzZW5kIGEKPiA+ID4gcmV2ZXJ0IGZvciByb2NrY2hp
cCBjb21taXQgYW5kIHRoZW4gcGF0Y2ggbGF0ZXIgdGhlIGZ1bmN0aW9uPwo+ID4gCj4gPiBJdCBk
ZWZpbml0ZWx5IG5lZWRzIHRvIGJlIGZpeGVkLCBhbmQgSSdkIHN1Z2dlc3QgaXRzIGVhcmx5IGVu
b3VnaCBpbiB0aGUKPiA+IC1yYyBjeWNsZSAod2hpY2ggaGFzbid0IGJlZ3VuIHlldCkgdG8gc2lt
cGx5IGZpeCBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkKPiA+IHRvIHRha2UgdHdvIGNvbXBhcmUg
ZnVuY3Rpb25zLgo+IAo+IEkgc3RpbGwgZG9uJ3QgaGF2ZSBhIFJvY2tjaGlwIGJvYXJkIHRvIHRl
c3QgdGhlIHBhdGNoLCBzbyBJIG5lZWQgdG8gZmluZCBvdXQKPiBzb21lb25lIHdpbGxpbmcgdG8g
dGVzdCB0aGVtLiBNYXJrPwoKSSBvZiBjb3Vyc2UgYWxzbyBoYXZlIGEgcGxldGhvcmEgb2Ygcm9j
a2NoaXAgYm9hcmRzLCBzbyBjYW4gdGVzdCBzdHVmZgphcyB3ZWxsLgoKCkhlaWtvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
