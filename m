From: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Mon, 09 Sep 2019 17:07:24 +0200
Message-ID: <0edb55d4-3bad-47ac-9d29-8d994d182e67@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
 <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Felipe Balbi <balbi@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gVHVlc2RheSwgQXVndXN0IDI3LCAyMDE5IDI6MTY6MjAgUE0gQ0VTVCwgVmljZW50ZSBCZXJn
YXMgd3JvdGU6Cj4gT24gVHVlc2RheSwgQXVndXN0IDI3LCAyMDE5IDE6NTM6MDQgUE0gQ0VTVCwg
RmVsaXBlIEJhbGJpIHdyb3RlOgo+PiBIaSwKPj4gCj4+IFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNi
QGdtYWlsLmNvbT4gd3JpdGVzOgo+Pj4gT24gU2F0dXJkYXksIEF1Z3VzdCAxNywgMjAxOSA3OjQx
OjQwIFBNIENFU1QsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+Pj4+IE90aGVyd2lzZSB0aGUgZGV2
aWNlIGtlZXBzIHdyaXRpbmcgdG8gbWVtb3J5IGFmdGVyIGtleGVjIGFuZCBkaXN0dXJicwo+Pj4+
IHRoZSBuZXh0IGtlcm5lbC4KPiAuLi4KPj4gCj4+IHdoeSBkb24ndCB5b3UganVzdCBoYXZlIHNo
dXRkb3duIHVzZSB0aGUgc2FtZSBleGFjdCBmdW5jdGlvbiBhcyByZW1vdmU/Cj4+IEZyYW5rbHks
IHRob3VnaCwgSSBzdGlsbCBkb24ndCBmdWxseSB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyB3cm9u
Zwo+PiBoZXJlLiBXaHkgaXMgdGhlIGRldmljZSBzdGlsbCBhbGl2ZSBkdXJpbmcga2V4ZWM/Cj4+
IAo+PiBjaGVlcnMKPgo+IEhpIEZlbGlwZSwKPiB0aGUgcmVtb3ZlIGFuZCBzaHV0ZG93biBmdW5j
dGlvbnMgaGF2ZSBkaWZmZXJlbnQgcHJvdG90eXBlcywgc28KPiBzaHV0ZG93biBpcyB3cmFwcGlu
ZyByZW1vdmUuCj4gV291bGQgaXQgYmUgcHJlZmVyYWJsZSB0byBjYXN0IHJlbW92ZSBhcyBzaHV0
ZG93bj8KPgo+IFRoZSBpc3N1ZSB3aXRoIGtleGVjIGlzIHRoYXQgdGhlIGRldmljZSBpcyBiZWlu
ZyB1c2VkIGR1cmluZyB0aGUgbGl2ZXRpbWUKPiBvZiB0aGUgZmlyc3Qga2VybmVsLiBXaGVuIHRo
ZSBmaXJzdCBrZXJuZWwgZXhlY3V0ZXMga2V4ZWMgaXQgY2FsbHMgdGhlCj4gc2h1dGRvd24gZnVu
Y3Rpb24gb2YgZHJpdmVycyAoaW5zdGVhZCBvZiByZW1vdmUpLiBCZWNhdXNlIG9mIHRoaXMgdGhl
IGR3YzMKPiBkZXZpY2Uga2VlcHMgZG9pbmcgdGhpbmdzIGxpa2UgRE1BLgo+IFdoaWxlIHRoZSBz
ZWNvbmQga2VybmVsIGlzIHRha2luZyBvdmVyLCBpdCBnZXRzIGl0cyBtZW1vcnkgY29ycnVwdGVk
IHdpdGgKPiBzdWNoIERNQSBhY2Nlc3NlcyBmcm9tIHRoZSBkZXZpY2UuIFdoZW4gdGhlIHNlY29u
ZCBrZXJuZWwgcmVhY2hlcyB0aGUgcG9pbnQKPiBvZiB0YWtpbmcgb3ZlciB0aGUgZHdjMyBkZXZp
Y2UsIHJlLWluaXRpYWxpemVzIGl0LCBidXQgaXQgaXMgYWxyZWFkeSB0b28KPiBsYXRlLiBTdGls
bCB3b3JzZSwgaWYgdGhlIHNlY29uZCBrZXJuZWwgZGlkIG5vdCBoYXZlIHRoZSBkd2MzIGRyaXZl
ciwgaXQKPiB3b3VsZCBnZXQgZW5kbGVzcyBtZW1vcnkgY29ycnVwdGlvbnMuCj4gQWxsIGluIGFs
bCwgZGV2aWNlcyB0aGF0IGNhbiBkbyBETUEgbmVlZCB0byBzdG9wIGRvaW5nIGl0IG9uIHNodXRk
b3duLgo+Cj4gUmVnYXJkcywKPiAgVmljZW7Dpy4KCkhpLApwbGVhc2UsIGNhbiB5b3UgcHJvdmlk
ZSBzb21lIGZlZWRiYWNrIG9uIHRoaXM/CgpSZWdhcmRzLAogVmljZW7Dpy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
