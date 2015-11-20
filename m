From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v4 02/13] clk: rockchip: add mipidsi clocks on rk3288
Date: Fri, 20 Nov 2015 16:15:28 +0800
Message-ID: <1448007339-10966-3-git-send-email-zyw@rock-chips.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, treding@nvidia.com, emil.l.velikov@gmail.com
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, Chris Zhong <zyw@rock-chips.com>, rmk+kernel@arm.linux.org.uk, ajaykumar.rs@samsung.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

c2Nsa19taXBpZHNpXzI0bSBpcyB0aGUgZ2F0aW5nIG9mIG1pcGkgZHNpIHBoeS4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFpob25nIDx6eXdAcm9jay1jaGlwcy5jb20+Ci0tLQoKQ2hhbmdlcyBpbiB2
NDogTm9uZQpDaGFuZ2VzIGluIHYzOiBOb25lCkNoYW5nZXMgaW4gdjI6IE5vbmUKCiBkcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGstcmszMjg4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMjg4LmMKaW5kZXgg
OTA0MDg3OC4uYzdkN2ViZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJr
MzI4OC5jCisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMyODguYwpAQCAtNzA5LDcg
KzcwOSw3IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCByazMyODhfY2xrX2Jy
YW5jaGVzW10gX19pbml0ZGF0YSA9IHsKIAlHQVRFKFNDTEtfTENEQ19QV00xLCAic2Nsa19sY2Rj
X3B3bTEiLCAieGluMjRtIiwgMCwgUkszMjg4X0NMS0dBVEVfQ09OKDEzKSwgMTEsIEdGTEFHUyks
CiAJR0FURShTQ0xLX1BWVE1fQ09SRSwgInNjbGtfcHZ0bV9jb3JlIiwgInhpbjI0bSIsIDAsIFJL
MzI4OF9DTEtHQVRFX0NPTig1KSwgOSwgR0ZMQUdTKSwKIAlHQVRFKFNDTEtfUFZUTV9HUFUsICJz
Y2xrX3B2dG1fZ3B1IiwgInhpbjI0bSIsIDAsIFJLMzI4OF9DTEtHQVRFX0NPTig1KSwgMTAsIEdG
TEFHUyksCi0JR0FURSgwLCAic2Nsa19taXBpZHNpXzI0bSIsICJ4aW4yNG0iLCAwLCBSSzMyODhf
Q0xLR0FURV9DT04oNSksIDE1LCBHRkxBR1MpLAorCUdBVEUoU0NMS19NSVBJXzI0TSwgInNjbGtf
bWlwaWRzaV8yNG0iLCAieGluMjRtIiwgMCwgUkszMjg4X0NMS0dBVEVfQ09OKDUpLCAxNSwgR0ZM
QUdTKSwKIAogCS8qIHNjbGtfZ3B1IGdhdGVzICovCiAJR0FURShBQ0xLX0dQVSwgImFjbGtfZ3B1
IiwgInNjbGtfZ3B1IiwgMCwgUkszMjg4X0NMS0dBVEVfQ09OKDE4KSwgMCwgR0ZMQUdTKSwKLS0g
CjIuNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
cmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
