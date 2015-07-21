From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 4/5] drm/rockchip: vop: switch cursor plane to window 3
Date: Tue, 21 Jul 2015 16:38:05 +0900
Message-ID: <CAAFQd5BTJujrzbz2u1jggfV8P9DwZtfJigoV2eiJ5Yesap=7Lw@mail.gmail.com>
References: <1435313249-4549-1-git-send-email-mark.yao@rock-chips.com>
 <1435313249-4549-5-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1435313249-4549-5-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Mark Yao <mark.yao@rock-chips.com>
Cc: xw@rock-chips.com, zwl@rock-chips.com, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, dkm@rock-chips.com, sandy.huang@rock-chips.com, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SSBtaXNzZWQgaXQgb3JpZ2luYWxseSwgYnV0IGlmIGl0J3Mgbm90IHRvbyBsYXRlIHlldC4uLgoK
T24gRnJpLCBKdW4gMjYsIDIwMTUgYXQgNzowNyBQTSwgTWFyayBZYW8gPG1hcmsueWFvQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPiBXaW5kb3cgMSBzdXBwb3J0IHNjYWxlIGFuZCB5dXYgZm9ybWF0
LCBpdCdzIHdhc3RlIHVzZSBpdCBmb3IgYQo+IGN1cnNvciwgdXNlIHdpbmRvdyAzIGlzIGVub3Vn
aC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmsgWWFvIDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4K
PiAtLS0KPiBDaGFuZ2VzIGluIHYyOiBOb25lCj4KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AuYyB8ICAgIDcgKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gaW5kZXggZjZlZjYzNC4uNDAxMDdiYiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+IEBAIC0zNDIsMTMg
KzM0MiwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHZvcF9yZWdfZGF0YSB2b3BfaW5pdF9yZWdf
dGFibGVbXSA9IHsKPiAgLyoKPiAgICogTm90ZTogcmszMjg4IGhhcyBhIGRlZGljYXRlZCAnY3Vy
c29yJyB3aW5kb3csIGhvd2V2ZXIsIHRoYXQgd2luZG93IHJlcXVpcmVzCj4gICAqIHNwZWNpYWwg
c3VwcG9ydCB0byBnZXQgYWxwaGEgYmxlbmRpbmcgd29ya2luZy4gIEZvciBub3csIGp1c3QgdXNl
IG92ZXJsYXkKPiAtICogd2luZG93IDEgZm9yIHRoZSBkcm0gY3Vyc29yLgo+ICsgKiB3aW5kb3cg
MyBmb3IgdGhlIGRybSBjdXJzb3IuCj4gKyAqCgpJIGd1ZXNzIHRoaXMgYmxhbmsgbGluZSBpcyBu
b3QgbmVjZXNzYXJ5LCBhcyBwb2ludGVkIG9uIGNocm9taXVtIHJldmlldy4KCkJlc3QgcmVnYXJk
cywKVG9tYXN6Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
