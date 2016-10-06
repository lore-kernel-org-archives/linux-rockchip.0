From: =?utf-8?B?UGF3ZcWC?= Jarosz <paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] ARM: dts: rockchip: initialize rk3066 PLL clock rate
Date: Thu, 6 Oct 2016 21:42:21 +0200
Message-ID: <20161006194221.GA4895@vaio-ubuntu>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

SW5pdGlhbGl6ZSBQTEwgcmF0ZSB3aGlsZSBrZXJuZWwgaW5pdC4gTm8gb3RoZXIgbW9kdWxlIGRv
ZXMgdGhhbi4KQ2xvY2sgcmF0ZXMgYXJlIHRha2VuIGZyb20gcmszMDY2IFRSTS4gQXNzaWduZWQg
dmFsdWVzIGFyZSBmb3IgMTI1IGRlZ3JlZXMKY2VsY2l1cyBvcGVyYXRpbmcgcG9pbnQuClRoaXMg
Z2l2ZXMgdXMgcGVyZm9ybWFuY2UgYm9vc3Qgb2JzZXJ2YWJsZSBmb3IgZXhhbXBsZSBpbiBtbWMg
dHJhbnNmZXJzLgoKU2lnbmVkLW9mZi1ieTogUGF3ZcWCIEphcm9zeiA8cGF3ZWxqYXJvc3ozNjkx
QGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kgfCA0ICsrKysK
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9yazMwNjZhLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kKaW5k
ZXggMGQwZGFlMy4uY2YyMTVlOCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcmszMDY2
YS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEuZHRzaQpAQCAtMTUxLDYgKzE1
MSwxMCBAQAogCiAJCSNjbG9jay1jZWxscyA9IDwxPjsKIAkJI3Jlc2V0LWNlbGxzID0gPDE+Owor
CQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBQTExfRFBMTD4sIDwmY3J1IFBMTF9BUExMPiwKKwkJ
CQkgIDwmY3J1IFBMTF9DUExMPiwgPCZjcnUgUExMX0dQTEw+OworCQlhc3NpZ25lZC1jbG9jay1y
YXRlcyA9IDw1MzMwMDAwMDA+LCA8NjAwMDAwMDAwPiwKKwkJCQkgICAgICAgPDYwMDAwMDAwMD4s
IDw2MDAwMDAwMDA+OwogCX07CiAKIAl0aW1lckAyMDAwZTAwMCB7Ci0tIAoyLjcuNAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
