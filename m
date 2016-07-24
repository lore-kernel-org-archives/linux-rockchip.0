From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v3 2/7] clk: rockchip: add new clock-type for the ddrclk
Date: Sun, 24 Jul 2016 11:09:02 +0200
Message-ID: <1619904.zXvqDRdkgD@diego>
References: <1469178440-4668-1-git-send-email-hl@rock-chips.com>
 <1469178440-4668-3-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1469178440-4668-3-git-send-email-hl@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Lin Huang <hl@rock-chips.com>
Cc: tixy@linaro.org, typ@rock-chips.com, linux-rockchip@lists.infradead.org, mturquette@baylibre.com, dbasehore@chromium.org, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, xsf@rock-chips.com, cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

QW0gRnJlaXRhZywgMjIuIEp1bGkgMjAxNiwgMTc6MDc6MTUgc2NocmllYiBMaW4gSHVhbmc6Cj4g
QEAgLTQ4OCw2ICs0OTYsMjUgQEAgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggewo+ICAJCS5j
aGlsZAkJPSBjaCwJCQkJXAo+ICAJfQo+IAo+ICsjZGVmaW5lIENPTVBPU0lURV9ERFJDKF9pZCwg
Y25hbWUsIHBuYW1lcywgZiwgbW8sIG1zLCBtdywgbWYsCVwKPiArCQkJIGRzLCBkdywgZGYpCQkJ
CVwKPiArCXsJCQkJCQkJXAo+ICsJCS5pZAkJPSBfaWQsCQkJCVwKPiArCQkuYnJhbmNoX3R5cGUJ
PSBicmFuY2hfZGRyYywJCQlcCj4gKwkJLm5hbWUJCT0gY25hbWUsCQkJXAo+ICsJCS5wYXJlbnRf
bmFtZXMJPSBwbmFtZXMsCQkJXAo+ICsJCS5udW1fcGFyZW50cwk9IEFSUkFZX1NJWkUocG5hbWVz
KSwJCVwKPiArCQkuZmxhZ3MJCT0gZiwJCQkJXAo+ICsJCS5tdXhkaXZfb2Zmc2V0CT0gbW8sCQkJ
CVwKPiArCQkubXV4X3NoaWZ0CT0gbXMsCQkJCVwKPiArCQkubXV4X3dpZHRoCT0gbXcsCQkJCVwK
PiArCQkubXV4X2ZsYWdzCT0gbWYsCQkJCVwKPiArCQkuZGl2X3NoaWZ0CT0gZHMsCQkJCVwKPiAr
CQkuZGl2X3dpZHRoCT0gZHcsCQkJCVwKPiArCQkuZGl2X2ZsYWdzCT0gZGYsCQkJCVwKPiArCQku
Z2F0ZV9vZmZzZXQJPSAtMSwJCQkJXAo+ICsJfQo+ICsKCnRoZSBtdXggYW5kIGRpdi1mbGFncyBh
cmUgbm90IHVzZWQgaW4geW91ciBjbG9jayB0eXBlLiBJbnN0ZWFkIEkgdGhpbmsgd2UgY291bGQg
CmdvIGEgc2ltaWxhciB3YXkgYXMgdGhlIGludmVydGVyLXR5cGUsIGhhdmluZyBvbmUgZmxhZyB0
eXBlLCB3aGljaCBjb3VsZCBmb3IgCmV4YW1wbGUgZW5jb2RlIHRoZSBpbnRlcmZhY2UgdHlwZSBS
T0NLQ0hJUF9ERFJDTEtfU0lQLCBldGMuCgpCZWNhdXNlIHJpZ2h0IG5vdyB0aGVyZSBleGlzdCAz
IHR5cGVzIG9uIGhvdyB0byBzZXQgdGhlIGRkciBjbGssIFNJUCwgYW4gU0NQSS0KdmFyaWFudCBh
bmQgdGhyb3VnaCBjb2RlIGluIFNSQU0gKHJrMzI4OCksIHdoaWxlIHRoZSBjb3JlIGNsb2NrIHR5
cGUgb24gdGhlIApzaWRlIG9mIHRoZSBDUlUgaXMgcHJldHR5IG11Y2ggdGhlIHNhbWUuCgpBbmQg
d2hpbGUgaXQgaXMgZGVmaW5pdGx5IG5vdCBuZWNlc3NhcnkgdG8gZG8gdGhhdCBub3csIEkgdGhp
bmsgdGhlIGRkcmNsay10eXBlIApjYW4gaG9sZCB0aGUgb3RoZXIgaW50ZXJmYWNlcyBhcyB3ZWxs
IGluIHRoZSBmdXR1cmUuCgoKSGVpa28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZHJpLWRldmVsIG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpLWRldmVsCg==
