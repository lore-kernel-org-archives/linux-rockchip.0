From: Dave Airlie <airlied@gmail.com>
Subject: Re: [PATCH v2 0/2] Improve drm_of_component_probe() and move rockchip
 to use it
Date: Wed, 23 Dec 2015 11:33:27 +1000
Message-ID: <CAPM=9twk=M-32cTw4n81RCGhD7ZfmuHKMBS-KR0k+0c=5KD17A@mail.gmail.com>
References: <1448029325-14602-1-git-send-email-Liviu.Dudau@arm.com>
 <20151222173800.GU960@e106497-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151222173800.GU960@e106497-lin.cambridge.arm.com>
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
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Russell King <rmk+kernel@arm.linux.org.uk>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gMjMgRGVjZW1iZXIgMjAxNSBhdCAwMzozOCwgTGl2aXUgRHVkYXUgPExpdml1LkR1ZGF1QGFy
bS5jb20+IHdyb3RlOgo+IE9uIEZyaSwgTm92IDIwLCAyMDE1IGF0IDAyOjIyOjAzUE0gKzAwMDAs
IExpdml1IER1ZGF1IHdyb3RlOgo+PiBIZWxsbywKPj4KPj4gVGhpcyBpcyB2MiBvZiB0aGUgcGF0
Y2hzZXQgdHJ5aW5nIHRvIG1ha2UgZHJtX29mX2NvbXBvbmVudF9wcm9iZSgpIGNvcGUgd2l0aCBm
aW5kaW5nCj4+IGJvdGggbG9jYWwgY3J0YyBwb3J0cyBhbmQgcmVtb3RlIGVuY29kZXIgb25lcy4g
SGVpa28gU3TDvGJuZXIgd2FzIG5pY2UgZW5vdWdoIHRvIHRlc3QKPj4gYW4gZWFybGllciB2ZXJz
aW9uIHRoYXQgd2FzIHBhdGNoZWQgZm9sbG93aW5nIFJ1c3NlbGwncyBzdWdnZXN0aW9ucyBvbiBy
azMyODgsIGJ1dAo+PiBJIGhhdmVuJ3Qgc2VlbiBhbnkgcmVwb3J0cyBmcm9tIGlNWCBvciBBcm1h
ZGEgdXNlcnMuCj4+Cj4+IENoYW5nZWxvZzoKPj4gIHYyOiBVcGRhdGVkIHRoZSBkcm1fb2ZfY29t
cG9uZW50X3Byb2JlKCkgY29tbWVudCB0byBleHBsYWluIHdoeSB0aGUgcmVmZXJlbmNlIGNvdW50
Cj4+ICAgICAgaXMgbm90IGRyb3BwZWQuIEZpeGVkIHRoZSBjb21wYXJlX3BvcnQoKSBmdW5jdGlv
biBmb3Igcm9ja2NoaXAgYXMgZGVzY3JpYmVkIGJ5Cj4+ICAgICAgUnVzc2VsbC4KPj4gIHYxOiBP
cmlnaW5hbCBzdWJtaXNzaW9uLiBodHRwOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVz
L2RyaS1kZXZlbC8yMDE1LU5vdmVtYmVyLzA5NDU0Ni5odG1sCj4KPiBHZW50bGUgcGluZywgdGhp
cyBoYXMgbm93IGJlZW4gdGVzdGVkIGJ5IFJvY2tjaGlwIHBlb3BsZSBhbmQgZml4ZXMgdGhlIGVh
cmxpZXIgdmVyc2lvbgo+IHRoYXQgaGFkIHRvIGJlIHJldmVydGVkIGluIG1haW5saW5lLiBDYW4g
aXQgYmUgaW5jbHVkZWQgaW4gdGhlIC1uZXh0IHNvbWV3aGVyZT8KCkl0IHdvdWxkIGJlIGdvb2Qg
dG8gZ2V0IFJ1c3NlbGwgYWNrIG9uIHRoZSBmaXJzdCBvbmUsIGVzcGVjaWFsbHkgYWZ0ZXIKcmVh
ZGluZyB0aGUgcHJldmlvdXMgdGhyZWFkLgoKRGF2ZS4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcmktZGV2ZWwK
