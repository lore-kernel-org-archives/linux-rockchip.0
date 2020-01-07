From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 11/11] roc-rk3399-pc: Add SPI boot support
Date: Tue, 7 Jan 2020 16:53:28 +0800
Message-ID: <0f93be06-6ff1-a5fb-42f2-b9aaa81c3444@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-12-jagan@amarulasolutions.com>
 <4cc4007b-a55d-f75d-623e-52914795d76b@rock-chips.com>
 <CAMty3ZA1u3-21QN4N6W=9Sq3n493BBBB2W_FzAEQC9aze4SoMg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAMty3ZA1u3-21QN4N6W=9Sq3n493BBBB2W_FzAEQC9aze4SoMg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgSmFnYW4sCgpPbiAyMDE5LzEyLzMwIOS4i+WNiDM6NTIsIEphZ2FuIFRla2kgd3JvdGU6Cj4g
T24gTW9uLCBEZWMgMzAsIDIwMTkgYXQgODozNSBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gT24gMjAxOS8xMi8yMSDkuIvljYgzOjU0LCBKYWdh
biBUZWtpIHdyb3RlOgo+Pj4gQWRkIFNQSSBib290IHN1cHBvcnQgZm9yIFJPQy1SSzMzOTktUEMg
Ym9hcmQuCj4+Pgo+Pj4gVGhpcyB3b3VsZCBhZGQgc2VwYXJhdGUgY29uZmlnIGZpbGUKPj4gV2hh
dCBpcyB0aGUga2V5IHJlYXNvbiB0byBoYXZlIGEgbmV3IHNlcGFyYXRlIGNvbmZpZyBmaWxlPyBJ
IHRoaW5rIGl0Cj4+IHdvdWxkIGJlIG11Y2ggYmV0dGVyCj4+Cj4+IHRvIHVzZSB0aGUgc2FtZSBk
ZWZjb25maWcsIHNwaSBib290IGlzIG9uZSBvZiBmZWF0dXJlcyBsaWtlIG90aGVyCj4+IGZlYXR1
cmVzLCBpdCBzaG91bGQgbm90IG5lZWQKPj4KPj4gYSBzZXBhcmF0ZSBjb25maWcuCj4gUHJvYmxl
bSBpcyBlbnYsIHdlIGRvbid0IGhhdmUgZHluYW1pYyBlbnYgcGlja3VwIEkgZ3Vlc3MsIGRvbid0
IHdlPwoKSSB3b3VsZCBzdWdnZXN0IHRvIHNwbGl0IHRoZSBhZGRpdGlvbiBvZiB0aGUgc3BpX2Rl
ZmNvbmZpZyBvdXQgb2YgdGhpcyAKcGF0Y2ggc28gdGhhdCBJIGNhbiBtZXJnZQoKdGhlIG90aGVy
IHBhcnQgb2YgY29kZSB1cGRhdGUgYW5kIGdldCB0aGUgaW1hZ2UgZm9yIHNwaSB3aXRob3V0IGJp
bm1hbiAKZm9yIG5vdyBiZWZvcmUgd2UKCmhhdmUgYSBiZXR0ZXIgc29sdXRpb24uCgpBbmQgSSBk
b24ndCB3YW50IHRvIGRvdWJsZSB0aGUgZGVmY29uZmlnIGZpbGUgbnVtYmVyIGZvciBzcGkgY29u
ZmlnIAppbWFnZSB3aXRoIGJpbm1hbiBzdXBwb3J0LgoKClRoYW5rcywKCi0gS2V2ZXIKCj4KPgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
