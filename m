From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] soc: rockchip: disable jtag switching for RK3128 SoCs
Date: Mon, 5 Mar 2018 22:55:14 +0800
Message-ID: <b364b257-3ead-cbfe-2ba0-ad49c2c92d04@rock-chips.com>
References: <20180302122031.17426-1-heiko@sntech.de>
 <7020f92d-cc0e-745e-713b-3aa847b7e939@rock-chips.com>
 <1633972.b4bkohDpDd@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1633972.b4bkohDpDd@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com, Xiao Yao <xiaoyao@rock-chips.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxOC8zLzUgMjI6NDIsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhpIFNoYXduLAo+IAo+
IEFtIE1vbnRhZywgNS4gTcOkcnogMjAxOCwgMTU6Mzk6MDQgQ0VUIHNjaHJpZWIgU2hhd24gTGlu
Ogo+PiBPbiAyMDE4LzMvMiAyMDoyMCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+PiBGcm9tOiBY
aWFvIFlhbyA8eGlhb3lhb0Byb2NrLWNoaXBzLmNvbT4KPj4+Cj4+PiBEaXNhYmxlIElPIGZ1bmN0
aW9uIHN3aXRjaGluZyBiZXR3ZWVuIHNkbW1jIGFuZCBqdGFnCj4+PiBmb3IgUkszMTI4IFNvQ3Mu
Cj4+Pgo+Pgo+PiBJIGFja2VkIHRoaXMgb24gdGhlIHZlbmRvciBrZXJuZWwgdHJlZSwgc28gRldJ
VzoKPj4KPj4gUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29t
Pgo+Pgo+PiBIb3BlIHRoaXMgaXMgb25lIG9mIHRoZSBmaW5hbCBwYXRjaGVzIGZvciB0aGF0LCBh
cyBJIHdvdWxkCj4+IHJldml2ZSBJTyBmdW5jdGlvbiBzd2l0Y2hpbmcgYmV0d2VlbiBzZG1tYyBh
bmQganRhZyBmb3IgbmV3ZXIKPj4gU29DcyBhZnRlciBhZGRyZXNzaW5nIHRoZSBwcm9ibGVtIGZy
b20gSFcgbGV2ZWwuCj4gCj4gdGhlIG1haW4gcHJvYmxlbSB3ZSBoYWQgd2l0aCB0aGF0IHdhcyB0
aGF0IHRoZSAgbW1jLXN1YnN5c3RlbQo+IHNvbWVob3cgZGVmaW5pdGx5IGRpZG4ndCBsaWtlIGl0
IHdoZW4gdGhlIGNvbnRyb2xsZXIgcGlucyB3aGVyZSBwdWxsZWQKPiBvdXQgZnJvbSB1bmRlciBp
dCBvbiBjYXJkIGVqZWN0LgoKUmlnaHQsIHdlIGhhZCBzb3J0IG91dCBpdCdzIHRpbWluZyByZXZl
bGFudCBiZXR3ZWVuIG1tYyBjb250cm9sbGVyIGFuZAp0aGUgc3dpdGNoaW5nIGh3IGJsb2NrLgoK
PiAKPiBCdXQgb2YgY291cnNlLCBpZiB5b3UgY2FuIGdldCB0aGlzIHNvbHZlZCBieSBodyBzb21l
aG93LCB0aGF0Cj4gd291bGQgYmUgcHJldHR5IGNvb2wgOi0pCgpJdCBpcyB1bmRlciBleHRlbnNp
dmVseSB0ZXN0ZWQgbm93LCBhbmQgc2VlbXMgcXVpdGUgcG9zaXRpdmUuIDopCgo+IAo+IAo+IEhl
aWtvCj4gCj4gCj4gCgoKLS0gCkJlc3QgUmVnYXJkcwpTaGF3biBMaW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
