From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: vop: fix window origin calculation
Date: Tue, 10 Nov 2015 12:42:21 +0100
Message-ID: <1671071.tld3k90Oeo@phil>
References: <1447149550-18595-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1447149550-18595-1-git-send-email-mark.yao@rock-chips.com>
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
Cc: Russell King <linux@arm.linux.org.uk>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRGllbnN0YWcsIDEwLiBOb3ZlbWJlciAyMDE1LCAxNzo1OToxMCBzY2hyaWViIE1hcmsgWWFv
Ogo+IEZyb206IERvbWluaWsgQmVociA8ZGJlaHJAY2hyb21pdW0ub3JnPgo+IAo+IFZPUF9XSU54
X0RTUF9TVCBkb2VzIG5vdCByZXF1aXJlIHN1YnRyYWN0aW5nIDEgZnJvbSB0aGUgdmFsdWVzIHdy
aXR0ZW4gdG8KPiBpdC4gSXQgYWN0dWFsbHkgY2F1c2VzIHRoZSBzY3JlZW4gdG8gYmUgc2hpZnRl
ZCBieSBvbmUgcGl4ZWwuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyayBZYW8gPG1hcmsueWFvQHJv
Y2stY2hpcHMuY29tPgoKZnVubnkgSSBuZXZlciBub3RpY2VkIHRoYXQgc2hpZnQsIGJ1dCBub3cg
dGhhdCB5b3UgbWVudGlvbiBpdCwgSSBzZWUgaXQgdG9vCm9uIG15IENocm9tZWJvb2sgYW5kIHRo
ZSBwYXRjaCBmaXhlcyB0aGlzLiBJJ3ZlIGFsc28gbG9va2VkIHVwIHRoZQptYXRjaGluZyBkYXRh
IGluIHRoZSBUUk0sIHNvCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCkhlaWtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
