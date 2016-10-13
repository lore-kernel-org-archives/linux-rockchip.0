From: Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/2] clocksource: arm_arch_timer: Don't assume clock
 runs in suspend
Date: Thu, 13 Oct 2016 14:25:34 +0200
Message-ID: <9d699d78-18cd-689f-02d4-529e10c7f2a0@linaro.org>
References: <1475604730-140264-1-git-send-email-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1475604730-140264-1-git-send-email-briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Will Deacon <will.deacon-5wv7dgnIgG8@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMDQvMTAvMjAxNiAyMDoxMiwgQnJpYW4gTm9ycmlzIHdyb3RlOgo+IFRoZSBBUk0gQVJNIHNw
ZWNpZmllcyB0aGF0IHRoZSBzeXN0ZW0gY291bnRlciAibXVzdCBiZSBpbXBsZW1lbnRlZCBpbiBh
bgo+IGFsd2F5cy1vbiBwb3dlciBkb21haW4sIiBhbmQgc28gd2UgdHJ5IHRvIHVzZSB0aGUgY291
bnRlciBhcyBhIHNvdXJjZSBvZgo+IHRpbWVrZWVwaW5nIGFjcm9zcyBzdXNwZW5kL3Jlc3VtZS4g
VW5mb3J0dW5hdGVseSwgc29tZSBTb0NzIChlLmcuLAo+IFJvY2tjaGlwJ3MgUkszMzk5KSBkbyBu
b3Qga2VlcCB0aGUgY291bnRlciB0aWNraW5nIHByb3Blcmx5IHdoZW4KPiBzd2l0Y2hlZCBmcm9t
IHRoZWlyIGhpZ2gtcG93ZXIgY2xvY2sgdG8gdGhlIGxvd2VyLXBvd2VyIGNsb2NrIHVzZWQgaW4K
PiBzeXN0ZW0gc3VzcGVuZC4gU3VwcG9ydCB0aGlzIHF1aXJrIGJ5IGFkZGluZyBhIG5ldyBkZXZp
Y2UgdHJlZSBwcm9wZXJ0eS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBOb3JyaXMgPGJyaWFu
bm9ycmlzQGNocm9taXVtLm9yZz4KPiAtLS0KCkJvdGggcGF0Y2hlcyBhcHBsaWVkIGZvciA0LjEw
LgoKVGhhbmtzICEKCiAgLS0gRGFuaWVsCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
