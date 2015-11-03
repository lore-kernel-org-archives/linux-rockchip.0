From: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [RESEND PATCH] ARM: errata: Workaround for Cortex-A12 erratum
 818325
Date: Tue, 3 Nov 2015 17:04:16 +0800
Message-ID: <56387890.2090802@gmail.com>
References: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
 <1446538209-13490-2-git-send-email-wxt@rock-chips.com>
 <7094999.meGITi6gTu@wuerfel>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7094999.meGITi6gTu@wuerfel>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Huang Tao <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Stephen Boyd <sboyd-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Nadav Haklai <nadavh-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, cwz-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jonathan Stone <j.stone-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Gregory CLEMENT <gregory.clement-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

CgrlnKggMjAxNeW5tDEx5pyIMDPml6UgMTY6NDUsIEFybmQgQmVyZ21hbm4g5YaZ6YGTOgo+IE9u
IFR1ZXNkYXkgMDMgTm92ZW1iZXIgMjAxNSAxNjoxMDowOSBDYWVzYXIgV2FuZyB3cm90ZToKPj4g
KyAgICAgICAvKiBDb3J0ZXgtQTEyIEVycmF0YSAqLwo+PiArICAgICAgIGxkciAgICAgcjEwLCA9
MHgwMDAwMGMwZCAgICAgICAgICAgICAgICBAIENvcnRleC1BMTIgcHJpbWFyeSBwYXJ0IG51bWJl
cgo+PiArICAgICAgIHRlcSAgICAgcjAsIHIxMAo+PiArICAgICAgIGJuZSAgICAgNWYKCmJlcSAg
X19jYTE1X2VycmF0YToKPj4gKyNpZmRlZiBDT05GSUdfQVJNX0VSUkFUQV84MTgzMjUKPj4gKyAg
ICAgICB0ZXEgICAgIHI2LCAjMHgwMCAgICAgICAgICAgICAgICAgICAgICAgQCBwcmVzZW50IGlu
IHIwcDAKPj4gKyAgICAgICB0ZXFuZSAgIHI2LCAjMHgwMSAgICAgICAgICAgICAgICAgICAgICAg
QCBwcmVzZW50IGluIHIwcDEtMDBsYWMwLXJjMTEKPj4gKyAgICAgICBtcmNlcSAgIHAxNSwgMCwg
cjEwLCBjMTUsIGMwLCAxICAgICAgICAgQCByZWFkIGRpYWdub3N0aWMgcmVnaXN0ZXIKPj4gKyAg
ICAgICBvcnJlcSAgIHIxMCwgcjEwLCAjMSA8PCAxMiAgICAgICAgICAgICAgQCBzZXQgYml0ICMx
Mgo+PiArICAgICAgIG1jcmVxICAgcDE1LCAwLCByMTAsIGMxNSwgYzAsIDEgICAgICAgICBAIHdy
aXRlIGRpYWdub3N0aWMgcmVnaXN0ZXIKPj4gKyAgICAgICBpc2IKPj4gKyNlbmRpZgo+PiAgICAg
ICAgICAvKiBDb3J0ZXgtQTE1IEVycmF0YSAqLwo+Pgo+IERvZXMgdGhpcyBzdGlsbCBidWlsZD8g
WW91IHNlZW0gdG8gaGF2ZSBsb3N0IHRoZSAnNTonIGxhYmVsLgoKTm8sICBJIGRpZG4ndCBoYXZl
IGJ1aWxkIGluIG5leHQga2VybmVsLgoKWXVwLCAgdGhlIHBhdGNoIG5lZWQgYSBiaXQgY2hhbmdl
IGZyb20gdGhlIG1lc3NhZ2UuCgpjb21taXQgMTdlN2JmODY2OTBlYWFkNDkwNmQyMjk1ZjBiZDE3
MWNjMTk0NjMzYgpBdXRob3I6IFJ1c3NlbGwgS2luZyA8cm1rK2tlcm5lbEBhcm0ubGludXgub3Jn
LnVrPgpEYXRlOiAgIFNhdCBBcHIgNCAyMTozNDozMyAyMDE1ICswMTAwCgogICAgIEFSTTogcHJv
Yy12NzogbW92ZSBDUFUgZXJyYXRhIG91dCBvZiBsaW5lCgoKCi0tLS0tCk9yaWdpbmFsIHBhdGNo
OgpodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzQ3MzUzNDEvCgpBcHBsaWVkIGFu
ZCB2ZXJpZmllZCBvbiBrZXJuZWwgVjMuMTQuCgoKCj4KPiAJQXJuZAo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoK
Ci0tIApUaGFua3MsCkNhZXNhcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
