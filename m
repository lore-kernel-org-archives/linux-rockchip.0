From: Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: rockchip: Replace dev_*
 with DRM_DEV_*
Date: Fri, 15 Sep 2017 00:28:43 -0700
Message-ID: <1505460523.27581.5.camel@perches.com>
References: <20170915064742.GA8367@Haneen>
 <alpine.DEB.2.20.1709150857490.2287@hadrien>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <alpine.DEB.2.20.1709150857490.2287@hadrien>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Julia Lawall <julia.lawall@lip6.fr>, Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: linux-rockchip@lists.infradead.org, greg <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gRnJpLCAyMDE3LTA5LTE1IGF0IDA4OjU4ICswMjAwLCBKdWxpYSBMYXdhbGwgd3JvdGU6Cj4g
Cj4gT24gRnJpLCAxNSBTZXAgMjAxNywgSGFuZWVuIE1vaGFtbWVkIHdyb3RlOgo+IAo+ID4gVGhp
cyBwYXRjaCByZXBsYWNlIGluc3RhbmNlcyBvZiBkZXZfaW5mby9lcnIvZGVidWcgd2l0aAo+ID4g
RFJNX0RFVl9JTkZPL0VSUk9SL1dBUk4gcmVzcGVjdGl2ZWx5IGlub3JkZXIgdG8gdXNlIGEgZHJt
LWZvcm1hdHRlZAo+ID4gc3BlY2lmaWMgbG9nIG1lc3NhZ2VzLiBJc3N1ZSBjb3JyZWN0ZWQgd2l0
aCB0aGUgaGVscCBvZiB0aGUgZm9sbG93aW5nCj4gPiBDb2NjaW5lbGxlIHNjcmlwdDoKW10KPiA+
IEBAIC05MzUsNyArOTQxLDggQEAgc3RhdGljIHZvaWQgZHdfbWlwaV9kc2lfZW5jb2Rlcl9kaXNh
YmxlKHN0cnVjdCBkcm1fZW5jb2RlciAqZW5jb2RlcikKPiA+ICAJCXJldHVybjsKPiA+IAo+ID4g
IAlpZiAoY2xrX3ByZXBhcmVfZW5hYmxlKGRzaS0+cGNsaykpIHsKPiA+IC0JCWRldl9lcnIoZHNp
LT5kZXYsICIlczogRmFpbGVkIHRvIGVuYWJsZSBwY2xrXG4iLCBfX2Z1bmNfXyk7Cj4gPiArCQlE
Uk1fREVWX0VSUk9SKGRzaS0+ZGV2LAo+ID4gKwkJCSAgICAgICIlczogRmFpbGVkIHRvIGVuYWJs
ZSBwY2xrXG4iLCBfX2Z1bmNfXyk7CgpUaGUgdXNlcyBvZiAiJXM6ICIgLi4uICwgX19mdW5jX18g
d2l0aCBEUk1fREVWX0VSUk9SCmlzIHJlZHVuZGFudCBhbmQgc2hvdWxkIGJlIHJlbW92ZWQuCgo+
ID4gQEAgLTk2Nyw3ICs5NzQsOCBAQCBzdGF0aWMgdm9pZCBkd19taXBpX2RzaV9lbmNvZGVyX2Vu
YWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4gPiAgCQlyZXR1cm47Cj4gPiAKPiA+
ICAJaWYgKGNsa19wcmVwYXJlX2VuYWJsZShkc2ktPnBjbGspKSB7Cj4gPiAtCQlkZXZfZXJyKGRz
aS0+ZGV2LCAiJXM6IEZhaWxlZCB0byBlbmFibGUgcGNsa1xuIiwgX19mdW5jX18pOwo+ID4gKwkJ
RFJNX0RFVl9FUlJPUihkc2ktPmRldiwKPiA+ICsJCQkgICAgICAiJXM6IEZhaWxlZCB0byBlbmFi
bGUgcGNsa1xuIiwgX19mdW5jX18pOwoKZXRjLi4uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwK
