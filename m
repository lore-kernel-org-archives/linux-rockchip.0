From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 02/38] drm/rockchip: Don't use atomic constructs for psr
Date: Thu, 08 Mar 2018 23:44:38 +0100
Message-ID: <3403715.fyf8cBQUvz@phil>
References: <20180305222324.5872-1-enric.balletbo@collabora.com>
 <20180305222324.5872-3-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180305222324.5872-3-enric.balletbo@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: dianders@chromium.org, wzz@rock-chips.com, hl@rock-chips.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, thierry.reding@gmail.com, =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>, Caesar Wang <wxt@rock-chips.com>, orjan.eide@arm.com, m.szyprowski@samsung.com, hshi@chromium.org
List-Id: linux-rockchip.vger.kernel.org

QW0gTW9udGFnLCA1LiBNw6RyeiAyMDE4LCAyMzoyMjo1NCBDRVQgc2NocmllYiBFbnJpYyBCYWxs
ZXRibyBpIFNlcnJhOgo+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+
IAo+IEluc3RlYWQgb2YgdXNpbmcgdGltZXIgYW5kIHNwaW5sb2NrcywgdXNlIGRlbGF5ZWRfd29y
ayBhbmQKPiBtdXRleGVzIGZvciByb2NrY2hpcCBwc3IuIFRoaXMgYWxsb3dzIHVzIHRvIG1ha2Ug
YmxvY2tpbmcKPiBjYWxscyB3aGVuIGVuYWJsaW5nL2Rpc2FibGluZyBwc3IgKHdoaWNoIGlzIHNv
cnQgb2YgaW1wb3J0YW50Cj4gZ2l2ZW4gd2UncmUgdGFsa2luZyBvdmVyIGRwY2QgdG8gdGhlIGRp
c3BsYXkpLgo+IAo+IENjOiBDYWVzYXIgV2FuZyA8d3h0QHJvY2stY2hpcHMuY29tPgo+IENjOiDl
voHlop4g546LIDx3enpAcm9jay1jaGlwcy5jb20+Cj4gQ2M6IFN0w6lwaGFuZSBNYXJjaGVzaW4g
PG1hcmNoZXVAY2hyb21pdW0ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFNlYW4gUGF1bCA8c2VhbnBh
dWxAY2hyb21pdW0ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFRoaWVycnkgRXNjYW5kZSA8dGhpZXJy
eS5lc2NhbmRlQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8g
aSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KCmFwcGxpZWQgdG8gZHJtLW1p
c2MtbmV4dCBhZnRlcgpjaGVja2luZyBvbiBib3RoIHBpbmt5IChyazMyODgpIGFuZCBrZXZpbiAo
cmszMzk5KS4KCgpIZWlrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmkt
ZGV2ZWwK
