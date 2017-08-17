From: Kever Yang <kever.yang@rock-chips.com>
Subject: [PATCH v2 0/5] rockchip: rk3229: add sdram and sd support
Date: Thu, 17 Aug 2017 15:17:32 +0800
Message-ID: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: heiko@sntech.de
Cc: Albert Aribaud <albert.u.boot@aribaud.net>, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

CkFkZCBzZHJhbSBkcml2ZXIgZm9yIHJrMzIyOSBhbmQgb3RoZXIgZml4IGxpa2UgcGluY3RybCBh
bmQgc2Qgbm9kZS4KCgpDaGFuZ2VzIGluIHYyOgotIHNwbGl0IHRoaXMgcGF0Y2ggaW4gdHdvIHBh
dGNoZXMKCktldmVyIFlhbmcgKDUpOgogIHJvY2tjaGlwOiByazMyMng6IHVwZGF0ZSBkcmFtIGJh
bmsgc2l6ZQogIHJvY2tjaGlwOiByazMyMng6IGFkZCBzZHJhbSBkcml2ZXIKICByb2NrY2hpcDog
cmszMjJ4OiBwaW5jdHJsOiB1c2luZyBjb21wYXRpYmxlIG5hbWUgc2FtZSB3aXRoIGR0cwogIHJv
Y2tjaGlwOiByazMyMng6IHBpbmN0cmw6IGZpeCBJTyBNQVNLIGVycm9yIG9uIHNkY2FyZCBwaW4K
ICByb2NrY2hpcDogZHRzOiByazMyMjk6IHJlbW92ZSBkcmFtIGNoYW5uZWwgaW5mbwoKIGFyY2gv
YXJtL2R0cy9yazMyMjktZXZiLmR0cyAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgLQogYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMyMnguaCB8IDU4MSArKysr
KysrKysrKysrKysKIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjJ4LWJvYXJkLmMgICAgICAg
ICAgICAgfCAgMTAgKy0KIGFyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjJ4L01ha2VmaWxlICAg
ICAgICAgICAgfCAgIDEgKwogYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyMngvc2RyYW1fcmsz
MjJ4LmMgICAgICB8IDg1NSArKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3BpbmN0cmwv
cm9ja2NoaXAvcGluY3RybF9yazMyMnguYyAgICAgICAgIHwgICA4ICstCiA2IGZpbGVzIGNoYW5n
ZWQsIDE0NDcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzIyeC5oCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyMngvc2RyYW1fcmszMjJ4
LmMKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVS1Cb290IG1haWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xp
c3RzLmRlbnguZGUvbGlzdGluZm8vdS1ib290Cg==
