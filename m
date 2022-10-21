Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D6B2C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 19:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y15is1pxgzSTet8MU2kRAnMepB0SYbg4cHbLhnMMyyk=; b=wBgHXW5yCqhJSf
	eqzSwUZGFLeM83Q5yCBFf+sWx2eoHML9iZ/r0oIP8iVY6ePDjQJs7HwuFdpsDoOLU8nX9qN7tdPYq
	mN6K/86FBXhPvdTLxKjEul+zrrjKCYSQmRI8OYk6SA+u0guk8qZ6sAITIylVx3B686A0s8WKiQfVr
	aVWpbLHR4QihrI7sSGBUzz2u1NOXI7122BuhZp5KuFhHlyZR4TUjOyz07r2fxLbUWJ2SpBa8UBHHB
	DrKqdUdmOR8twMKl+therxRhbGoqDo6isB7dJ8NgkBYJywpENIfP3YPT6vpTaHgpandPjrPbr9otF
	JEjry1UKIvJl69LNveSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxlR-009ZrU-Vb; Fri, 21 Oct 2022 19:33:05 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxlG-009ZoB-Ex; Fri, 21 Oct 2022 19:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1666380768; bh=iOjw4y7HyVQfS/8t6MNRacekJ0y7x8kJRV6uNTkBJP0=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=skRno2TLIS5tzhoN0iDFf8oexHduUUk8zEsykGbBsArZyzIUvFLy9zHy2T8EQySCa
	 YDZPX/DVV9wdf0FupcqvLZkw/h37sXIuU+VD7n0yqvMtbC206xPnsZWdDUQPltBPYn
	 ePHp0WY+OB8R+YynJQrr+atNQtYJlQM+2a0D/Vk8=
Date: Fri, 21 Oct 2022 21:32:48 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
Message-ID: <20221021193248.2he6amnj7knk4biu@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221005085439.740992-1-megi@xff.cz>
 <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core>
 <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
 <20221021153913.l5ry6v4mcnzcmj2v@core>
 <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_123255_032617_F4144558 
