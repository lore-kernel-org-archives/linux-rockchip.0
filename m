From: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug] usb: dwc2: Add functions to set and clear force mode
Date: Wed, 27 Jan 2016 10:12:15 +0800
Message-ID: <56A8277F.9@gmail.com>
References: <56A7603C.1000409@rock-chips.com>
 <CAD=FV=Xk4v=1QMYG9XmXh6hJLKU6i_wVakOArF1du-Z_4_+Neg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=Xk4v=1QMYG9XmXh6hJLKU6i_wVakOArF1du-Z_4_+Neg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
Cc: "Huang, Tao" <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?UTF-8?B?5ZC06Imv5bOw?= <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

VGhhbmtzIERvdWcncyByZXBseS4KCkNjOiBXdWxmCuWcqCAyMDE25bm0MDHmnIgyN+aXpSAwMDow
NSwgRG91ZyBBbmRlcnNvbiDlhpnpgZM6Cj4gSGksCj4KPiBPbiBUdWUsIEphbiAyNiwgMjAxNiBh
dCA0OjAyIEFNLCBDYWVzYXIgV2FuZyA8d3h0QHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4gSGkg
IEpvaG4sIEZlbGlwZQo+Pgo+Pgo+PiBJJ20gbm8gZmFtaWxpYXIgd2l0aCB1c2Igc3R1ZmYuCj4+
IHRoZW4gSSBmb3VuZCB0aGlzIHBhdGNoIHdpbGwgYnJlYWsgdXNiIHdvcmtpbmcgZm9yIHJrMzAz
NiBTb0NzLCBtYXliZSBtb3JlCj4+IFNvQ3MuCj4+IFNheXMsIFUgZGlzayBjYW4ndCB3b3JrIG9u
IHVzYiBob3N0Lgo+Pgo+PiBUaGUgZmFpbHVyZSBsb2c6Cj4+Cj4+ICAgICAzMi42NDU0ODFdIHVz
YiB1c2IyLXBvcnQxOiBjb25uZWN0LWRlYm91bmNlIGZhaWxlZAo+Pgo+Pgo+PiBUZXN0ZWQgYnkg
Zm9sbG93aW5nIGJyYW5jaDoKPj4gaHR0cHM6Ly9naXRodWIuY29tL0NhZXNhci1naXRodWIvcm9j
a2NoaXAvdHJlZS9reWxpbi9uZXh0ICAgKGtlcm5lbDoKPj4gNC41LXJjMSkKPj4KPj4gUmV2ZXJ0
ICJ1c2I6IGR3YzI6IEFkZCBmdW5jdGlvbnMgdG8gc2V0IGFuZCBjbGVhciBmb3JjZSBtb2RlIiB3
aWxsIHdvcmsgZm9yCj4+IGl0Lgo+Pgo+Pgo+PiBNYXliZSwgc29tZW9uZSBoYXZlIHNvbWUgc3Vn
Z2VzdGlvbnMgb3IgaWRlYXM/Cj4gQ2FuIHlvdSBjaGVjayBpZiB0aGlzIHNlcmllcyBoZWxwcyB5
b3U/Cj4KPiBodHRwOi8vbWFyYy5pbmZvLz9sPWxpbnV4LXVzYiZtPTE0NTI1NTg1MTUxNjEyMSZ3
PTIKClVubHVja2lseSwgdGhpcyBzZXJpZXMgcGF0Y2hlcyBjYW4ndCBmaXggaXQgb24gcmszMDM2
IFNvQ3MuCkkgcmV2ZXJ0IHRoaXMgQ0wgKCJ1c2I6IGR3YzI6IEFkZCBmdW5jdGlvbnMgdG8gc2V0
IGFuZCBjbGVhciBmb3JjZSAKbW9kZSIpIHRvIHdvcmsgZmlyc3RseS4KCgo+IEkga25vdyBVU0Ig
b24gbWFpbmxpbmUgd2FzIGZhaWxpbmcgcHJldHR5IGJhZGx5IGZvciBtZSBmb3IgcmszMjg4Cj4g
dW50aWwgSSBhcHBsaWVkIHRob3NlIHBhdGNoZXMsIHRob3VnaCBJIGRpZG4ndCBkZWJ1ZyBpdCBm
dXJ0aGVyIHRoYW4KPiBqdXN0IGFwcGx5aW5nIHRob3NlIHBhdGNoZXMuCj4KPiAtRG91Zwo+Cj4K
Pgo+Cj4gLS0gCj4gVGhhbmtzLAo+IENhZXNhcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
