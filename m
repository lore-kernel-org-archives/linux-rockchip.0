From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [PATCH 1/2] drm/rockchip: dw_hdmi: Call drm_encoder_cleanup() in
 error path
Date: Sat, 5 Mar 2016 12:39:42 +0000
Message-ID: <20160305123942.GE19428@n2100.arm.linux.org.uk>
References: <1457133723-24869-1-git-send-email-dianders@chromium.org>
 <20160305121005.GA11966@serenity.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20160305121005.GA11966@serenity.lan>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: John Keeping <john@keeping.me.uk>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gU2F0LCBNYXIgMDUsIDIwMTYgYXQgMTI6MTE6MTZQTSArMDAwMCwgSm9obiBLZWVwaW5nIHdy
b3RlOgo+IE9uIEZyaSwgTWFyIDA0LCAyMDE2IGF0IDAzOjIyOjAxUE0gLTA4MDAsIERvdWdsYXMg
QW5kZXJzb24gd3JvdGU6Cj4gPiBUaGUgZHJtX2VuY29kZXJfY2xlYW51cCgpIHdhcyBtaXNzaW5n
IGJvdGggZnJvbSB0aGUgZXJyb3IgcGF0aCBvZgo+ID4gZHdfaGRtaV9yb2NrY2hpcF9iaW5kKCku
ICBUaGlzIGNhdXNlZCBhIGNyYXNoIHdoZW4gc2x1Yl9kZWJ1ZyB3YXMKPiA+IGVuYWJsZWQgYW5k
IHdlIGVuZGVkIHVwIGRlZmVycmluZyBwcm9iZSBvZiBIRE1JIGF0IGJvb3QuCj4gPiAKPiA+IFRo
aXMgY2FsbCBpc24ndCBuZWVkZWQgZnJvbSB1bmJpbmQoKSBiZWNhdXNlIGlmIGR3X2hkbWlfYmlu
ZCgpIHJldHVybnMKPiA+IG5vIGVycm9yIHRoZW4gaXQgdGFrZXMgb3ZlciB0aGUgam9iIG9mIGZy
ZWVpbmcgdGhlIGVuY29kZXIgKGluCj4gPiBkd19oZG1pX3VuYmluZCkuCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPiA+IC0t
LQo+IAo+IERvZXMgZHdfaGRtaS1pbXggbmVlZCBhIHNpbWlsYXIgY2hhbmdlPyAgSSB3b25kZXIg
aWYgaXQgd291bGQgYmUgY2xlYW5lcgo+IHRvIHB1c2ggdGhpcyBpbnRvIGR3X2hkbWlfYmluZCgp
IGlmIGl0IGFmZmVjdHMgYWxsIG9mIHRoZSBwbGF0Zm9ybXMuLgoKSSBkb24ndCB0aGluayBtb3Zp
bmcgaXQgdGhlcmUgd291bGQgbWFrZSBzZW5zZSAtIGtlZXAgdGhlIGluaXRpYWxpc2F0aW9uCmFu
ZCBjbGVhbnVwIHRvZ2V0aGVyIGluIHRoZSBzYW1lIGZpbGUgc28gdGhhdCBpdCdzIGNvbnRhaW5l
ZCB0b2dldGhlci4KCi0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHA6Ly93d3cuYXJtLmxpbnV4
Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGlu
ZTogY3VycmVudGx5IGF0IDkuNk1icHMgZG93biA0MDBrYnBzIHVwCmFjY29yZGluZyB0byBzcGVl
ZHRlc3QubmV0LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
