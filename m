From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] dt-bindings: add document for rk3399-vop
Date: Tue, 19 Apr 2016 09:58:52 +0200
Message-ID: <6435836.sTKjWLANC0@diego>
References: <1460949478-2236-1-git-send-email-mark.yao@rock-chips.com>
 <1460949478-2236-2-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1460949478-2236-2-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Pawel Moll <pawel.moll@arm.com>, Ian Campbell <ijc+devicetree@hellion.org.uk>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Kumar Gala <galak@codeaurora.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

cGF0Y2ggc3ViamVjdCBhYm92ZToKZHQtYmluZGluZ3M6IGFkZCBkb2N1bWVudGF0aW9uIGZvciBS
b2NrY2hpcCByazMzOTkgZGlzcGxheSBjb250cm9sbGVycwoKbm90IGV2ZXJ5Ym9keSBza2ltbWlu
ZyBvdmVyIHBhdGNoZXMgZGlyZWN0bHkga25vd3Mgd2hhdCBhIHZvcCBpcyA7LSkKCkkgc3RpbGwg
YmVsaWV2ZSBldmVuIHN1Y2ggYSB0cml2aWFsIHBhdGNoIHNob3VsZCBhbHNvIGdldCBzb21lIGZv
cm0gb2YgCmRlc2NyaXB0aW9uLCBzb21ldGhpbmcgbGlrZToKCi0tLS0tLS0tLQpEb2N1bWVudCBj
b21wYXRpYmxlIHZhbHVlcyBmb3IgcmszMzk5IGRpc3BsYXkgY29udHJvbGxlcnMuCkJpZyBhbmQg
bGl0dGxlIGRpc3BsYXkgY29udHJvbGxlcnMgYXJlIG5vdCBpZGVudGljYWwgYW5kIGhhdmUgZGlm
ZmVyaW5nIApmZWF0dXJlIHNldHMgb24gdGhlIHJrMzM5OS4KLS0tLS0tLS0tCgo+IENjOiBSb2Ig
SGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgo+IENjOiBQYXdlbCBNb2xsIDxwYXdlbC5tb2xs
QGFybS5jb20+Cj4gQ2M6IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4gQ2M6
IElhbiBDYW1wYmVsbCA8aWpjK2RldmljZXRyZWVAaGVsbGlvbi5vcmcudWs+Cj4gQ2M6IEt1bWFy
IEdhbGEgPGdhbGFrQGNvZGVhdXJvcmEub3JnPgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hcmsgWWFv
IDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL2Rpc3BsYXkv
cm9ja2NoaXAvcm9ja2NoaXAtdm9wLnR4dCAgICAgfCAgICAyICsrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0Cj4gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AudHh0Cj4gYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12
b3AudHh0IGluZGV4Cj4gNTQ4OWI1OS4uZmQyNWVhOSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AudHh0
Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcm9ja2No
aXAvcm9ja2NoaXAtdm9wLnR4dAo+IEBAIC04LDYgKzgsOCBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVz
Ogo+ICAtIGNvbXBhdGlibGU6IHZhbHVlIHNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZwo+
ICAJCSJyb2NrY2hpcCxyazMyODgtdm9wIjsKPiAgCQkicm9ja2NoaXAscmszMDM2LXZvcCI7Cj4g
KwkJInJvY2tjaGlwLHJrMzM5OS12b3AtYmlnIjsKPiArCQkicm9ja2NoaXAscmszMzk5LXZvcC1s
aXQiOwo+IAo+ICAtIGludGVycnVwdHM6IHNob3VsZCBjb250YWluIGEgbGlzdCBvZiBhbGwgVk9Q
IElQIGJsb2NrIGludGVycnVwdHMgaW4gdGhlCj4gIAkJIG9yZGVyOiBWU1lOQywgTENEX1NZU1RF
TS4gVGhlIGludGVycnVwdCBzcGVjaWZpZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaS1kZXZlbAo=
