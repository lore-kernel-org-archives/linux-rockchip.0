From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: vop: reset scale mode when win is disabled
Date: Mon, 18 Mar 2019 19:04:47 +0100
Message-ID: <3050762.S3h3RRttz1@diego>
References: <AM3PR03MB0966DE3E19BACE07328CD637AC7D0@AM3PR03MB0966.eurprd03.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <AM3PR03MB0966DE3E19BACE07328CD637AC7D0@AM3PR03MB0966.eurprd03.prod.outlook.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: David Airlie <airlied@linux.ie>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Ezequiel Garcia <ezequiel@collabora.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgSm9uYXMsCgpBbSBNaXR0d29jaCwgMjAuIEZlYnJ1YXIgMjAxOSwgMjM6NDA6MDYgQ0VUIHNj
aHJpZWIgSm9uYXMgS2FybG1hbjoKPiBOVjEyIGZyYW1lYnVmZmVycyBwcm9kdWNlZCBieSB0aGUg
VlBVIHNob3dzIGRpc3RvcnRlZCBvbiBSSzMyODgKPiBhZnRlciB3aW4gaGFzIGJlZW4gZGlzYWJs
ZWQgd2hlbiBzY2FsaW5nIGlzIGFjdGl2ZS4KPiAKPiBUaGlzIGlzc3VlIGNhbiBiZSByZXByb2R1
Y2VkIHVzaW5nIGEgMTA4MHAgbW9kZXNldCBieToKPiAtIFNjYWxlIGEgMTI4MHg3MjAgTlYxMiBm
cmFtZWJ1ZmZlciB0byAxOTIweDEwODAgb24gd2luMAo+IC0gRGlzYWJsZSB3aW4wCj4gLSBEaXNw
bGF5IGEgMTkyMHgxMDgwIE5WMTIgZnJhbWVidWZmZXIgd2l0aG91dCBzY2FsaW5nIG9uIHdpbjAK
PiAtIE91dHB1dCB3aWxsIG5vdyBzaG93IHRoZSBmcmFtZWJ1ZmZlciBkaXN0b3J0ZWQKPiAKPiBB
bmQgYnk6Cj4gLSBTY2FsZSBhIDEyODB4NzIwIE5WMTIgZnJhbWVidWZmZXIgdG8gMTkyMHgxMDgw
Cj4gLSBDaGFuZ2UgdG8gYSA3MjBwIG1vZGVzZXQgKHdpbiBnZXRzIGRpc2FibGVkIGFuZCBzY2Fs
aW5nIHJlc2V0IHRvIG5vbmUpCj4gLSBPdXRwdXQgd2lsbCBub3cgc2hvdyB0aGUgZnJhbWVidWZm
ZXIgZGlzdG9ydGVkCj4gCj4gRml4IHRoaXMgYnkgc2V0dGluZyBzY2FsZSBtb2RlIHRvIG5vbmUg
d2hlbiB3aW4gaXMgZGlzYWJsZWQuCj4gCj4gRml4ZXM6IDRjMTU2YzIxYzc5NCAoImRybS9yb2Nr
Y2hpcDogdm9wOiBzdXBwb3J0IHBsYW5lIHNjYWxlIikKPiBTaWduZWQtb2ZmLWJ5OiBKb25hcyBL
YXJsbWFuIDxqb25hc0Brd2lib28uc2U+CgphcHBsaWVkIHRvIGRybS1taXNjLWZpeGVzIC0gc29y
cnkgaXQgdG9vayBzbyBsb25nIHRvIHRlc3QgYW5kIGFwcGx5LgoKVGhhbmtzCkhlaWtvCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1h
aWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
