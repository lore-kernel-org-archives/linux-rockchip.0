From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] drm/rockchip: fix compile warnings for 64-bit
Date: Thu, 9 Jun 2016 13:57:54 -0700
Message-ID: <CAD=FV=VJ3TWJnP-OJO0LD=gBBra4zt_PowOLyUXLDV3U_RjnUA@mail.gmail.com>
References: <1465494392-92489-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1465494392-92489-1-git-send-email-briannorris@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Brian Norris <briannorris@chromium.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

QnJpYW4sCgpPbiBUaHUsIEp1biA5LCAyMDE2IGF0IDEwOjQ2IEFNLCBCcmlhbiBOb3JyaXMgPGJy
aWFubm9ycmlzQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gUm9ja2NoaXAgRFJNIGRvZXMgbm90IHll
dCBidWlsZCBwcm9wZXJseSBmb3IgQVJNNjQsIGJ1dCB3ZSBtaWdodCBhcyB3ZWxsCj4gZ2V0IHRo
ZSBwcmludGYgZm9ybWF0dGluZyBjb3JyZWN0IG5vdywgdG8gYXZvaWQgdGhlIGZvbGxvd2luZyB3
YXJuaW5nczoKPgo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYu
YzogSW4gZnVuY3Rpb24gJ3JvY2tjaGlwX2RybV9mYmRldl9jcmVhdGUnOgo+IGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZmJkZXYuYzoxMTE6Mjogd2FybmluZzogZm9ybWF0
ICclZCcgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlICdpbnQnLCBidXQgYXJndW1lbnQgOCBoYXMg
dHlwZSAnc2l6ZV90JyBbLVdmb3JtYXQ9XQo+ICAgRFJNX0RFQlVHX0tNUygiRkIgWyVkeCVkXS0l
ZCBrdmFkZHI9JXAgb2Zmc2V0PSVsZCBzaXplPSVkXG4iLAo+ICAgXgo+Cj4gZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYzogSW4gZnVuY3Rpb24gJ3JvY2tjaGlwX2dl
bV9hbGxvY19idWYnOgo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2Vt
LmM6NDE6Mzogd2FybmluZzogZm9ybWF0ICcleCcgZXhwZWN0cyBhcmd1bWVudCBvZiB0eXBlICd1
bnNpZ25lZCBpbnQnLCBidXQgYXJndW1lbnQgMiBoYXMgdHlwZSAnc2l6ZV90JyBbLVdmb3JtYXQ9
XQo+ICAgIERSTV9FUlJPUigiZmFpbGVkIHRvIGFsbG9jYXRlICUjeCBieXRlIGRtYSBidWZmZXIi
LCBvYmotPnNpemUpOwo+ICAgIF4KPgo+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJp
YW5ub3JyaXNAY2hyb21pdW0ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2ZiZGV2LmMgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fZ2VtLmMgICB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlh
bmRlcnNAY2hyb21pdW0ub3JnPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwK
