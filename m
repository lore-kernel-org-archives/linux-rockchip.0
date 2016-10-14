From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 0/2] Assign RK3066 clocks at boot time
Date: Fri, 14 Oct 2016 15:28:30 +0200
Message-ID: <1569308.lsrqUgJ5m1@phil>
References: <cover.1476447057.git.paweljarosz3691@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <cover.1476447057.git.paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
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
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRnJlaXRhZywgMTQuIE9rdG9iZXIgMjAxNiwgMTQ6MTY6MjEgQ0VTVCBzY2hyaWViIFBhd2XF
giBKYXJvc3o6Cj4gVGhpcyBwYXRjaHNldCBzZXRzIHJrMzA2NiBQTEwsIENQVSBhbmQgUEVSSSBj
bG9ja3Mgd2hpbGUga2VybmVsIGluaXQuCj4gCj4gUGF3ZcWCIEphcm9zeiAoMik6Cj4gICBjbGs6
IHJvY2tjaGlwOiBBZGQgYmluZGluZ3MgZm9yIGNwdSBhbmQgcGVyaSBjbG9ja3Mgb24gcmszMDY2
Cj4gICBBUk06IGR0czogcm9ja2NoaXA6IGluaXRpYWxpemUgcmszMDY2IFBMTCBjbG9jayByYXRl
CgpjaGFuZ2VzIGxvb2sgZ29vZC4gT25lIHRoaW5nIHRvIGtlZXAgaW4gbWluZCBpcyB0aGF0IHdl
IG5lZWQgY2xvY2staWQgCmFkZGl0aW9ucyBpbiBhIHNlcGFyYXRlIHBhdGNoIChhcyB0aGV5IG5l
ZWQgdG8gYmUgb24gYSBzaGFyZWQgYnJhbmNoKS4KCkkgY2FuIGRvIHRoaXMgc3BsaXQgb2YgcGF0
Y2gxIG9uIG15IG93biBoZXJlLCBzbyBubyBuZWVkIHRvIHJlc2VuZCB0aGUgc2VyaWVzIAphbmQg
d2lsbCBkbyB0aGF0IGFmdGVyIDQuOS1yYzEgKHByb2JhYmx5IHNvbWV3aGVyZSBhZnRlciBzdW5k
YXkpIGFzIEkgbmVlZCBhIApzdGFibGUgYmFzZSBmb3IgdGhhdCBzaGFyZWQgYnJhbmNoLgoKCkhl
aWtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
