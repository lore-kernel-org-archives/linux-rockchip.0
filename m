From: Markus Elfring <Markus.Elfring-S0/GAf8tV78@public.gmane.org>
Subject: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Sat, 12 Oct 2019 15:55:44 +0200
Message-ID: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
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
To: linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Michael Turquette <mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, Stephen Boyd <sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Aditya Pakki <pakki001-OJFnDUYgAso@public.gmane.org>, Kangjie Lu <kjlu-OJFnDUYgAso@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Navid Emamdoost <emamd001-OJFnDUYgAso@public.gmane.org>, Stephen McCamant <smccaman-OJFnDUYgAso@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGVsbG8sCgpJIHRyaWVkIGFub3RoZXIgc2NyaXB0IGZvciB0aGUgc2VtYW50aWMgcGF0Y2ggbGFu
Z3VhZ2Ugb3V0LgpUaGlzIHNvdXJjZSBjb2RlIGFuYWx5c2lzIGFwcHJvYWNoIHBvaW50cyBvdXQg
dGhhdCB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0aW9uIOKAnHJvY2tjaGlwX2Nsa19y
ZWdpc3Rlcl9wbGzigJ0gY29udGFpbnMgYWxzbyBhIGNhbGwKb2YgdGhlIGZ1bmN0aW9uIOKAnGtt
ZW1kdXDigJ0uCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYz9p
ZD0xYzBjYzVmMWFlNWVlNWE2OTEzNzA0YzBkNzVhNmU5OTYwNGVlMzBhI245MTMKaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuNC1yYzIvc291cmNlL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1wbGwuYyNMOTEzCgoqIERvIHlvdSBmaW5kIHRoZSB1c2FnZSBvZiB0aGUgZm9ybWF0
IHN0cmluZyDigJwlczogY291bGQgbm90IGFsbG9jYXRlCiAgcmF0ZSB0YWJsZSBmb3IgJXNcbuKA
nSBzdGlsbCBhcHByb3ByaWF0ZSBhdCB0aGlzIHBsYWNlPwoKKiBJcyB0aGVyZSBhIG5lZWQgdG8g
YWRqdXN0IHRoZSBlcnJvciBoYW5kbGluZyBoZXJlPwoKUmVnYXJkcywKTWFya3VzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
