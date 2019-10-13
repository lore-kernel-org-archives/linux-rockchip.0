From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip/rk3066: Use devm_platform_ioremap_resource()
 in rk3066_hdmi_bind()
Date: Sun, 13 Oct 2019 23:58:26 +0200
Message-ID: <12988569.FbAFs2EWry@phil>
References: <0666bc0b-6624-21a0-47c4-b78e2a3b3ad5@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <0666bc0b-6624-21a0-47c4-b78e2a3b3ad5@web.de>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Markus Elfring <Markus.Elfring@web.de>
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Zheng Yang <zhengyang@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

QW0gU2Ftc3RhZywgMjEuIFNlcHRlbWJlciAyMDE5LCAyMDo0MDoxNiBDRVNUIHNjaHJpZWIgTWFy
a3VzIEVsZnJpbmc6Cj4gRnJvbTogTWFya3VzIEVsZnJpbmcgPGVsZnJpbmdAdXNlcnMuc291cmNl
Zm9yZ2UubmV0Pgo+IERhdGU6IFNhdCwgMjEgU2VwIDIwMTkgMjA6MzI6MjUgKzAyMDAKPiAKPiBT
aW1wbGlmeSB0aGlzIGZ1bmN0aW9uIGltcGxlbWVudGF0aW9uIGJ5IHVzaW5nIGEga25vd24gd3Jh
cHBlciBmdW5jdGlvbi4KPiAKPiBUaGlzIGlzc3VlIHdhcyBkZXRlY3RlZCBieSB1c2luZyB0aGUg
Q29jY2luZWxsZSBzb2Z0d2FyZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgRWxmcmluZyA8
ZWxmcmluZ0B1c2Vycy5zb3VyY2Vmb3JnZS5uZXQ+CgphcHBsaWVkIHRvIGRybS1taXNjLW5leHQK
ClRoYW5rcwpIZWlrbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbA==
