From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: vop: Init vskiplines in scl_vop_cal_scale()
Date: Thu, 01 Mar 2018 14:33:37 +0100
Message-ID: <126662348.ZcAOZAFD3X@diego>
References: <20180223062250.10470-1-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180223062250.10470-1-jeffy.chen@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, hoegsberg@google.com, dcastagna@google.com, tfiga@chromium.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRnJlaXRhZywgMjMuIEZlYnJ1YXIgMjAxOCwgMDc6MjI6NTAgQ0VUIHNjaHJpZWIgSmVmZnkg
Q2hlbjoKPiBDdXJyZW50bHkgd2UgYXJlIGNhbGxpbmcgc2NsX3ZvcF9jYWxfc2NhbGUoKSB0byBn
ZXQgdnNraXBsaW5lcyBmb3IgeXJnYgo+IGFuZCBjYmNyLiBTbyB0aGUgY2JjcidzIHZza2lwbGlu
ZXMgbWlnaHQgYmUgYW4gdW5leHBlY3RlZCB2YWx1ZSBpZiB0aGUKPiBzZWNvbmQgc2NsX3ZvcF9j
YWxfc2NhbGUoKSBkaWRuJ3QgdXBkYXRlIGl0Lgo+IAo+IEluaXQgdnNraXBsaW5lcyBpbiBzY2xf
dm9wX2NhbF9zY2FsZSgpIHRvIGF2b2lkIHRoYXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVmZnkg
Q2hlbiA8amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KCmFwcGxpZWQgdG8gZHJtLW1pc2MtbmV4
dCB3aXRoIFNlYW4gUGF1bCdzIEFjawoKCkhlaWtvCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=
