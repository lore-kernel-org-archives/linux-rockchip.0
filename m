From: Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: rk3399: add pll up and down when change
 pll freq
Date: Wed, 3 Aug 2016 09:25:45 +0800
Message-ID: <57A14819.9060309@rock-chips.com>
References: <1470143599-8851-1-git-send-email-zhengxing@rock-chips.com>
 <CAD=FV=X1ZAhzBrFukvE9BxdFmgo8dj4GKjZ9EmPLTagHfO-ufg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=X1ZAhzBrFukvE9BxdFmgo8dj4GKjZ9EmPLTagHfO-ufg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, zhangqing <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-clk <linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgRG91ZywKCk9uIDIwMTblubQwOOaciDAz5pelIDA4OjQ5LCBEb3VnIEFuZGVyc29uIHdyb3Rl
Ogo+IFhpbmcsCj4KPiBPbiBUdWUsIEF1ZyAyLCAyMDE2IGF0IDY6MTMgQU0sIFhpbmcgWmhlbmcg
PHpoZW5neGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+IEZyb206IEVsYWluZSBaaGFuZyA8
emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBUaGUgc3VnZ2VzdGlvbiB0aGF0IGlzIGZy
b20gSUMgZGVzaWduZXIsIHRoZSBjb3JyZWN0IHBsbCBzZXF1ZW5jZSBzZXR0aW5nCj4+IHNob3Vs
ZCBiZSBsaWtlIHRoZXNlOgo+PiAtLS0tCj4+ICAgIHNldCBwbGwgdG8gc2xvdyBtb2RlIG9yIG90
aGVyIHBsbHMKPj4gICAgc2V0IHBsbCBkb3duCj4+ICAgIHNldCBwbGwgcGFyYW1zCj4+ICAgIHNl
dCBwbGwgdXAKPj4gICAgd2FpdCBwbGwgbG9jayBzdGF0dXMKPj4gICAgc2V0IHBsbCB0byBub3Jt
YWwgbW9kZQo+PiAtLS0tCj4+Cj4+IEhlbmNlLCB0aGVyZSBhcmUgcG90ZW50aWFsIHJpc2tzIHRo
YXQgd2UgbmVlZCB0byBmaXg6Cj4+IHJvY2tjaGlwX3JrMzM5OV93YWl0X3BsbF9sb2NrIC0gdGlt
ZW91dCB3YWl0aW5nIGZvciBwbGwgdG8gbG9jawo+PiByb2NrY2hpcF9yazMzOTlfcGxsX3NldF9w
YXJhbXMgLSBwbGwgdXBkYXRlIHVuc3VjZXNzZnVsLCB0cnlpbmcgdG8gcmVzdG9yZSBvbGQgcGFy
YW1zCj4gSSBzdGlsbCBkb24ndCB1bmRlcnN0YW5kIGhvdyB0aGF0IGdyb2tzIHdpdGggdGhlIHN0
YXRlbWVudCBpbiB0aGUgVFJNOgo+Cj4+IEluIG1vc3QgY2FzZXMgdGhlIFBMTCBwcm9ncmFtbWlu
ZyBjYW4gYmUgY2hhbmdlZCBvbi10aGUtZmx5IGFuZCB0aGUgUExMIHdpbGwgc2ltcGx5IHNsZXcg
dG8gdGhlIG5ldyBmcmVxdWVuY3kKPiBUaGF0IG1ha2VzIGl0IHNvdW5kIGxpa2UgdGhlc2UgUExM
cyBhcmUgc3VwZXIgZ3JlYXQgYXQgZHluYW1pYyB1cGRhdGVzLgo+Cj4KV2VsbCwgSSB3aWxsIHJl
cG9ydCBpdCB0byBJQyAmIERvYyBmb2xrZXJzIHRvIHVwZGF0ZSB0aGUgVFJNIGFuZCBtYWtlIGl0
IApjbGVhci4KClRoYW5rcy4KCi0tIAotIFhpbmcgWmhlbmcKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
