From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v17 5/7] drm/rockchip: cdn-dp: Move mutex_init to probe
Date: Sun,  5 Feb 2017 15:55:00 +0800
Message-ID: <1486281302-28200-6-git-send-email-zyw@rock-chips.com>
References: <1486281302-28200-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1486281302-28200-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org, zyw@rock-chips.com, groeck@chromium.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogSmVmZnkgQ2hlbiA8amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KCldlJ3JlIHRyeWlu
ZyB0byBsb2NrIG11dGV4IHdoZW4gY2RuLWRwIHNodXRkb3duLCBzbyB3ZSBuZWVkIHRvIG1ha2UK
c3VyZSB0aGUgbXV0ZXggaXMgaW5pdGVkIGluIGNkbi1kcCdzIHByb2JlLgoKU2lnbmVkLW9mZi1i
eTogSmVmZnkgQ2hlbiA8amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KUmV2aWV3ZWQtYnk6IEd1
ZW50ZXIgUm9lY2sgPGdyb2Vja0BjaHJvbWl1bS5vcmc+ClJldmlld2VkLWJ5OiBDaHJpcyBaaG9u
ZyA8enl3QHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBaaG9uZyA8enl3QHJv
Y2stY2hpcHMuY29tPgotLS0KCkNoYW5nZXMgaW4gdjE3OiBOb25lCgogZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvY2RuLWRwLWNvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5j
CmluZGV4IDYyZTAyYTQuLjc5OWU4MjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jCkBAIC0xMDQxLDcgKzEwNDEsNiBAQCBzdGF0aWMgaW50IGNkbl9kcF9iaW5kKHN0cnVj
dCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZSAqbWFzdGVyLCB2b2lkICpkYXRhKQogCWRwLT5j
b25uZWN0ZWQgPSBmYWxzZTsKIAlkcC0+YWN0aXZlID0gZmFsc2U7CiAKLQltdXRleF9pbml0KCZk
cC0+bG9jayk7CiAJSU5JVF9XT1JLKCZkcC0+ZXZlbnRfd29yaywgY2RuX2RwX3BkX2V2ZW50X3dv
cmspOwogCiAJZW5jb2RlciA9ICZkcC0+ZW5jb2RlcjsKQEAgLTEyMDQsNiArMTIwMyw3IEBAIHN0
YXRpYyBpbnQgY2RuX2RwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXJl
dHVybiAtRUlOVkFMOwogCX0KIAorCW11dGV4X2luaXQoJmRwLT5sb2NrKTsKIAlkZXZfc2V0X2Ry
dmRhdGEoZGV2LCBkcCk7CiAKIAlyZXR1cm4gY29tcG9uZW50X2FkZChkZXYsICZjZG5fZHBfY29t
cG9uZW50X29wcyk7Ci0tIAoyLjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCg==
