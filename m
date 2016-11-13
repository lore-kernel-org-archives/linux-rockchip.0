From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RESEND] ARM: dts: rockchip: fix TSADC reset node for rk3066a
Date: Mon, 14 Nov 2016 00:11:56 +0100
Message-ID: <1489175.liRG3HopZd@phil>
References: <CAFYR25XPx4QEu4bVyL2s4=Eqz+7w_Xjw8ZYOYzYsmz3z+rq84A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAFYR25XPx4QEu4bVyL2s4=Eqz+7w_Xjw8ZYOYzYsmz3z+rq84A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?utf-8?B?UGF3ZcWC?= Jarosz <paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Russell King <linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgUGF3ZcWCLAoKQW0gU29ubnRhZywgMTMuIE5vdmVtYmVyIDIwMTYsIDE3OjAyOjM5IENFVCBz
Y2hyaWViIFBhd2XFgiBKYXJvc3o6Cj4gVGhpcyBwYXRjaCBmaXhlcyBpbmNvcmVjdGx5IGFzc2ln
bmVkIHJrMzA2NmEgVFNBREMgbm9kZQo+IAo+IFNpZ25lZC1vZmYtYnk6IFBhd2XFgiBKYXJvc3og
PHBhd2VsamFyb3N6MzY5MUBnbWFpbC5jb20+Cgpib3RoIHBhdGNoZXMgZnJvbSB0b2RheSBsb29r
IGdvb2QsIGJ1dCB5b3VyIG1haWxlciBzZWVtcyB0byBoYXZlIHNjcmFtYmxlZCB0aGUgCnBhdGNo
ZXMgd2hlbiBzZW5kaW5nLiBJbnN0ZWFkIG9mIHRhYnMgSSBzZWUgYSBsb3Qgb2Ygc3BhY2VzIGZv
ciBleGFtcGxlLCB3aGljaCAKb2YgY291cnNlIHJlc3VsdHMgaW4gdGhlIHBhdGNoZXMgbm90IGFw
cGx5aW5nLgoKCkhlaWtvCgo+IC0tLQo+ICBhcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kgYi9hcmNoL2Fy
bS9ib290L2R0cy9yazMwNjZhLmR0c2kKPiBpbmRleCBmYzhkY2M3Li5hYzQ2MTA5IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2Jv
b3QvZHRzL3JrMzA2NmEuZHRzaQo+IEBAIC0yMDUsNyArMjA1LDcgQEAKPiAgICAgICAgICAgICAg
ICAgY2xvY2stbmFtZXMgPSAic2FyYWRjIiwgImFwYl9wY2xrIjsKPiAgICAgICAgICAgICAgICAg
aW50ZXJydXB0cyA9IDxHSUNfU1BJIDIxIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICAgICAgICAg
ICAgICAgICAjaW8tY2hhbm5lbC1jZWxscyA9IDwxPjsKPiAtICAgICAgICAgICAgICAgcmVzZXRz
ID0gPCZjcnUgU1JTVF9TQVJBREM+Owo+ICsgICAgICAgICAgICAgICByZXNldHMgPSA8JmNydSBT
UlNUX1RTQURDPjsKPiAgICAgICAgICAgICAgICAgcmVzZXQtbmFtZXMgPSAic2FyYWRjLWFwYiI7
Cj4gICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAgICAgICB9Owo+IC0t
Cj4gMi43LjQKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
