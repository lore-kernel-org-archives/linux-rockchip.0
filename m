From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Mon, 9 Nov 2015 12:03:35 +0000
Message-ID: <20151109120334.GZ8644@n2100.arm.linux.org.uk>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
 <564069CD.2070102@rock-chips.com>
 <20151109114259.GX8644@n2100.arm.linux.org.uk>
 <20151109115727.GE963@e106497-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <20151109115727.GE963@e106497-lin.cambridge.arm.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBOb3YgMDksIDIwMTUgYXQgMTE6NTc6MjdBTSArMDAwMCwgTGl2aXUgRHVkYXUgd3Jv
dGU6Cj4gTWVhbndoaWxlLCB3aGF0IGlzIHlvdXIgc3VnZ2VzdGlvbiByZWdhcmRpbmcgdGhlIHBh
dGNoc2V0LiBJJ3ZlIHNlZW4gRGF2aWQgaGFzCj4gc2VudCBMaW51cyBhIHB1bGwgcmVxdWVzdCBm
b3IgNC40LXJjMSB0aGF0IGluY2x1ZGVzIGl0LiBTaG91bGQgd2Ugc2VuZCBhCj4gcmV2ZXJ0IGZv
ciByb2NrY2hpcCBjb21taXQgYW5kIHRoZW4gcGF0Y2ggbGF0ZXIgdGhlIGZ1bmN0aW9uPwoKSXQg
ZGVmaW5pdGVseSBuZWVkcyB0byBiZSBmaXhlZCwgYW5kIEknZCBzdWdnZXN0IGl0cyBlYXJseSBl
bm91Z2ggaW4gdGhlCi1yYyBjeWNsZSAod2hpY2ggaGFzbid0IGJlZ3VuIHlldCkgdG8gc2ltcGx5
IGZpeCBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkKdG8gdGFrZSB0d28gY29tcGFyZSBmdW5jdGlv
bnMuCgpJJ2QgYWxzbyBzdWdnZXN0IGF0IHRoaXMgcG9pbnQgYW5vdGhlciBjaGFuZ2U6IHBsZWFz
ZSByZW5hbWUgaXQgdG8KZHJtX29mX2ttc19jb21wb25lbnRfcHJvYmUoKSBzaW5jZSB0aGlzIGlz
IG9ubHkgYSBnZW5lcmljIGNhc2UgZm9yIEtNUwpkcml2ZXJzLiAgR1BVIERSTSBkcml2ZXJzIG5l
ZWQgc29tZXRoaW5nIGRpZmZlcmVudC4KCi0tIApGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBs
aW5lOiBjdXJyZW50bHkgYXQgOS42TWJwcyBkb3duIDQwMGticHMgdXAKYWNjb3JkaW5nIHRvIHNw
ZWVkdGVzdC5uZXQuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
Cg==
