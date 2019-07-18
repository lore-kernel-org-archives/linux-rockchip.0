From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 16/18] ram: rk3399: Add rank detection
	support
Date: Thu, 18 Jul 2019 15:00:25 +0530
Message-ID: <CAMty3ZDpxyFjJaBZeUjtjrPkYHs=cFSc8EarbOmvDj2Ri3NHSg@mail.gmail.com>
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-17-jagan@amarulasolutions.com>
 <709f0049-bd4a-d012-b2c7-d1cd75856590@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <709f0049-bd4a-d012-b2c7-d1cd75856590@rock-chips.com>
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
Cc: YouMin Chen <cym@rock-chips.com>, Akash Gajjar <gajjar04akash@gmail.com>, U-Boot-Denx <u-boot@lists.denx.de>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

SGkgS2V2ZXIsCgpPbiBXZWQsIEp1bCAxNywgMjAxOSBhdCA2OjIzIFBNIEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgSmFnYW4sCj4KPiAgICAgIEkn
bSBzdXJlIHRoaXMgcGF0Y2ggaGF2ZSBzb21lIHByb2JsZW0gd2l0aCBldmItcmszMzk5LCB3aGlj
aCBJCj4gdGhpbmsgbWFrZSB0aGUgZGRyIG5vdCBpbml0IGNvcnJlY3RseSBhbmQgZXJyb3IgaGFw
cGVuIGluIEFURi4KCldvdWxkIHlvdSBoZWxwIHRvIHNoYXJlIHRoZSBsb2cgZm9yIHRoaXMuIEkg
bWFkZSB0ZXN0IG9uIE5hbm9waS1tNAp3aGljaCBoYXMgc2FtZSBkZHIgdHlwZSBhcyBldmIsIExQ
RERSMyBhbmQgaXQgYm9vdGVkIGZpbmUgd2l0aAptYWlubGluZSBBVEYgKHdpdGggUExBVD1yazMz
OTkgYmwzMSkuIEJlbG93IGlzIHRoZSBsb2cgZGV0YWlscy4KClUtQm9vdCBUUEwgMjAxOS4wNy0w
MDE0NS1nY2I1NzU2ZDllMi1kaXJ0eSAoSnVsIDE4IDIwMTkgLSAxNDo1NToyMykKQ2hhbm5lbCAw
OiBMUEREUjMsIDkzM01IegpCVz0zMiBDb2w9MTAgQms9OCBDUzAgUm93PTE1IENTMSBSb3c9MTUg
Q1M9MiBEaWUgQlc9MzIgU2l6ZT0yMDQ4TUIKQ2hhbm5lbCAxOiBMUEREUjMsIDkzM01IegpCVz0z
MiBDb2w9MTAgQms9OCBDUzAgUm93PTE1IENTMSBSb3c9MTUgQ1M9MiBEaWUgQlc9MzIgU2l6ZT0y
MDQ4TUIKMjU2QiBzdHJpZGUKVHJ5aW5nIHRvIGJvb3QgZnJvbSBCT09UUk9NClJldHVybmluZyB0
byBib290IFJPTS4uLgoKVS1Cb290IFNQTCAyMDE5LjA3LTAwMTQ1LWdjYjU3NTZkOWUyLWRpcnR5
IChKdWwgMTggMjAxOSAtIDE0OjU1OjIzICswNTMwKQpUcnlpbmcgdG8gYm9vdCBmcm9tIE1NQzEK
CgpVLUJvb3QgMjAxOS4wNy0wMDE0NS1nY2I1NzU2ZDllMi1kaXJ0eSAoSnVsIDE4IDIwMTkgLSAx
NDo1NToyMyArMDUzMCkKCk1vZGVsOiBGcmllbmRseUVsZWMgTmFub1BpIE00CkRSQU06ICAzLjkg
R2lCCk1NQzogICBkd21tY0BmZTMxMDAwMDogMiwgZHdtbWNAZmUzMjAwMDA6IDEsIHNkaGNpQGZl
MzMwMDAwOiAwCkxvYWRpbmcgRW52aXJvbm1lbnQgZnJvbSBNTUMuLi4gKioqIFdhcm5pbmcgLSBi
YWQgQ1JDLCB1c2luZyBkZWZhdWx0IGVudmlyb25tZW50CgpJbjogICAgc2VyaWFsQGZmMWEwMDAw
Ck91dDogICBzZXJpYWxAZmYxYTAwMDAKRXJyOiAgIHNlcmlhbEBmZjFhMDAwMApNb2RlbDogRnJp
ZW5kbHlFbGVjIE5hbm9QaSBNNAoKTGV0IG1lIGtub3cgaWYgaGF2ZSBhbnl0aGluZyB0byBhZGQ/
CgpKYWdhbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VS1Cb290IG1haWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRl
bnguZGUvbGlzdGluZm8vdS1ib290Cg==
