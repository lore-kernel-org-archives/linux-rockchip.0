From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop: fix crtc size in plane check
Date: Fri, 04 Mar 2016 09:04:57 +0800
Message-ID: <56D8DF39.8020104@rock-chips.com>
References: <1456143779-16208-1-git-send-email-john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1456143779-16208-1-git-send-email-john@metanate.com>
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDAy5pyIMjLml6UgMjA6MjIsIEpvaG4gS2VlcGluZyB3cm90ZToKPiBJZiB0aGUg
Z2VvbWV0cnkgb2YgYSBjcnRjIGlzIGNoYW5naW5nIGluIGFuIGF0b21pYyB1cGRhdGUgdGhlbiB3
ZSBtdWNoCgpJIHRoaW5rICJ3ZSBtdWNoIHZhbGlkYXRlIiBzaG91bGQgYmUgIndlIG11c3QgdmFs
aWRhdGUiLjotKQoKPiB2YWxpZGF0ZSB0aGUgcGxhbmUgc2l6ZSBhZ2FpbnN0IHRoZSBuZXcgc3Rh
dGUgb2YgdGhlIGNydGMgYW5kIG5vdCB0aGUKPiBjdXJyZW50IHNpemUsIG90aGVyd2lzZSBpZiB0
aGUgY3J0YyBzaXplIGlzIGluY3JlYXNpbmcgdGhlIHBsYW5lIHdpbGwgYmUKPiBjcm9wcGVkIGF0
IHRoZSBwcmV2aW91cyBzaXplIGFuZCB3aWxsIG5vdCBmaWxsIHRoZSBzY3JlZW4uCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb2huIEtlZXBpbmc8am9obkBtZXRhbmF0ZS5jb20+CgotLSAK77ytYXJrIFlh
bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
