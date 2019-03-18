From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 13/17] drm/rockchip: Convert to using
 __drm_atomic_helper_crtc_reset() for reset.
Date: Mon, 18 Mar 2019 19:07:55 +0100
Message-ID: <6530723.S05JUVCJ2j@diego>
References: <20190301125627.7285-1-maarten.lankhorst@linux.intel.com>
 <20190301125627.7285-14-maarten.lankhorst@linux.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20190301125627.7285-14-maarten.lankhorst@linux.intel.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRnJlaXRhZywgMS4gTcOkcnogMjAxOSwgMTM6NTY6MjMgQ0VUIHNjaHJpZWIgTWFhcnRlbiBM
YW5raG9yc3Q6Cj4gQ29udmVydCByb2NrY2hpcCB0byB1c2luZyBfX2RybV9hdG9taWNfaGVscGVy
X2NydGNfcmVzZXQoKSwgaW5zdGVhZCBvZgo+IHdyaXRpbmcgaXRzIG93biB2ZXJzaW9uLiBJbnN0
ZWFkIG9mIG9wZW4gY29kaW5nCj4gZGVzdHJveV9zdGF0ZSgpLCBjYWxsIGl0IGRpcmVjdGx5IGZv
ciBmcmVlaW5nIHRoZSBvbGQgc3RhdGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogU2FuZHkgSHVh
bmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogIkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250
ZWNoLmRlPgo+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCgpzbyBJJ3Zl
IGxvb2tlZCB1cCB0aGUgcGF0Y2gyIHRoYXQgaW50cm9kdWNlcyBfX2RybV9hdG9taWNfaGVscGVy
X2NydGNfcmVzZXQKaW4gcGF0Y2h3b3JrIGFuZCBjb21wYXJlZCByZXN1bHRzIGFuZCBldmVyeXRo
aW5nIGxvb2tzIGFzIGl0IHNob3VsZCBiZQpJIHRoaW5rIDstKSAsIHNvCgpSZXZpZXdlZC1ieTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbA==
