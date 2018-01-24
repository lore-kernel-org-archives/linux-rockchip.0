From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3] drm/bridge/synopsys: dsi: add optional pixel clock
Date: Wed, 24 Jan 2018 10:09:00 -0800
Message-ID: <20180124180859.mr736rpzysq5vn54@ban.mtv.corp.google.com>
References: <20180123170806.5282-1-philippe.cornu@st.com>
 <20180123204939.qirvr34mlwgiwmqz@ban.mtv.corp.google.com>
 <507552a3-c68f-d6ac-a747-b8f5168d0d41@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <507552a3-c68f-d6ac-a747-b8f5168d0d41@st.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Philippe CORNU <philippe.cornu@st.com>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, Chris Zhong <zyw@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Yannick FERTRE <yannick.fertre@st.com>, "nickey.yang@rock-chips.com" <nickey.yang@rock-chips.com>, "hl@rock-chips.com" <hl@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

T24gV2VkLCBKYW4gMjQsIDIwMTggYXQgMDk6MjQ6MDZBTSArMDAwMCwgUGhpbGlwcGUgQ09STlUg
d3JvdGU6Cj4gT24gMDEvMjMvMjAxOCAwOTo0OSBQTSwgQnJpYW4gTm9ycmlzIHdyb3RlOgo+ID4g
T24gVHVlLCBKYW4gMjMsIDIwMTggYXQgMDY6MDg6MDZQTSArMDEwMCwgUGhpbGlwcGUgQ29ybnUg
d3JvdGU6Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBp
LWRzaS5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1taXBp
LWRzaS5jCgo+ID4+IEBAIC04MjgsNiArODMzLDE0IEBAIF9fZHdfbWlwaV9kc2lfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiA+PiAgIAkJcmV0dXJuIEVSUl9QVFIocmV0KTsK
PiA+PiAgIAl9Cj4gPj4gICAKPiA+PiArCWRzaS0+cHhfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwg
InB4X2NsayIpOwo+ID4gCj4gPiBEaWQgeW91IHdyaXRlIGEgZGV2aWNlIHRyZWUgYmluZGluZyBk
b2N1bWVudCB1cGRhdGUgZm9yIHRoaXMgYW55d2hlcmU/Cj4gCj4gTWFueSB0aGFua3MgZm9yIHlv
dXIgcmV2aWV3LAo+IAo+IHllcywgInB4X2NsayIgaXMgYWxyZWFkeSBkb2N1bWVudGVkLCBwbGVh
c2UgaGF2ZSBhIGxvb2sgdG8gCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rp
c3BsYXkvYnJpZGdlL2R3X21pcGlfZHNpLnR4dAoKQWgsIEkgc2VlLiBOb3JtYWxseSBJIGV4cGVj
dCB0aGF0IHRoZSBiaW5kaW5nIGRvY3VtZW50IGlzIHNlbnQgYXJvdW5kCndoZW4gdGhlIGZpcnN0
IHVzZXIgb2YgaXQgc2hvd3MgdXAsIGJ1dCBJIGd1ZXNzIHRoYXQncyBub3QgYQpyZXF1aXJlbWVu
dC4gU29ycnkgSSBtaXNzZWQgdGhhdCEKCkp1c3QgYSBub3RlOiBJIGRvbid0IHRoaW5rIHRoYXQg
Um9ja2NoaXAgc3lzdGVtcyBoYXZlIGFuIGVxdWl2YWxlbnQKY2xvY2sgZnJvbSB3aGljaCB0byBk
aXJlY3RseSBkZXJpdmUgdGhlIHBpeGVsIGNsb2NrIHJhdGUuIEkgYmVsaWV2ZSBpdCdzCmNvbnRy
b2xsZWQgdGhyb3VnaCBhZGRpdGlvbmFsIGRpdmlkZXJzIHRoYXQgYXJlIG5vdCBwYXJ0IG9mIHRo
ZSBjb21tb24KY2xvY2sgZnJhbWV3b3JrLiBTbyB0aGlzIGlzbid0IHBhcnRpY3VsYXJseSB1c2Vm
dWwgZm9yIHRoZW0uCgpJIGRvbid0IHRoaW5rIGl0J3Mgd29ydGggdmVyeSBtdWNoIGluIHRoaXMg
Y2FzZSwgYnV0OgoKUmV2aWV3ZWQtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3JyaXNAY2hyb21p
dW0ub3JnPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
cmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK
