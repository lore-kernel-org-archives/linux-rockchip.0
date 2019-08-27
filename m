From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Tue, 27 Aug 2019 14:16:20 +0200
Message-ID: <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <87v9uix1sv.fsf@gmail.com>
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

T24gVHVlc2RheSwgQXVndXN0IDI3LCAyMDE5IDE6NTM6MDQgUE0gQ0VTVCwgRmVsaXBlIEJhbGJp
IHdyb3RlOgo+IEhpLAo+Cj4gVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPiB3cml0
ZXM6Cj4+IE9uIFNhdHVyZGF5LCBBdWd1c3QgMTcsIDIwMTkgNzo0MTo0MCBQTSBDRVNULCBWaWNl
bnRlIEJlcmdhcyB3cm90ZToKPj4+IE90aGVyd2lzZSB0aGUgZGV2aWNlIGtlZXBzIHdyaXRpbmcg
dG8gbWVtb3J5IGFmdGVyIGtleGVjIGFuZCBkaXN0dXJicwo+Pj4gdGhlIG5leHQga2VybmVsLgou
Li4KPgo+IHdoeSBkb24ndCB5b3UganVzdCBoYXZlIHNodXRkb3duIHVzZSB0aGUgc2FtZSBleGFj
dCBmdW5jdGlvbiBhcyByZW1vdmU/Cj4gRnJhbmtseSwgdGhvdWdoLCBJIHN0aWxsIGRvbid0IGZ1
bGx5IHVuZGVyc3RhbmQgd2hhdCdzIGdvaW5nIHdyb25nCj4gaGVyZS4gV2h5IGlzIHRoZSBkZXZp
Y2Ugc3RpbGwgYWxpdmUgZHVyaW5nIGtleGVjPwo+Cj4gY2hlZXJzCgpIaSBGZWxpcGUsCnRoZSBy
ZW1vdmUgYW5kIHNodXRkb3duIGZ1bmN0aW9ucyBoYXZlIGRpZmZlcmVudCBwcm90b3R5cGVzLCBz
bwpzaHV0ZG93biBpcyB3cmFwcGluZyByZW1vdmUuCldvdWxkIGl0IGJlIHByZWZlcmFibGUgdG8g
Y2FzdCByZW1vdmUgYXMgc2h1dGRvd24/CgpUaGUgaXNzdWUgd2l0aCBrZXhlYyBpcyB0aGF0IHRo
ZSBkZXZpY2UgaXMgYmVpbmcgdXNlZCBkdXJpbmcgdGhlIGxpdmV0aW1lCm9mIHRoZSBmaXJzdCBr
ZXJuZWwuIFdoZW4gdGhlIGZpcnN0IGtlcm5lbCBleGVjdXRlcyBrZXhlYyBpdCBjYWxscyB0aGUK
c2h1dGRvd24gZnVuY3Rpb24gb2YgZHJpdmVycyAoaW5zdGVhZCBvZiByZW1vdmUpLiBCZWNhdXNl
IG9mIHRoaXMgdGhlIGR3YzMKZGV2aWNlIGtlZXBzIGRvaW5nIHRoaW5ncyBsaWtlIERNQS4KV2hp
bGUgdGhlIHNlY29uZCBrZXJuZWwgaXMgdGFraW5nIG92ZXIsIGl0IGdldHMgaXRzIG1lbW9yeSBj
b3JydXB0ZWQgd2l0aApzdWNoIERNQSBhY2Nlc3NlcyBmcm9tIHRoZSBkZXZpY2UuIFdoZW4gdGhl
IHNlY29uZCBrZXJuZWwgcmVhY2hlcyB0aGUgcG9pbnQKb2YgdGFraW5nIG92ZXIgdGhlIGR3YzMg
ZGV2aWNlLCByZS1pbml0aWFsaXplcyBpdCwgYnV0IGl0IGlzIGFscmVhZHkgdG9vCmxhdGUuIFN0
aWxsIHdvcnNlLCBpZiB0aGUgc2Vjb25kIGtlcm5lbCBkaWQgbm90IGhhdmUgdGhlIGR3YzMgZHJp
dmVyLCBpdAp3b3VsZCBnZXQgZW5kbGVzcyBtZW1vcnkgY29ycnVwdGlvbnMuCkFsbCBpbiBhbGws
IGRldmljZXMgdGhhdCBjYW4gZG8gRE1BIG5lZWQgdG8gc3RvcCBkb2luZyBpdCBvbiBzaHV0ZG93
bi4KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
