From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 2/3] rk3399: Add boot flash script offset, size
Date: Fri, 10 Apr 2020 23:56:30 +0530
Message-ID: <20200410182631.11951-3-jagan@amarulasolutions.com>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200410182631.11951-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

TW9zdCBvZiB0aGUgU1BJIGZsYXNoIGRldmljZXMgaW4gcm9ja2NoaXAgKHJrMzM5OSkKYXJlIDE2
TWlCIHNpemUuIFNvLCBsZXQncyB1c2UgdGhlIHNjcmlwdCBvZmZzZXQgYXQKdGhlIGVuZCBvZiA4
Sy7CoAoKVGhpcyB3YXkgaXQgY2Fubm90IG92ZXJsYXAgYW55IG9mZnNldHMgYmVpbmcgdXNlZApi
eSBzb2Z0d2FyZSBjb21wb25lbnRzIGluIGZsYXNoIGxheW91dC4KClNpZ25lZC1vZmYtYnk6IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KLS0tCkNoYW5nZXMgZm9yIHYyOgotIG5l
dyBwYXRjaAoKIGluY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggfCAyICsrCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9jb25maWdzL3Jr
MzM5OV9jb21tb24uaCBiL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmgKaW5kZXggODlh
OGE0NGJiZS4uMDFhOTE3NGJkMiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9jb25maWdzL3JrMzM5OV9j
b21tb24uaAorKysgYi9pbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCkBAIC00OCw2ICs0
OCw4IEBACiAKICNkZWZpbmUgRU5WX01FTV9MQVlPVVRfU0VUVElOR1MgXAogCSJzY3JpcHRhZGRy
PTB4MDA1MDAwMDBcMCIgXAorCSJzY3JpcHRfb2Zmc2V0X2Y9MHhmZmUwMDBcMCIgXAorCSJzY3Jp
cHRfc2l6ZV9mPTB4MjAwMFwwIiBcCiAJInB4ZWZpbGVfYWRkcl9yPTB4MDA2MDAwMDBcMCIgXAog
CSJmZHRfYWRkcl9yPTB4MDFmMDAwMDBcMCIgXAogCSJrZXJuZWxfYWRkcl9yPTB4MDIwODAwMDBc
MCIgXAotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
