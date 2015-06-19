From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [PATCH v5 1/6] drm: bridge/dw_hdmi: add audio support for more
 display resolutions
Date: Fri, 19 Jun 2015 17:44:12 +0100
Message-ID: <20150619164411.GU7557@n2100.arm.linux.org.uk>
References: <1434730417-10629-1-git-send-email-ykk@rock-chips.com>
 <1434730752-10829-1-git-send-email-ykk@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
Content-Disposition: inline
In-Reply-To: <1434730752-10829-1-git-send-email-ykk@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Yakir Yang <ykk@rock-chips.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, linux-kernel@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

T24gU2F0LCBKdW4gMjAsIDIwMTUgYXQgMTI6MTk6MTJBTSArMDgwMCwgWWFraXIgWWFuZyB3cm90
ZToKPiBKdXN0IGxpa2UgSERNSVNwZWNpZmljYXRpb24gMS40IGRvY3VtZW50IGRlc2NyaXB0ZWQs
IHRoZSBzb3VyZSBzaGFsbAo+IGRldGVybWluZSB0aGUgZnJhY3Rpb25hbCByZWxhdGlvbnNoaXAg
YmV0d2VlbiB0aGUgVE1EUyBjbG9jayBhbiBhbgo+IGF1ZGlvIHJlZmVyZW5jZSBjbG9jaywgdGhl
IHNpbmsgbWF5IHRoZW4gcmVjcmVhdGUgdGhlIGF1ZGlvIGNsb2NrIGZyb20KPiB0aGUgVE1EUyBj
bG9jayBieSB1c2luZyBhbiBjbG9jayBkaXZpZGVyLiBTbyBpZiB3ZSBjYW4gbWFrZSBzaW5rIGdl
bmVyYXRlCj4gdGhlIGNvcnJlY3Qgc2FtcGxlcmF0ZSwgdGhlbiB3ZSBjYW4gc2F5IHRob3NlIGRp
c3BsYXkgcmVzb2x1dGlvbnMgd2l0aAo+IHRoaXMgcGl4ZWxjbG9jayBjb3VsZCBzdXBwb3J0IGF1
ZGlvIHBsYXkuCj4gCj4gVGhlIGV4YWN0IHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHRoZSB0d28gY2xv
Y2tzIHdpbGwgYmU6Cj4gCTEyOCAqIFNhbXBsZVJhdGUgPSBUbWRzQ2xvY2sgKiBOIC8gQ1RTLgo+
IFNvIHRoaXMgcGF0Y2ggd291bGQgZ2VuZXJhdGUgdGhlIGNvcnJlY3QgTi9DVFMgdmFsdWVzLCBh
ZGQgYXVkaW8gc3VwcG9ydAo+IGZvciB0aGUgYmVsb3cgIHRtZHMgY2xvY2tzOgo+IDI1LjE3NU1I
eiwgNDBNSHosIDU0TUh6LCA2NU1IeiwgNzQuMjVNSHosIDgzLjVNSHosIDEwNi41TUh6LCAxMDhN
aHoKCkkgdGhpbmsgSSd2ZSBzYWlkIHRoaXMgYmVmb3JlLiAgVGhlIGRvY3VtZW50YXRpb24gZm9y
IGlNWDYgKHdoaWNoIGlzCmZyZWVseSBhdmFpbGFibGUsIHVubGlrZSBSb2NrLWNoaXBzIGRvY3Vt
ZW50YXRpb24sIHNvIHlvdSBjYW4gbG9vayBhdAppdCB5b3Vyc2VsZikgc3BlY2lmaWVzIHRoYXQg
b25seSBjZXJ0YWluIGF1ZGlvIGFuZCB2aWRlbyByYXRlcyBhcmUKc3VwcG9ydGVkLiAgU2VlIHRo
ZSBpTVg2IG1hbnVhbHMsIHRoZSBzZWN0aW9uIG9uIHRoZSBIRE1JIFR4LCBzdWItCnNlY3Rpb24g
IkNUUyBjYWxjdWxhdGlvbiIuCgpJdCBjbGVhcmx5IHN0YXRlcyB0aGF0IHZhbHVlcyB3aGljaCBk
byBub3QgYXBwZWFyIGluIHRoZSB0YWJsZSB0aGVyZQphcmUgIm5vdCBzdXBwb3J0ZWQiLgoKQWRk
aW5nIG1vcmUgcmF0ZXMgdG8gdGhpcyBjb2RlIHB1dHMgaU1YNiBvdXRzaWRlIG9mIGl0cyBzcGVj
aWZpY2F0aW9uLgoKLS0gCkZUVEMgYnJvYWRiYW5kIGZvciAwLjhtaWxlIGxpbmU6IGN1cnJlbnRs
eSBhdCAxMC41TWJwcyBkb3duIDQwMGticHMgdXAKYWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQu
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRyaS1kZXZl
bCBtYWlsaW5nIGxpc3QKZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==
