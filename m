From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH] drm/rockchip: vop: make vop register setting take effect
Date: Tue, 17 Jan 2017 18:32:44 +0900
Message-ID: <CAAFQd5CP8ERvJzchZo0=5gvuUuP+EBiyfhKDkgRYBa8iQYW0Kw@mail.gmail.com>
References: <1472269178-16593-1-git-send-email-zyw@rock-chips.com>
 <57C3A341.9030302@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <57C3A341.9030302@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Mark yao <mark.yao@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, =?UTF-8?B?5aea5pm65oOF?= <yzq@rock-chips.com>, briannorris@chromium.org, Douglas Anderson <dianders@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>, Chris Zhong <zyw@rock-chips.com>, =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

SGkgTWFyaywKCk9uIE1vbiwgQXVnIDI5LCAyMDE2IGF0IDExOjUxIEFNLCBNYXJrIHlhbyA8bWFy
ay55YW9Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+IE9uIDIwMTblubQwOOaciDI35pelIDExOjM5
LCBDaHJpcyBaaG9uZyB3cm90ZToKPj4KPj4gVGhlIHNldHRpbmcgb2Ygdm9wIHJlZ2lzdGVycyBu
ZWVkIGEgcmVnX2RvbmUgd3JpdGluZyB0byB0YWtlIGVmZmVjdC4KPj4gSW4gdm9wX2VuYWJsZSB0
aGUgdm9wIHJldHVybiB0byB3b3JrIGJ5IGJ5IHJlc3RvcmluZyByZWdpc3RlcnMsIGJ1dCB0aGUK
Pj4gcmVnaXN0ZXJzIGRvIG5vdCB0YWtlIGVmZmVjdCBpbW1lZGlhdGVseSwgaXQgc2hvdWxkIGEg
dm9wX2NmZ19kb25lCj4+IGFmdGVyIGl0LiBUaGUgc2FtZSB0aGluZyBpcyBuZWVkZWQgYnkgd2lu
ZG93c19kaXNhYmxlZCBpbgo+PiB2b3BfY3J0Y19kaXNhYmxlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBaaG9uZyA8enl3QHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIHwgNCArKysrCj4+ICAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gVGhhbmtzIGZvciB5b3VyIGZpeC4KPgo+IGFwcGxp
ZWQgdG8gbXkgZHJtLWZpeGVzLgoKVGhpcyBwYXRjaCBzZWVtcyB0byBoYXZlIGJlZW4gbG9zdCBp
biBhY3Rpb24uIEkgZG9uJ3Qgc2VlIGl0IGluIGxpbnV4LW5leHQuCgpCZXN0IHJlZ2FyZHMsClRv
bWFzegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
