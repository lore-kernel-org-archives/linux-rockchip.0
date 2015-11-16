From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [PATCH 1/2] drm: Improve drm_of_component_probe() to correctly
 handle ports and remote ports.
Date: Mon, 16 Nov 2015 17:43:21 +0000
Message-ID: <20151116174321.GR8644@n2100.arm.linux.org.uk>
References: <1447685093-26129-1-git-send-email-Liviu.Dudau@arm.com>
 <1447685093-26129-2-git-send-email-Liviu.Dudau@arm.com>
 <20151116162241.GN8644@n2100.arm.linux.org.uk>
 <20151116164907.GA4158@e106497-lin.cambridge.arm.com>
 <20151116172248.GP8644@n2100.arm.linux.org.uk>
 <CAPj87rP_qPk0dKhLQDpFAsAqL2LxG=_5n+0KMRW=qEih4mBTJA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <CAPj87rP_qPk0dKhLQDpFAsAqL2LxG=_5n+0KMRW=qEih4mBTJA@mail.gmail.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Liviu Dudau <Liviu.Dudau@arm.com>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBOb3YgMTYsIDIwMTUgYXQgMDU6MzI6MDVQTSArMDAwMCwgRGFuaWVsIFN0b25lIHdy
b3RlOgo+IE9uIDE2IE5vdmVtYmVyIDIwMTUgYXQgMTc6MjIsIFJ1c3NlbGwgS2luZyAtIEFSTSBM
aW51eAo+IDxsaW51eEBhcm0ubGludXgub3JnLnVrPiB3cm90ZToKPiA+IFBsZWFzZSBzZW5zaWJs
eSB3cmFwIHlvdXIgbWVzc2FnZXMuICBZb3VyIGxpbmVzIGFyZSBsb25nZXIgdGhhbiA4MAo+ID4g
Y2hhcmFjdGVycyB3aGljaCBtYWtlcyBpdCBleGNlZWRpbmdseSBkaWZmaWN1bHQgZm9yIHNvbWUg
cGVvcGxlIHRvIHJlcGx5Cj4gPiB0byB5b3VyIHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5
IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5Cj4gPiB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZl
cnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkKPiA+IHZlcnkg
dmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZl
cnkgdmVyeQo+ID4gdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkg
dmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5Cj4gPiB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVy
eSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkKPiA+IHZlcnkgdmVyeSB2
ZXJ5IHZlcnkgdmVyeSB2ZXJ5IGxvbmcgbGluZXMgd2l0aG91dCBmaXJzdCByZWZvcm1hdHRpbmcK
PiA+IHRoZW0gbWFudWFsbHkgLSBhbmQgd2h5IHNob3VsZCB0aGV5IGJvdGhlciB0byByZXBseSBp
ZiB0aGV5IGhhdmUgdGhhdAo+ID4ga2luZCBvZiBhZGRpdGlvbmFsIHdvcms/ICBUaGFua3MuCj4g
Cj4gSGlzIGxpbmVzIGFyZSB3cmFwcGVkIG1vc3RseSBhdCA4MCwgYnV0IHNvbWV0aW1lcyBhdCA4
NiwgY2hhcmFjdGVycy4KPiBZb3Ugc2hvdWxkIHByb2JhYmx5IGxvb2sgaW50byBmaXhpbmcgeW91
ciBNVUEuCgpOby4KClN0YW5kYXJkIG5ldCBldGlxdWV0dGUgaXMgdGhhdCBlbWFpbCBzaG91bGQg
YmUgd3JhcHBlZCBhcm91bmQgNzIKY2hhcmFjdGVycyB0byBnaXZlIHNwYWNlIGZvciByZXBseSBp
bmRlbnRhdGlvbiB0byByZW1haW4gcmVhZGFibGUKb24gYW4gODAgY29sdW1uIHNjcmVlbi4gTW9z
dCBvZiBteSBlbWFpbCByZXBsaWVzIGFyZSB3cml0dGVuIG9uIGFuCjgwIGNvbHVtbiBzY3JlZW4u
CgpXcmFwcGluZyBhdCA4MCsgY2hhcmFjdGVycyBpcyBhZ2FpbnN0IHByb3BlciBuZXQgZXRpcXVl
dHRlLgoKU2FtZSBhcHBsaWVzIHRvIEdJVCBjb21taXRzOiB3cmFwIGF0IGFyb3VuZCA3MiBjaGFy
YWN0ZXJzIHRvIGFsbG93CnRoZW0gdG8gYmUgcmVhZGFibGUgb24gYW4gODAgY29sdW1uIGRpc3Bs
YXkuICBMaW51cyB3aWxsIGhhdGUgeW91CmlmIHlvdSBkb24ndC4KCi0tIApGVFRDIGJyb2FkYmFu
ZCBmb3IgMC44bWlsZSBsaW5lOiBjdXJyZW50bHkgYXQgOS42TWJwcyBkb3duIDQwMGticHMgdXAK
YWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCg==
