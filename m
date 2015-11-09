From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Mon, 9 Nov 2015 12:07:20 +0000
Message-ID: <20151109120720.GF963@e106497-lin.cambridge.arm.com>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
 <564069CD.2070102@rock-chips.com>
 <20151109114259.GX8644@n2100.arm.linux.org.uk>
 <20151109115727.GE963@e106497-lin.cambridge.arm.com>
 <20151109120334.GZ8644@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20151109120334.GZ8644@n2100.arm.linux.org.uk>
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

T24gTW9uLCBOb3YgMDksIDIwMTUgYXQgMTI6MDM6MzVQTSArMDAwMCwgUnVzc2VsbCBLaW5nIC0g
QVJNIExpbnV4IHdyb3RlOgo+IE9uIE1vbiwgTm92IDA5LCAyMDE1IGF0IDExOjU3OjI3QU0gKzAw
MDAsIExpdml1IER1ZGF1IHdyb3RlOgo+ID4gTWVhbndoaWxlLCB3aGF0IGlzIHlvdXIgc3VnZ2Vz
dGlvbiByZWdhcmRpbmcgdGhlIHBhdGNoc2V0LiBJJ3ZlIHNlZW4gRGF2aWQgaGFzCj4gPiBzZW50
IExpbnVzIGEgcHVsbCByZXF1ZXN0IGZvciA0LjQtcmMxIHRoYXQgaW5jbHVkZXMgaXQuIFNob3Vs
ZCB3ZSBzZW5kIGEKPiA+IHJldmVydCBmb3Igcm9ja2NoaXAgY29tbWl0IGFuZCB0aGVuIHBhdGNo
IGxhdGVyIHRoZSBmdW5jdGlvbj8KPiAKPiBJdCBkZWZpbml0ZWx5IG5lZWRzIHRvIGJlIGZpeGVk
LCBhbmQgSSdkIHN1Z2dlc3QgaXRzIGVhcmx5IGVub3VnaCBpbiB0aGUKPiAtcmMgY3ljbGUgKHdo
aWNoIGhhc24ndCBiZWd1biB5ZXQpIHRvIHNpbXBseSBmaXggZHJtX29mX2NvbXBvbmVudF9wcm9i
ZSgpCj4gdG8gdGFrZSB0d28gY29tcGFyZSBmdW5jdGlvbnMuCgpJIHN0aWxsIGRvbid0IGhhdmUg
YSBSb2NrY2hpcCBib2FyZCB0byB0ZXN0IHRoZSBwYXRjaCwgc28gSSBuZWVkIHRvIGZpbmQgb3V0
CnNvbWVvbmUgd2lsbGluZyB0byB0ZXN0IHRoZW0uIE1hcms/Cgo+IAo+IEknZCBhbHNvIHN1Z2dl
c3QgYXQgdGhpcyBwb2ludCBhbm90aGVyIGNoYW5nZTogcGxlYXNlIHJlbmFtZSBpdCB0bwo+IGRy
bV9vZl9rbXNfY29tcG9uZW50X3Byb2JlKCkgc2luY2UgdGhpcyBpcyBvbmx5IGEgZ2VuZXJpYyBj
YXNlIGZvciBLTVMKPiBkcml2ZXJzLiAgR1BVIERSTSBkcml2ZXJzIG5lZWQgc29tZXRoaW5nIGRp
ZmZlcmVudC4KCk9LLCB3aWxsIGRvLgoKPiAKPiAtLSAKPiBGVFRDIGJyb2FkYmFuZCBmb3IgMC44
bWlsZSBsaW5lOiBjdXJyZW50bHkgYXQgOS42TWJwcyBkb3duIDQwMGticHMgdXAKPiBhY2NvcmRp
bmcgdG8gc3BlZWR0ZXN0Lm5ldC4KPiAKCi0tIAo9PT09PT09PT09PT09PT09PT09PQp8IEkgd291
bGQgbGlrZSB0byB8CnwgZml4IHRoZSB3b3JsZCwgIHwKfCBidXQgdGhleSdyZSBub3QgfAp8IGdp
dmluZyBtZSB0aGUgICB8CiBcIHNvdXJjZSBjb2RlISAgLwogIC0tLS0tLS0tLS0tLS0tLQogICAg
wq9cXyjjg4QpXy/CrwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo=
