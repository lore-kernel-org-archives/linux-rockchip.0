From: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug] usb: dwc2: Add functions to set and clear force mode
Date: Wed, 3 Feb 2016 08:35:57 +0800
Message-ID: <56B14B6D.1060808@gmail.com>
References: <56A7603C.1000409@rock-chips.com>
 <CAD=FV=Xk4v=1QMYG9XmXh6hJLKU6i_wVakOArF1du-Z_4_+Neg@mail.gmail.com>
 <56A8277F.9@gmail.com>
 <CAD=FV=Uab6H6sFVj_bPRs7H4HcBi2pqZK3HDCHQxC+EDk=inDA@mail.gmail.com>
 <56AF3D80.90807@gmail.com> <56AF3DCB.20808@gmail.com>
 <2B3535C5ECE8B5419E3ECBE30077290901DC42FD26@US01WEMBX2.internal.synopsys.com>
 <56B01785.3030803@163.com> <56B01A0C.3070801@gmail.com>
 <2B3535C5ECE8B5419E3ECBE30077290901DC431FDB@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="gbk"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC431FDB-Yu2iAY70zvrYN67daEjeMPufCSb+aD3WLzEdoUbNIic@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Huang,
 Tao" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgSm9obiwKCtTaIDIwMTbE6jAy1MIwM8jVIDA4OjAzLCBKb2huIFlvdW4g0LS1wDoKPiBPbiAy
LzEvMjAxNiA2OjUzIFBNLCBDYWVzYXIgV2FuZyB3cm90ZToKPj4gSm9obiwKPj4KPj4gSSB3aWxs
IHN1Z2dlc3QgdGhlIG1zbGVlcCgyNSkgZGVsYXkgc2hvdWxkICBwdXQgaW4KPj4gJ2R3YzJfZm9y
Y2VfZHJfbW9kZSgpJyBpbnN0ZWFkIG9mIHRoZSAnZHdjMl9jbGVhcl9mb3JjZV9tb2RlKCknCj4+
Cj4gSGkgQ2Flc2FyLAo+Cj4gQXJlIHlvdSBzYXlpbmcgdGhhdCBqdXN0IG1zbGVlcCgyNSkgaW4g
dGhhdCBmdW5jdGlvbiBsaWtlIHRoaXMgc29sdmVzCj4geW91ciBpc3N1ZT8KPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3VzYi9kd2MyL2NvcmUuYyBiL2RyaXZlcnMvdXNiL2R3YzIvY29yZS5jCj4g
aW5kZXggMzlhMGZhOC4uZThhOTY4OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi9kd2MyL2Nv
cmUuYwo+ICsrKyBiL2RyaXZlcnMvdXNiL2R3YzIvY29yZS5jCj4gQEAgLTYyNSw2ICs2MjUsOCBA
QCB2b2lkIGR3YzJfZm9yY2VfZHJfbW9kZShzdHJ1Y3QgZHdjMl9oc290ZyAqaHNvdGcpCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICBfX2Z1bmNfXywgaHNvdGctPmRyX21vZGUpOwo+ICAgICAg
ICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICAgfQo+ICsKPiArICAgICAgIG1zbGVlcCgyNSk7
CgpZZXAsIHRoYXQgd2lsbCBzb2x2ZSB0aGlzIGlzc3VlLgoKCj4gICB9Cj4gICAKPgo+Cj4gQWx0
aG91Z2ggdGhhdCBpcyBzdGlsbCBub3QgaWRlYWwsIGl0J3MgYmV0dGVyIHRoYW4gdGhlIGFsdGVy
bmF0aXZlLgo+Cj4gUmVnYXJkcywKPiBKb2huCj4KPiAtLSAKPiBUaGFua3MsCj4gQ2Flc2FyCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
