From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH 04/11] rk3399: Add boot flash script offet, size
Date: Sat, 21 Dec 2019 13:24:33 +0530
Message-ID: <20191221075440.6944-5-jagan@amarulasolutions.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191221075440.6944-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

TW9zdCBvZiB0aGUgU1BJIGZsYXNoIGRldmljZXMgaW4gcm9ja2NoaXAgKHJrMzM5OSkKYXJlIDE2
TWlCIHNpemUuIFNvLCBsZXQncyB1c2UgdGhlIHNjcmlwdCBvZmZzZXQgYXQKdGhlIGVuZCBvZiA4
Sy7CoAoKVGhpcyB3YXkgaXQgY2Fubm90IG92ZXJsYXAgYW55IG9mZnNldHMgYmVpbmcgdXNlZApi
eSBzb2Z0d2FyZSBjb21wb25lbnRzIGluIGZsYXNoIGxheW91dC4KClNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgotLS0KIGluY2x1ZGUvY29uZmln
cy9yazMzOTlfY29tbW9uLmggfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaCBiL2luY2x1ZGUv
Y29uZmlncy9yazMzOTlfY29tbW9uLmgKaW5kZXggMTI3Y2ExZjA5Yy4uOTJlYjVjYjc1MCAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9jb21tb24uaAorKysgYi9pbmNsdWRlL2Nv
bmZpZ3MvcmszMzk5X2NvbW1vbi5oCkBAIC00OCw2ICs0OCw4IEBACiAKICNkZWZpbmUgRU5WX01F
TV9MQVlPVVRfU0VUVElOR1MgXAogCSJzY3JpcHRhZGRyPTB4MDA1MDAwMDBcMCIgXAorCSJzY3Jp
cHRfb2Zmc2V0X2Y9MHhmZmUwMDBcMCIgXAorCSJzY3JpcHRfc2l6ZV9mPTB4MjAwMFwwIiBcCiAJ
InB4ZWZpbGVfYWRkcl9yPTB4MDA2MDAwMDBcMCIgXAogCSJmZHRfYWRkcl9yPTB4MDFmMDAwMDBc
MCIgXAogCSJrZXJuZWxfYWRkcl9yPTB4MDIwODAwMDBcMCIgXAotLSAKMi4xOC4wLjMyMS5nZmZj
NmZhMGUzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
