From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v15 3/4] soc: rockchip: power-domain: add power domain
 driver
Date: Tue, 16 Jun 2015 10:00:30 +0800
Message-ID: <557F833E.9000905@rock-chips.com>
References: <1434258820-26779-1-git-send-email-wxt@rock-chips.com>	
 <1434258820-26779-4-git-send-email-wxt@rock-chips.com>
 <1434380419.2069.38.camel@x220>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1434380419.2069.38.camel@x220>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Paul Bolle <pebolle-IWqWACnzNjzz+pZb47iToQ@public.gmane.org>
Cc: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Peter De Schrijver <pdeschrijver-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, khilman-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, Stephen Warren <swarren-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Flora Fu <flora.fu-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>, "jinkun.hong" <jinkun.hong-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, tomasz.figa-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Santosh Shilimkar <santosh.shilimkar-l0cyMroinI0@public.gmane.org>, Sandeep Nair <sandeep_n-l0cyMroinI0@public.gmane.org>, Matthias Brugger <matthias.bgg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sascha Hauer <s.hauer-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

CgrlnKggMjAxNeW5tDA25pyIMTXml6UgMjM6MDAsIFBhdWwgQm9sbGUg5YaZ6YGTOgo+IE9uIFN1
biwgMjAxNS0wNi0xNCBhdCAxMzoxMyArMDgwMCwgQ2Flc2FyIFdhbmcgd3JvdGU6Cj4KPj4gLS0t
IC9kZXYvbnVsbAo+PiArKysgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9LY29uZmlnCj4+ICtjb25m
aWcgUE1fR0VORVJJQ19ET01BSU5TCj4+ICsgICAgICAgIHRyaXN0YXRlICJSb2NrY2hpcCBnZW5l
cmljIHBvd2VyIGRvbWFpbiIKPiBTaW5jZSBteSByZW1hcmtzIG9uIHYxMyB5b3UgcmVtb3ZlZCB0
aGUgbW9kdWxlIHNwZWNpZmljIGNvZGUgZnJvbQo+IHBtX2RvbWFpbnMuYy4gQnV0IG5vdyB0aGlz
IGJlY2FtZSBhIHRyaXN0YXRlIHN5bWJvbC4gVGhhdCBtYWtlcyBsaXR0bGUKPiBzZW5zZS4gV2h5
IGRpZG4ndCB5b3Uga2VlcCBib29sPwoKWWVhaCwgeW91IGFyZSByaWdodC4gOnMvdHJpc3RhdGUv
Ym9vbAoKSSBmb3JnZXQgaXQgd2hlbiB0aGUgZHJpdmVyIGlzIG1vdmluZyBmcm9tICdhcmNoL2Fy
bS9tYWNoLXJvY2tjaGlwLycgdG8gCicvZHJpdmVyL3NvYy9yb2NrY2hpcC8nLgo+Cj4+ICsgICAg
ICAgIGRlcGVuZHMgb24gUE0KPj4gKyAgICAgICAgaGVscAo+PiArICAgICAgICAgIFNheSB5IGhl
cmUgdG8gZW5hYmxlIHBvd2VyIGRvYW1pbiBzdXBwb3J0Lgo+IHMvZG9hbWluL2RvbWFpbi8uCgpE
b25lLgo+PiArICAgICAgICAgIEluIG9yZGVyIHRvIG1lZXQgaGlnaCBwZXJmb3JtYW5jZSBhbmQg
bG93IHBvd2VyIHJlcXVpcmVtZW50cywgYSBwb3dlcgo+PiArICAgICAgICAgIG1hbmFnZW1lbnQg
dW5pdCBpcyBkZXNpZ25lZCBvciBzYXZpbmcgcG93ZXIgd2hlbiBSSzMyODggaW4gbG93IHBvd2Vy
Cj4+ICsgICAgICAgICAgbW9kZS4gVGhlIFJLMzI4OCBQTVUgaXMgZGVkaWNhdGVkIGZvciBtYW5h
Z2luZyB0aGUgcG93ZXIgb3QgdGhlIHdob2xlIGNoaXAuCj4gcy9vdC9vZi8KCkRvbmUuCj4+ICsg
ICAgICAgICAgSWYgdW5zdXJlLCBzYXkgTi4KPiBUaGFua3MsCj4KPgo+IFBhdWwgQm9sbGUKClRo
YW5rcywKCkNhZXNhcgoKPgo+Cj4KCi0tIApUaGFua3MsCi0gQ2Flc2FyCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
