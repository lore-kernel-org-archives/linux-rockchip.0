From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 17/43] drm/bridge: analogix_dp: Wait for HPD signal before
 configuring link
Date: Tue, 30 Jan 2018 21:28:47 +0100
Message-ID: <20180130202913.28724-18-thierry.escande@collabora.com>
References: <20180130202913.28724-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180130202913.28724-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Transfert-Encoding: 8bit
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogemFpbiB3YW5nIDx3enpAcm9jay1jaGlwcy5jb20+CgpBY2NvcmRpbmcgdG8gRFAgc3Bl
YyB2MS4zIGNoYXAgMy41LjEuMiBMaW5rIFRyYWluaW5nLCBMaW5rIFBvbGljeSBNYWtlcgptdXN0
IGZpcnN0IGRldGVjdCB0aGF0IHRoZSBIUEQgc2lnbmFsIGlzIGFzc2VydGVkIGhpZ2ggYnkgdGhl
IERvd25zdHJlYW0KRGV2aWNlIGJlZm9yZSBlc3RhYmxpc2hpbmcgYSBsaW5rIHdpdGggaXQuCgpD
YzogU3TDqXBoYW5lIE1hcmNoZXNpbiA8bWFyY2hldUBjaHJvbWl1bS5vcmc+ClNpZ25lZC1vZmYt
Ynk6IHphaW4gd2FuZyA8d3p6QHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBTZWFuIFBh
dWwgPHNlYW5wYXVsQGNocm9taXVtLm9yZz4KU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBFc2NhbmRl
IDx0aGllcnJ5LmVzY2FuZGVAY29sbGFib3JhLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyB8IDExICsrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKaW5kZXggYmEyNTA2ZTE3ZjZkLi5jOTQwYTVi
YjgwYWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9n
aXhfZHBfY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9n
aXhfZHBfY29yZS5jCkBAIC0xMTcwLDYgKzExNzAsMTcgQEAgc3RhdGljIGludCBhbmFsb2dpeF9k
cF9zZXRfYnJpZGdlKHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQogCWlmIChyZXQpCiAJ
CWdvdG8gb3V0X2RwX2luaXQ7CiAKKwkvKgorCSAqIEFjY29yZGluZyB0byBEUCBzcGVjIHYxLjMg
Y2hhcCAzLjUuMS4yIExpbmsgVHJhaW5pbmcsCisJICogV2Ugc2hvdWxkIGZpcnN0IG1ha2Ugc3Vy
ZSB0aGUgSFBEIHNpZ25hbCBpcyBhc3NlcnRlZCBoaWdoIGJ5IGRldmljZQorCSAqIHdoZW4gd2Ug
d2FudCB0byBlc3RhYmxpc2ggYSBsaW5rIHdpdGggaXQuCisJICovCisJcmV0ID0gYW5hbG9naXhf
ZHBfZGV0ZWN0X2hwZChkcCk7CisJaWYgKHJldCkgeworCQlEUk1fRVJST1IoImZhaWxlZCB0byBn
ZXQgaHBkIHNpbmdsZSByZXQgPSAlZFxuIiwgcmV0KTsKKwkJZ290byBvdXRfZHBfaW5pdDsKKwl9
CisKIAlyZXQgPSBhbmFsb2dpeF9kcF9jb21taXQoZHApOwogCWlmIChyZXQpCiAJCWdvdG8gb3V0
X2RwX2luaXQ7Ci0tIAoyLjE0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
