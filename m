From: Markus Elfring <Markus.Elfring-S0/GAf8tV78@public.gmane.org>
Subject: iommu/rockchip: Checking a device_link_add() call in
 rk_iommu_add_device()
Date: Fri, 18 Oct 2019 09:00:14 +0200
Message-ID: <c4a1fdd2-4383-dd0f-1d4b-f27ab62b383e@web.de>
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
To: iommu-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org>
Cc: "Rafael J. Wysocki" <rafael-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Stephen McCamant <smccaman-OJFnDUYgAso@public.gmane.org>, Kangjie Lu <kjlu-OJFnDUYgAso@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Navid Emamdoost <emamd001-OJFnDUYgAso@public.gmane.org>, Aditya Pakki <pakki001-OJFnDUYgAso@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGVsbG8sCgpJIHRyaWVkIGFub3RoZXIgc2NyaXB0IGZvciB0aGUgc2VtYW50aWMgcGF0Y2ggbGFu
Z3VhZ2Ugb3V0LgpUaGlzIHNvdXJjZSBjb2RlIGFuYWx5c2lzIGFwcHJvYWNoIHBvaW50cyBvdXQg
dGhhdCB0aGUgaW1wbGVtZW50YXRpb24Kb2YgdGhlIGZ1bmN0aW9uIOKAnHJrX2lvbW11X2FkZF9k
ZXZpY2XigJ0gY29udGFpbnMgc3RpbGwKYW4gdW5jaGVja2VkIGNhbGwgb2YgdGhlIGZ1bmN0aW9u
IOKAnGRldmljZV9saW5rX2FkZOKAnS4KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90cmVlL2RyaXZlcnMvaW9tbXUvcm9j
a2NoaXAtaW9tbXUuYz9pZD0zZWY4NDVkYTNjM2IxODBkZGQzODZlMjI4YWMzMjI4ZDg0YTUyMmQz
I24xMDc1Cmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjQtcmMyL3NvdXJjZS9k
cml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMjTDEwNzEKCkhvdyBkbyB5b3UgdGhpbmsgYWJv
dXQgdG8gaW1wcm92ZSBpdD8KCldoaWNoIGVycm9yIGNvZGUgd291bGQgeW91IGxpa2UgdG8gcmV0
dXJuIGZvciBhIGZhaWxlZApkZXZpY2UgbGluayBhZGRpdGlvbiBhdCB0aGlzIHBsYWNlPwoKUmVn
YXJkcywKTWFya3VzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