X-CRM114-Status: GOOD (  22.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMjEsIDIwMjIgYXQgMTI6NDg6MTVQTSAtMDQwMCwgUGV0ZXIgR2VpcyB3cm90
ZToKPiBPbiBGcmksIE9jdCAyMSwgMjAyMiBhdCAxMTozOSBBTSBPbmTFmWVqIEppcm1hbiA8bWVn
aUB4ZmYuY3o+IHdyb3RlOgo+ID4KPiA+IE9uIEZyaSwgT2N0IDIxLCAyMDIyIGF0IDA5OjA3OjUw
QU0gLTA0MDAsIFBldGVyIEdlaXMgd3JvdGU6Cj4gPiA+IEdvb2QgTW9ybmluZyBIZWlrbywKPiA+
ID4KPiA+ID4gQXBvbG9naWVzIGZvciBqdXN0IGdldHRpbmcgdG8gdGhpcywgSSdtIHN0aWxsIGlu
IHRoZSBtaWRkbGUgb2YgbW92aW5nCj4gPiA+IGFuZCBqdXN0IGdvdCBteSBsYWIgc2V0IGJhY2sg
dXAuCj4gPiA+Cj4gPiA+IEkndmUgdGVzdGVkIHRoaXMgcGF0Y2ggc2VyaWVzIGFuZCBpdCBsZWFk
cyB0byB0aGUgc2FtZSByZWdyZXNzaW9uIHdpdGgKPiA+ID4gTlZNZSBkcml2ZXMuIEEgbG9vcCBv
ZiBtZDVzdW0gb24gdHdvIGlkZW50aWNhbCA0R0IgcmFuZG9tIGZpbGVzCj4gPiA+IHByb2R1Y2Vz
IHRoZSBmb2xsb3dpbmcgcmVzdWx0czoKPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJl
ZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4gZmFkOTdlOTFkYThkNGZkNTU0Yzg5NWNhZmE4OTgw
OWIgIHRlc3QtcmFuZDIuaW1nCj4gPiA+IDJkNTZhN2JhYTA1YzM4NTM1ZjRjMTlhMmIzNzFmOTBh
ICB0ZXN0LXJhbmQuaW1nCj4gPiA+IDc0ZThlNmY5M2Q3YzNkYzNhZDI1MGU5MTE3NmY1OTAxICB0
ZXN0LXJhbmQyLmltZwo+ID4gPiAyNWNmY2ZlY2Y0ZGQ1MjllNGU5ZmJiZTJiZTQ4MjA1MyAgdGVz
dC1yYW5kLmltZwo+ID4gPiA3NGU4ZTZmOTNkN2MzZGMzYWQyNTBlOTExNzZmNTkwMSAgdGVzdC1y
YW5kMi5pbWcKPiA+ID4gYjk2Mzc1MDViZjg4ZWQ3MjVmNmQwM2RlYjcwNjVkYWIgIHRlc3QtcmFu
ZC5pbWcKPiA+ID4gZjc0MzdlODhkNTI0ZWE5MmUwOTdkYjUxZGNlMWM2MGQgIHRlc3QtcmFuZDIu
aW1nCj4gPiA+Cj4gPiA+IEJlZm9yZSB0aGlzIHBhdGNoIHNlcmllczoKPiA+ID4gZDExY2YwY2Fh
NTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4gZDExY2YwY2FhNTQx
YjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZDIuaW1nCj4gPiA+IGQxMWNmMGNhYTU0MWI3
MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQuaW1nCj4gPiA+IGQxMWNmMGNhYTU0MWI3MjU1
MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQyLmltZwo+ID4gPiBkMTFjZjBjYWE1NDFiNzI1NTFj
YTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kLmltZwo+ID4gPiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIy
ZGM1YmVmMmRlMCAgdGVzdC1yYW5kMi5pbWcKPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRj
NWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJl
ZjJkZTAgIHRlc3QtcmFuZDIuaW1nCj4gPiA+Cj4gPiA+IFRob3VnaCBJIGRvIGxvdmUgd2hlcmUg
dGhpcyBwYXRjaCBpcyBnb2luZyBhbmQgd291bGQgbGlrZSB0byBzZWUgaWYgaXQKPiA+ID4gY2Fu
IGJlIG1hZGUgdG8gd29yaywgaW4gaXRzIGN1cnJlbnQgZm9ybSBpdCBkb2VzIG5vdC4KPiA+Cj4g
PiBUaGFua3MgZm9yIHRoZSB0ZXN0LiBDYW4geW91IHBsZWFzZSBhbHNvIHRlc3QgdjE/IEFsc28g
cGxlYXNlIHNoYXJlIGxzcGNpIC12dnYKPiA+IG9mIHlvdXIgbnZtZSBkcml2ZSwgc28gdGhhdCB3
ZSBjYW4gc2VlIGFsbG9jYXRlZCBhZGRyZXNzIHJhbmdlcywgZXRjLgo+IAo+IEdvb2QgY2F0Y2gs
IHdpdGggeW91ciBwYXRjaCBhcyBpcywgdGhlIGZvbGxvd2luZyBpc3N1ZSBjcm9wcyB1cDoKPiBS
ZWdpb24gMDogTWVtb3J5IGF0IDMwMDAwMDAwMCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBb
c2l6ZT0xNktdCj4gUmVnaW9uIDI6IEkvTyBwb3J0cyBhdCAxMDAwIFtkaXNhYmxlZF0gW3NpemU9
MjU2XQo+IAo+IEhvd2V2ZXIsIHdpdGggYSBzaW1wbGUgZml4LCB3ZSBjYW4gZ2V0IHRoaXM6Cj4g
UmVnaW9uIDA6IE1lbW9yeSBhdCAzMDAwMDAwMDAgKDY0LWJpdCwgbm9uLXByZWZldGNoYWJsZSkg
W3ZpcnR1YWxdIFtzaXplPTE2S10KPiBSZWdpb24gMjogSS9PIHBvcnRzIGF0IDEwMDAgW3ZpcnR1
YWxdIFtzaXplPTI1Nl0KPiAKPiBhbmQgd2l0aCBpdCBhIHdvcmtpbmcgTlZNZSBkcml2ZS4KPiAK
PiBDaGFuZ2UgdGhlIGZvbGxvd2luZyByYW5nZToKPiAweDAyMDAwMDAwIDB4MCAweDQwMDAwMDAw
IDB4MyAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPiB0bwo+IDB4MDIwMDAwMDAgMHgwIDB4
MDAwMDAwMDAgMHgzIDB4MDAwMDAwMDAgMHgwIDB4NDAwMDAwMDA+OwoKSSd2ZSBhbHJlYWR5IHRy
aWVkIHRoaXMsIGJ1dCB0aGlzIHVuZnJvdHVuYXRlbHkgYnJlYWtzIHRoZSB3aWZpIGNhcmRzLgoo
dGhvc2Ugb25seSB1c2UgdGhlIEkvTyBzcGFjZSkgTWF5YmUgYmVjYXVzZSBJL08gYW5kIG1lbW9y
eSBhZGRyZXNzIHNwYWNlcwpub3cgb3ZlcmxhcCwgSSBkb24ndCBrbm93LiBUaGF0J3Mgd2h5IEkg
dXNlZCB0aGUgMUdpQiBvZmZzZXQgZm9yIG1lbW9yeQpzcGFjZS4KCmtpbmQgcmVnYXJkcywKCW8u
Cgo+IEkgc3RpbGwgaGF2ZW4ndCB0ZXN0ZWQgdGhpcyB3aXRoIG90aGVyIGNhcmRzIHlldCwgYW5k
IGFub3RoZXIgcGF0Y2gKPiB0aGF0IGRvZXMgc2ltaWxhciB3b3JrIEkndmUgdGVzdGVkIHN1Y2Nl
c3NmdWxseSBhcyB3ZWxsIHdpdGggTlZNZQo+IGRyaXZlcy4gSSdsbCBoYXZlIHRvIGdldCBiYWNr
IHRvIHlvdSBvbiB0aGUgcmVzdWx0cyBvZiBncmVhdGVyCj4gdGVzdGluZy4KPiAKPiBWZXJ5IFJl
c3BlY3RmdWxseSwKPiBQZXRlciBHZWlzCj4gCj4gPgo+ID4ga2luZCByZWdhcmRzLAo+ID4gICAg
ICAgICBvLgo+ID4KPiA+ID4gVmVyeSBSZXNwZWN0ZnVsbHksCj4gPiA+IFBldGVyIEdlaXMKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
