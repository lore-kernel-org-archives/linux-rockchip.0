From: "David.Wu" <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: Boundary between pinctrl and peripheral settings
Date: Fri, 21 Jul 2017 14:33:00 +0800
Message-ID: <d0ade22d-3e3d-6bf3-3a06-e85e74360147@rock-chips.com>
References: <1719598.F3JUalFtig@phil> <5983290.MocaVmHgjo@phil>
 <97536e9f-7ad9-032b-d2dd-921f97464123@rock-chips.com>
 <2621764.2a2E3U2WOa@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2621764.2a2E3U2WOa@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgSGVpa28sCgpVbmZvcnR1bmF0ZWx5LCBhZnRlciB0aGUgZGlzY3Vzc2lvbiB3aXRoIElDLCB3
ZSBmZWVsIHRoYXQgd2UgY2FuIG5vdCAKbWFrZSBoYXJkd2FyZSBhdXRvbWF0aWMgc3dpdGNoOwpU
aGUgcmVhc29uIGZvciB0aGlzIGlzIHRoYXQgaWYgeW91IGFjY2lkZW50YWxseSBjb25maWd1cmUg
YWxsIG9mIHRoZXNlIApjb25maWd1cmF0aW9ucywgdGhlIGhhcmR3YXJlIGRvZXNuJ3Qga25vdyB3
aGljaCBvbmUgdG8gY2hvb3NlLCBhbmQgdGhlbiAKaXQncyBub3QgZ29vZCBmb3Igb3VyIGRlYnVn
LCBiZWNhdXNlIEkgZG9uJ3Qga25vdyB3aGljaCBvcHRpb24gdGhlIApjdXJyZW50IGhhcmR3YXJl
IGlzIHN3aXRjaGluZyB0by4KU28gd2Ugc3RpbGwgbWFpbnRhaW4gdGhlIGN1cnJlbnQgd2F5LCBi
dXQgYXNrIHRoZW0gdG8gd3JpdGUgbW9yZSBjbGVhcmx5IAphbmQgZWFzaWx5IGluIHRoZSBUUk0g
ZmlsZS4KCuWcqCAyMDE3LzUvMjMgMDoyOSwgSGVpa28gU3R1ZWJuZXIg5YaZ6YGTOgo+IEkgd2Fz
IHRhbGtpbmcgd2l0aCBEYXZpZCBXdSBhYm91dCB0aGF0IGEgc2hvcnQgd2hpbGUgYWdvIGFzIHdl
bGw6LSkgIC4KPiAKPiAgIEZyb20gd2hhdCBJJ3ZlIGhlYXJlZCwgaW4gdGhlIGZ1dHVyZSBzb2Nz
IG1heSBiZSBhYmxlIHRvIHNlbGVjdCB0aGF0Cj4gcm91dGluZyB0aGVtc2VsZnMgYmFzZWQgb24g
dGhlIGlvbXV4IGFuZCBoYXZpbmcgaGFkIHRpbWUgdG8gcG9uZGVyCj4gdGhlIHdob2xlIGlzc3Vl
IGZvciBzb21lIHRpbWUgbm93LCBJIGRvIGd1ZXNzIHNvbWUgc29ydCBvZiBsaXN0IHdvdWxkIGJl
Cj4gdGhlIGxlYXN0IGludHJ1c2l2ZSBzb2x1dGlvbi4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
