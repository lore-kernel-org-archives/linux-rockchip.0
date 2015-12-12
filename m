From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 0/2] Improve drm_of_component_probe() and move rockchip
 to use it
Date: Sat, 12 Dec 2015 14:29:02 +0100
Message-ID: <2302646.WIa4ZQmOnV@diego>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Liviu Dudau <Liviu.Dudau@arm.com>, Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Russell King <rmk+kernel@arm.linux.org.uk>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgRGF2ZSwKCkFtIEZyZWl0YWcsIDIwLiBOb3ZlbWJlciAyMDE1LCAxNDoyMjowMyBzY2hyaWVi
IExpdml1IER1ZGF1Ogo+IFRoaXMgaXMgdjIgb2YgdGhlIHBhdGNoc2V0IHRyeWluZyB0byBtYWtl
IGRybV9vZl9jb21wb25lbnRfcHJvYmUoKSBjb3BlIHdpdGgKPiBmaW5kaW5nIGJvdGggbG9jYWwg
Y3J0YyBwb3J0cyBhbmQgcmVtb3RlIGVuY29kZXIgb25lcy4gSGVpa28gU3TDvGJuZXIgd2FzCj4g
bmljZSBlbm91Z2ggdG8gdGVzdCBhbiBlYXJsaWVyIHZlcnNpb24gdGhhdCB3YXMgcGF0Y2hlZCBm
b2xsb3dpbmcgUnVzc2VsbCdzCj4gc3VnZ2VzdGlvbnMgb24gcmszMjg4LCBidXQgSSBoYXZlbid0
IHNlZW4gYW55IHJlcG9ydHMgZnJvbSBpTVggb3IgQXJtYWRhCj4gdXNlcnMuCgp0aGVzZSAyIHBh
dGNoZXMgc2VlbSB0byB3b3JrIG5pY2VseSBub3cgYW5kIGNhbiBwcm9iYWJseSBnZXQgYXBwbGll
ZC4gRG8geW91IAp3YW50IHRvIHBpY2sgdGhlbSB1cCwgb3IgZG8geW91IGV4cGVjdCBNYXJrIHRv
IGRvIHRoaXMgYW5kIHRoZW4gaW5jbHVkZSB0aGVtIAppbiBhIHB1bGwgcmVxdWVzdD8KCgpUaGFu
a3MKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
