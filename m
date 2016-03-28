From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v2 1/5] drm/rockchip: dw_hdmi: Call drm_encoder_cleanup()
 in error path
Date: Mon, 28 Mar 2016 14:45:02 +0800
Message-ID: <56F8D2EE.4080004@rock-chips.com>
References: <1457388054-23077-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1457388054-23077-1-git-send-email-dianders@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Douglas Anderson <dianders@chromium.org>, David Airlie <airlied@linux.ie>, linux@arm.linux.org.uk, Heiko Stuebner <heiko@sntech.de>
Cc: john@keeping.me.uk, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDAz5pyIMDjml6UgMDY6MDAsIERvdWdsYXMgQW5kZXJzb24gd3JvdGU6Cj4gVGhl
IGRybV9lbmNvZGVyX2NsZWFudXAoKSB3YXMgbWlzc2luZyBib3RoIGZyb20gdGhlIGVycm9yIHBh
dGggb2YKPiBkd19oZG1pX3JvY2tjaGlwX2JpbmQoKS4gIFRoaXMgY2F1c2VkIGEgY3Jhc2ggd2hl
biBzbHViX2RlYnVnIHdhcwo+IGVuYWJsZWQgYW5kIHdlIGVuZGVkIHVwIGRlZmVycmluZyBwcm9i
ZSBvZiBIRE1JIGF0IGJvb3QuCj4KPiBUaGlzIGNhbGwgaXNuJ3QgbmVlZGVkIGZyb20gdW5iaW5k
KCkgYmVjYXVzZSBpZiBkd19oZG1pX2JpbmQoKSByZXR1cm5zCj4gbm8gZXJyb3IgdGhlbiBpdCB0
YWtlcyBvdmVyIHRoZSBqb2Igb2YgZnJlZWluZyB0aGUgZW5jb2RlciAoaW4KPiBkd19oZG1pX3Vu
YmluZCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJv
bWl1bS5vcmc+CgpIaSBEb3VnbGFzCgppdCBzZWVtcyBoYXMgbm8gZG91YnQgb24gdGhlc2UgcGF0
Y2gsIGFuZCBpdCB3b3JrcyBvbiBteSBib2FyZCwgU28gSSdkIApsaWtlIHRvIGFwcGx5IGZvbGxv
d2luZyB0aHJlZSBwYXRjaGVzLgoKW1BBVENIIHYyIDEvNV0gZHJtL3JvY2tjaGlwOiBkd19oZG1p
OiBDYWxsIGRybV9lbmNvZGVyX2NsZWFudXAoKSBpbiAKZXJyb3IgcGF0aApbUEFUQ0ggdjIgMy81
XSBkcm0vcm9ja2NoaXA6IHZvcDogRml4IHZvcCBjcnRjIGNsZWFudXAKW1BBVENIIHYyIDQvNV0g
ZHJtL3JvY2tjaGlwOiBkd19oZG1pOiBEb24ndCBjYWxsIHBsYXRmb3JtX3NldF9kcnZkYXRhKCkK
ClRoYW5rcyBmb3IgeW91ciBmaXhlcy4KCi0tIO+8rWFyayBZYW8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
