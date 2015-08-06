From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v3 3/3] ARM: rockchip: enable PMU_GPIOINT_WAKEUP_EN when
 entering shallow suspend
Date: Wed, 5 Aug 2015 18:55:52 -0700
Message-ID: <CAD=FV=W0L_0iM+15BAUfTA2ij5Ac90aVW9JZYyDhHMDNT2ZUMg@mail.gmail.com>
References: <2128609.Kb18M8K28F@diego>
	<1544453.8uqOvAiDmD@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1544453.8uqOvAiDmD@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGVpa28sCgpPbiBUdWUsIEF1ZyA0LCAyMDE1IGF0IDM6NTEgUE0sIEhlaWtvIFN0w7xibmVyIDxo
ZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+IFBNVV9HUElPSU5UX1dBS0VVUF9FTiBzZWVtcyBuZWVk
ZWQgd2hlbiBlbnRlcmluZyB0aGUgc2hhbGxvdyBzdXNwZW5kCj4gKHdpdGggbG9naWMgc3RheWlu
ZyBvbikgYnV0IGRvZXMgbm90IHNlZW0gdG8gYmUgbmVlZGVkIGZvciB0aGUgZGVlcAo+IHN1c3Bl
bmQgZm9yIHVua25vd24gcmVhc29ucy4KPiBUZXN0aW5nIHJldmVhbGVkIHRoYXQgdGhpcyBzZXR0
aW5nIHJlYWxseSBpcyBuZWNlc3NhcnkgdG8gcmVsaWFibHkKPiByZXN1bWUgdGhlIHZleXJvbiBk
ZXZpY2VzIGZyb20gc3VzcGVuZC4KPgo+IFJlcG9ydGVkLWJ5OiBDaHJpcyBaaG9uZyA8enl3QHJv
Y2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+Cj4gLS0tCj4gIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcG0uYyB8IDkgKysrKysrLS0t
Cj4gIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcG0uaCB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKClZlcnkgb2RkLCBidXQgT0sgYnkgbWUu
Li4gIEhvcGVmdWxseSB3ZSdsbCBldmVudHVhbGx5IGVuZCB1cCBiZWluZwphYmxlIHRvIHVzZSBk
ZWVwIHN1c3BlbmQgb24gbWFpbmxpbmUuICBUaGF0J2QgYmUgbmljZSwgd291bGRuJ3QgaXQ/CgpS
ZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
