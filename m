From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH 38/41] drm/bridge: analogix_dp: Reorder
 plat_data->power_off to happen sooner
Date: Wed, 22 Mar 2017 11:34:09 +0100
Message-ID: <5ee14048-0eb4-42ae-0e7d-fbc32d1db5cf@samsung.com>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <CGME20170310045146epcas4p3b100ca3d68bd444977ffb695d2ccffda@epcas4p3.samsung.com>
 <20170310043305.17216-39-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-reply-to: <20170310043305.17216-39-seanpaul@chromium.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Sean Paul <seanpaul@chromium.org>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Douglas Anderson <dianders@chromium.org>, Yakir Yang <ykk@rock-chips.com>, "Kristian H . Kristensen" <hoegsberg@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMTAuMDMuMjAxNyAwNTozMiwgU2VhbiBQYXVsIHdyb3RlOgo+IEZyb206IERvdWdsYXMgQW5k
ZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4KPgo+IFRoZSBjdXJyZW50IHVzZXIgb2YgdGhl
IGFuYWxvZ2l4IHBvd2VyX29mZiBpcyAiYW5hbG9naXhfZHAtcm9ja2NoaXAiLgo+IFRoYXQgZHJp
dmVyIGRvZXMgdGhpczoKPiAtIGRlYWN0aXZhdGUgUFNSCj4gLSB0dXJuIG9mZiBhIGNsb2NrCj4K
PiBCb3RoIG9mIHRoZXNlIHRoaW5ncyAoZXNwZWNpYWxseSBkZWFjdGl2ZSBQU1IpIHNob3VsZCBi
ZSBkb25lIGJlZm9yZQo+IHdlIHR1cm4gdGhlIFBIWSBwb3dlciBvZmYgYW5kIHR1cm4gb2ZmIGFu
YWxvZyBwb3dlci4gIExldCdzIG1vdmUgdGhlCj4gY2FsbGJhY2sgdXAuCj4KPiBOb3RlIHRoYXQg
d2l0aG91dCB0aGlzIHBhdGNoIChhbmQgd2l0aCBodHRwczovL3BhdGNod29yay5rZXJuZWwub3Jn
L3BhdGNoLzk1NTMzNDkvCj4gW3NlYW5wYXVsOiB0aGlzIHBhdGNoIHdhcyBub3QgYXBwbGllZCwg
YnV0IGl0IHNlZW1zIGxpa2UgdGhlIHJhY2UKPiBjYW4gc3RpbGwgb2NjdXJdKSwgSSBleHBlcmll
bmNlZCBhbiBlcnJvciBpbiByZWJvb3QgdGVzdGluZyB3aGVyZSBvbmUKPiB0aHJlYWQgd2FzIGF0
Ogo+Cj4gICByb2NrY2hpcF9kcm1fcHNyX2RlYWN0aXZhdGUKPiAgIHJvY2tjaGlwX2RwX3Bvd2Vy
ZG93bgo+ICAgYW5hbG9naXhfZHBfYnJpZGdlX2Rpc2FibGUKPiAgIGRybV9icmlkZ2VfZGlzYWJs
ZQo+Cj4gLi4uYW5kIHRoZSBvdGhlciB0aHJlYWQgd2FzIGF0Ogo+Cj4gICBhbmFsb2dpeF9kcF9z
ZW5kX3Bzcl9zcGQKPiAgIGFuYWxvZ2l4X2RwX2VuYWJsZV9wc3IKPiAgIGFuYWxvZ2l4X2RwX3Bz
cl9zZXQKPiAgIHBzcl9mbHVzaF9oYW5kbGVyCj4KPiBUaGUgZmx1c2ggaGFuZGxlciB0aHJlYWQg
d2FzIGZpbmRpbmcgQVVYIGNoYW5uZWwgZXJyb3JzIGFuZCBldmVudHVhbGx5Cj4gcmVwb3J0ZWQg
IkZhaWxlZCB0byBhcHBseSBQU1IiLCB3aGVyZSBJIGhhZCBhIGtnZGIgYnJlYWtwb2ludC4gUHJl
c3VtYWJseQo+IHRoZSBkZXZpY2Ugd291bGQgaGF2ZSBldmVudHVhbGx5IGdpdmVuIHVwIGFuZCBz
aHV0IGRvd24gYW55d2F5LCBidXQgaXQKPiBzZWVtcyBiZXR0ZXIgdG8gZml4IHRoZSBvcmRlciB0
byBiZSBtb3JlIGNvcnJlY3QuCj4KPiBDYzogS3Jpc3RpYW4gSC4gS3Jpc3RlbnNlbiA8aG9lZ3Ni
ZXJnQGNocm9taXVtLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFu
ZGVyc0BjaHJvbWl1bS5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogU2VhbiBQYXVsIDxzZWFucGF1bEBj
aHJvbWl1bS5vcmc+CgpSZXZpZXdlZC1ieTogQW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5n
LmNvbT4KLS0KUmVnYXJkcwpBbmRyemVqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCg==
