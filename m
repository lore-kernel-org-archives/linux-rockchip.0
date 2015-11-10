From: Liviu Dudau <Liviu.Dudau@arm.com>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Tue, 10 Nov 2015 10:09:09 +0000
Message-ID: <20151110100909.GI963@e106497-lin.cambridge.arm.com>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
 <564069CD.2070102@rock-chips.com>
 <20151109114259.GX8644@n2100.arm.linux.org.uk>
 <20151109115727.GE963@e106497-lin.cambridge.arm.com>
 <5641B075.6020602@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <5641B075.6020602@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark yao <mark.yao@rock-chips.com>
Cc: Russell King - ARM Linux <linux@arm.linux.org.uk>, Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gVHVlLCBOb3YgMTAsIDIwMTUgYXQgMDQ6NTM6MDlQTSArMDgwMCwgTWFyayB5YW8gd3JvdGU6
Cj4gICAgT24gMjAxNeW5tDEx5pyIMDnml6UgMTk6NTcsIExpdml1IER1ZGF1IHdyb3RlOgo+IAo+
ICBNZWFud2hpbGUsIHdoYXQgaXMgeW91ciBzdWdnZXN0aW9uIHJlZ2FyZGluZyB0aGUgcGF0Y2hz
ZXQuIEkndmUgc2VlbiBEYXZpZCBoYXMKPiAgc2VudCBMaW51cyBhIHB1bGwgcmVxdWVzdCBmb3Ig
NC40LXJjMSB0aGF0IGluY2x1ZGVzIGl0LiBTaG91bGQgd2Ugc2VuZCBhCj4gIHJldmVydCBmb3Ig
cm9ja2NoaXAgY29tbWl0IGFuZCB0aGVuIHBhdGNoIGxhdGVyIHRoZSBmdW5jdGlvbj8KPiAKPiAg
ICBIaSBMaXZpdQo+ICAgIMKgwqDCoCBJIGhhZCBzZW50IGEgcGF0Y2ggdG8gcmV2ZXJ0IHRoaXMg
cm9ja2NoaXAgY29tbWl0LCB2ZXJmaWVkIHJvY2tjaGlwIGRybSB3b3Jrcy4gU28gd2UgY2FuIGRv
IHRoZSBmaXggbGF0ZXIuCgpZZWFoLCBhbmQgSSdtIHRoaW5raW5nIGFib3V0IEFDSy1pbmcgaXQu
IE9uIG9uZSBoYW5kIEkgd291bGQgbGlrZSB0bwpoYXZlIHRoaXMgZml4ZWQsIG9uIHRoZSBvdGhl
ciBoYW5kIEkgZG9uJ3Qgd2FudCB0aGUgcm9ja2NoaXAgcGxhdGZvcm0KdG8gYmUgYnJva2VuLiBC
dXQgbG9va2luZyBhdCB0aGUgcmVzdCBvZiB0aGUgY2hhbmdlcyBJIG5lZWQgdG8gZG8gaXQKZG9l
c24ndCBmZWVsIHJpZ2h0IHRvIG1ha2UgeW91IHdhaXQgZm9yIHRoZW0uCgpCZXN0IHJlZ2FyZHMs
Ckxpdml1Cgo+IAo+ICAgIFRoYW5rcyBhbGwgdGhlIHNhbWUuIDotKQo+IAo+ICAgIC0tIO+8rWFy
ayBZYW8KCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+IGh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2
ZWwKCgotLSAKPT09PT09PT09PT09PT09PT09PT0KfCBJIHdvdWxkIGxpa2UgdG8gfAp8IGZpeCB0
aGUgd29ybGQsICB8CnwgYnV0IHRoZXkncmUgbm90IHwKfCBnaXZpbmcgbWUgdGhlICAgfAogXCBz
b3VyY2UgY29kZSEgIC8KICAtLS0tLS0tLS0tLS0tLS0KICAgIMKvXF8o44OEKV8vwq8KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxp
bmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
