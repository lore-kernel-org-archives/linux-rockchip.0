From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
Date: Sat, 21 Dec 2019 13:02:32 +0530
Message-ID: <CAMty3ZDoNCCMPTC_OoAyEwOoSMsa79KRmW9+LTC8opbinUiYPg@mail.gmail.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
 <20191211132623.430-2-jagan@amarulasolutions.com>
 <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1E12E6D7-5401-4EF5-9D74-DFC6F8216799-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgUGhpbGlwcCwKCk9uIFdlZCwgRGVjIDExLCAyMDE5IGF0IDc6MTAgUE0gUGhpbGlwcCBUb21z
aWNoCjxwaGlsaXBwLnRvbXNpY2hAdGhlb2Jyb21hLXN5c3RlbXMuY29tPiB3cm90ZToKPgo+Cj4K
PiA+IE9uIDExLjEyLjIwMTksIGF0IDE0OjI2LCBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29s
dXRpb25zLmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhlIG1heGltdW0gdHJhbnNmZXIgbGVuZ3RoIChp
biBhIHNpbmdsZSB0cmFuc2FjdGlvbikgZm9yIHRoZSBSb2NrY2hpcAo+ID4gU1BJIGNvbnRyb2xs
ZXIgaXMgNjRLZnJhbWVzIChpLmUuIDB4MTAwMDAgZnJhbWVzKSBvZiA4Yml0IG9yIDE2Yml0Cj4g
PiBmcmFtZXMgYW5kIGlzIGVuY29kZWQgYXMgKG51bV9mcmFtZXMgLSAxKSBpbiBDVFJMUjEuCj4g
Pgo+ID4gU28gdGhlIDB4MTAwMDAgaXMgb2Zmc2V0IHZhbHVlIGZvciA2NEsgYnV0IHRoZSBhY3R1
YWwgc2l6ZSB2YWx1ZSB3b3VsZAo+ID4gYmUgJ21pbnVzIDEnIGZyb20gMHgxMDAwMC4KPgo+IE5B
Sy4gUGxlYXNlIHNlZSAyIGNvZGUgbGluZXMgYmVsb3cgeW91ciBjaGFuZ2UgdG8gc2VlIHRoYXQg
dGhlIOKAnG1pbnVzIDHigJ0KPiBpcyBhcHBsaWVkIHRoZXJl4oCmIHNvIGEgdG9kbyBvZiAweDEw
MDAwIHdpbGwgd3JpdGUgMHhmZmZmIHRvIHJlZ3MtPmN0cmxyMS4KPgo+IFRoZSBwcm9ibGVtIG11
c3QgYmUgc29tZXdoZXJlIGVsc2UgYW5kIHRoaXMgcGF0Y2ggd2lsbCBvbmx5IG1hc2sgdGhlCj4g
dW5kZXJseWluZyBpc3N1ZS4KClBsZWFzZSBjaGVjayB0aGUgYmVsb3cgY2hhbmdlcy4gdGhlIG1h
eCB0cmFuc2ZlciBzaXplIGlzIDY0SyAtIDEgd2hpY2gKaXMgMHhmZmZmIGFuZCB3ZSBuZWVkIHRv
IHdyaXRlIC0xIG9mIHRoaXMgdG8gY3IxLgoKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC9jb21taXQvZHJpdmVycy9zcGkv
c3BpLXJvY2tjaGlwLmM/aWQ9NTE4NWE4MWMwMmQ0MTE4YjExZTZjYjdiNWZiZjZmMTVmZjdhZmY5
MApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xp
bnV4LW5leHQuZ2l0L2NvbW1pdC9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYz9pZD0wNGIzN2Qy
ZDAyYzBhNWFlMmY0ZTU5MzI2ZWY2ZGVhZmYxOGUwNDU2CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
