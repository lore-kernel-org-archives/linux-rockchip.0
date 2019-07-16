From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v3 40/57] ram: rk3399: Update lpddr4 vref_mode_ac
Date: Tue, 16 Jul 2019 21:17:17 +0800
Message-ID: <23463999-16b0-3e54-49a0-88555c8f9283@rock-chips.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-41-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190716115745.12585-41-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, YouMin Chen <cym-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gajjar04akash-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFVwZGF0ZSB2cmVm
X21vZGVfYWMgZm9yIGxwZGRyNCBiYXNlZCBvbiBWRERRLzMvMj0xNi44JQo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZl
ciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4g
LS0tCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyB8IDMgKystCj4gICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJzL3JhbS9y
b2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDYzNzYzMDYyZjkuLmUzZjFhYmY3ZTcgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiArKysgYi9k
cml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC0zNjYsNyArMzY2LDggQEAg
c3RhdGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4g
ICAJCQl2cmVmX3ZhbHVlX2RxID0gKHJkX3ZyZWYgLSAxNTMwMCkgLyA1MjE7Cj4gICAJCX0KPiAg
IAkJdnJlZl9tb2RlX2FjID0gMHg2Owo+IC0JCXZyZWZfdmFsdWVfYWMgPSAweDFmOwo+ICsJCS8q
IFZERFEvMy8yPTE2LjglICovCj4gKwkJdnJlZl92YWx1ZV9hYyA9IDB4MzsKPiAgIAl9IGVsc2Ug
aWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsKPiAgIAkJaWYgKHBhcmFtcy0+
YmFzZS5vZHQgPT0gMSkgewo+ICAgCQkJdnJlZl9tb2RlX2RxID0gMHg1OyAgLyogTFBERFIzIE9E
VCAqLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
