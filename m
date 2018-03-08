From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 01/38] drm/bridge: analogix_dp: set psr
 activate/deactivate when enable/disable bridge
Date: Thu, 08 Mar 2018 23:44:15 +0100
Message-ID: <1656609.JibIPNoNVJ@phil>
References: <20180305222324.5872-1-enric.balletbo@collabora.com>
 <20180305222324.5872-2-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20180305222324.5872-2-enric.balletbo@collabora.com>
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
Cc: dianders@chromium.org, wzz@rock-chips.com, hl@rock-chips.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, thierry.reding@gmail.com, =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>, orjan.eide@arm.com, m.szyprowski@samsung.com, hshi@chromium.org
List-Id: linux-rockchip.vger.kernel.org

QW0gTW9udGFnLCA1LiBNw6RyeiAyMDE4LCAyMzoyMjo1MyBDRVQgc2NocmllYiBFbnJpYyBCYWxs
ZXRibyBpIFNlcnJhOgo+IEZyb206IHphaW4gd2FuZyA8d3p6QHJvY2stY2hpcHMuY29tPgo+IAo+
IFRoZXJlJ3MgYSByYWNlIGJldHdlZW4gd2hlbiBicmlkZ2VfZGlzYWJsZSBhbmQgd2hlbiB2b3Bf
Y3J0Y19kaXNhYmxlCj4gYXJlIGNhbGxlZC4gSWYgdGhlIGZsdXNoIHRpbWVyIHRyaWdnZXJzIGEg
bmV3IHBzciB3b3JrIGJldHdlZW4gdGhlc2UsCj4gd2Ugd2lsbCBvcGVyYXRlIGVEUCB3aXRob3V0
IHBvd2VyIHNodXRkb3duZWQgYnkgYnJpZGdlX2Rpc2FibGUuIEluIHRoaXMKPiBjYXNlLCBtb3Zp
bmcgYWN0aXZhdGUvZGVhY3RpdmF0ZSB0byBlbmFibGUvZGlzYWJsZSBicmlkZ2UgdG8gYXZvaWQg
aXQuCj4gCj4gQ2M6IFN0w6lwaGFuZSBNYXJjaGVzaW4gPG1hcmNoZXVAY2hyb21pdW0ub3JnPgo+
IFNpZ25lZC1vZmYtYnk6IHphaW4gd2FuZyA8d3p6QHJvY2stY2hpcHMuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IENhZXNhciBXYW5nIDx3eHRAcm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
U2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJy
eSBFc2NhbmRlIDx0aGllcnJ5LmVzY2FuZGVAY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgoK
YWRhcHRlZCB0aGUgc3ViamVjdCB0byBkcm0vcm9ja2NoaXAsIGFzIGl0IG9ubHkgdG91Y2hlcyB0
aGUgcm9ja2NoaXAKZ2x1ZSBkcml2ZXIgZm9yIHRoZSBhbmFsb2dpeF9kcCBhbmQgYXBwbGllZCB0
byBkcm0tbWlzYy1uZXh0IGFmdGVyCmNoZWNraW5nIG9uIGJvdGggcGlua3kgKHJrMzI4OCkgYW5k
IGtldmluIChyazMzOTkpLgoKCkhlaWtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbAo=
