From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v4 04/13] drm/dsi: Add a helper to get bits per pixel of MIPI
 DSI pixel format
Date: Fri, 20 Nov 2015 16:15:30 +0800
Message-ID: <1448007339-10966-5-git-send-email-zyw@rock-chips.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, treding@nvidia.com, emil.l.velikov@gmail.com
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chris Zhong <zyw@rock-chips.com>, rmk+kernel@arm.linux.org.uk, ajaykumar.rs@samsung.com
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogTGl1IFlpbmcgPFlpbmcubGl1QGZyZWVzY2FsZS5jb20+CgpTaWduZWQtb2ZmLWJ5OiBM
aXUgWWluZyA8WWluZy5MaXVAZnJlZXNjYWxlLmNvbT4KQWNrZWQtYnk6IFRoaWVycnkgUmVkaW5n
IDx0cmVkaW5nQG52aWRpYS5jb20+ClNpZ25lZC1vZmYtYnk6IENocmlzIFpob25nIDx6eXdAcm9j
ay1jaGlwcy5jb20+Ci0tLQoKQ2hhbmdlcyBpbiB2NDogTm9uZQpDaGFuZ2VzIGluIHYzOiBOb25l
CkNoYW5nZXMgaW4gdjI6IE5vbmUKCiBpbmNsdWRlL2RybS9kcm1fbWlwaV9kc2kuaCB8IDE0ICsr
KysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2luY2x1ZGUvZHJtL2RybV9taXBpX2RzaS5oIGIvaW5jbHVkZS9kcm0vZHJtX21pcGlfZHNp
LmgKaW5kZXggZjFkOGQwZC4uMzY2MjAyMSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX21p
cGlfZHNpLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX21pcGlfZHNpLmgKQEAgLTE2Myw2ICsxNjMs
MjAgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICp0b19taXBpX2RzaV9k
ZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KQogCXJldHVybiBjb250YWluZXJfb2YoZGV2LCBzdHJ1
Y3QgbWlwaV9kc2lfZGV2aWNlLCBkZXYpOwogfQogCitzdGF0aWMgaW5saW5lIGludCBtaXBpX2Rz
aV9waXhlbF9mb3JtYXRfdG9fYnBwKGVudW0gbWlwaV9kc2lfcGl4ZWxfZm9ybWF0IGZtdCkKK3sK
Kwlzd2l0Y2ggKGZtdCkgeworCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjg4ODoKKwljYXNlIE1JUElf
RFNJX0ZNVF9SR0I2NjY6CisJCXJldHVybiAyNDsKKwljYXNlIE1JUElfRFNJX0ZNVF9SR0I2NjZf
UEFDS0VEOgorCQlyZXR1cm4gMTg7CisJY2FzZSBNSVBJX0RTSV9GTVRfUkdCNTY1OgorCQlyZXR1
cm4gMTY7CisJfQorCXJldHVybiAtRUlOVkFMOworfQorCiBzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNl
ICpvZl9maW5kX21pcGlfZHNpX2RldmljZV9ieV9ub2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAp
OwogaW50IG1pcGlfZHNpX2F0dGFjaChzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2kpOwogaW50
IG1pcGlfZHNpX2RldGFjaChzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2kpOwotLSAKMi42LjMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
