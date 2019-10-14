From: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: clk: rockchip: Checking a kmemdup() call in
 rockchip_clk_register_pll()
Date: Mon, 14 Oct 2019 09:26:41 +0200
Message-ID: <45588ab8-2a6c-3f29-61ff-bccf8d6fb291@web.de>
References: <e96505a8-b554-f61e-3940-0b9e9c7850ff@web.de>
 <5801053.xxhhKtLrcJ@diego> <29d12079-d888-e090-da5a-c407c13d696b@web.de>
 <2588953.0pqkEXWxhN@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2588953.0pqkEXWxhN@phil>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, Aditya Pakki <pakki001@umn.edu>, Kangjie Lu <kjlu@umn.edu>, LKML <linux-kernel@vger.kernel.org>, Navid Emamdoost <emamd001@umn.edu>, Stephen McCamant <smccaman@umn.edu>
List-Id: linux-rockchip.vger.kernel.org

PiBUaGUgb3RoZXIgb3B0aW9uIHdvdWxkIGJlIHRvIHBhbmljLCBidXQgdGhlIGtlcm5lbCBzaG91
bGQgbm90Cj4gcGFuaWMgaWYgb3RoZXIgb3B0aW9ucyBhcmUgYXZhaWxhYmxlIC0gYW5kIGNvbnRp
bnVpbmcgd2l0aCBhIHN0YXRpYwo+IHBsbCBmcmVxdWVuY3kgaXMgbGVzcyBpbnZhc2l2ZSBpbiB0
aGUgZXJyb3IgY2FzZS4KCkkgd291bGQgbGlrZSB0byBwb2ludCBvdXQgdGhhdCB0aGlzIGZ1bmN0
aW9uIGltcGxlbWVudGF0aW9uIGNvbnRhaW5zCnRoZSBmb2xsb3dpbmcgc291cmNlIGNvZGUgYWxy
ZWFkeS4KCuKApgoJLyogbmFtZSB0aGUgYWN0dWFsIHBsbCAqLwoJc25wcmludGYocGxsX25hbWUs
IHNpemVvZihwbGxfbmFtZSksICJwbGxfJXMiLCBuYW1lKTsKCglwbGwgPSBremFsbG9jKHNpemVv
ZigqcGxsKSwgR0ZQX0tFUk5FTCk7CglpZiAoIXBsbCkKCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVN
KTsK4oCmCgoKCuKApgo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1wbGwuYwo+IEBA
IC05MDksMTQgKzkwOSwxNiBAQCBzdHJ1Y3QgY2xrICpyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfcGxs
KHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eCwK4oCmCj4gLQkJcGxsLT5yYXRlX2Nv
dW50ID0gbGVuOwo+ICAJCXBsbC0+cmF0ZV90YWJsZSA9IGttZW1kdXAocmF0ZV90YWJsZSwKPiAg
CQkJCQlwbGwtPnJhdGVfY291bnQgKgo+ICAJCQkJCXNpemVvZihzdHJ1Y3Qgcm9ja2NoaXBfcGxs
X3JhdGVfdGFibGUpLAo+ICAJCQkJCUdGUF9LRVJORUwpOwo+IC0JCVdBUk4oIXBsbC0+cmF0ZV90
YWJsZSwKPiAtCQkJIiVzOiBjb3VsZCBub3QgYWxsb2NhdGUgcmF0ZSB0YWJsZSBmb3IgJXNcbiIs
Cj4gLQkJCV9fZnVuY19fLCBuYW1lKTsKPiArCj4gKwkJLyoKPiArCQkgKiBTZXQgbnVtIHJhdGVz
IHRvIDAgaWYga21lbWR1cCBmYWlscy4gVGhhdCB3YXkgdGhlIGNsb2NrCj4gKwkJICogYXQgbGVh
c3QgY2FuIHJlcG9ydCBpdHMgcmF0ZSBhbmQgc3RheXMgdXNhYmxlLgo+ICsJCSAqLwo+ICsJCXBs
bC0+cmF0ZV9jb3VudCA9IHBsbC0+cmF0ZV90YWJsZSA/IGxlbiA6IDA7CgpDYW4gYW4gb3RoZXIg
ZXJyb3IgaGFuZGxpbmcgc3RyYXRlZ3kgbWFrZSBzZW5zZSBvY2Nhc2lvbmFsbHk/CgrigKYKCQlp
ZiAoIXBsbC0+cmF0ZV90YWJsZSkgewoJCQljbGtfdW5yZWdpc3RlcihtdXhfY2xrKTsKCQkJbXV4
X2NsayA9IEVSUl9QVFIoLUVOT01FTSk7CgkJCWdvdG8gZXJyX211eDsKCQl9CuKApgoKCldvdWxk
IHlvdSBsaWtlIHRvIGFkanVzdCBzdWNoIGV4Y2VwdGlvbiBoYW5kbGluZyBhbm90aGVyIGJpdD8K
ClJlZ2FyZHMsCk1hcmt1cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
