From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH 2/3] drm/rockchip: cdn-dp: Correct PHY register address
Date: Wed,  8 Mar 2017 10:27:56 +0800
Message-ID: <1488940077-22297-3-git-send-email-zyw@rock-chips.com>
References: <1488940077-22297-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1488940077-22297-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: linux-rockchip@lists.infradead.org, seanpaul@chromium.org, mark.yao@rock-chips.com, heiko@sntech.de, dianders@chromium.org
Cc: Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Q29ycmVjdCBzb21lIERQIHJlZ2lzdGVyIGFkZHJlc3MgZm9yIFBIWSBDb25maWd1cmF0aW9uIGFj
Y29yZGluZyB0bwpsYXRlc3QgZGF0YXNoZWV0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgWmhvbmcg
PHp5d0Byb2NrLWNoaXBzLmNvbT4KLS0tCgogZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1k
cC1yZWcuaCB8IDExICsrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5oCmluZGV4
IDM1MDdiZTMuLmM0YmJiNGE4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLXJlZy5o
CkBAIC0xMjEsMTIgKzEyMSwxMSBAQAogCiAvKiBkcHR4IHBoeSBhZGRyICovCiAjZGVmaW5lIERQ
X1RYX1BIWV9DT05GSUdfUkVHCQkweDIwMDAKLSNkZWZpbmUgRFBfVFhfUEhZX1NUQVRVU19SRUcJ
CTB4MjAwNAotI2RlZmluZSBEUF9UWF9QSFlfU1dfUkVTRVQJCTB4MjAwOAotI2RlZmluZSBEUF9U
WF9QSFlfU0NSQU1CTEVSX1NFRUQJMHgyMDBjCi0jZGVmaW5lIERQX1RYX1BIWV9UUkFJTklOR18w
MV8wNAkweDIwMTAKLSNkZWZpbmUgRFBfVFhfUEhZX1RSQUlOSU5HXzA1XzA4CTB4MjAxNAotI2Rl
ZmluZSBEUF9UWF9QSFlfVFJBSU5JTkdfMDlfMTAJMHgyMDE4CisjZGVmaW5lIERQX1RYX1BIWV9T
V19SRVNFVAkJMHgyMDA0CisjZGVmaW5lIERQX1RYX1BIWV9TQ1JBTUJMRVJfU0VFRAkweDIwMDgK
KyNkZWZpbmUgRFBfVFhfUEhZX1RSQUlOSU5HXzAxXzA0CTB4MjAwYworI2RlZmluZSBEUF9UWF9Q
SFlfVFJBSU5JTkdfMDVfMDgJMHgyMDEwCisjZGVmaW5lIERQX1RYX1BIWV9UUkFJTklOR18wOV8x
MAkweDIwMTQKICNkZWZpbmUgVEVTVF9DT1IJCQkweDIzZmMKIAogLyogZHB0eCBocGQgYWRkciAq
LwotLSAKMi42LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo=
