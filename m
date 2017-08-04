From: Sandy Huang <sandy.huang@rock-chips.com>
Subject: Re: [PATCH 3/6] drm/rockchip: vop: fix NV12 video display error
Date: Fri, 4 Aug 2017 08:56:21 +0800
Message-ID: <6ebc2b5f-5962-9d23-894d-873c51c79388@rock-chips.com>
References: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
 <1501494586-6984-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1501494586-6984-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

SGkgbWFyaywKCuWcqCAyMDE3LzcvMzEgMTc6NDksIE1hcmsgWWFvIOWGmemBkzoKPiBmaXh1cCB0
aGUgc2NhbGUgY2FsY3VsYXRpb24gZm9ybXVsYSBvbiB0aGUgY2FzZQo+IHNyY19oZWlnaHQgPT0g
KGRzdF9oZWlnaHQvMikuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJv
Y2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV92b3AuaCB8IDMgKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmggYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oCj4gaW5kZXgg
YWYxMDkxZi4uNTZiYmQyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV92b3AuaAo+IEBAIC0yOTksNiArMjk5LDkgQEAgc3RhdGljIGlubGluZSB1aW50MTZf
dCBzY2xfZ2V0X2JpbGlfZG5fdnNraXAoaW50IHNyY19oLCBpbnQgZHN0X2gsCj4gICAKPiAgIAlh
Y3RfaGVpZ2h0ID0gKHNyY19oICsgdnNraXBsaW5lcyAtIDEpIC8gdnNraXBsaW5lczsKPiAgIAo+
ICsJaWYgKGFjdF9oZWlnaHQgPT0gZHN0X2gpCj4gKwkJcmV0dXJuIEdFVF9TQ0xfRlRfQklMSV9E
TihzcmNfaCwgZHN0X2gpIC8gdnNraXBsaW5lczsKPiArCj4gICAJcmV0dXJuIEdFVF9TQ0xfRlRf
QklMSV9ETihhY3RfaGVpZ2h0LCBkc3RfaCk7Cj4gICB9Cj4gICAKPiAKClJldmlld2VkLWJ5OiBT
YW5keSBodWFuZyA8c2FuZHkuaHVhbmdAcm9jay1jaGlwcy5jb20+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
