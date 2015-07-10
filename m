From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Subject: [PATCH] Drop owner assignment from i2c_driver (and platform
 left-overs)
Date: Fri, 10 Jul 2015 14:36:36 +0900
Message-ID: <1436506597-1096-1-git-send-email-k.kozlowski@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <k.kozlowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

SGksCgoKVGhlIGkyYyBkcml2ZXJzIGFsc28gZG8gbm90IGhhdmUgdG8gc2V0ICdvd25lcicgZmll
bGQgYmVjYXVzZQppMmNfcmVnaXN0ZXJfZHJpdmVyKCkgd2lsbCBkbyBpdCBpbnN0ZWFkLgoKJ293
bmVyJyBpcyByZW1vdmVkIGZyb20gaTJjIGRyaXZlcnMsIHdoaWNoIEkgd2FzIGFibGUgdG8gY29t
cGlsZQp3aXRoIGFsbHllc2NvbmZpZyAoYXJtLCBhcm02NCwgaTM4NiwgeDg2XzY0LCBwcGM2NCku
Ck9ubHkgY29tcGlsZS10ZXN0ZWQuCgpUaGUgY29jY2luZWxsZSBzY3JpcHQgd2hpY2ggZ2VuZXJh
dGVkIHRoZSBwYXRjaCB3YXMgc2VudCBoZXJlOgpodHRwOi8vd3d3LnNwaW5pY3MubmV0L2xpc3Rz
L2tlcm5lbC9tc2cyMDI5OTAzLmh0bWwKCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCktyenlz
enRvZiBLb3psb3dza2kgKDEpOgogIGRybTogRHJvcCBvd25lciBhc3NpZ25tZW50IGZyb20gaTJj
X2RyaXZlcgoKIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvcHM4NjIyLmMgICAgICAgICAgICAgfCAx
IC0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvcHRuMzQ2MC5jICAgICAgICAgICAgfCAxIC0KIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAxIC0KIDMgZmlsZXMg
Y2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
