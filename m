From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [RFC PATCH 2/9] drm/rockchip: Use new vblank api drm_crtc_vblank_*
Date: Tue, 01 Dec 2015 17:43:24 +0800
Message-ID: <565D6BBC.20608@rock-chips.com>
References: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
 <1448940391-23333-3-git-send-email-mark.yao@rock-chips.com>
 <CAPj87rNs+c5Y01zVPF3a+8puFH1ZWuLZUGoDq6EPfDQB5DVZGw@mail.gmail.com>
 <565D5B57.4040102@rock-chips.com> <20151201090127.GN17050@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151201090127.GN17050@phenom.ffwll.local>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Daniel Stone <daniel@fooishbar.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNeW5tDEy5pyIMDHml6UgMTc6MDEsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gVHVl
LCBEZWMgMDEsIDIwMTUgYXQgMDQ6MzM6MjdQTSArMDgwMCwgTWFyayB5YW8gd3JvdGU6Cj4+IE9u
IDIwMTXlubQxMuaciDAx5pelIDE1OjU2LCBEYW5pZWwgU3RvbmUgd3JvdGU6Cj4+PiBIaSwKPj4+
Cj4+PiBPbiAxIERlY2VtYmVyIDIwMTUgYXQgMDM6MjYsIE1hcmsgWWFvIDxtYXJrLnlhb0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4+Pj4gTm8gZnVuY3Rpb25hbCB1cGRhdGUsIGRybV92Ymxhbmtf
KiBpcyB0aGUgbGVnYWN5IHZlcnNpb24gb2YKPj4+PiBkcm1fY3J0Y192YmxhbmtfKi4gYW5kIHVz
ZSBuZXcgYXBpIG1ha2UgZHJpdmVyIG1vcmUgY2xlYW4uCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5
OiBNYXJrIFlhbyA8bWFyay55YW9Acm9jay1jaGlwcy5jb20+Cj4+PiBIZWgsIEkgaGFkIHRoZSBz
YW1lIHBhdGNoIGluIG15IHNlcmllcyB0byBmaXggcGFnZWZsaXAgZXZlbnRzLgo+Pj4KPj4+IFJl
dmlld2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KPj4+Cj4+PiBD
aGVlcnMsCj4+PiBEYW5pZWwKPj4+Cj4+Pgo+Pj4KPj4gSGkgRGFuaWVsCj4+ICAgICBJIGhhZCBw
aWNrZWQgeW91ciBwYXRjaCAiW1BBVENIIDEvMl0gZHJtL3JvY2tjaGlwOiBVc2UgQ1JUQyB2Ymxh
bmsgZXZlbnQKPj4gaW50ZXJmYWNlIiBpbnRvIG15IGRybS1uZXh0LCB0aGlzIHBhdGNoIGlzIGJh
c2Ugb24gaXQuCj4gVGhhdCByZWFsbHkgc2hvdWxkIGJlIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0
IG1lc3NhZ2UsIGFuZCB5b3UgbXVzdCBrZWVwCj4gdGhlIHNpZ25lZC1vZmYtYnkgY2hhaW4gaW50
YWN0IHdoZW4gYWRhcHRpbmcgb3IgcmV1c2luZyBvdGhlciBwZW9wbGVzCj4gd29yay4KPiAtRGFu
aWVsCgpPaCwgU29ycnkgZm9yIHRoYXQsIHRoaXMgcGF0Y2ggaXMgYW5vdGhlciBwYXRjaCByZWJh
c2Ugb24gRGFuaWVsIFN0b25lJ3MgCm9uZSwgSSB1c2UgImJhc2Ugb24gaXQiIG1heSBiZSBhbWJp
Z3VpdHkuCmxpa2UgdGhhdDoKMGU2OTE5ZiBkcm0vcm9ja2NoaXA6IFVzZSBuZXcgdmJsYW5rIGFw
aSBkcm1fY3J0Y192YmxhbmtfKgo0ZjBjYjdjIGRybS9yb2NrY2hpcDogVXNlIENSVEMgdmJsYW5r
IGV2ZW50IGludGVyZmFjZQoKVGhhbmtzIGZvciBwb2ludGluZyB0aGF0LCBJIHdpbGwgYmUgY2Fy
ZWZ1bGx5IG5leHQgdGltZS4KCj4+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcuCj4+Cj4+IC0tIAo+
PiDvvK1hcmsgWWFvCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gZHJpLWRldmVsQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpLWRldmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aS1kZXZlbAo=
