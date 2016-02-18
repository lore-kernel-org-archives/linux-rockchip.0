From: "Jun Zhao" <jung.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: =?utf-8?Q?=E7=AD=94=E5=A4=8D:_=5BPATCH_v2_4/4=5D_media:_vcodec?=
 =?utf-8?Q?:_rockchip:_Add_Rockchip_VP8_dec?= =?utf-8?Q?oder_driver?=
Date: Thu, 18 Feb 2016 09:06:27 +0800
Message-ID: <3620.32511407069$1455757650@news.gmane.org>
References: <1455705673-25484-1-git-send-email-jung.zhao@rock-chips.com>	<1455705787-25856-1-git-send-email-jung.zhao@rock-chips.com>
 <CAD=FV=UStodcwk6w7=x2iDizq0uVPuHSr9W8XbWDnLmrKAhQdA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=UStodcwk6w7=x2iDizq0uVPuHSr9W8XbWDnLmrKAhQdA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Language: zh-cn
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: 'Doug Anderson' <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: 'Mauro Carvalho Chehab' <mchehab-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>, 'Tomasz Figa' <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "'open list:ARM/Rockchip SoC...'" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, 'Hans Verkuil' <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, 'Laurent Pinchart' <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, 'Philipp Zabel' <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, 'Guennadi Liakhovetski' <g.liakhovetski-Mmb7MZpHnFY@public.gmane.org>, 'Pawel Osciak' <posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, 'Linux Media Mailing List' <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgRG91ZywKSSB3aWxsIGFkZCB5b3VyIHBhdGNoIGFuZCB5b3VyIG5hbWUgaW4gc2lnbmVkLW9m
Zi1ieS4gSXMgdGhhdCBhcHByb3ByaWF0ZT8KCkJlc3QgcmVnYXJkcywKSnVuZwoKKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgrnpo/lt57nkZ7oiq/lvq7nlLXlrZDmnInp
mZDlhazlj7ggKFJvY2tjaGlwKQrotbXkv4ogKEp1bmcgWmhhbykK566X5rOV5bel56iL5biIIChB
bGdvcml0aG0gRW5naW5lZXIpCis4Ni01OTEtODM5OTE5MDYtODk0NAoqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqCgoKLS0tLS3pgq7ku7bljp/ku7YtLS0tLQrlj5Hku7bk
uro6IGRpYW5kZXJzQGdvb2dsZS5jb20gW21haWx0bzpkaWFuZGVyc0Bnb29nbGUuY29tXSDku6Po
oaggRG91ZyBBbmRlcnNvbgrlj5HpgIHml7bpl7Q6IDIwMTblubQy5pyIMTjml6UgMDoxOArmlLbk
u7bkuro6IEp1bmcgWmhhbwrmioTpgIE6IFRvbWFzeiBGaWdhOyBQYXdlbCBPc2NpYWs7IE1hdXJv
IENhcnZhbGhvIENoZWhhYjsgSGFucyBWZXJrdWlsOyBMYXVyZW50IFBpbmNoYXJ0OyBHdWVubmFk
aSBMaWFraG92ZXRza2k7IFBoaWxpcHAgWmFiZWw7IG9wZW4gbGlzdDpBUk0vUm9ja2NoaXAgU29D
Li4uOyBMaW51eCBNZWRpYSBNYWlsaW5nIExpc3QK5Li76aKYOiBSZTogW1BBVENIIHYyIDQvNF0g
bWVkaWE6IHZjb2RlYzogcm9ja2NoaXA6IEFkZCBSb2NrY2hpcCBWUDggZGVjb2RlciBkcml2ZXIK
CkhlbGxvLAoKT24gV2VkLCBGZWIgMTcsIDIwMTYgYXQgMjo0MyBBTSwgSnVuZyBaaGFvIDxqdW5n
LnpoYW9Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ICsgICAgICAgZG1hX3NldF9hdHRyKERNQV9B
VFRSX05PX0tFUk5FTF9NQVBQSU5HLCAmYXR0cnNfbm92bSk7Cj4gKyAgICAgICB2cHUtPmFsbG9j
X2N0eCA9IHZiMl9kbWFfY29udGlnX2luaXRfY3R4X2F0dHJzKCZwZGV2LT5kZXYsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZhdHRyc19u
b3ZtKTsKPiArICAgICAgIGlmIChJU19FUlIodnB1LT5hbGxvY19jdHgpKSB7Cj4gKyAgICAgICAg
ICAgICAgIHJldCA9IFBUUl9FUlIodnB1LT5hbGxvY19jdHgpOwo+ICsgICAgICAgICAgICAgICBn
b3RvIGVycl9kbWFfY29udGlnOwo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIHZwdS0+YWxsb2Nf
Y3R4X3ZtID0gdmIyX2RtYV9jb250aWdfaW5pdF9jdHgoJnBkZXYtPmRldik7Cj4gKyAgICAgICBp
ZiAoSVNfRVJSKHZwdS0+YWxsb2NfY3R4X3ZtKSkgewo+ICsgICAgICAgICAgICAgICByZXQgPSBQ
VFJfRVJSKHZwdS0+YWxsb2NfY3R4X3ZtKTsKPiArICAgICAgICAgICAgICAgZ290byBlcnJfZG1h
X2NvbnRpZ192bTsKPiArICAgICAgIH0KCkknbSBub3QgcXVhbGlmaWVkIHRvIHJldmlldyB0aGlz
IHdob2xlIGRyaXZlciwgc28ganVzdCBhZGRpbmcgbXkgJDAuMDIuLi4KCkNvdWxkIHlvdSBwbGVh
c2UgZm9sZAo8aHR0cHM6Ly9jaHJvbWl1bS1yZXZpZXcuZ29vZ2xlc291cmNlLmNvbS8zMjIzMzY+
IGludG8geW91ciBwYXRjaApzdWJtaXNzaW9uPyAgQWxsIG9mIHRoZSBuZWNlc3NhcnkgcGF0Y2hl
cyBoYXZlIGxhbmRlZCBpbiBSTUsncyB0cmVlCnVwc3RyZWFtIGFuZCBhcmUgY3VycmVudGx5IHBy
ZXNlbnQgaW4gbGludXhuZXh0LgoKVGhhbmtzIQoKLURvdWcKCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
