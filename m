From: Markus Elfring <Markus.Elfring-S0/GAf8tV78@public.gmane.org>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Wed, 16 Oct 2019 08:24:10 +0200
Message-ID: <e4540cb0-7fcc-ce1e-f687-c725f5e8b209@web.de>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <2588953.0pqkEXWxhN@phil> <45588ab8-2a6c-3f29-61ff-bccf8d6fb291@web.de>
 <5173392.uhhkXBHGmO@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5173392.uhhkXBHGmO@phil>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen McCamant <smccaman-OJFnDUYgAso@public.gmane.org>, Kangjie Lu <kjlu-OJFnDUYgAso@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Navid Emamdoost <emamd001-OJFnDUYgAso@public.gmane.org>, Aditya Pakki <pakki001-OJFnDUYgAso@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Pj4gV291bGQgeW91IGxpa2UgdG8gYWRqdXN0IHN1Y2ggZXhjZXB0aW9uIGhhbmRsaW5nIGFub3Ro
ZXIgYml0Pwo+Cj4gTm9wZS4KPgo+IFRoZSBiaWcgZGlmZmVyZW5jZSBpcyB0aGF0IGNsb2NrcyBy
ZWx5IGhlYXZpbHkgb24gdGhlaXIgbmFtZXMgdG8gZXN0YWJsaXNoCj4gdGhlIGNsb2NrIHRyZWUg
cGFyZW50c2hpcC4gU28gdGhlIFBMTCBjYW5ub3Qgd29yayB3aXRob3V0IHRoZSBuYW1lCgpUaGlz
IGVycm9yIHNpdHVhdGlvbiBnb3QgYSBzcGVjaWZpYyByZWFjdGlvbi4KCgo+IGJ1dCBjYW4gcHJv
dmlkZSBzb21lIG1lYW5zIG9mIGZ1bmN0aW9uYWxpdHkgd2l0aG91dCB0aGUgcmF0ZS10YWJsZQo+
IGVzcGVjaWFsbHkgYXMgYm9vdGxvYWRlcnMgZG8gZ2VuZXJhbGx5IGluaXRpYWxpemUgYSBQTEwg
dG8gc29tZSBmb3JtIG9mCj4gc2FuZSBmcmVxdWVuY3kuCgpJIGltYWdpbmUgdGhhdCBhIGNob2lj
ZSBpcyBhdmFpbGFibGUgaGVyZSBmb3IgdGhlIGVycm9yIGhhbmRsaW5nIHN0cmF0ZWd5LgoKKiBS
ZXR1cm4g4oCcRVJSX1BUUigtRU5PTUVNKeKAnSBhcyBhIHN0cmljdCByZXNwb25zZSBsaWtlIGlu
IHRoZSBvdGhlciBlcnJvciBjYXNlLgoKKiBGaXggdGhlIHNldHRpbmcg4oCccGxsLT5yYXRlX2Nv
dW504oCdIGF0IGxlYXN0ICh0byBiZSBhIGJpdCBtb3JlIHRvbGVyYW50KS4KICBXb3VsZCBhbnkg
c3lzdGVtIHVzZXJzIHdvbmRlciB0aGVuIGFib3V0IHRoZSBhdmFpbGFiaWxpdHkgb2Ygb25seQog
IGEgc2luZ2xlIGZyZXF1ZW5jeSAoaW5zdGVhZCBvZiBwb3NzaWJseSBleHBlY3RlZCBhbHRlcm5h
dGl2ZXMpPwoKUmVnYXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
