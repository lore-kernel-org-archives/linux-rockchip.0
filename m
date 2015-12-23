From: Jean-Francois Moine <moinejf@free.fr>
Subject: Re: [PATCH v2 0/2] Improve drm_of_component_probe() and move
 rockchip to use it
Date: Wed, 23 Dec 2015 18:20:33 +0100
Message-ID: <20151223182033.a52356408b9a81e9497464e7@free.fr>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
 <20151222173800.GU960@e106497-lin.cambridge.arm.com>
 <20151223103906.2aae53595345240d57d57b41@free.fr>
 <20151223100534.GW960@e106497-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151223100534.GW960@e106497-lin.cambridge.arm.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, Russell King <rmk+kernel@arm.linux.org.uk>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gV2VkLCAyMyBEZWMgMjAxNSAxMDowNTozNCArMDAwMApMaXZpdSBEdWRhdSA8TGl2aXUuRHVk
YXVAYXJtLmNvbT4gd3JvdGU6Cgo+ID4gV2hhdCB3YXMgdGhlIHJlYXNvbiB0byBrZWVwIHRoZSAi
cG9ydHMiIG5vZGUgaW5zdGVhZCBvZiB0aGUgZGV2aWNlPwo+IAo+IFRoZSBmdW5jdGlvbiBpcyBh
biBleHRyYWN0IG9mIGNvbW1vbiBjb2RlIHNwcmlua2xlZCB0aHJvdWdoIGEgZmV3IERSTSBkcml2
ZXJzLAo+IHRoZXkgYWxsIHVzZWQgcG9ydCByYXRoZXIgdGhhbiBwb3J0LT5wYXJlbnQuCgpTb3Jy
eSBmb3IgSSBjb3VsZCBmaW5kIHN1Y2ggZHJpdmVycy4gTWF5IHlvdSBnaXZlIG1lIGFueSBwb2lu
dGVyPwoKPiBIYXZlIGEgbG9vayBhdCBteSB2MiB3aGVyZSBJJ3ZlIGludHJvZHVjZWQgdHdvIGNv
bXBhcmUgZnVuY3Rpb25zIGFuZCBhbHNvCj4gbW9kaWZpZWQgdGhlIFJvY2tjaGlwIGNvbXBhcmVf
cG9ydCgpIHRvIHVzZSBwb3J0LT5wYXJlbnQgaW4gdGhlIGNvbXBhcmlzb24uIEkKPiBndWVzcyB0
aGF0IHNob3VsZCBzb2x2ZSB5b3VyIHByb2JsZW0uCgpLZWVwaW5nIHRoZSBwb3J0IGluc3RlYWQg
b2YgdGhlIHBhcmVudCBhc2tzIGZvciBtb3JlIGNvZGUsIGJ1dCwKZXNwZWNpYWxseSwgaXQgYWxz
byBhc2tzIGZvciBjaGFuZ2VzIGluIHRoZSBjb21wb25lbnQgZHJpdmVycyBiZWNhdXNlLAphdCBi
aW5kIHRpbWUsIGluICdkYXRhJywgdGhleSBnZXQgYSBwb3J0IGluc3RlYWQgb2YgdGhlIGRldmlj
ZS4KCllvdSBtaWdodCBzYXkgdGhhdCB0aGlzIGNvdWxkIGJlIGludGVyZXN0aW5nIGZvciBjb21w
b25lbnRzIHdpdGggbWFueQpkaWZmZXJlbnQgbWFzdGVycyAodmlkZW8gYW5kIGF1ZGlvKSwgYnV0
IHRoaXMgY291bGQgYmUgc29sdmVkIGFkZGluZwppbnRlcm1lZGlhdGUgZGV2aWNlIG5vZGVzIGlu
IHRoZSBEVCAocG9ydHMpLgoKLS0gCktlbiBhciBjJ2hlbnRhw7EJfAkgICAgICAqKiBCcmVpemgg
aGEgTGludXggYXRhdiEgKioKSmVmCQl8CQlodHRwOi8vbW9pbmVqZi5mcmVlLmZyLwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
