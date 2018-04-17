From: Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH] drm/rockchip: vop: fixup linebuffer mode calc error
Date: Tue, 17 Apr 2018 18:15:07 +0800
Message-ID: <1523960108-190541-1-git-send-email-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, David Airlie <airlied@linux.ie>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

V2hlbiB2aWRlbyB3aWR0aCBpcyBiaWdnZXIgdGhhbiAzODQwIHRoZSBsaW5lYnVmZmVyIG1vZGUK
c2hvdWxkIGJlIExCX1lVVl8zODQwWDUuCgpTaWduZWQtb2ZmLWJ5OiBTYW5keSBIdWFuZyA8aGpj
QHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcC5oIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaAppbmRl
eCA1NmJiZDJlLi4zZTc1MDFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wLmgKQEAgLTMzMiw3ICszMzIsNyBAQCBzdGF0aWMgaW5saW5lIGludCBzY2xfdm9w
X2NhbF9sYl9tb2RlKGludCB3aWR0aCwgYm9vbCBpc195dXYpCiAKIAlpZiAod2lkdGggPiAyNTYw
KQogCQlsYl9tb2RlID0gTEJfUkdCXzM4NDBYMjsKLQllbHNlIGlmICh3aWR0aCA+IDE5MjApCisJ
ZWxzZSBpZiAoIWlzX3l1diAmJiB3aWR0aCA+IDE5MjApCiAJCWxiX21vZGUgPSBMQl9SR0JfMjU2
MFg0OwogCWVsc2UgaWYgKCFpc195dXYpCiAJCWxiX21vZGUgPSBMQl9SR0JfMTkyMFg1OwotLSAK
Mi43LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
cmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
