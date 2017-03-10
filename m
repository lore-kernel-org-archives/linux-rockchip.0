From: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 19/41] drm/bridge: analogix_dp: Wait for HPD signal before
 configuring link
Date: Thu,  9 Mar 2017 23:32:34 -0500
Message-ID: <20170310043305.17216-20-seanpaul@chromium.org>
References: <20170310043305.17216-1-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170310043305.17216-1-seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?St=C3=A9phane=20Marchesin?= <marcheu-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogemFpbiB3YW5nIDx3enpAcm9jay1jaGlwcy5jb20+CgpBY2NvcmRpbmcgdG8gRFAgc3Bl
YyB2MS4zIGNoYXAgMy41LjEuMiBMaW5rIFRyYWluaW5nLCBMaW5rIFBvbGljeSBNYWtlcgptdXN0
IGZpcnN0IGRldGVjdCB0aGF0IHRoZSBIUEQgc2lnbmFsIGlzIGFzc2VydGVkIGhpZ2ggYnkgdGhl
IERvd25zdHJlYW0KRGV2aWNlIGJlZm9yZSBlc3RhYmxpc2hpbmcgYSBsaW5rIHdpdGggaXQuCgpD
YzogU3TDqXBoYW5lIE1hcmNoZXNpbiA8bWFyY2hldUBjaHJvbWl1bS5vcmc+ClNpZ25lZC1vZmYt
Ynk6IHphaW4gd2FuZyA8d3p6QHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBTZWFuIFBh
dWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2Fu
YWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFs
b2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4
L2FuYWxvZ2l4X2RwX2NvcmUuYwppbmRleCBmM2VlYTc2MzZhMmUuLjA0OGI2ZjdjOWI2ZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3Jl
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3Jl
LmMKQEAgLTExNzIsNiArMTE3MiwxNSBAQCBzdGF0aWMgaW50IGFuYWxvZ2l4X2RwX3NldF9icmlk
Z2Uoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCiAJaWYgKHJldCkKIAkJZ290byBvdXRf
ZHBfaW5pdDsKIAorCS8qIEFjY29yZGluZyB0byBEUCBzcGVjIHYxLjMgY2hhcCAzLjUuMS4yIExp
bmsgVHJhaW5pbmcsCisJICogV2Ugc2hvdWxkIGZpcnN0IG1ha2Ugc3VyZSB0aGUgSFBEIHNpZ25h
bCBpcyBhc3NlcnRlZCBoaWdoIGJ5IGRldmljZQorCSAqIHdoZW4gd2Ugd2FudCB0byBlc3RhYmxp
c2ggYSBsaW5rIHdpdGggaXQuICovCisJcmV0ID0gYW5hbG9naXhfZHBfZGV0ZWN0X2hwZChkcCk7
CisJaWYgKHJldCkgeworCQlEUk1fRVJST1IoImZhaWxlZCB0byBnZXQgaHBkIHNpbmdsZSByZXQg
PSAlZFxuIiwgcmV0KTsKKwkJZ290byBvdXRfZHBfaW5pdDsKKwl9CisKIAlyZXQgPSBhbmFsb2dp
eF9kcF9jb21taXQoZHApOwogCWlmIChyZXQpCiAJCWdvdG8gb3V0X2RwX2luaXQ7Ci0tIAoyLjEy
LjAuMjQ2LmdhMmVjYzg0ODY2LWdvb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
