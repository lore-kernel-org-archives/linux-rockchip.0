From: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 1/1] drm/rockchip: fix integer type used for storing dp
 data rate and lane count
Date: Thu, 9 Jan 2020 07:56:05 +0100
Message-ID: <2b02f9e1-5aa0-9d21-16e4-251fffbb736a@manjaro.org>
References: <20200108223949.355975-1-t.schramm@manjaro.org>
 <20200108223949.355975-2-t.schramm@manjaro.org> <2028959.b8b8FNkPgY@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <2028959.b8b8FNkPgY@diego>
Content-Language: en-US-large
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>
Cc: David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gMDkuMDEuMjAgdW0gMDE6MTUgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiBBbSBNaXR0d29j
aCwgOC4gSmFudWFyIDIwMjAsIDIzOjM5OjQ5IENFVCBzY2hyaWViIFRvYmlhcyBTY2hyYW1tOgo+
PiBjb21taXQgMjU4OWM0MDI1ZjEzICgiZHJtL3JvY2tjaGlwOiBBdm9pZCBkcm1fZHBfbGluayBo
ZWxwZXJzIikgY2hhbmdlcwo+PiB0aGUgdHlwZSBvZiB2YXJpYWJsZXMgdXNlZCB0byBzdG9yZSB0
aGUgZGlzcGxheSBwb3J0IGRhdGEgcmF0ZSBhbmQKPj4gbnVtYmVyIG9mIGxhbmVzIHRvIHU4LiBI
b3dldmVyIHU4IGlzIG5vdCBzdWZmaWNpZW50IHRvIHN0b3JlIHRoZSBsaW5rCj4+IGRhdGEgcmF0
ZSBvZiB0aGUgZGlzcGxheSBwb3J0Lgo+PiBUaGlzIGNvbW1pdCByZXZlcnRzIHRoZSB0eXBlIG9m
IGJvdGggdGhlIG51bWJlciBvZiBsYW5lcyBhbmQgdGhlIGRhdGEKPj4gcmF0ZSB0byB1bnNpZ25l
ZCBpbnQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFRvYmlhcyBTY2hyYW1tIDx0LnNjaHJhbW1AbWFu
amFyby5vcmc+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmggfCA0ICsrLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRw
LWNvcmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29yZS5oCj4+IGluZGV4
IDgzYzQ1ODY2NjViNC4uODA2Y2IwYjA4OTgyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvY2RuLWRwLWNvcmUuaAo+PiBAQCAtOTQsOCArOTQsOCBAQCBzdHJ1Y3QgY2RuX2RwX2Rldmlj
ZSB7Cj4+ICAJc3RydWN0IHZpZGVvX2luZm8gdmlkZW9faW5mbzsKPj4gIAlzdHJ1Y3QgY2RuX2Rw
X3BvcnQgKnBvcnRbTUFYX1BIWV07Cj4+ICAJdTggcG9ydHM7Cj4+IC0JdTggbWF4X2xhbmVzOwo+
PiAtCXU4IG1heF9yYXRlOwo+PiArCXVuc2lnbmVkIGludCBtYXhfbGFuZXM7Cj4gCj4gYWx0aG91
Z2ggSSB3b3VsZCB0aGluayB1OCBzaG91bGQgYmUgZW5vdWdoIGZvciBtYXhfbGFuZXM/Cj4gVGhl
cmUgc2hvdWxkbid0IGJlIGJlIG1vcmUgdGhhbiAyNTUgZHAgbGFuZXM/CgpUcnVlLiBJJ2xsIHRl
c3QgYW5kIHNlbmQgYSB2Mi4KClRoYW5rcywgVG9iaWFzCgo+IAo+IEhlaWtvCj4gCj4+ICsJdW5z
aWduZWQgaW50IG1heF9yYXRlOwo+PiAgCXU4IGxhbmVzOwo+PiAgCWludCBhY3RpdmVfcG9ydDsK
Pj4gIAo+Pgo+IAo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cmktZGV2ZWwK
