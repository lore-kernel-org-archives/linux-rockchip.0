From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [RFC PATCH v3 4/4] drm/armada: Convert the probe function to the
 generic drm_of_component_probe()
Date: Mon, 19 Oct 2015 16:17:14 +0100
Message-ID: <20151019151714.GI32532@n2100.arm.linux.org.uk>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-5-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <1445267270-23126-5-git-send-email-Liviu.Dudau@arm.com>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gTW9uLCBPY3QgMTksIDIwMTUgYXQgMDQ6MDc6NTBQTSArMDEwMCwgTGl2aXUgRHVkYXUgd3Jv
dGU6Cj4gVGhlIGFybWFkYSBEUk0gZHJpdmVyIGtlZXBzIHNvbWUgb2xkIHBsYXRmb3JtIGRhdGEg
Y29tcGF0aWJpbGl0eSBpbiB0aGUKPiBwcm9iZSBmdW5jdGlvbiB0aGF0IG1ha2VzIG1vdmluZyB0
byB0aGUgZ2VuZXJpYyBkcm1fb2ZfY29tcG9uZW50X3Byb2JlKCkKPiBhIGJpdCBtb3JlIGNvbXBs
aWNhdGVkIHRoYXQgaXQgc2hvdWxkLiBSZWZhY3RvciB0aGUgcHJvYmUgZnVuY3Rpb24gdG8gZG8K
PiB0aGUgcGxhdGZvcm1fZGF0YSBwcm9jZXNzaW5nIGFmdGVyIHRoZSBnZW5lcmljIHByb2JlIChh
bmQgb25seSBpZiB0aGF0Cj4gZmFpbHMpLiBUaGlzIHdheSBmdXR1cmUgY2xlYW51cCBjYW4gZnVy
dGhlciByZW1vdmUgc3VwcG9ydCBmb3IgaXQuCgpJJ20gbWFpbmx5IHVzaW5nIHRoZSBvbGQgY29k
ZSwgZXZlbiB3aXRoIERUIGJhc2VkIHBsYXRmb3JtcywgYmVjYXVzZSBpdApuZWVkcyBhIGJsb2Nr
IG9mIHJlc2VydmVkIG1lbW9yeSB3aGljaCBJIGhhdmVuJ3QgZ290IGFyb3VuZCB0byBjb252ZXJ0
aW5nCnRvIERUIHN0dWZmIChlYWNoIHRpbWUgSSd2ZSBsb29rZWQgaW50byBkb2luZyB0aGF0LCBi
aXRzIGZvciBkZWFsaW5nIHdpdGgKcmVzZXJ2ZWQgbWVtb3J5IG5vZGVzIHdlcmUgbWlzc2luZy4p
CgpBY2tlZC1ieTogUnVzc2VsbCBLaW5nIDxybWsra2VybmVsQGFybS5saW51eC5vcmcudWs+Cgot
LSAKRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZTogY3VycmVudGx5IGF0IDkuNk1icHMg
ZG93biA0MDBrYnBzIHVwCmFjY29yZGluZyB0byBzcGVlZHRlc3QubmV0LgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkcmktZGV2ZWwgbWFpbGluZyBsaXN0
CmRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cDovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbAo=
