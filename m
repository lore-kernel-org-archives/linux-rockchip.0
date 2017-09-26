From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v2 7/8] arm64: dts: rockchip: add a grf clk for dw-mipi-dsi
Date: Tue, 26 Sep 2017 15:55:22 +0800
Message-ID: <1506412523-1766-7-git-send-email-nickey.yang@rock-chips.com>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie
Cc: bivvy.bi@rock-chips.com, hl@rock-chips.com, briannorris@chromium.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, nickey.yang@rock-chips.com, zyw@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

VGhlIGNsayBvZiBncmYgbXVzdCBiZSBlbmFibGVkIGJlZm9yZSB3cml0aW5nIGdyZgpyZWdpc3Rl
ciBmb3IgcmszMzk5LgoKU2lnbmVkLW9mZi1ieTogTmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJv
Y2stY2hpcHMuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0
c2kgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKaW5kZXggNmFhNDNm
ZC4uYWI3NjI5YyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTkuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCkBA
IC0xNjMwLDggKzE2MzAsOCBAQAogCQlyZWcgPSA8MHgwIDB4ZmY5NjAwMDAgMHgwIDB4ODAwMD47
CiAJCWludGVycnVwdHMgPSA8R0lDX1NQSSA0NSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OwogCQlj
bG9ja3MgPSA8JmNydSBTQ0xLX0RQSFlfUExMPiwgPCZjcnUgUENMS19NSVBJX0RTSTA+LAotCQkJ
IDwmY3J1IFNDTEtfRFBIWV9UWDBfQ0ZHPjsKLQkJY2xvY2stbmFtZXMgPSAicmVmIiwgInBjbGsi
LCAicGh5X2NmZyI7CisJCQkgPCZjcnUgU0NMS19EUEhZX1RYMF9DRkc+LCA8JmNydSBQQ0xLX1ZJ
T19HUkY+OworCQljbG9jay1uYW1lcyA9ICJyZWYiLCAicGNsayIsICJwaHlfY2ZnIiwgImdyZiI7
CiAJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzM5OV9QRF9WSU8+OwogCQlyb2NrY2hpcCxn
cmYgPSA8JmdyZj47CiAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Ci0tIAoxLjkuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcg
bGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
