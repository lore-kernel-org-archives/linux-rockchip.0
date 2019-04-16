From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v2 02/14] rockchip: dts: rk3399: Sync
 pwm2_pin_pull_down from Linux 5.1-rc2
Date: Tue, 16 Apr 2019 14:00:07 +0200
Message-ID: <12d0f9f57d580659ccadb361b25df87007d66fb6.camel@bootlin.com>
References: <20190416105647.18437-1-jagan@amarulasolutions.com>
 <20190416105647.18437-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190416105647.18437-3-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

TGUgbWFyZGkgMTYgYXZyaWwgMjAxOSDDoCAxNjoyNiArMDUzMCwgSmFnYW4gVGVraSBhIMOpY3Jp
dCA6Cj4gVG8gbWFrZSBzdWNjZXNzZnVsIGJ1aWxkIHdpdGggZHRzKGkpIGZpbGVzIHN5bmNpbmcg
ZnJvbSBMaW51eCA1LjEtcmMyCj4gdGhlIHJrMzM5OS5kdHNpIHdvdWxkIHJlcXVpcmUgcHdtMl9w
aW5fcHVsbF9kb3duLgo+IAo+IFNvLCBzeW5jIHRoZSBwd20yX3Bpbl9wdWxsX2Rvd24gbm9kZSBm
cm9tIExpbnV4IDUuMS1yYzIuICBTaW5jZSB0aGlzCj4gbm9kZSBpcyBzdHJpY3RseSBub3QgcGFy
dCBvZiBhbnkgY29tbWl0IGFsb25lLCBJIGhhdmUgbWVudGlvbmVkCj4gTGludXggNS4xLXJjMiB0
YWcgZm9yIGZ1dHVyZSByZWZlcmVuY2Ugb2Ygd2hlcmUgd291bGQgdGhpcyBzeW5jCj4gY29taW5n
IGZyb20uCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293
c2tpQGJvb3RsaW4uY29tPgoKQ2hlZXJzLAoKUGF1bAoKPiAtLS0KPiAgYXJjaC9hcm0vZHRzL3Jr
MzM5OS5kdHNpIHwgNiArKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMzk5LmR0c2kgYi9hcmNoL2FybS9kdHMv
cmszMzk5LmR0c2kKPiBpbmRleCBiNTNlNDFiNGRjLi45OTQ3MWY2Mjg3IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtL2R0cy9yazMzOTkuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMzOTkuZHRz
aQo+IEBAIC0yNDk1LDYgKzI0OTUsMTIgQEAKPiAgCQkJCXJvY2tjaGlwLHBpbnMgPQo+ICAJCQkJ
CTwxIFJLX1BDMyBSS19GVU5DXzEgJnBjZmdfcHVsbF9ub25lPjsKPiAgCQkJfTsKPiArCj4gKwo+
ICsJCQlwd20yX3Bpbl9wdWxsX2Rvd246IHB3bTItcGluLXB1bGwtZG93biB7Cj4gKwkJCQlyb2Nr
Y2hpcCxwaW5zID0KPiArCQkJCQk8MSBSS19QQzMgUktfRlVOQ18xICZwY2ZnX3B1bGxfZG93bj47
Cj4gKwkJCX07Cj4gIAkJfTsKPiAgCj4gIAkJcHdtM2EgewotLSAKUGF1bCBLb2NpYWxrb3dza2ks
IEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIGtlcm5lbCBlbmdpbmVlcmluZwpodHRwczovL2Jv
b3RsaW4uY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
