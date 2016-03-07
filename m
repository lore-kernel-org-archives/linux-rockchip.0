From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 5/5] drm/imx: dw_hdmi: Don't call platform_set_drvdata()
Date: Mon,  7 Mar 2016 14:00:54 -0800
Message-ID: <1457388054-23077-5-git-send-email-dianders@chromium.org>
References: <1457388054-23077-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1457388054-23077-1-git-send-email-dianders@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, linux@arm.linux.org.uk, Heiko Stuebner <heiko@sntech.de>
Cc: john@keeping.me.uk, Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

VGhlIElNWCBkd19oZG1pIGRyaXZlciBqdXN0IGNhbGxlZCBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YSgp
IHRvIGdldAp5b3VyIGhvcGVzIHVwIHRoYXQgbWF5YmUsIHNvbWVob3csIHlvdSdkIGJlIGFibGUg
dG8gcmV0cmlldmUgdGhlICdzdHJ1Y3QKaW14X2hkbWknIGZyb20gYSBwb2ludGVyIHRvIHRoZSAn
c3RydWN0IGRldmljZScuICBZb3UgY2FuJ3QuICBXaGVuCndlIGNhbGwgZHdfaGRtaV9iaW5kKCkg
dGhlIG1haW4gZHJpdmVyIGNhbGxzIGRldl9zZXRfZHJ2ZGF0YSgpLCB3aGljaApjbG9iYmVycyBv
dXIgc2V0dGluZy4KCkxldCdzIGp1c3QgcmVtb3ZlIHRoZSBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YSgp
IHRvIGF2b2lkIGRhc2hpbmcgcGVvcGxlJ3MKaG9wZXMuCgpTaWduZWQtb2ZmLWJ5OiBEb3VnbGFz
IEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+Ci0tLQpDaGFuZ2VzIGluIHYyOgotIERv
bid0IGNhbGwgcGxhdGZvcm1fc2V0X2RydmRhdGEoKSBuZXcgZm9yIHYyLgoKIGRyaXZlcnMvZ3B1
L2RybS9pbXgvZHdfaGRtaS1pbXguYyB8IDIgLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pbXgvZHdfaGRtaS1pbXguYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pbXgvZHdfaGRtaS1pbXguYwppbmRleCBjNjljMzE0MjgxOWMuLmEyNDYz
MWZkZjRhZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2lteC9kd19oZG1pLWlteC5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pbXgvZHdfaGRtaS1pbXguYwpAQCAtMjI1LDggKzIyNSw2IEBA
IHN0YXRpYyBpbnQgZHdfaGRtaV9pbXhfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2UgKm1hc3RlciwKIAlpZiAoIWlvcmVzKQogCQlyZXR1cm4gLUVOWElPOwogCi0JcGxhdGZv
cm1fc2V0X2RydmRhdGEocGRldiwgaGRtaSk7Ci0KIAllbmNvZGVyLT5wb3NzaWJsZV9jcnRjcyA9
IGRybV9vZl9maW5kX3Bvc3NpYmxlX2NydGNzKGRybSwgZGV2LT5vZl9ub2RlKTsKIAkvKgogCSAq
IElmIHdlIGZhaWxlZCB0byBmaW5kIHRoZSBDUlRDKHMpIHdoaWNoIHRoaXMgZW5jb2RlciBpcwot
LSAKMi43LjAucmMzLjIwNy5nMGFjNTM0NAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCg==
