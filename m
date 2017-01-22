From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH v2 14/26] drm/rockchip: dw-mipi-dsi: fix escape clock rate
Date: Sun, 22 Jan 2017 17:37:18 +0800
Message-ID: <58847D4E.9020002@rock-chips.com>
References: <20170121163128.22240-1-john@metanate.com>
 <20170121163128.22240-15-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170121163128.22240-15-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@metanate.com>, Mark Yao <mark.yao@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

UmV2aWV3ZWQtYnk6IENocmlzIFpob25nIDx6eXdAcm9jay1jaGlwcy5jb20+CgpPbiAwMS8yMi8y
MDE3IDEyOjMxIEFNLCBKb2huIEtlZXBpbmcgd3JvdGU6Cj4gVXNlIHRoZSBzYW1lIGNhbGN1bGF0
aW9uIGFzIHRoZSB2ZW5kb3Iga2VybmVsIHRvIGRlcml2ZSB0aGUgZXNjYXBlIGNsb2NrCj4gc3Bl
ZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKb2huIEtlZXBpbmcgPGpvaG5AbWV0YW5hdGUuY29tPgo+
IC0tLQo+IFVuY2hhbmdlZCBpbiB2Mgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3LW1pcGktZHNpLmMgfCA0ICsrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5j
Cj4gaW5kZXggMjkwMjgyZTg2ZDE2Li5jMmUwYmE5NmUwYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvZHctbWlwaS1kc2kuYwo+IEBAIC03MTAsMTEgKzcxMCwxMyBAQCBzdGF0aWMgdm9p
ZCBkd19taXBpX2RzaV9kaXNhYmxlKHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICAgCj4gICBz
dGF0aWMgdm9pZCBkd19taXBpX2RzaV9pbml0KHN0cnVjdCBkd19taXBpX2RzaSAqZHNpKQo+ICAg
ewo+ICsJdTMyIGVzY19jbGtfZGl2aXNpb24gPSAoZHNpLT5sYW5lX21icHMgPj4gMykgLyAyMCAr
IDE7Cj4gKwo+ICAgCWRzaV93cml0ZShkc2ksIERTSV9QV1JfVVAsIFJFU0VUKTsKPiAgIAlkc2lf
d3JpdGUoZHNpLCBEU0lfUEhZX1JTVFosIFBIWV9ESVNGT1JDRVBMTCB8IFBIWV9ESVNBQkxFQ0xL
Cj4gICAJCSAgfCBQSFlfUlNUWiB8IFBIWV9TSFVURE9XTlopOwo+ICAgCWRzaV93cml0ZShkc2ks
IERTSV9DTEtNR1JfQ0ZHLCBUT19DTEtfRElWSURTSU9OKDEwKSB8Cj4gLQkJICBUWF9FU0NfQ0xL
X0RJVklEU0lPTig3KSk7Cj4gKwkJICBUWF9FU0NfQ0xLX0RJVklEU0lPTihlc2NfY2xrX2Rpdmlz
aW9uKSk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIGR3X21pcGlfZHNpX2RwaV9jb25maWco
c3RydWN0IGR3X21pcGlfZHNpICpkc2ksCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCg==
