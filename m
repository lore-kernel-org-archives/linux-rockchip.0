From: "Dr. Philipp Tomsich" <philipp.tomsich@theobroma-systems.com>
Subject: Re: [PATCH v2 0/5] rockchip: rk3229: add sdram and sd
	support
Date: Thu, 17 Aug 2017 10:34:26 +0200
Message-ID: <F4797E3B-C3F2-48FE-BE4F-D6219E12C63F@theobroma-systems.com>
References: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Albert Aribaud <albert.u.boot@aribaud.net>, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Cj4gT24gMTcgQXVnIDIwMTcsIGF0IDA5OjE3LCBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPiAKPiAKPiBBZGQgc2RyYW0gZHJpdmVyIGZvciByazMyMjkgYW5k
IG90aGVyIGZpeCBsaWtlIHBpbmN0cmwgYW5kIHNkIG5vZGUuCj4gCj4gCj4gQ2hhbmdlcyBpbiB2
MjoKPiAtIHNwbGl0IHRoaXMgcGF0Y2ggaW4gdHdvIHBhdGNoZXMKPiAKPiBLZXZlciBZYW5nICg1
KToKPiAgcm9ja2NoaXA6IHJrMzIyeDogdXBkYXRlIGRyYW0gYmFuayBzaXplCj4gIHJvY2tjaGlw
OiByazMyMng6IGFkZCBzZHJhbSBkcml2ZXIKPiAgcm9ja2NoaXA6IHJrMzIyeDogcGluY3RybDog
dXNpbmcgY29tcGF0aWJsZSBuYW1lIHNhbWUgd2l0aCBkdHMKPiAgcm9ja2NoaXA6IHJrMzIyeDog
cGluY3RybDogZml4IElPIE1BU0sgZXJyb3Igb24gc2RjYXJkIHBpbgo+ICByb2NrY2hpcDogZHRz
OiByazMyMjk6IHJlbW92ZSBkcmFtIGNoYW5uZWwgaW5mbwo+IAo+IGFyY2gvYXJtL2R0cy9yazMy
MjktZXZiLmR0cyAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgLQo+IGFyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMjJ4LmggfCA1ODEgKysrKysrKysrKysrKysr
Cj4gYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyMngtYm9hcmQuYyAgICAgICAgICAgICB8ICAx
MCArLQo+IGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjJ4L01ha2VmaWxlICAgICAgICAgICAg
fCAgIDEgKwo+IGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjJ4L3NkcmFtX3JrMzIyeC5jICAg
ICAgfCA4NTUgKysrKysrKysrKysrKysrKysrKysrKwoKRGV2aWNlLW1vZGVsIERSQU0gY29udHJv
bGxlciBkcml2ZXJzIHNob3VsZCBnZW5lcmFsbHkgZ28gdG8gZHJpdmVycy9yYW07IHRoZXJl4oCZ
cwphbHJlYWR5IGEgc3ViZGlyZWN0b3J5IGZvciB0aGUgUm9ja2NoaXAtc3BlY2lmaWMgZHJpdmVy
cyBjcmVhdGVkIHRoZXJlLgoKPiBkcml2ZXJzL3BpbmN0cmwvcm9ja2NoaXAvcGluY3RybF9yazMy
MnguYyAgICAgICAgIHwgICA4ICstCj4gNiBmaWxlcyBjaGFuZ2VkLCAxNDQ3IGluc2VydGlvbnMo
KyksIDkgZGVsZXRpb25zKC0pCj4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2luY2x1ZGUv
YXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMjJ4LmgKPiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyMngvc2RyYW1fcmszMjJ4LmMKPiAKPiAtLSAKPiAxLjku
MQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1C
b290IG1haWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbngu
ZGUvbGlzdGluZm8vdS1ib290Cg==
