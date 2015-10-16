From: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] soc: rockchip: power-domain: don't try to print the clock
 name in error case
Date: Fri, 16 Oct 2015 09:19:34 +0800
Message-ID: <562050A6.7080002@gmail.com>
References: <1764593.eLkUiZigaK@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1764593.eLkUiZigaK@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

SGVpa28sCgpUaGFua3MgdG8gZml4IGl0LgoK5ZyoIDIwMTXlubQxMOaciDE15pelIDIxOjIyLCBI
ZWlrbyBTdMO8Ym5lciDlhpnpgZM6Cj4gV2hlbiB3ZSBuZXZlciBnb3QgdGhlIHRoZSBjbG9jay1y
ZWZlcmVuY2UsIGkuZS4gd2hlbiBJU19FUlIoY2xrKSBpcyB0cnVlLAo+IGRvbid0IHRyeSB0byBw
cmludCB0aGUgY2xvY2sgbmFtZSB2aWEgJXBDIGFzIHRoaXMgb2YgY291cnNlIHByb2R1Y2VzIGEK
PiBudWxsLXBvaW50ZXItZGVyZWZlcmVuY2UgaW4gX19jbGtfZ2V0X25hbWUoKS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpMb29rIGdvb2QgdG8g
bWUsIHlvdSBjYW4gZnJlZSBhZGQgdGhhdC4KClJldmlld2VkLWJ5OiBDYWVzYXIgV2FuZyA8d3h0
QHJvY2stY2hpcHMuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvc29jL3JvY2tjaGlwL3BtX2RvbWFp
bnMuYyB8IDQgKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9yb2NrY2hpcC9wbV9kb21haW5z
LmMgYi9kcml2ZXJzL3NvYy9yb2NrY2hpcC9wbV9kb21haW5zLmMKPiBpbmRleCA4MjY4ZDVkLi41
MzRjNTg5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL3JvY2tjaGlwL3BtX2RvbWFpbnMuYwo+
ICsrKyBiL2RyaXZlcnMvc29jL3JvY2tjaGlwL3BtX2RvbWFpbnMuYwo+IEBAIC0yNjUsOCArMjY1
LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wbV9hZGRfb25lX2RvbWFpbihzdHJ1Y3Qgcm9ja2No
aXBfcG11ICpwbXUsCj4gICAJCWlmIChJU19FUlIoY2xrKSkgewo+ICAgCQkJZXJyb3IgPSBQVFJf
RVJSKGNsayk7Cj4gICAJCQlkZXZfZXJyKHBtdS0+ZGV2LAo+IC0JCQkJIiVzOiBmYWlsZWQgdG8g
Z2V0IGNsayAlcEMgKGluZGV4ICVkKTogJWRcbiIsCj4gLQkJCQlub2RlLT5uYW1lLCBjbGssIGks
IGVycm9yKTsKPiArCQkJCSIlczogZmFpbGVkIHRvIGdldCBjbGsgYXQgaW5kZXggJWQ6ICVkXG4i
LAo+ICsJCQkJbm9kZS0+bmFtZSwgaSwgZXJyb3IpOwo+ICAgCQkJZ290byBlcnJfb3V0Owo+ICAg
CQl9Cj4gICAKPgo+IC0tIAo+IFRoYW5rcywKPiBDYWVzYXIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
