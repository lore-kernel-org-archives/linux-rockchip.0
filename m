From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH 2/2] drm/rockchip: vop: correct the source size of uv
 scale factor setting
Date: Tue, 7 Jun 2016 08:57:48 +0800
Message-ID: <57561C0C.2040507@rock-chips.com>
References: <1465199912-20932-1-git-send-email-ykk@rock-chips.com>
 <1465199926-20991-1-git-send-email-ykk@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1465199926-20991-1-git-send-email-ykk@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Yakir Yang <ykk@rock-chips.com>, Mark Yao <yzq@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

T24gMjAxNuW5tDA25pyIMDbml6UgMTU6NTgsIFlha2lyIFlhbmcgd3JvdGU6Cj4gRnJvbTogTWFy
ayBZYW8gPG1hcmsueWFvQHJvY2stY2hpcHMuY29tPgo+Cj4gV2hlbiB0aGUgaW5wdXQgY29sb3Ig
Zm9ybWF0IGlzIFlVViwgd2UgbmVlZCB0byBkbyBzb21lIGV4dGVybmFsIHNjYWxlCj4gZm9yIENC
Q1IuIExpa2UsCj4gICAqIEluIFlVVjQyMCBkYXRhIGZvcm1hdDoKPiAgICAgICBjYmNyX3hzY2Fs
ZSA9IGRzdF93IC8gc3JjX3cgKiAyOwo+ICAgICAgIGNiY3JfeXNjYWxlID0gZHN0X2ggLyBzcmNf
aCAqIDI7Cj4gICAqIEluIFlVVjQyMiBkYXRhIGZvcm1hdDoKPiAgICAgICBjYmNyX3hzY2FsZSA9
IGRzdF93IC8gc3JjX3cgKiAyOwo+ICAgICAgIGNiY3JfeXNjYWxlID0gZHN0X2ggLyBzcmNfaDsK
PiAgICogSW4gWVVWNDQ0IGRhdGEgZm9ybWF0Cj4gICAgICAgY2Jjcl94c2NhbGUgPSBkc3RfdyAv
IHNyY193Owo+ICAgICAgIGNiY3JfeXNjYWxlID0gZHN0X2ggLyBzcmNfaDsKPgo+IFNpZ25lZC1v
ZmYtYnk6IFlha2lyIFlhbmcgPHlra0Byb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCA0ICsrLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBpbmRleCAxYzRkNWI1Li5iMjhjZGE3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4g
QEAgLTMyNCw5ICszMjQsOSBAQCBzdGF0aWMgdm9pZCBzY2xfdm9wX2NhbF9zY2xfZmFjKHN0cnVj
dCB2b3AgKnZvcCwgY29uc3Qgc3RydWN0IHZvcF93aW5fZGF0YSAqd2luLAo+ICAgCQkJICAgIHNj
bF9jYWxfc2NhbGUyKHNyY19oLCBkc3RfaCkpOwo+ICAgCQlpZiAoaXNfeXV2KSB7Cj4gICAJCQlW
T1BfU0NMX1NFVCh2b3AsIHdpbiwgc2NhbGVfY2Jjcl94LAo+IC0JCQkJICAgIHNjbF9jYWxfc2Nh
bGUyKHNyY193LCBkc3RfdykpOwo+ICsJCQkJICAgIHNjbF9jYWxfc2NhbGUyKGNiY3Jfc3JjX3cs
IGRzdF93KSk7Cj4gICAJCQlWT1BfU0NMX1NFVCh2b3AsIHdpbiwgc2NhbGVfY2Jjcl95LAo+IC0J
CQkJICAgIHNjbF9jYWxfc2NhbGUyKHNyY19oLCBkc3RfaCkpOwo+ICsJCQkJICAgIHNjbF9jYWxf
c2NhbGUyKGNiY3Jfc3JjX2gsIGRzdF9oKSk7Cj4gICAJCX0KPiAgIAkJcmV0dXJuOwo+ICAgCX0K
VGhhbmtzIGZvciB0aGlzIGZpeCwgQXBwbGllZCB0byBteSBkcm0tZml4ZXMuCgotLSAK77ytYXJr
IFlhbwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRy
aS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
