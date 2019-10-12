From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Sat, 12 Oct 2019 23:32:12 +0200
Message-ID: <5801053.xxhhKtLrcJ@diego>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Markus Elfring <Markus.Elfring@web.de>
Cc: Stephen Boyd <sboyd@kernel.org>, Kangjie Lu <kjlu@umn.edu>, Michael Turquette <mturquette@baylibre.com>, Stephen McCamant <smccaman@umn.edu>, kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org, Navid Emamdoost <emamd001@umn.edu>, Aditya Pakki <pakki001@umn.edu>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

SGkgTWFya3VzLAoKQW0gU2Ftc3RhZywgMTIuIE9rdG9iZXIgMjAxOSwgMTU6NTU6NDQgQ0VTVCBz
Y2hyaWViIE1hcmt1cyBFbGZyaW5nOgo+IEkgdHJpZWQgYW5vdGhlciBzY3JpcHQgZm9yIHRoZSBz
ZW1hbnRpYyBwYXRjaCBsYW5ndWFnZSBvdXQuCj4gVGhpcyBzb3VyY2UgY29kZSBhbmFseXNpcyBh
cHByb2FjaCBwb2ludHMgb3V0IHRoYXQgdGhlIGltcGxlbWVudGF0aW9uCj4gb2YgdGhlIGZ1bmN0
aW9uIOKAnHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9wbGzigJ0gY29udGFpbnMgYWxzbyBhIGNhbGwK
PiBvZiB0aGUgZnVuY3Rpb24g4oCca21lbWR1cOKAnS4KPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGstcGxsLmM/aWQ9MWMwY2M1ZjFhZTVlZTVhNjkxMzcwNGMwZDc1YTZl
OTk2MDRlZTMwYSNuOTEzCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNC1y
YzIvc291cmNlL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYyNMOTEzCj4gCj4gKiBEbyB5
b3UgZmluZCB0aGUgdXNhZ2Ugb2YgdGhlIGZvcm1hdCBzdHJpbmcg4oCcJXM6IGNvdWxkIG5vdCBh
bGxvY2F0ZQo+ICAgcmF0ZSB0YWJsZSBmb3IgJXNcbuKAnSBzdGlsbCBhcHByb3ByaWF0ZSBhdCB0
aGlzIHBsYWNlPwoKSWYgdGhlcmUgaXMgYW4gaW50ZXJuYWwgIm5vLW1lbW9yeSIgb3V0cHV0IGZy
b20gaW5zaWRlIGttZW1kdXAgbm93LApJIGd1ZXNzIHRoZSBvbmUgaW4gdGhlIGNsb2NrIGRyaXZl
ciB3b3VsZCBiZSBhIGR1cGxpY2F0ZSBhbmQgY291bGQgZ28gYXdheS4KCj4gKiBJcyB0aGVyZSBh
IG5lZWQgdG8gYWRqdXN0IHRoZSBlcnJvciBoYW5kbGluZyBoZXJlPwoKVGhlcmUgaXMgbm8gbmVl
ZCBmb3IgYWRkaXRpb25hbCBlcnJvciBoYW5kbGluZy4gTGlrZSBpZiB0aGUgcmF0ZS10YWJsZQpj
b3VsZCBub3QgYmUgZHVwbGljYXRlZCwgdGhlIGNsb2NrIHdpbGwgc3RpbGwgcmVwb3J0IHRoZSBj
b3JyZWN0IGNsb2NrcmF0ZQp5b3UgY2FuIGp1c3Qgbm90IHNldCBhIG5ldyByYXRlLgoKQW5kIGZv
ciBhIHN5c3RlbSBpdCdzIGFsd2F5cyBiZXR0ZXIgdG8gaGF2ZSB0aGUgY2xvY2sgZHJpdmVyIHBy
ZXNlbnQKdGhhbiBmb3IgYWxsIGRldmljZS1kcml2ZXJzIHRvIGZhaWwgcHJvYmluZy4gRXNwZWNp
YWxseSBhcyB0aGlzIHN0YXJ0IGFzCmNvcmUgY2xvY2sgZHJpdmVyLCBzbyB0aGVyZSBpcyBubyBk
ZWZlcnJpbmcgcG9zc2libGUuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
