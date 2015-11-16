From: Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH 1/2] drm: Improve drm_of_component_probe() to correctly
 handle ports and remote ports.
Date: Mon, 16 Nov 2015 17:48:32 +0000
Message-ID: <CAPj87rPFXN=hONwcR+9gN844kTxr1wu4tfSRKpsXjaURxS1=eA@mail.gmail.com>
References: <1447685093-26129-1-git-send-email-Liviu.Dudau@arm.com>
 <1447685093-26129-2-git-send-email-Liviu.Dudau@arm.com>
 <20151116162241.GN8644@n2100.arm.linux.org.uk>
 <20151116164907.GA4158@e106497-lin.cambridge.arm.com>
 <20151116172248.GP8644@n2100.arm.linux.org.uk>
 <CAPj87rP_qPk0dKhLQDpFAsAqL2LxG=_5n+0KMRW=qEih4mBTJA@mail.gmail.com>
 <20151116174321.GR8644@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151116174321.GR8644@n2100.arm.linux.org.uk>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Liviu Dudau <Liviu.Dudau@arm.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMTYgTm92ZW1iZXIgMjAxNSBhdCAxNzo0MywgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4Cjxs
aW51eEBhcm0ubGludXgub3JnLnVrPiB3cm90ZToKPiBPbiBNb24sIE5vdiAxNiwgMjAxNSBhdCAw
NTozMjowNVBNICswMDAwLCBEYW5pZWwgU3RvbmUgd3JvdGU6Cj4+IE9uIDE2IE5vdmVtYmVyIDIw
MTUgYXQgMTc6MjIsIFJ1c3NlbGwgS2luZyAtIEFSTSBMaW51eAo+PiA8bGludXhAYXJtLmxpbnV4
Lm9yZy51az4gd3JvdGU6Cj4+ID4gUGxlYXNlIHNlbnNpYmx5IHdyYXAgeW91ciBtZXNzYWdlcy4g
IFlvdXIgbGluZXMgYXJlIGxvbmdlciB0aGFuIDgwCj4+ID4gY2hhcmFjdGVycyB3aGljaCBtYWtl
cyBpdCBleGNlZWRpbmdseSBkaWZmaWN1bHQgZm9yIHNvbWUgcGVvcGxlIHRvIHJlcGx5Cj4+ID4g
dG8geW91ciB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5
IHZlcnkgdmVyeQo+PiA+IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2
ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeQo+PiA+IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVy
eSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeQo+PiA+IHZlcnkg
dmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZl
cnkgdmVyeQo+PiA+IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5
IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeQo+PiA+IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2
ZXJ5IGxvbmcgbGluZXMgd2l0aG91dCBmaXJzdCByZWZvcm1hdHRpbmcKPj4gPiB0aGVtIG1hbnVh
bGx5IC0gYW5kIHdoeSBzaG91bGQgdGhleSBib3RoZXIgdG8gcmVwbHkgaWYgdGhleSBoYXZlIHRo
YXQKPj4gPiBraW5kIG9mIGFkZGl0aW9uYWwgd29yaz8gIFRoYW5rcy4KPj4KPj4gSGlzIGxpbmVz
IGFyZSB3cmFwcGVkIG1vc3RseSBhdCA4MCwgYnV0IHNvbWV0aW1lcyBhdCA4NiwgY2hhcmFjdGVy
cy4KPj4gWW91IHNob3VsZCBwcm9iYWJseSBsb29rIGludG8gZml4aW5nIHlvdXIgTVVBLgo+Cj4g
Tm8uCj4KPiBTdGFuZGFyZCBuZXQgZXRpcXVldHRlIGlzIHRoYXQgZW1haWwgc2hvdWxkIGJlIHdy
YXBwZWQgYXJvdW5kIDcyCj4gY2hhcmFjdGVycyB0byBnaXZlIHNwYWNlIGZvciByZXBseSBpbmRl
bnRhdGlvbiB0byByZW1haW4gcmVhZGFibGUKPiBvbiBhbiA4MCBjb2x1bW4gc2NyZWVuLiBNb3N0
IG9mIG15IGVtYWlsIHJlcGxpZXMgYXJlIHdyaXR0ZW4gb24gYW4KPiA4MCBjb2x1bW4gc2NyZWVu
LgoKT2gsIEkganVzdCB0aG91Z2h0IHRoZXJlIHdhcwphIGdyZWF0ZXIgcmVhc29uIGZvciB5b3Vy
CjY2MC1jaGFyYWN0ZXIgdGFudHJ1bQp0aGFuIHNvbWVvbmUgb3ZlcnNob290aW5nCmJ5IDE0IGNo
YXJhY3RlcnMgb24KYSBjb3VwbGUgb2YgbGluZXMuCgpUaGVuIGFnYWluLApoYXZpbmcgcmVhZCB0
aGUKcmVzdCBvZiB0aGUKcG9pbnRsZXNzbHkgaG9zdGlsZSBtYWlsLAppdCdzIGVudGlyZWx5IGlu
IGtlZXBpbmcKd2l0aCB0aGUgcmVzdC4KClNoYW1lIHRoYXQgeW91cgpuZWVkbGVzcyBhZ2dyZXNz
aW9uCm9ic2N1cmVzIGEKZmFpcmx5IHZhbGlkCnBvaW50LgoKSGF2ZQphCmxvdmVseQpldmVuCmlu
ZwouCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
