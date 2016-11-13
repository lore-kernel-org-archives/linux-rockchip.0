From: =?UTF-8?Q?Pawe=C5=82_Jarosz?= <paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Fwd: [PATCH] ARM: dts: rockchip: fix TSADC reset node for rk3066a
Date: Sun, 13 Nov 2016 16:49:46 +0100
Message-ID: <CAFYR25V9H7Yxm27Q53xudVBrQYJ1eR3-YEqQ1qn6NpSMA4Zk6A@mail.gmail.com>
References: <20161113154456.GA10160@vaio-ubuntu>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20161113154456.GA10160@vaio-ubuntu>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Russell King <linux-I+IVW8TIWO2tmTQ+vhA3Yw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

RnJvbTogUGF3ZcWCIEphcm9zeiA8cGF3ZWxqYXJvc3ozNjkxQGdtYWlsLmNvbT4KRGF0ZTogMjAx
Ni0xMS0xMyAxNjo0NCBHTVQrMDE6MDAKU3ViamVjdDogW1BBVENIXSBBUk06IGR0czogcm9ja2No
aXA6IGZpeCBUU0FEQyByZXNldCBub2RlIGZvciByazMwNjZhClRvOiBwYXdlbGphcm9zejM2OTFA
Z21haWwuY29tCgoKVGhpcyBwYXRjaCBmaXhlcyBpbmNvcmVjdGx5IGFzc2lnbmVkIHJrMzA2NmEg
VFNBREMgbm9kZQoKU2lnbmVkLW9mZi1ieTogUGF3ZcWCIEphcm9zeiA8cGF3ZWxqYXJvc3ozNjkx
QGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9ib290L2R0cy9yazMwNjZhLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yazMw
NjZhLmR0c2kKaW5kZXggZmM4ZGNjNy4uYWM0NjEwOSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvcmszMDY2YS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzA2NmEuZHRzaQpA
QCAtMjA1LDcgKzIwNSw3IEBACiAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJzYXJhZGMi
LCAiYXBiX3BjbGsiOwogICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDIxIElS
UV9UWVBFX0xFVkVMX0hJR0g+OwogICAgICAgICAgICAgICAgI2lvLWNoYW5uZWwtY2VsbHMgPSA8
MT47Ci0gICAgICAgICAgICAgICByZXNldHMgPSA8JmNydSBTUlNUX1NBUkFEQz47CisgICAgICAg
ICAgICAgICByZXNldHMgPSA8JmNydSBTUlNUX1RTQURDPjsKICAgICAgICAgICAgICAgIHJlc2V0
LW5hbWVzID0gInNhcmFkYy1hcGIiOwogICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKICAgICAgICB9OwotLQoyLjcuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
