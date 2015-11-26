From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v5 04/11] drm/dsi: Add a helper to get bits per pixel of MIPI
 DSI pixel format
Date: Thu, 26 Nov 2015 15:50:18 +0800
Message-ID: <1448524225-5489-5-git-send-email-zyw@rock-chips.com>
References: <1448524225-5489-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448524225-5489-1-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, treding@nvidia.com
Cc: Chris Zhong <zyw@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogTGl1IFlpbmcgPFlpbmcubGl1QGZyZWVzY2FsZS5jb20+CgpTaWduZWQtb2ZmLWJ5OiBM
aXUgWWluZyA8WWluZy5MaXVAZnJlZXNjYWxlLmNvbT4KQWNrZWQtYnk6IFRoaWVycnkgUmVkaW5n
IDx0cmVkaW5nQG52aWRpYS5jb20+ClNpZ25lZC1vZmYtYnk6IENocmlzIFpob25nIDx6eXdAcm9j
ay1jaGlwcy5jb20+Ci0tLQoKQ2hhbmdlcyBpbiB2NTogTm9uZQpDaGFuZ2VzIGluIHY0OiBOb25l
CkNoYW5nZXMgaW4gdjM6IE5vbmUKQ2hhbmdlcyBpbiB2MjogTm9uZQoKIGluY2x1ZGUvZHJtL2Ry
bV9taXBpX2RzaS5oIHwgMTQgKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX21pcGlfZHNpLmggYi9pbmNs
dWRlL2RybS9kcm1fbWlwaV9kc2kuaAppbmRleCBmMWQ4ZDBkLi4zNjYyMDIxIDEwMDY0NAotLS0g
YS9pbmNsdWRlL2RybS9kcm1fbWlwaV9kc2kuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fbWlwaV9k
c2kuaApAQCAtMTYzLDYgKzE2MywyMCBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBtaXBpX2RzaV9k
ZXZpY2UgKnRvX21pcGlfZHNpX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJcmV0dXJuIGNv
bnRhaW5lcl9vZihkZXYsIHN0cnVjdCBtaXBpX2RzaV9kZXZpY2UsIGRldik7CiB9CiAKK3N0YXRp
YyBpbmxpbmUgaW50IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAoZW51bSBtaXBpX2RzaV9w
aXhlbF9mb3JtYXQgZm10KQoreworCXN3aXRjaCAoZm10KSB7CisJY2FzZSBNSVBJX0RTSV9GTVRf
UkdCODg4OgorCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2NjoKKwkJcmV0dXJuIDI0OworCWNhc2Ug
TUlQSV9EU0lfRk1UX1JHQjY2Nl9QQUNLRUQ6CisJCXJldHVybiAxODsKKwljYXNlIE1JUElfRFNJ
X0ZNVF9SR0I1NjU6CisJCXJldHVybiAxNjsKKwl9CisJcmV0dXJuIC1FSU5WQUw7Cit9CisKIHN0
cnVjdCBtaXBpX2RzaV9kZXZpY2UgKm9mX2ZpbmRfbWlwaV9kc2lfZGV2aWNlX2J5X25vZGUoc3Ry
dWN0IGRldmljZV9ub2RlICpucCk7CiBpbnQgbWlwaV9kc2lfYXR0YWNoKHN0cnVjdCBtaXBpX2Rz
aV9kZXZpY2UgKmRzaSk7CiBpbnQgbWlwaV9kc2lfZGV0YWNoKHN0cnVjdCBtaXBpX2RzaV9kZXZp
Y2UgKmRzaSk7Ci0tIAoyLjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwK
