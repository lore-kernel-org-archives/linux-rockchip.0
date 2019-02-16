From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rock960: Enable tsadc device
Date: Fri, 15 Feb 2019 23:55:01 -0300
Message-ID: <aa2f376897ffb4fef02bd3e64812c8e1dbe4987a.camel@collabora.com>
References: <20190215152539.16606-1-ezequiel@collabora.com>
 <4625663.tZDl4lH1EQ@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4625663.tZDl4lH1EQ@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

T24gU2F0LCAyMDE5LTAyLTE2IGF0IDAwOjE0ICswMTAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBIaSBFemVxdWllbCwKPiAKPiBBbSBGcmVpdGFnLCAxNS4gRmVicnVhciAyMDE5LCAxNjoyNToz
OSBDRVQgc2NocmllYiBFemVxdWllbCBHYXJjaWE6Cj4gPiBFbmFibGUgdGhlIHRoZXJtYWwgc2Vu
c29yLiBUaGlzIGRldmljZSBhbHNvIHByb3ZpZGVzCj4gPiB0ZW1wZXJhdHVyZSBzaHV0ZG93biBw
cm90ZWN0aW9uLiBUaGUgc2h1dGRvd24gdmFsdWUgaXMKPiA+IHNldCBhdCAxMTBDLCBhcyB0ZXN0
ZWQgYnkgdGhlIHZlbmRvci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRXplcXVpZWwgR2FyY2lh
IDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHNpIHwgNyArKysrKysrCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHNpCj4gPiBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2s5NjAuZHRzaSBpbmRleAo+ID4gZDY0ZDVhYzA4MDRh
Li41OTljOTc1MmVkNGQgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1yb2NrOTYwLmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXJvY2s5NjAuZHRzaQo+ID4gQEAgLTYzNCwzICs2MzQsMTAgQEAKPiA+ICAg
ICAgICAgIG1hbGktc3VwcGx5ID0gPCZ2ZGRfZ3B1PjsKPiA+ICAgICAgICAgIHN0YXR1cyA9ICJv
a2F5IjsKPiA+ICB9Owo+IAo+IGRvZXNuJ3QgYXBwbHkgYWdhaW5zdCBteSA1LjEvZHRzNjQgYnJh
bmNoIGFuZCBvdXIgcm9jazk2MC5kdHNpCj4gYWxzbyBkb2VzIG5vdCBoYXZlIGEgbWFsaSBub2Rl
IHlldCAoZXNwZWNpYWxseSBhbHNvIG5vdCBvbmUgd2l0aAo+IHNwYWNlLWluZGVudGF0aW9uIDst
KSApLgo+IAo+IAoKU29ycnkgYWJvdXQgdGhhdCwgaXQgd2FzIGJhc2VkIG9uIHlvdXIgZm9yLW5l
eHQgYnJhbmNoLApidXQgYSBtYWxpIHBhdGNoIHNsaXBwZWQgdGhyb3VnaC4KCj4gSGVpa28KPiAK
PiA+ICsKPiA+ICsmdHNhZGMgewo+ID4gKwlyb2NrY2hpcCxody10c2h1dC1tb2RlID0gPDE+Owo+
ID4gKwlyb2NrY2hpcCxody10c2h1dC1wb2xhcml0eSA9IDwxPjsKPiA+ICsJcm9ja2NoaXAsaHct
dHNodXQtdGVtcCA9IDwxMTAwMDA+Owo+ID4gKwlzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiAK
PiAKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
