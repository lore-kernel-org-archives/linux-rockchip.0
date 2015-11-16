From: Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH 1/2] drm: Improve drm_of_component_probe() to correctly
 handle ports and remote ports.
Date: Mon, 16 Nov 2015 17:32:05 +0000
Message-ID: <CAPj87rP_qPk0dKhLQDpFAsAqL2LxG=_5n+0KMRW=qEih4mBTJA@mail.gmail.com>
References: <1447685093-26129-1-git-send-email-Liviu.Dudau@arm.com>
 <1447685093-26129-2-git-send-email-Liviu.Dudau@arm.com>
 <20151116162241.GN8644@n2100.arm.linux.org.uk>
 <20151116164907.GA4158@e106497-lin.cambridge.arm.com>
 <20151116172248.GP8644@n2100.arm.linux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151116172248.GP8644@n2100.arm.linux.org.uk>
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

T24gMTYgTm92ZW1iZXIgMjAxNSBhdCAxNzoyMiwgUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4Cjxs
aW51eEBhcm0ubGludXgub3JnLnVrPiB3cm90ZToKPiBQbGVhc2Ugc2Vuc2libHkgd3JhcCB5b3Vy
IG1lc3NhZ2VzLiAgWW91ciBsaW5lcyBhcmUgbG9uZ2VyIHRoYW4gODAKPiBjaGFyYWN0ZXJzIHdo
aWNoIG1ha2VzIGl0IGV4Y2VlZGluZ2x5IGRpZmZpY3VsdCBmb3Igc29tZSBwZW9wbGUgdG8gcmVw
bHkKPiB0byB5b3VyIHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5
IHZlcnkgdmVyeSB2ZXJ5Cj4gdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5
IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5Cj4gdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5
IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5Cj4gdmVyeSB2ZXJ5
IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2
ZXJ5Cj4gdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2
ZXJ5IHZlcnkgdmVyeSB2ZXJ5Cj4gdmVyeSB2ZXJ5IHZlcnkgdmVyeSB2ZXJ5IHZlcnkgbG9uZyBs
aW5lcyB3aXRob3V0IGZpcnN0IHJlZm9ybWF0dGluZwo+IHRoZW0gbWFudWFsbHkgLSBhbmQgd2h5
IHNob3VsZCB0aGV5IGJvdGhlciB0byByZXBseSBpZiB0aGV5IGhhdmUgdGhhdAo+IGtpbmQgb2Yg
YWRkaXRpb25hbCB3b3JrPyAgVGhhbmtzLgoKSGlzIGxpbmVzIGFyZSB3cmFwcGVkIG1vc3RseSBh
dCA4MCwgYnV0IHNvbWV0aW1lcyBhdCA4NiwgY2hhcmFjdGVycy4KWW91IHNob3VsZCBwcm9iYWJs
eSBsb29rIGludG8gZml4aW5nIHlvdXIgTVVBLgoKQ2hlZXJzLApEYW5pZWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
