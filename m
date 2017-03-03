From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: [PATCH v6 0/4] drm/dp: Implement CRC debugfs API
Date: Fri,  3 Mar 2017 14:39:32 +0100
Message-ID: <20170303133936.14964-1-tomeu.vizoso@collabora.com>
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
To: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Emil Velikov <emil.l.velikov@gmail.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, intel-gfx-trybot@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
List-Id: linux-rockchip.vger.kernel.org

SGksCgp0aGlzIHNlcmllcyBidWlsZHMgdXAgb24gdGhlIEFQSSBmb3IgZXhwb3NpbmcgY2FwdHVy
ZWQgQ1JDcyB0aHJvdWdoCmRlYnVnZnMuCgpJdCBhZGRzIG5ldyBEUCBoZWxwZXJzIGZvciBzdGFy
dGluZyBhbmQgc3RvcHBpbmcgQ1JDIGNhcHR1cmUgYW5kIGdldHMKdGhlIFJvY2tjaGlwIGRyaXZl
ciB0byB1c2UgaXQuCgpXaXRoIHRoZXNlIHBhdGNoZXMsIHRlc3RzIGluIElHVCBzdWNoIGFzIGtt
c19waXBlX2NyY19iYXNpYyBhbmQKa21zX3BsYW5lIGRvIHBhc3Mgb24gUkszMjg4LgoKSW4gdGhp
cyB2NiwgdGhlIGJhY2twb2ludGVyIGluIGRybV9kcF9hdXggYmVjb21lcyBkcm1fY3J0YyBpbnN0
ZWFkIG9mCmRybV9jb25uZWN0b3IsIGZvbGxvd2luZyBkaXNjdXNzaW9uIHdpdGggU2VhbiBQYXVs
LgoKVGhhbmtzLAoKVG9tZXUKCgpUb21ldSBWaXpvc28gKDQpOgogIGRybS9kcDogYWRkIGNydGMg
YmFja3BvaW50ZXIgdG8gZHJtX2RwX2F1eAogIGRybS9kcDogYWRkIGhlbHBlcnMgZm9yIGNhcHR1
cmUgb2YgZnJhbWUgQ1JDcwogIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBhZGQgaGVscGVycyBm
b3IgY2FwdHVyZSBvZiBmcmFtZSBDUkNzCiAgZHJtL3JvY2tjaGlwOiBJbXBsZW1lbnQgQ1JDIGRl
YnVnZnMgQVBJCgogZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9j
b3JlLmMgfCAgMjIgKysrKwogZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyAgICAgICAg
ICAgICAgICAgICAgfCAxMjYgKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jICAgICAgICB8ICA0MSArKysrKysrCiBpbmNsdWRl
L2RybS9icmlkZ2UvYW5hbG9naXhfZHAuaCAgICAgICAgICAgICAgICAgICB8ICAgMyArCiBpbmNs
dWRlL2RybS9kcm1fZHBfaGVscGVyLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAgOSArKwog
NSBmaWxlcyBjaGFuZ2VkLCAyMDEgaW5zZXJ0aW9ucygrKQoKLS0gCjIuOS4zCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBs
aXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
