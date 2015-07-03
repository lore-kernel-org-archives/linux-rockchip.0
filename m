From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 3/5] drm/rockchip: vop: support plane scale
Date: Fri, 3 Jul 2015 23:37:09 +0900
Message-ID: <CAAFQd5AM1-w8ynyn_Usr8OitdXSUcU85scvcYCTEZebzLqLn0w@mail.gmail.com>
References: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
 <1435313249-4549-4-git-send-email-mark.yao@rock-chips.com>
 <CAAFQd5A2j7MXrzOMVnsJr_WUKAFPaicv+r9LgwHccLim4fRk8g@mail.gmail.com>
 <55965344.5050502@rock-chips.com>
 <CAAFQd5B3NnUQRqdaXUz6BGCn-5rh1iXnfZXnQRDK3=nF_Ya7SA@mail.gmail.com>
 <5596626F.5050003@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5596626F.5050003@rock-chips.com>
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
Cc: xw@rock-chips.com, zwl@rock-chips.com, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, dkm@rock-chips.com, sandy.huang@rock-chips.com, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gRnJpLCBKdWwgMywgMjAxNSBhdCA3OjIyIFBNLCBNYXJrIHlhbyA8bWFyay55YW9Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+IE9uIDIwMTXlubQwN+aciDAz5pelIDE3OjU4LCBUb21hc3ogRmln
YSB3cm90ZToKPj4+Pgo+Pj4+ID4+QXJlbid0IHRoZSBzY2xfbW9kZXMgZm9yIENiQ3IgcGxhbmVz
IGFsd2F5cyB0aGUgc2FtZSBhcyBmb3IgWSBwbGFuZT8KPj4+Cj4+PiA+Cj4+PiA+Cj4+PiA+Tm8s
IHN1Y2ggYXMgc3JjKDE5MjAgeCAxMDgwKSAtPiBkc3QoMTI4MHg4MDApLCB5dXYgZm9ybWF0IGlz
IE5WMTIuCj4+PiA+c28gWSBwbGFuZSBob3Jpem9udGFsIGFuZCB2ZXJ0aWNhbCBpcyBzY2FsZSBk
b3duLgo+Pj4gPgo+Pj4gPmJ1dCBzcmNfdyA9IDE5MjAgLyAyID0gOTYwIDwgMTI4MAo+Pj4gPiAg
ICAgICBzcmNfaCA9IDEwODAgLyAyID0gNTQwIDwgODAwLgo+Pj4gPgo+Pj4gPlNvIENiY3IgaG9y
aXpvbnRhbCBhbmQgdmVydGljYWwgaXMgc2NhbGUgdXAuCj4+Cj4+IFNvcnJ5LCBJIGRvbid0IGZv
bGxvdy4KPj4KPj4gSWYgd2Ugc2NhbGUgZG93biBZIHBsYW5lIGluIE5WMTIgZnJvbSAxOTIweDEw
ODAgdG8gMTI4MHg4MDAsIHRoZW4KPj4gb3JpZ2luYWwgQ2JDciBwbGFuZSB3aWxsIGJlIDk2MHg1
NDAgYW5kIGRlc3RpbmF0aW9uIENiQ3IgcGxhbmUgd2lsbCBiZQo+PiA2NDB4NDAwIChiZWNhdXNl
IENiQ3IgcGxhbmUgb2YgTlYxMiBpcyBzdWJzYW1wbGVkIDJ4Miwgd2hpY2ggaXMgaGFsZgo+PiB0
aGUgd2lkdGggYW5kIGhhbGYgdGhlIGhlaWdodCBvZiBZIHBsYW5lKSwgc28gYm90aCBwbGFuZXMg
YXJlIGJlaW5nCj4+IHNjYWxlZCBkb3duLgo+Pgo+IGRlc3RpbmF0aW9uIENiQ3IgcGxhbmUgaXMg
MTI4MHg4MDAsIGRlc3RpbmF0aW9uIGNhbid0IGJlIHN1YnNhbXBsZS4KCkFoLCBJIHNlZSwgc28g
aW50ZXJuYWxseSBpdCdzIGFsd2F5cyBzY2FsbGluZyB0byBkZXN0aW5hdGlvbiBwbGFuZQpzaXpl
LiBUaGlzIG1lYW5zIHRoYXQgY2FsY3VsYXRpb24gZm9yIGJvdGggWSBhbmQgQ2JDciBtdXN0IGJl
IGRvbmUKaW5kZWVkLCBidXQgZXZlbiB0aGVuIHlvdSBjb3VsZCB1c2UgaGVscGVyIGZ1bmN0aW9u
cyBmb3IgdGhhdCwgc2luY2UKdGhleSBkaWZmZXIgb25seSBpbiBwYXJhbWV0ZXJzLgoKQmVzdCBy
ZWdhcmRzLApUb21hc3oKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2
ZWwK
