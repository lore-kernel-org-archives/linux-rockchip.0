From: "Leonidas P. Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3328-roc-cc gmac2io
 tx/rx_delay
Date: Wed, 06 Mar 2019 03:36:59 +0200
Message-ID: <1551836219.5698.0@gmail.com>
References: <20190228222923.30418-1-papadakospan@gmail.com>
 <3120482.od4P9FZq9J@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3120482.od4P9FZq9J@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

CgrOo8+EzrnPgiDOms+Fz4EsIDMgzpzOsc+BLCAyMDE5IGF0IDQ6MTAgzpzOnCwgzr8vzrcgSGVp
a28gU3R1ZWJuZXIgCjxoZWlrb0BzbnRlY2guZGU+IM6tzrPPgc6xz4jOtToKPiBBbSBEb25uZXJz
dGFnLCAyOC4gRmVicnVhciAyMDE5LCAyMzoyOToyMyBDRVQgc2NocmllYiBMZW9uaWRhcyBQLiAK
PiBQYXBhZGFrb3M6Cj4+ICBUaGUgcmszMzI4LXJvYy1jYyBib2FyZCBleGhpYml0cyB0eCBzdGFi
aWxpdHkgaXNzdWVzIHdpdGggbGFyZ2UgCj4+IHBhY2tldHMsCj4+ICBhcyBkb2VzIHRoZSByb2Nr
NjQgYm9hcmQsIHdoaWNoIHdhcyBmaXhlZCB3aXRoIHRoaXMgcGF0Y2gKPj4gIGh0dHBzOi8vcGF0
Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTAxNzg5NjkvCj4+IAo+PiAgQSBzaW1pbGFyIHBhdGNo
IHdhcyBtZXJnZWQgZm9yIHRoZSByazMzMjgtcm9jLWNjIGhlcmUKPj4gIGh0dHBzOi8vcGF0Y2h3
b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA4MDQ4NjMvCj4+ICBidXQgaXQgZG9lc24ndCBpbmNsdWRl
IHRoZSB0eC9yeF9kZWxheSB0d2Vha3MsIGFuZCBJIGZpbmQgdGhhdCB0aGV5Cj4+ICBoZWxwIHdp
dGggYW4gaXNzdWUgd2hlcmUgbGFyZ2UgdHJhbnNmZXJzIHdvdWxkIGJyaW5nIHRoZSBldGhlcm5l
dAo+PiAgbGluayBkb3duLCBjYXVzaW5nIGEgbGluayByZXNldCByZWd1bGFybHkuCj4+IAo+PiAg
U2lnbmVkLW9mZi1ieTogTGVvbmlkYXMgUC4gUGFwYWRha29zIDxwYXBhZGFrb3NwYW5AZ21haWwu
Y29tPgo+IAo+IGFwcGxpZWQgYXMgZml4IGZvciB0aGUgNS4xLXJjIGN5Y2xlIHN0YXJ0aW5nIGlu
IGFib3V0IDIgd2Vla3MuCj4gCj4gVGhhbmtzCj4gSGVpa28KPiAKPiAKSXQgc2VlbXMgbGlrZSB0
aGUgZGVsYXlzIGZvciB0aGUgcmszMzI4LXJvYy1jYyBzaG91bGQgYmUgbGlrZSB0aGlzOgoJdHhf
ZGVsYXkgPSA8MHgyOD47CglyeF9kZWxheSA9IDwweDE2PjsKV2hhdCBzaG91bGQgSSBkbz8gTWFr
ZSBhIG5ldyBwYXRjaD8gSWYgc28sIHdoYXQgdHJlZSBkbyBJIGJhc2UgaXQgb24/CgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
