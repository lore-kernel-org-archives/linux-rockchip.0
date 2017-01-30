From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 07/24] drm/rockchip: dw-mipi-dsi: include bad value in
 error message
Date: Mon, 30 Jan 2017 13:02:47 -0500
Message-ID: <20170130180247.GH20076@art_vandelay>
References: <20170129132444.25251-1-john@metanate.com>
 <20170129132444.25251-8-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20170129132444.25251-8-john@metanate.com>
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

T24gU3VuLCBKYW4gMjksIDIwMTcgYXQgMDE6MjQ6MjdQTSArMDAwMCwgSm9obiBLZWVwaW5nIHdy
b3RlOgo+IEFzIGFuIGFpZCB0byBkZWJ1Z2dpbmcuCgpSZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxz
ZWFucGF1bEBjaHJvbWl1bS5vcmc+Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gS2VlcGluZyA8
am9obkBtZXRhbmF0ZS5jb20+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFpob25nIDx6eXdAcm9jay1j
aGlwcy5jb20+Cj4gLS0tCj4gdjM6Cj4gLSBBZGQgQ2hyaXMnIFJldmlld2VkLWJ5Cj4gVW5jaGFu
Z2VkIGluIHYyCj4gCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jIHwg
MyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyBi
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS5jCj4gaW5kZXggMmU2YWQ0NTkx
ZWJmLi45MmRiYzNlNTY2MDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2R3LW1pcGktZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kuYwo+IEBAIC02NDQsNyArNjQ0LDggQEAgc3RhdGljIHNzaXplX3QgZHdfbWlwaV9kc2lfaG9z
dF90cmFuc2ZlcihzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwKPiAgCQlyZXQgPSBkd19taXBp
X2RzaV9kY3NfbG9uZ193cml0ZShkc2ksIG1zZyk7Cj4gIAkJYnJlYWs7Cj4gIAlkZWZhdWx0Ogo+
IC0JCWRldl9lcnIoZHNpLT5kZXYsICJ1bnN1cHBvcnRlZCBtZXNzYWdlIHR5cGVcbiIpOwo+ICsJ
CWRldl9lcnIoZHNpLT5kZXYsICJ1bnN1cHBvcnRlZCBtZXNzYWdlIHR5cGUgMHglMDJ4XG4iLAo+
ICsJCQltc2ctPnR5cGUpOwo+ICAJCXJldCA9IC1FSU5WQUw7Cj4gIAl9Cj4gIAo+IC0tIAo+IDIu
MTEuMC4xOTcuZ2I1NTZkZTUuZGlydHkKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCi0tIApTZWFuIFBhdWwsIFNvZnR3YXJlIEVuZ2luZWVy
LCBHb29nbGUgLyBDaHJvbWl1bSBPUwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwK
