From: Thierry Escande <thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 37/40] drm/panel: simple: Change mode for Sharp lq123p1jx31
Date: Mon, 15 Jan 2018 18:16:11 +0100
Message-ID: <20180115171614.14474-38-thierry.escande@collabora.com>
References: <20180115171614.14474-1-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180115171614.14474-1-thierry.escande-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
To: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Inki Dae <inki.dae-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Thierry Reding <thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>
Cc: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?q?=C3=98rjan=20Eide?= <orjan.eide-5wv7dgnIgG8@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Haixia Shi <hshi-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+CgpDaGFuZ2UgdGhlIG1vZGUg
Zm9yIFNoYXJwIGxxMTIzcDFqeDMxIHBhbmVsIHRvIHNvbWV0aGluZyBtb3JlCnJvY2tjaGlwLWZy
aWVuZGx5IHN1Y2ggdGhhdCB3ZSBjYW4gdXNlIHRoZSBmaXhlZCBQTExzIHRvCmdlbmVyYXRlIHRo
ZSBwaXhlbCBjbG9jawoKQ2M6IENocmlzIFpob25nIDx6eXdAcm9jay1jaGlwcy5jb20+CkNjOiBT
dMOpcGhhbmUgTWFyY2hlc2luIDxtYXJjaGV1QGNocm9taXVtLm9yZz4KU2lnbmVkLW9mZi1ieTog
U2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+ClNpZ25lZC1vZmYtYnk6IFRoaWVycnkg
RXNjYW5kZSA8dGhpZXJyeS5lc2NhbmRlQGNvbGxhYm9yYS5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9wYW5lbC9wYW5lbC1zaW1wbGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1zaW1w
bGUuYwppbmRleCA1NTkxOTg0YTM5MmIuLmE0YTZlYTNjYTBlNiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpbXBsZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5l
bC9wYW5lbC1zaW1wbGUuYwpAQCAtMTc0MiwxNyArMTc0MiwxOCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHBhbmVsX2Rlc2Mgc2hhcnBfbHExMDFrMWx5MDQgPSB7CiB9OwogCiBzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9kaXNwbGF5X21vZGUgc2hhcnBfbHExMjNwMWp4MzFfbW9kZSA9IHsKLQkuY2xv
Y2sgPSAyNTI3NTAsCisJLmNsb2NrID0gMjY2NjY3LAogCS5oZGlzcGxheSA9IDI0MDAsCiAJLmhz
eW5jX3N0YXJ0ID0gMjQwMCArIDQ4LAogCS5oc3luY19lbmQgPSAyNDAwICsgNDggKyAzMiwKLQku
aHRvdGFsID0gMjQwMCArIDQ4ICsgMzIgKyA4MCwKKwkuaHRvdGFsID0gMjQwMCArIDQ4ICsgMzIg
KyAxMzksCiAJLnZkaXNwbGF5ID0gMTYwMCwKIAkudnN5bmNfc3RhcnQgPSAxNjAwICsgMywKIAku
dnN5bmNfZW5kID0gMTYwMCArIDMgKyAxMCwKLQkudnRvdGFsID0gMTYwMCArIDMgKyAxMCArIDMz
LAorCS52dG90YWwgPSAxNjAwICsgMyArIDEwICsgODQsCiAJLnZyZWZyZXNoID0gNjAsCiAJLmZs
YWdzID0gRFJNX01PREVfRkxBR19OVlNZTkMgfCBEUk1fTU9ERV9GTEFHX05IU1lOQywKKwkudHlw
ZSA9IERSTV9NT0RFX1RZUEVfUFJFRkVSUkVEIHwgRFJNX01PREVfVFlQRV9EUklWRVIsCiB9Owog
CiBzdGF0aWMgY29uc3Qgc3RydWN0IHBhbmVsX2Rlc2Mgc2hhcnBfbHExMjNwMWp4MzEgPSB7Ci0t
IAoyLjE0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
