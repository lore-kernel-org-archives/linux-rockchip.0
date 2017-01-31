From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 19/24] drm/rockchip: dw-mipi-dsi: use positive check
 for N{H, V}SYNC
Date: Tue, 31 Jan 2017 14:12:45 -0500
Message-ID: <20170131191245.GC20076@art_vandelay>
References: <20170129132444.25251-1-john@metanate.com>
 <20170129132444.25251-20-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20170129132444.25251-20-john@metanate.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@metanate.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gU3VuLCBKYW4gMjksIDIwMTcgYXQgMDE6MjQ6MzlQTSArMDAwMCwgSm9obiBLZWVwaW5nIHdy
b3RlOgo+IFRoaXMgbWF0Y2hlcyBvdGhlciBkcml2ZXJzLgo+IAoKUmV2aWV3ZWQtYnk6IFNlYW4g
UGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgoKPiBTaWduZWQtb2ZmLWJ5OiBKb2huIEtlZXBp
bmcgPGpvaG5AbWV0YW5hdGUuY29tPgo+IC0tLQo+IFVuY2hhbmdlZCBpbiB2Mwo+IFVuY2hhbmdl
ZCBpbiB2Mgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyB8IDQg
KystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCj4gaW5kZXggYmUzOTVjM2M1
YzA2Li5mNWIxNTM3N2VmODUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3LW1pcGktZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kuYwo+IEBAIC03NzQsOSArNzc0LDkgQEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZHBpX2Nv
bmZpZyhzdHJ1Y3QgZHdfbWlwaV9kc2kgKmRzaSwKPiAgCQlicmVhazsKPiAgCX0KPiAgCj4gLQlp
ZiAoIShtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfUFZTWU5DKSkKPiArCWlmIChtb2RlLT5m
bGFncyAmIERSTV9NT0RFX0ZMQUdfTlZTWU5DKQo+ICAJCXZhbCB8PSBWU1lOQ19BQ1RJVkVfTE9X
Owo+IC0JaWYgKCEobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX1BIU1lOQykpCj4gKwlpZiAo
bW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX05IU1lOQykKPiAgCQl2YWwgfD0gSFNZTkNfQUNU
SVZFX0xPVzsKPiAgCj4gIAlkc2lfd3JpdGUoZHNpLCBEU0lfRFBJX1ZDSUQsIERQSV9WSUQoZHNp
LT5jaGFubmVsKSk7Cj4gLS0gCj4gMi4xMS4wLjE5Ny5nYjU1NmRlNS5kaXJ0eQo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1h
aWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAoKLS0gClNlYW4g
UGF1bCwgU29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxp
c3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
