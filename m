From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [PATCH v2 07/26] drm/rockchip: dw-mipi-dsi: avoid out-of-bounds
 read on tx_buf
Date: Sun, 22 Jan 2017 14:42:30 +0800
Message-ID: <58845456.2040501@rock-chips.com>
References: <20170121163128.22240-1-john@metanate.com>
 <20170121163128.22240-8-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20170121163128.22240-8-john@metanate.com>
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

SGkgSm9obgoKUmV2aWV3ZWQtYnk6IENocmlzIFpob25nIDx6eXdAcm9jay1jaGlwcy5jb20+CgpP
biAwMS8yMi8yMDE3IDEyOjMxIEFNLCBKb2huIEtlZXBpbmcgd3JvdGU6Cj4gQXMgYSBzaWRlLWVm
ZmVjdCBvZiB0aGlzLCBlbmNvZGUgdGhlIGVuZGlhbm5lc3MgZXhwbGljaXRseSByYXRoZXIgdGhh
bgo+IGNhc3RpbmcgYSB1MTYuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKb2huIEtlZXBpbmcgPGpvaG5A
bWV0YW5hdGUuY29tPgo+IC0tLQo+IFVuY2hhbmdlZCBpbiB2Mgo+IC0tLQo+ICAgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMgfCA5ICsrKysrKystLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9kdy1taXBpLWRzaS5jCj4gaW5kZXggNGJlMWZmM2E0MmJiLi4yZTZhZDQ1OTFlYmYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2kuYwo+IEBAIC01NzIsOCAr
NTcyLDEzIEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfZ2VuX3BrdF9oZHJfd3JpdGUoc3RydWN0
IGR3X21pcGlfZHNpICpkc2ksIHUzMiBoZHJfdmFsKQo+ICAgc3RhdGljIGludCBkd19taXBpX2Rz
aV9kY3Nfc2hvcnRfd3JpdGUoc3RydWN0IGR3X21pcGlfZHNpICpkc2ksCj4gICAJCQkJICAgICAg
IGNvbnN0IHN0cnVjdCBtaXBpX2RzaV9tc2cgKm1zZykKPiAgIHsKPiAtCWNvbnN0IHUxNiAqdHhf
YnVmID0gbXNnLT50eF9idWY7Cj4gLQl1MzIgdmFsID0gR0VOX0hEQVRBKCp0eF9idWYpIHwgR0VO
X0hUWVBFKG1zZy0+dHlwZSk7Cj4gKwljb25zdCB1OCAqdHhfYnVmID0gbXNnLT50eF9idWY7Cj4g
Kwl1MzIgdmFsID0gR0VOX0hUWVBFKG1zZy0+dHlwZSk7Cj4gKwo+ICsJaWYgKG1zZy0+dHhfbGVu
ID4gMCkKPiArCQl2YWwgfD0gR0VOX0hEQVRBKHR4X2J1ZlswXSk7Cj4gKwlpZiAobXNnLT50eF9s
ZW4gPiAxKQo+ICsJCXZhbCB8PSBHRU5fSERBVEEodHhfYnVmWzFdIDw8IDgpOwo+ICAgCj4gICAJ
aWYgKG1zZy0+dHhfbGVuID4gMikgewo+ICAgCQlkZXZfZXJyKGRzaS0+ZGV2LCAidG9vIGxvbmcg
dHggYnVmIGxlbmd0aCAlenUgZm9yIHNob3J0IHdyaXRlXG4iLAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
