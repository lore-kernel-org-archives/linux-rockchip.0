From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH] drm/rockchip: use drm_gem_mmap helpers
Date: Wed, 8 Jul 2015 09:35:20 +0200
Message-ID: <20150708073520.GB7568@phenom.ffwll.local>
References: <1436259816-31090-1-git-send-email-djkurtz@chromium.org>
 <20150707120433.GO7568@phenom.ffwll.local>
 <559CA1DD.9070905@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <559CA1DD.9070905@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: DRM DRIVERS FOR ROCKCHIP <dri-devel@lists.freedesktop.org>, list@263.net, Douglas Anderson <dianders@chromium.org>, stable@vger.kernel.org, open list <linux-kernel@vger.kernel.org>, ARM/Rockchip SoC support <linux-rockchip@lists.infradead.org>, moderated@263.net, open@263.net, ARM/Rockchip SoC support <linux-arm-kernel@lists.infradead.org>, Kees Cook <keescook@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

T24gV2VkLCBKdWwgMDgsIDIwMTUgYXQgMTI6MDY6NTNQTSArMDgwMCwgTWFyayB5YW8gd3JvdGU6
Cj4gT24gMjAxNeW5tDA35pyIMDfml6UgMjA6MDQsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gPk9u
IFR1ZSwgSnVsIDA3LCAyMDE1IGF0IDA1OjAzOjM2UE0gKzA4MDAsIERhbmllbCBLdXJ0eiB3cm90
ZToKPiA+PlJhdGhlciB0aGFuIChpbmNvbXBsZXRlbHkgWzBdKSByZS1pbXBsZW1lbnRpbmcgZHJt
X2dlbV9tbWFwKCkgYW5kCj4gPj5kcm1fZ2VtX21tYXBfb2JqKCkgaGVscGVycywgY2FsbCB0aGVt
IGRpcmVjdGx5IGZyb20gdGhlIHJvY2tjaGlwIG1tYXAKPiA+PnJvdXRpbmVzLgo+ID4+Cj4gPj5P
bmNlIHRoZSBjb3JlIGZ1bmN0aW9ucyByZXR1cm4gc3VjY2Vzc2Z1bGx5LCB0aGUgcm9ja2NoaXAg
bW1hcCByb3V0aW5lcwo+ID4+Y2FuIHN0aWxsIHVzZSBkbWFfbW1hcF9hdHRycygpIHRvIHNpbXBs
eSBtbWFwIHRoZSBlbnRpcmUgYnVmZmVyLgo+ID4+Cj4gPj5bMF0gUHJldmlvdXNseSwgd2Ugd2Vy
ZSBwZXJmb3JtaW5nIHRoZSBtbWFwKCkgd2l0aG91dCBmaXJzdCB0YWtpbmcgYQo+ID4+cmVmZXJl
bmNlIG9uIHRoZSB1bmRlcmx5aW5nIGdlbSBidWZmZXIuICBUaGlzIGNvdWxkIGxlYWsgcHRlcyBp
ZiB0aGUgZ2VtCj4gPj5vYmplY3QgaXMgZGVzdHJveWVkIHdoaWxlIHVzZXJzcGFjZSBpcyBzdGls
bCBob2xkaW5nIHRoZSBtYXBwaW5nLgo+ID4+Cj4gPj5TaWduZWQtb2ZmLWJ5OiBEYW5pZWwgS3Vy
dHogPGRqa3VydHpAY2hyb21pdW0ub3JnPgo+ID4+UmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPj5DYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+
ID5BcHBsaWVkIHRvIHRvcGljL2RybS1maXhlcyB0byBtYWtlIHN1cmUgaXQgd29uJ3QgZ2V0IGxv
c3QsIGJ1dCBJIGV4cGVjdAo+ID5yb2NrY2hpcCBtYWludGFpbmVycyB0byBwaWNrIHRoaXMgb25l
IHVwLgo+ID4tRGFuaWVsCj4gSSB0cnkgdG8gcGljayB0aGlzIHBhdGNoIHVwLCBidXQgZm91bmQg
aXQgY29uZmxpY3RzIHdpdGggcGF0Y2ggWzBdLiAgQ2FuIHlvdQo+IGZpeCBpdD8KPiAKPiBbMF1o
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzYyMjY1OTEvCgpJbW8gdGhpcyBzaG91
bGQgYmUgdGhlIG90aGVyIHdheSByb3VuZCBzaW5jZSBEYW5pZWwncyBwYXRjaCBmaXhlcyBhIGZh
aXJseQpzZXJpb3VzIGlzc3VlOiBBcHBseSB0aGlzIGZpeCBmaXJzdCwgcmViYXNlJnF1ZXVlIHRo
ZSBwb2xpc2ggZm9yIC1uZXh0LgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBs
aXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
