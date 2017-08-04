From: Sandy Huang <sandy.huang@rock-chips.com>
Subject: Re: [PATCH 4/6] drm/rockchip: vop: round_up pitches to word align
Date: Fri, 4 Aug 2017 08:56:43 +0800
Message-ID: <3a0311c8-2db9-96d0-b241-f94040421397@rock-chips.com>
References: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
 <1501494591-7034-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1501494591-7034-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

CgrlnKggMjAxNy83LzMxIDE3OjQ5LCBNYXJrIFlhbyDlhpnpgZM6Cj4gVk9QIHBpdGNoIHJlZ2lz
dGVyIGlzIHdvcmQgYWxpZ24sIG5lZWQgYWxpZ24gdG8gd29yZC4KPiAKPiBWT1BfV0lOMF9WSVI6
Cj4gICAgYml0WzMxOjE2XSB3aW4wX3Zpcl9zdHJpZGVfdXYKPiAgICAgIE51bWJlciBvZiB3b3Jk
cyBvZiBXaW4wIHV2IFZpcnR1YWwgd2lkdGgKPiAgICBiaXRbMTU6MF0gd2luMF92aXJfd2lkdGgK
PiAgICAgIE51bWJlciBvZiB3b3JkcyBvZiBXaW4wIHlyZ2IgVmlydHVhbCB3aWR0aAo+ICAgICAg
QVJHQjg4OCA6IHdpbjBfdmlyX3dpZHRoCj4gICAgICBSR0I4ODggOiAod2luMF92aXJfd2lkdGgq
My80KSArICh3aW4wX3Zpcl93aWR0aCUzKQo+ICAgICAgUkdCNTY1IDogY2VpbCh3aW4wX3Zpcl93
aWR0aC8yKQo+ICAgICAgWVVWIDogY2VpbCh3aW4wX3Zpcl93aWR0aC80KQo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCA0ICsrLS0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCgpSZXZpZXdlZC1i
eTogU2FuZHkgaHVhbmcgPHNhbmR5Lmh1YW5nQHJvY2stY2hpcHMuY29tPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlz
dApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
