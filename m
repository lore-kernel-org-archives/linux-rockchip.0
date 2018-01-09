From: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cif test clocks for rk3399
Date: Tue, 9 Jan 2018 11:17:35 +0800
Message-ID: <02572b6f-4745-ec87-53f8-3c949b99c7e3@rock-chips.com>
References: <1515390531-13147-1-git-send-email-zhengsq@rock-chips.com>
 <20180108191733.GA59523@google.com>
 <d8aef67f-1de0-0216-7b22-4e7990855353@rock-chips.com>
 <20180109015612.GA180695@google.com>
Reply-To: zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180109015612.GA180695-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
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
To: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

SGkgQnJpYW4sCgoKT24gMjAxOOW5tDAx5pyIMDnml6UgMDk6NTYsIEJyaWFuIE5vcnJpcyB3cm90
ZToKPiBPbiBUdWUsIEphbiAwOSwgMjAxOCBhdCAwOTo0NTowNUFNICswODAwLCBTaHVucWlhbiBa
aGVuZyB3cm90ZToKPj4gT24gMjAxOOW5tDAx5pyIMDnml6UgMDM6MTcsIEJyaWFuIE5vcnJpcyB3
cm90ZToKPj4+IE9uIE1vbiwgSmFuIDA4LCAyMDE4IGF0IDAxOjQ4OjUxUE0gKzA4MDAsIFNodW5x
aWFuIFpoZW5nIHdyb3RlOgo+Pj4+ICsJCQl0ZXN0X2Nsa291dDI6IHRlc3QtY2xrb3V0MiB7Cj4+
Pj4gKwkJCQlyb2NrY2hpcCxwaW5zID0KPj4+PiArCQkJCQk8MCA4IFJLX0ZVTkNfMyAmcGNmZ19w
dWxsX25vbmU+Owo+Pj4gWW91ciBmdW5jdGlvbiBpbmRleGluZyBpcyBhIGxpdHRsZSBjb25mdXNp
bmcgdG8gbWUsIGJ1dCBvbmUgb3IgbW9yZSBvZgo+Pj4geW91ciBkYXRhc2hlZXQsIFRSTSwgb3Ig
cGF0Y2ggYXJlIGluY29ycmVjdCBoZXJlLiBUaGUgZGF0YXNoZWV0IHNheXMKPj4+ICJGdW5jIDMi
ICh3aGljaCBpcyAxLWluZGV4ZWQsIHNvIHJlYWxseSBtZWFucyBSS19GVU5DXzIpIHNob3VsZCBi
ZQo+Pj4gVEVTVF9DTEtPVVQyLCBidXQgeW91ciBUUk0gYWdyZWVzIHdpdGggdGhlIHBhdGNoLCBz
YXlpbmcKPj4+IDInYjExPXRlc3RfY2xrb3V0Mi4gU28gSSB0aGluayB5b3VyIHBhdGNoIGlzIGNv
cnJlY3QsIGJ1dCB0aGUgZGF0YXNoZWV0Cj4+PiBuZWVkcyB1cGRhdGVkPwo+PiBZZWFoLCBwbGVh
c2UgZm9sbG93IHRoZSBUUk0uCj4gQ2FuIHlvdSBtYWtlIHN1cmUgdGhlIGRhdGFzaGVldCBnZXRz
IHVwZGF0ZWQ/ClN1cmUsIEkndmUgc2VudCBub3RpZmljYXRpb24gdG8gdGhlIG93bmVyIG9mIGRh
dGFzaGVldC4KClRoYW5rIHlvdQo+Cj4gVGhhbmtzLAo+IEJyaWFuCj4KPgo+CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
