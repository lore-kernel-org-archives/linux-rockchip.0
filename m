From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 0/6] rockchip: rk3399: Make u-boot.itb as
	BUILD_TARGET
Date: Tue, 18 Jun 2019 15:09:58 +0800
Message-ID: <853f6ec1-a818-ae69-35b5-ef36fadc9ca1@rock-chips.com>
References: <20190507185215.15441-1-jagan@amarulasolutions.com>
 <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZB4KBKnrhxSG2EsQDg1fAaEDQ_T1swVnZiaKcbtkKc=OA@mail.gmail.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>
List-Id: linux-rockchip.vger.kernel.org

SGkgSmFnYW4sCgoKT24gMDYvMTMvMjAxOSAwMjo1MyBQTSwgSmFnYW4gVGVraSB3cm90ZToKPiBI
aSBLZXZlciwKPgo+IE9uIFdlZCwgTWF5IDgsIDIwMTkgYXQgMTI6MjMgQU0gSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+PiBSSzMzOTkgVFBMIGNoYW5nZXMg
YXJlIG1lcmdlZCByZWNlbnRseSB3aGljaCBJIHdhcyB0aGlua2luZwo+PiBvZiB3YWl0aW5nIGZv
ciBuZXh0IE1XLiBzbyB0aGlzIHNlcmllcyBza2lwIGJpbm1hbiBjaGFuZ2VzCj4+IGZyb20gcHJl
dmlvdXMgdmVyc2lvblsxXSBhbmQgaGF2ZSBvbmx5IEJVSUxEX1RBUkdFVCBjaGFuZ2VzLgo+Pgo+
PiBCSU5NQU4gY2hhbmdlcyB3b3VsZCBuZWVkIGFub3RoZXIgcmV3b3JrLCB3aGVyZSB3ZSBuZWVk
IHRvIGNvbnNpZGVyCj4+IHRoZSBUUEwgaW1hZ2UgYXMgd2VsbCBhbmQgdGhhdCB3b3VsZCBzZW5k
IHNlcGFyYXRlbHkuCj4+Cj4+IENIYW5nZXMgZm9yIHYzOgo+PiAtIHNraXAgYmlubWFuIGNoYW5n
ZXMKPj4gLSByZWJhc2Ugb24gdS1ib290LXJvY2tjaGlwL21hc3Rlcgo+Pgo+PiBbMV0gaHR0cHM6
Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9jb3Zlci8xMDkyMTk4Lwo+Pgo+PiBKYWdhbiBUZWtpICg2
KToKPj4gICBNYWtlZmlsZTogY2xlYW4gaW1hZ2UubWFwCj4+ICAgTWFrZWZpbGU6IGNsZWFuIGJs
MzFfKi5iaW4KPj4gICB0cmF2aXMueW1sOiBBZGQgcHllbGZ0b29scyBpbnN0YWxsIGVudHJ5Cj4+
ICAgcm9ja2NoaXA6IHJrMzM5OTogR2V0IGJsMzEuZWxmIHZpYSBCTDMxCj4+ICAgYm9hcmQ6IHB1
bWE6IEdldCBibDMxLmJpbiB2aWEgQkwzMSBhbmQgcmszMzk5bTAuYmluIHZpYSBQTVVNMAo+PiAg
IEtjb25maWc6IEFkZCB1LWJvb3QuaXRiIEJVSUxEX1RBUkdFVCBmb3IgUm9ja2NoaXAKPiBJIHRo
aW5rIHlvdSBob2xkIGZvciB0aGlzIHdpdGggcHVtYSBjaGFuZ2VzPyBhbnkgZnVydGhlciBjb21t
ZW50cwo+IHBsZWFzZSBsZXQgbWUga25vdy4KPgoKWWVzLCBvbmUgcmVhc29uIGlzIG5vdCBnZXQg
cmVzcG9uc2UgZnJvbSBwdW1hIGJvYXJkLgpBbmQgSSB0aGluayB0aGlzIGRvZXMgbm90IGJyZWFr
IHRoZSBib2FyZCBzdXBwb3J0IGJ1dCBtYXliZQpicmVhayB0aGUgYnVpbGQgcHJvY2VzcyBpZiBu
b3QgYWxsIHRoZSBlbnZpcm9ubWVudCBoYXMgZXhwb3J0IGFzIGV4cGVjdGVkPwoKVGhhbmtzLAot
IEtldmVyCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VS1Cb290IG1haWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRl
bnguZGUvbGlzdGluZm8vdS1ib290Cg==
