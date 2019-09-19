From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Thu, 19 Sep 2019 13:36:17 +0200
Message-ID: <e226af9a-3719-4641-9f8c-402e8de7b058@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190817174140.6394-1-vicencb@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Felipe Balbi <balbi@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

UGluZz8KCk9uIFNhdHVyZGF5LCBBdWd1c3QgMTcsIDIwMTkgNzo0MTo0MCBQTSBDRVNULCBWaWNl
bnRlIEJlcmdhcyB3cm90ZToKPiBPdGhlcndpc2UgdGhlIGRldmljZSBrZWVwcyB3cml0aW5nIHRv
IG1lbW9yeSBhZnRlciBrZXhlYyBhbmQgZGlzdHVyYnMKPiB0aGUgbmV4dCBrZXJuZWwuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBWaWNlbnRlIEJlcmdhcyA8dmljZW5jYkBnbWFpbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvdXNiL2R3YzMvZHdjMy1vZi1zaW1wbGUuYyB8IDYgKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+IEhpIEZlbGlwZSwgUm9iaW4sCj4gdGhpcyB2ZXJz
aW9uIGNhbGxzICdyZW1vdmUnIGZyb20gJ3NodXRkb3duJyBpbnN0ZWFkIG9mIGp1c3QgYXNzZXJ0
aW5nCj4gYSByZXNldCBiZWNhdXNlIGl0IGxvb2tzIGxpa2UgYSBjbGVhbmVyIHdheSB0byBzdG9w
IHRoZSBkZXZpY2UuCj4KPiBDYWxsaW5nIHJlbW92ZSBmcm9tIHNodXRkb3duIGluIGNvcmUuYyBp
bnN0ZWFkIG9mIGR3YzMtb2Ytc2ltcGxlLmMgZG9lcyBub3QKPiBmaXggdGhlIGlzc3VlIGVpdGhl
ci4KPgo+IEl0IGhhcyBiZWVuIHRlc3RlZCBvbiB0aGUgc2FwcGhpcmUgYm9hcmQsIGEgUkszMzk5
IHBsYXRmb3JtLgo+Cj4gUmVnYXJkcywKPiAgIFZpY2Vuw6cuCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jIAo+IGIvZHJpdmVycy91c2IvZHdjMy9kd2Mz
LW9mLXNpbXBsZS5jCj4gaW5kZXggYmRhYzNlN2Q3YjE4Li5kNWZkNDVjNjQ5MDEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCj4gKysrIGIvZHJpdmVycy91
c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jCj4gQEAgLTEzMyw2ICsxMzMsMTEgQEAgc3RhdGljIGlu
dCBkd2MzX29mX3NpbXBsZV9yZW1vdmUoc3RydWN0IAo+IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBkd2MzX29mX3NpbXBsZV9zaHV0
ZG93bihzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlkd2MzX29mX3NpbXBs
ZV9yZW1vdmUocGRldik7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgCj4g
ZHdjM19vZl9zaW1wbGVfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgewo+
ICAJc3RydWN0IGR3YzNfb2Zfc2ltcGxlCSpzaW1wbGUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsK
PiBAQCAtMTkwLDYgKzE5NSw3IEBAIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIG9mX2R3YzNfc2lt
cGxlX21hdGNoKTsKPiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgZHdjM19vZl9zaW1w
bGVfZHJpdmVyID0gewo+ICAJLnByb2JlCQk9IGR3YzNfb2Zfc2ltcGxlX3Byb2JlLAo+ICAJLnJl
bW92ZQkJPSBkd2MzX29mX3NpbXBsZV9yZW1vdmUsCj4gKwkuc2h1dGRvd24JPSBkd2MzX29mX3Np
bXBsZV9zaHV0ZG93biwKPiAgCS5kcml2ZXIJCT0gewo+ICAJCS5uYW1lCT0gImR3YzMtb2Ytc2lt
cGxlIiwKPiAgCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9kd2MzX3NpbXBsZV9tYXRjaCwKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
