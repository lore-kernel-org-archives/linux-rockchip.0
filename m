From: Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH] drm/rockchip: Return -EBUSY if there's already a pending
 flip event v5
Date: Tue, 24 May 2016 09:34:50 +0200
Message-ID: <CAPj87rPfakpstxmK3rodunVp2aX-gkLqoqQJ+gfoazaH0ej29g@mail.gmail.com>
References: <1464074761-5194-1-git-send-email-tomeu.vizoso@collabora.com>
 <1464074857-5515-1-git-send-email-tomeu.vizoso@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1464074857-5515-1-git-send-email-tomeu.vizoso@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjQgTWF5IDIwMTYgYXQgMDk6MjcsIFRvbWV1IFZpem9zbyA8dG9tZXUudml6b3NvQGNvbGxh
Ym9yYS5jb20+IHdyb3RlOgo+IEFzIHBlciB0aGUgZG9jcywgYXRvbWljX2NvbW1pdCBzaG91bGQg
cmV0dXJuIC1FQlVTWSAiaWYgYW4gYXN5Y25ocm9ub3VzCj4gdXBkYXRlZCBpcyByZXF1ZXN0ZWQg
YW5kIHRoZXJlIGlzIGFuIGVhcmxpZXIgdXBkYXRlZCBwZW5kaW5nIi4KPgo+IHYyOiBVc2UgdGhl
IHN0YXR1cyBvZiB0aGUgd29ya3F1ZXVlIGluc3RlYWQgb2Ygdm9wLT5ldmVudCwgYW5kIGRvbid0
IGFkZAo+IGEgc3VwZXJmbHVvdXMgd2FpdCBvbiB0aGUgd29ya3F1ZXVlLgo+Cj4gdjM6IERyb3Ag
d29ya19idXN5LCBhcyB0aGVyZSdzIGEgc2l6ZWFibGUgZGVsYXkgd2hlbiB0aGUgd29ya2VyCj4g
ZmluaXNoZXMsIHdoaWNoIGludHJvZHVjZXMgYSByYWNlIGluIHdoaWNoIHRoZSBjbGllbnQgaGFz
IGFscmVhZHkKPiByZWNlaXZlZCB0aGUgbGFzdCBmbGlwIGV2ZW50IGJ1dCB0aGUgbmV4dCBwYWdl
IGZsaXAgaW9jdGwgd2lsbCBzdGlsbAo+IHJldHVybiAtRUJVU1kgYmVjYXVzZSB3b3JrX2J1c3kg
cmV0dXJucyBvdXRkYXRlZCBpbmZvcm1hdGlvbi4KPgo+IHY0OiBIb2xkIGRldi0+ZXZlbnRfbG9j
ayB3aGlsZSBjaGVja2luZyB0aGUgVk9QJ3MgZXZlbnQgZmllbGQgYXMKPiBzdWdnZXN0ZWQgYnkg
RGFuaWVsIFN0b25lLgo+Cj4gdjU6IE9ubHkgYmxvY2sgaWYgdGhlcmUncyBvdXRzdGFuZGluZyB3
b3JrIGlmIGl0J3MgYSBibG9ja2luZyBjYWxsLgo+Cj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6
b3NvIDx0b21ldS52aXpvc29AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBEYW5pZWwgU3Rv
bmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KCkNoZWVycywKRGFuaWVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QK
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
