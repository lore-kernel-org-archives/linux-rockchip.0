From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 2/5] drm/imx: dw_hdmi: Call drm_encoder_cleanup() in
 error path
Date: Mon, 28 Mar 2016 08:14:26 -0700
Message-ID: <CAD=FV=Vq2JPYxDpa3kH97wnVTTJ-AsyWHQ2nSNSR2sw7aQKwOQ@mail.gmail.com>
References: <1457388054-23077-1-git-send-email-dianders@chromium.org>
 <1457388054-23077-2-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1457388054-23077-2-git-send-email-dianders@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Russell King <linux@arm.linux.org.uk>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: John Keeping <john@keeping.me.uk>, Douglas Anderson <dianders@chromium.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGksCgpPbiBNb24sIE1hciA3LCAyMDE2IGF0IDI6MDAgUE0sIERvdWdsYXMgQW5kZXJzb24gPGRp
YW5kZXJzQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gVGhlIGRybV9lbmNvZGVyX2NsZWFudXAoKSB3
YXMgbWlzc2luZyBib3RoIGZyb20gdGhlIGVycm9yIHBhdGggb2YKPiBkd19oZG1pX2lteF9iaW5k
KCkuICBUaGlzIGNhdXNlZCBhIGNyYXNoIHdoZW4gc2x1Yl9kZWJ1ZyB3YXMKPiBlbmFibGVkIGFu
ZCB3ZSBlbmRlZCB1cCBkZWZlcnJpbmcgcHJvYmUgb2YgSERNSSBhdCBib290Lgo+Cj4gVGhpcyBj
YWxsIGlzbid0IG5lZWRlZCBmcm9tIHVuYmluZCgpIGJlY2F1c2UgaWYgZHdfaGRtaV9iaW5kKCkg
cmV0dXJucwo+IG5vIGVycm9yIHRoZW4gaXQgdGFrZXMgb3ZlciB0aGUgam9iIG9mIGZyZWVpbmcg
dGhlIGVuY29kZXIgKGluCj4gZHdfaGRtaV91bmJpbmQpLgo+Cj4gU2lnbmVkLW9mZi1ieTogRG91
Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+IC0tLQo+IENoYW5nZXMgaW4g
djI6Cj4gLSBJTVggcGF0Y2ggbmV3IGluIHYyCj4KPiAgZHJpdmVycy9ncHUvZHJtL2lteC9kd19o
ZG1pLWlteC5jIHwgMTEgKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkKCk1hcmsgcGlja2VkIHVwOgoKICBbUEFUQ0ggdjIgMS81XSBk
cm0vcm9ja2NoaXA6IGR3X2hkbWk6IENhbGwgZHJtX2VuY29kZXJfY2xlYW51cCgpIGluIGVycm9y
IHBhdGgKICBbUEFUQ0ggdjIgMy81XSBkcm0vcm9ja2NoaXA6IHZvcDogRml4IHZvcCBjcnRjIGNs
ZWFudXAKICBbUEFUQ0ggdjIgNC81XSBkcm0vcm9ja2NoaXA6IGR3X2hkbWk6IERvbid0IGNhbGwg
cGxhdGZvcm1fc2V0X2RydmRhdGEoKQoKLi4uZm9yIFJvY2tjaGlwLCBhcyB5b3UgY2FuIHNlZSBh
dAo8aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC84NTIzMzAxLz4uCgpEb2VzIHNv
bWVvbmUgd2FudCB0byBwaWNrIHVwOgogIFtQQVRDSCB2MiAyLzVdIGRybS9pbXg6IGR3X2hkbWk6
IENhbGwgZHJtX2VuY29kZXJfY2xlYW51cCgpIGluIGVycm9yIHBhdGgKICBbUEFUQ0ggdjIgNS81
XSBkcm0vaW14OiBkd19oZG1pOiBEb24ndCBjYWxsIHBsYXRmb3JtX3NldF9kcnZkYXRhKCkKClRo
YW5rcyEKCi1Eb3VnCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZl
bAo=
