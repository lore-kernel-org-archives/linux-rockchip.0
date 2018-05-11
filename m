From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 3/4] Documentation: bindings: add phy_config for
 Rockchip USB Type-C PHY
Date: Fri, 11 May 2018 10:43:05 -0400
Message-ID: <20180511144305.GP33053@art_vandelay>
References: <1525861364-26323-1-git-send-email-hl@rock-chips.com>
 <1525861364-26323-3-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <1525861364-26323-3-git-send-email-hl@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Lin Huang <hl@rock-chips.com>
Cc: airlied@linux.ie, briannorris@chromium.org, dianders@chromium.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, dri-devel@lists.freedesktop.org, zyw@rock-chips.com, daniel.vetter@intel.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

T24gV2VkLCBNYXkgMDksIDIwMTggYXQgMDY6MjI6NDNQTSArMDgwMCwgTGluIEh1YW5nIHdyb3Rl
Ogo+IElmIHdhbnQgdG8gZG8gdHJhaW5pbmcgb3V0c2lkZSBEUCBGaXJtd2FyZSwgbmVlZCBwaHkg
dm9sdGFnZSBzd2luZwo+IGFuZCBwcmVfZW1waGFzaXMgdmFsdWUuCj4gCj4gU2lnbmVkLW9mZi1i
eTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KCkFkZGluZyBSb2IgSGVycmluZyBzbyBo
ZSBoYXMgYSBob3BlIG9mIHNlZWluZyB0aGlzLgoKPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0g
cmViYXNlCj4gCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJv
Y2tjaGlwLXR5cGVjLnR4dCB8IDQgKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLXR5cGVjLnR4dCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLXR5cGVjLnR4dAo+IGluZGV4IDk2
MGRhN2YuLmVkYTI2ZGQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9waHktcm9ja2NoaXAtdHlwZWMudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtdHlwZWMudHh0Cj4gQEAgLTE3LDcg
KzE3LDkgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPiAgCj4gIE9wdGlvbmFsIHByb3BlcnRpZXM6
Cj4gICAtIGV4dGNvbiA6IGV4dGNvbiBzcGVjaWZpZXIgZm9yIHRoZSBQb3dlciBEZWxpdmVyeQo+
IC0KPiArIC0gcm9ja2NoaXAscGh5X2NvbmZpZyA6IFRoYXQncyBwaHkgdm9sdGFnZSBzd2luZyBh
bmQgcHJlX2VtcGhhc2lzCj4gKwkJCSBzZXR0aW5nLCBpZiB3YW50IHRvIGRvIGRwIHRyYWluaW5n
IG91dHNpZGUKPiArCQkJIGRwIGZpcm13YXJlLCBuZWVkIHRvIGFkZCB0aGVzZSB2YWx1ZS4KCldo
YXQgYXJlIHRoZSB1bml0cz8KClNlYW4KCj4gIFJlcXVpcmVkIG5vZGVzIDogYSBzdWItbm9kZSBp
cyByZXF1aXJlZCBmb3IgZWFjaCBwb3J0IHRoZSBwaHkgcHJvdmlkZXMuCj4gIAkJIFRoZSBzdWIt
bm9kZSBuYW1lIGlzIHVzZWQgdG8gaWRlbnRpZnkgZHAgb3IgdXNiMyBwb3J0LAo+ICAJCSBhbmQg
c2hhbGwgYmUgdGhlIGZvbGxvd2luZyBlbnRyaWVzOgo+IC0tIAo+IDIuNy40Cj4gCgotLSAKU2Vh
biBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcg
bGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
