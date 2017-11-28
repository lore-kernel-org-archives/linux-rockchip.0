From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3 3/6] drm/rockchip/dsi: correct Feedback divider setting
Date: Mon, 27 Nov 2017 16:34:12 -0800
Message-ID: <CA+ASDXOJDN6fwnox8zZkYTb4Mt-CHtkEf_+K96YtVhgf-HHY9A@mail.gmail.com>
References: <1508903463-7254-1-git-send-email-nickey.yang@rock-chips.com>
 <1508903463-7254-3-git-send-email-nickey.yang@rock-chips.com>
 <20171025075719.4tt7lomec5x7guon@art_vandelay>
 <20171026010946.GA33225@google.com>
 <c1f17f1e-6e4f-d44d-348e-43157474f3c9@codeaurora.org>
 <39862e7a-b03f-f5d9-54db-ff9aef294a9c@st.com>
 <20171128002938.GA42258@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20171128002938.GA42258@google.com>
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, Chris Zhong <zyw@rock-chips.com>, Kristian Kristensen <hoegsberg@gmail.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Nickey Yang <nickey.yang@rock-chips.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "xbl@rock-chips.com" <xbl@rock-chips.com>, "hl@rock-chips.com" <hl@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

KERyb3BwaW5nIE1hcmssIHdob3NlIFJvY2tjaGlwIGFkZHJlc3MgaXMgZGVhZDsgYW5kIGZpeGlu
ZyBDaHJpcydzIGVtYWlsIGFnYWluKQoKT24gTW9uLCBOb3YgMjcsIDIwMTcgYXQgNDoyOSBQTSwg
QnJpYW4gTm9ycmlzIDxicmlhbm5vcnJpc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+IE9uIFRodSwg
T2N0IDI2LCAyMDE3IGF0IDA5OjQ0OjE0QU0gKzAwMDAsIFBoaWxpcHBlIENPUk5VIHdyb3RlOgo+
PiBPbiAxMC8yNi8yMDE3IDA2OjEzIEFNLCBBcmNoaXQgVGFuZWphIHdyb3RlOgo+PiA+IE9uIDEw
LzI2LzIwMTcgMDY6MzkgQU0sIEJyaWFuIE5vcnJpcyB3cm90ZToKPj4gPj4gc29tZWJvZHkgYWxy
ZWFkeSB3b3JraW5nIG9uIHJlZmFjdG9yaW5nIGV4aXN0aW5nIFJvY2tjaGlwIGNvZGUgdG8gdXNl
Cj4+ID4+IHRoaXM/Cj4+ID4KPj4gPiBJIGRvbid0IGtub3cuIElmIHJvY2tjaGlwIGlzbid0IGlu
dGVyZXN0ZWQgaW4gZG9pbmcgaXQsIHdlIGNhbiBjaGVjayB3aXRoCj4+ID4gUGhpbGlwcGUgZnJv
bSBTVCBpZiBoZSBjYW4gdHJ5IGNyZWF0aW5nIGEgUkZDIHRoYXQgY29udmVydHMgdGhlIHJvY2tj
aGlwCj4+ID4gZHJpdmVyIHRvIHVzZSB0aGUgZHctbWlwaS1kc2kgZHJpdmVyLgo+Pgo+PiBJIGFt
IG5vdCByZWFsbHkgaW50ZXJlc3RlZCBpbiBkb2luZyB0aGlzIHBvcnQgZm9yIFJvY2tjaGlwIChv
ciBIaXNpbGljb24KPj4gb3IgaS5NWC4uLikgYnV0IGhhcHB5IHRvIGhlbHAgYW55b25lIHRoYXQg
d2FudHMgdG8gdXNlIHRoZSBkdy1taXBpLWRzaQo+PiBicmlkZ2UgZHJpdmVyIDopCj4KPiBVZ2gs
IHRoaXMgc3R1ZmYgaXMgd29yc2UgdGhhbiBJIGV4cGVjdGVkLiBJJ20gaGVscGluZyBSb2NrY2hp
cCBhbG9uZwo+IHdpdGggZ2V0dGluZyB0aGlzIHJld3JpdHRlbiwgYnV0IHRoZXJlIGFyZSBzb21l
IGhpY2N1cHMuCj4KPiBBbW9uZyBvdGhlciB0aGluZ3MsIHRoZSBicmlkZ2UgZHJpdmVyIGlzIGFz
c3VtaW5nIGl0IGNhbiBzZXQgdGhlCj4gZGV2aWNlJ3MgZHJ2ZGF0YSBpdHNlbGYuIFRoaXMgd29y
a3MgYmVjYXVzZSB0aGUgU1RNIE1JUEkgZHJpdmVyIGlzCj4gc2ltcGxlLCBidXQgdGhlIFJvY2tj
aGlwIG9uZSByZWdpc3RlcnMgc3R1ZmYgdmlhIGNvbXBvbmVudF9hZGQoKSwgYW5kIHNvCj4gaXQg
Km5lZWRzKiB0byBoYW5kbGUgZHJ2ZGF0YSBiZXR3ZWVuIHByb2JlKCkgYW5kIGJpbmQoKS4uLmJ1
dCB0aGVuIHRoZQo+ICJjb21tb24iIGJyaWRnZSBkcml2ZXIgaXMgZ29pbmcgdG8gY2xvYmJlciBp
dCAoZGV2X3NldF9kcnZkYXRhKCkpLgo+Cj4gQWxvbmcgdGhlIHdheSwgSSdtIG5vdGljaW5nIHRo
YXQgdGhlIFNUTSBkcml2ZXIganVzdCBzdGVwcyBhcm91bmQgdGhpcwo+IGF0IHRpbWVzIGJ5IHJl
ZmVyZW5jaW5nIGEgc3RhdGljICghISkgaW5zdGFuY2Ugb2YgaXRzIHByaXZfZGF0YS4gU2VlOgo+
Cj4gc3RhdGljIGludCBkd19taXBpX2RzaV9zdG1fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gewo+ICAgICAgICAgc3RydWN0IGR3X21pcGlfZHNpX3N0bSAqZHNpID0gZHdf
bWlwaV9kc2lfc3RtX3BsYXRfZGF0YS5wcml2X2RhdGE7Cj4gLi4uCj4KPgo+IEkgbWlnaHQgcmV3
cml0ZSB0aGlzLCBidXQgaXQncyBub3QgZnVuIHRvIGhhdmUgdG8gZml4IHNvbWVib2R5IGVsc2Un
cwo+IGZvcmsgZm9yIHRoZW0uLi4KPgo+IEJyaWFuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaS1kZXZlbAo=
