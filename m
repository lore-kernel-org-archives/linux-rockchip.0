From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: Re: [RFC PATCH v3 4/4] drm/armada: Convert the probe function to the
 generic drm_of_component_probe()
Date: Mon, 19 Oct 2015 16:23:46 +0100
Message-ID: <20151019152345.GX3394@e106497-lin.cambridge.arm.com>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-5-git-send-email-Liviu.Dudau@arm.com>
 <20151019151714.GI32532@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20151019151714.GI32532@n2100.arm.linux.org.uk>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBPY3QgMTksIDIwMTUgYXQgMDQ6MTc6MTRQTSArMDEwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IHdyb3RlOgo+IE9uIE1vbiwgT2N0IDE5LCAyMDE1IGF0IDA0OjA3OjUwUE0gKzAx
MDAsIExpdml1IER1ZGF1IHdyb3RlOgo+ID4gVGhlIGFybWFkYSBEUk0gZHJpdmVyIGtlZXBzIHNv
bWUgb2xkIHBsYXRmb3JtIGRhdGEgY29tcGF0aWJpbGl0eSBpbiB0aGUKPiA+IHByb2JlIGZ1bmN0
aW9uIHRoYXQgbWFrZXMgbW92aW5nIHRvIHRoZSBnZW5lcmljIGRybV9vZl9jb21wb25lbnRfcHJv
YmUoKQo+ID4gYSBiaXQgbW9yZSBjb21wbGljYXRlZCB0aGF0IGl0IHNob3VsZC4gUmVmYWN0b3Ig
dGhlIHByb2JlIGZ1bmN0aW9uIHRvIGRvCj4gPiB0aGUgcGxhdGZvcm1fZGF0YSBwcm9jZXNzaW5n
IGFmdGVyIHRoZSBnZW5lcmljIHByb2JlIChhbmQgb25seSBpZiB0aGF0Cj4gPiBmYWlscykuIFRo
aXMgd2F5IGZ1dHVyZSBjbGVhbnVwIGNhbiBmdXJ0aGVyIHJlbW92ZSBzdXBwb3J0IGZvciBpdC4K
PiAKPiBJJ20gbWFpbmx5IHVzaW5nIHRoZSBvbGQgY29kZSwgZXZlbiB3aXRoIERUIGJhc2VkIHBs
YXRmb3JtcywgYmVjYXVzZSBpdAo+IG5lZWRzIGEgYmxvY2sgb2YgcmVzZXJ2ZWQgbWVtb3J5IHdo
aWNoIEkgaGF2ZW4ndCBnb3QgYXJvdW5kIHRvIGNvbnZlcnRpbmcKPiB0byBEVCBzdHVmZiAoZWFj
aCB0aW1lIEkndmUgbG9va2VkIGludG8gZG9pbmcgdGhhdCwgYml0cyBmb3IgZGVhbGluZyB3aXRo
Cj4gcmVzZXJ2ZWQgbWVtb3J5IG5vZGVzIHdlcmUgbWlzc2luZy4pCgpUaGFua3MgZm9yIGV4cGxh
aW5pbmcgdGhpcyEKCj4gCj4gQWNrZWQtYnk6IFJ1c3NlbGwgS2luZyA8cm1rK2tlcm5lbEBhcm0u
bGludXgub3JnLnVrPgoKQW5kIHRoYW5rcyBmb3IgYWxsIHRoZSBBQ0tzIQoKQmVzdCByZWdhcmRz
LApMaXZpdQoKPiAKPiAtLSAKPiBGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lOiBjdXJy
ZW50bHkgYXQgOS42TWJwcyBkb3duIDQwMGticHMgdXAKPiBhY2NvcmRpbmcgdG8gc3BlZWR0ZXN0
Lm5ldC4KPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291bGQgbGlrZSB0byB8Cnwg
Zml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdpdmluZyBtZSB0aGUgICB8
CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAgwq9cXyjjg4QpXy/Crwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwg
bWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
