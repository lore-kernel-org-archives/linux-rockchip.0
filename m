Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E92DC19F2D
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Aug 2022 09:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=onKJ7oSH2OW3mgAIr9Gma7hbaHyu5ZuaSTlMCL925js=; b=3NDgu9fmh/ZOh9
	uZ6SUSQyqgNHgtgFXVGlh0qoPpEp4uyMmj9YfA24PCCciN37FFyx6eowmpsvomKAED5cv99RW1P/G
	v0gDEfdEtwtQUx4fmK+FbNMtYBLL3Im96RIyfh6I7nSSvtbGUhCwWw0gytVZiwyIQoL8gucaYkS63
	EgrO8aP7V6dc5mpItuifUAsI+tOhKG0YEw0Uf01qMNt457aShA+sVPfsu6KlyEcLlpthp7YpBFJLx
	dV1CuP0t20VhDVB0qHTXMxz6B2pqe/bwsO798wDc6kz7hcjhfCx8kI/p/HW/JkH/E9gd7yB6JnP1E
	UFr+fxy5x5YhwBCxwAQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJXU6-004ybc-6m; Thu, 04 Aug 2022 09:49:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJXTu-004yVx-ET; Thu, 04 Aug 2022 09:49:32 +0000
Received: by mail-wr1-x433.google.com with SMTP id j15so16512073wrr.2;
        Thu, 04 Aug 2022 02:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=jf6rQzWg9XKx/4I7TLqmE7aH4TSjEP5xXPJunNqSOyo=;
        b=YyR4TFTALZdOKf6UBX8SDF3Px8qtx8DUe449U0on/FHPvOlKR1mppH2M9R6o+HMU1B
         HJEczZ3Iu4kE3jpHQeHLzJU+bICJBzgAttQumRjJUyPX2GaxoL06yhk3BhRVPHLtGUSg
         D1xyeqHYcbGD+ql7RlmL/2dLdga1eObVFrptcCGh2inU+35g6etgkYF5aODPwUv4eGWY
         fYwL9vRyjZniZPyUpPKatwZbBztduliAAFP9HakU5ZT072lQ54FygCEQlfmFkxs0FqiM
         iQCIwM3/s7DBk1w29IvcTAowkYYVXg9PUZqQb4Zm86BeQkmoC47wMKpFHyiOMcyBc4KJ
         cPHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=jf6rQzWg9XKx/4I7TLqmE7aH4TSjEP5xXPJunNqSOyo=;
        b=ATe01zgNNm9yXt43OynbprBL+x0ZuceNuu3jn1H4derObJqHXzVkxWCufyvWsCql/G
         wPpFKYWcugmgeAgdNFhS5CZhVTYjL6PyCXX/HTUW/nf/cYYpvT+HI92pFEoQ3iu4h9KG
         gPsPM3YfJEF6fGs37JT4wSnxRBUe76+0ntpMLbRX8CR5sv632B22jy0ORx8X7oCVj9V1
         4oaoFfvoS/jmG+JBpdzyXK9YurcGcR7z0aJb/ME90WurHIDp/pBUKnlN5dbpJfzM/4JJ
         uzb9Lz+F7dTKgOEzVWF/7u5yWt1xu2rCA/49x/c7JhqCOgOs6OyKfy5TZDe3s23ZC98I
         ZAIg==
X-Gm-Message-State: ACgBeo18aMiD1YUSzas98shlJCRzRyJLxwADiLeJnTu56tDSe6byA7VK
	ph1MUVmDCFDI0kdhRiInKcWwuMv7WxwOnaaGDFn1Cyz9CkgrZ2pq
X-Google-Smtp-Source: AA6agR7xLOWYmPNSQmmTeLo+20pG87QI8F2XC5TJ2AqFstiTtnsMHYG62WaR/6cgnhISHEN3k2q2M0UAJNx+FNhoFpI=
X-Received: by 2002:a5d:410a:0:b0:220:5ff7:3968 with SMTP id
 l10-20020a5d410a000000b002205ff73968mr801540wrp.689.1659606567069; Thu, 04
 Aug 2022 02:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220622003140.30365-1-pgwipeout@gmail.com> <88f2de00-32e3-ed74-082f-c0972a81f0f8@fivetechno.de>
In-Reply-To: <88f2de00-32e3-ed74-082f-c0972a81f0f8@fivetechno.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 4 Aug 2022 11:49:15 +0200
Message-ID: <CAMdYzYoTLjRW1FgwfizUu-+k0R4tCO78qYa7MEpgfz99aj3SvQ@mail.gmail.com>
Subject: Re: [BUG BISECT] phy: rockchip-inno-usb2: Sync initial otg state
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_024930_513123_EC69D813 
X-CRM114-Status: GOOD (  20.60  )
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

T24gVHVlLCBBdWcgMiwgMjAyMiBhdCAyOjM5IFBNIE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZp
dmV0ZWNobm8uZGU+IHdyb3RlOgo+Cj4gSGksCj4KPiB3aXRoIGxpbnV4LW5leHQtMjAyMjA3Mjgg
cmszMzk5LXJvYy1wYyBkb2VzIG5vdCBib290Lgo+IEJpc2VjdGluZyBwb2ludGVkIHRvIHRoaXMg
Y29tbWl0Lgo+IEJ5IHJldmVydGluZyB0aGlzIGNvbW1pdCB0aGUgYm9hcmQgYm9vdHMgYWdhaW4u
CgpUaGFuayB5b3UgZm9yIHJlcG9ydGluZyB0aGlzLCBzb21lb25lIHdhcyBraW5kIGVub3VnaCB0
byByZXByb2R1Y2UgdGhlCnByb2JsZW0gb24gdGhlIHJvY2twcm82NCBhbmQgY29uZmlybWVkIHRo
aXMgaXMgYW4gaXNzdWUuIEFzIEkgd29uJ3QKaGF2ZSBhY2Nlc3MgdG8gbXkgaGFyZHdhcmUgdW50
aWwgbmV4dCBtb250aCwgd2Ugc2hvdWxkIHByb2JhYmx5IHJldmVydAp0aGlzIHVudGlsIHRoZSBy
b290IGNhdXNlIGNhbiBiZSBpZGVudGlmaWVkLgoKVmVyeSBSZXNwZWN0ZnVsbHksClBldGVyIEdl
aXMKCj4KPiBbICAgIDIuMzk4NzAwXSBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2UgYXQgdmlydHVhbCBhZGRyZXNzCj4gMDAwMDAwMDAwMDAwMDAwOAo+IFsg
ICAgMi4zOTk1MTddIE1lbSBhYm9ydCBpbmZvOgo+IFsgICAgMi4zOTk3NzJdICAgRVNSID0gMHgw
MDAwMDAwMDk2MDAwMDA0Cj4gWyAgICAyLjQwMDExNF0gICBFQyA9IDB4MjU6IERBQlQgKGN1cnJl
bnQgRUwpLCBJTCA9IDMyIGJpdHMKPiBbICAgIDIuNDAwNTk0XSAgIFNFVCA9IDAsIEZuViA9IDAK
PiBbICAgIDIuNDAwODczXSAgIEVBID0gMCwgUzFQVFcgPSAwCj4gWyAgICAyLjQwMTE2MV0gICBG
U0MgPSAweDA0OiBsZXZlbCAwIHRyYW5zbGF0aW9uIGZhdWx0Cj4gWyAgICAyLjQwMTYwMl0gRGF0
YSBhYm9ydCBpbmZvOgo+IFsgICAgMi40MDE4NjRdICAgSVNWID0gMCwgSVNTID0gMHgwMDAwMDAw
NAo+IFsgICAgMi40MDIyMTJdICAgQ00gPSAwLCBXblIgPSAwCj4gWyAgICAyLjQwMjQ4NF0gdXNl
ciBwZ3RhYmxlOiA0ayBwYWdlcywgNDgtYml0IFZBcywgcGdkcD0wMDAwMDAwMDAxMzc2MDAwCj4g
WyAgICAyLjQwMzA3MV0gWzAwMDAwMDAwMDAwMDAwMDhdIHBnZD0wMDAwMDAwMDAwMDAwMDAwLCBw
NGQ9MDAwMDAwMDAwMDAwMDAwMAo+IFsgICAgMi40MDM2ODddIEludGVybmFsIGVycm9yOiBPb3Bz
OiA5NjAwMDAwNCBbIzFdIFNNUAo+IFsgICAgMi40MDQxMzBdIE1vZHVsZXMgbGlua2VkIGluOiBp
cF90YWJsZXMgeF90YWJsZXMgaXB2NiB4aGNpX3BsYXRfaGNkIHhoY2lfaGNkCj4gZHdjMyByb2Nr
Y2hpcGRybSBkcm1fY21hX2hlbHBlciBhbmFsb2dpeF9kcCBkd19oZG1pIHJlYWx0ZWsgZHJtX2Rp
c3BsYXlfaGVscGVyCj4gZHdjM19vZl9zaW1wbGUgZHdfbWlwaV9kc2kgZWhjaV9wbGF0Zm9ybSBv
aGNpX3BsYXRmb3JtIG9oY2lfaGNkIGVoY2lfaGNkCj4gZHJtX2ttc19oZWxwZXIgZHdtYWNfcmsg
c3lzY29weWFyZWEgc3lzZmlsbHJlY3Qgc3RtbWFjX3BsYXRmb3JtIHN5c2ltZ2JsdAo+IGZiX3N5
c19mb3BzIHVzYmNvcmUgc3RtbWFjIHBjc194cGNzIGRybSBwaHlsaW5rIGRybV9wYW5lbF9vcmll
bnRhdGlvbl9xdWlya3MKPiBbICAgIDIuNDA3MTU1XSBDUFU6IDQgUElEOiA3MSBDb21tOiBrd29y
a2VyLzQ6NiBOb3QgdGFpbnRlZAo+IDUuMTkuMC1yYzgtbmV4dC0yMDIyMDcyOCAjNDM3Cj4gWyAg
ICAyLjQwNzg2OF0gSGFyZHdhcmUgbmFtZTogRmlyZWZseSBST0MtUkszMzk5LVBDIE1lenphbmlu
ZSBCb2FyZCAoRFQpCj4gWyAgICAyLjQwODQ0OF0gV29ya3F1ZXVlOiBldmVudHMgcm9ja2NoaXBf
dXNiMnBoeV9vdGdfc21fd29yawo+IFsgICAgMi40MDg5NThdIHBzdGF0ZTogNjAwMDAwMDUgKG5a
Q3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+IFsgICAgMi40MTE2
MzRdIHBjIDogcm9ja2NoaXBfdXNiMnBoeV9vdGdfc21fd29yaysweDUwLzB4MzMwCj4gWyAgICAy
LjQxNDMzMl0gbHIgOiBwcm9jZXNzX29uZV93b3JrKzB4MWQ4LzB4MzgwCj4gWyAgICAyLjQxNjk0
OF0gc3AgOiBmZmZmODAwMDA5MzczZDYwCj4gWyAgICAyLjQxOTQwNl0geDI5OiBmZmZmODAwMDA5
MzczZDYwIHgyODogMDAwMDAwMDAwMDAwMDAwMCB4Mjc6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAg
IDIuNDIyMTk5XSB4MjY6IGZmZmYwMDAwZjc3OWZjYjggeDI1OiBmZmZmMDAwMGY3N2EzYTA1IHgy
NDogMDAwMDAwMDAwMDAwMDAwYwo+IFsgICAgMi40MjQ5NzhdIHgyMzogMDAwMDAwMDAwMDAwMDAw
MCB4MjI6IGZmZmYwMDAwMDEwYzgyNTggeDIxOiBmZmZmODAwMDA4ODhlYzEwCj4gWyAgICAyLjQy
Nzc2OF0geDIwOiBmZmZmMDAwMDAxMGM4MmYwIHgxOTogMDAwMDAwMDAwMDAwMDAwYyB4MTg6IDAw
MDAwMDAwMDAwMDAwMDEKPiBbICAgIDIuNDMwNjA0XSB4MTc6IDAwMDAwMDA0MDA0NGZmZmYgeDE2
OiAwMDQwMDAzNGI1NTAzNTEwIHgxNTogMDAwMDAwMDAwMDAwMDAwMAo+IFsgICAgMi40MzMzOTBd
IHgxNDogZmZmZjAwMDAwMDcwODAwMCB4MTM6IGZmZmY4MDAwZWVjOTYwMDAgeDEyOiAwMDAwMDAw
MDM0ZDRkOTFkCj4gWyAgICAyLjQzNjE4NV0geDExOiAwMDAwMDAwMDAwMDAwMDAwIHgxMDogMDAw
MDAwMDAwMDAwMGExMCB4OSA6IGZmZmYwMDAwMDFhYTdhNzQKPiBbICAgIDIuNDM4OTU4XSB4OCA6
IGZlZmVmZWZlZmVmZWZlZmYgeDcgOiAwMDAwMDAwMDAwMDAwMDE4IHg2IDogZmZmZjAwMDAwMWFh
N2E3NAo+IFsgICAgMi40NDE2NjhdIHg1IDogMDAwMDczNzQ2ZTY1NzY2NSB4NCA6IDAwMDAwMDAw
MDAwMDAwMmYgeDMgOiBmZmZmMDAwMDAzNTZjODA4Cj4gWyAgICAyLjQ0NDQwN10geDIgOiBmZmZm
ODAwMDA5MzczZGE0IHgxIDogMDAwMDAwMDAwMDAwZTJhYyB4MCA6IGZmZmY4MDAwMDg4OGViMzQK
PiBbICAgIDIuNDQ3MTkwXSBDYWxsIHRyYWNlOgo+IFsgICAgMi40NDk1NTddICByb2NrY2hpcF91
c2IycGh5X290Z19zbV93b3JrKzB4NTAvMHgzMzAKPiBbICAgIDIuNDUyMTY5XSAgcHJvY2Vzc19v
bmVfd29yaysweDFkOC8weDM4MAo+IFsgICAgMi40NTQ2ODRdICB3b3JrZXJfdGhyZWFkKzB4MTcw
LzB4NGUwCj4gWyAgICAyLjQ1NzA1Nl0gIGt0aHJlYWQrMHhkOC8weGRjCj4gWyAgICAyLjQ1OTM1
NF0gIHJldF9mcm9tX2ZvcmsrMHgxMC8weDIwCj4gWyAgICAyLjQ2MTcyOF0gQ29kZTogOTEwMzcw
MTUgMjk1YmUwMDEgZjk0MDNjNzcgYjk0MGU0MTMgKGY5NDAwNmUwKQo+IFsgICAgMi40NjQzMzhd
IC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAwMDAwMDAgXS0tLQo+Cj4gQW0gMjIuMDYuMjIgdW0g
MDI6MzEgc2NocmllYiBQZXRlciBHZWlzOgo+ID4gVGhlIGluaXRpYWwgb3RnIHN0YXRlIGZvciB0
aGUgcGh5IGRlZmF1bHRzIHRvIGRldmljZSBtb2RlLiBUaGUgYWN0dWFsCj4gPiBzdGF0ZSBpc24n
dCBkZXRlY3RlZCB1bnRpbCBhbiBJRCBJUlEgZmlyZXMuIEZpeCB0aGlzIGJ5IHN5bmNpbmcgdGhl
IElECj4gPiBzdGF0ZSBkdXJpbmcgaW5pdGlhbGl6YXRpb24uCj4gPgo+ID4gRml4ZXM6IDUxYTli
MmMwM2RkMyAoInBoeTogcm9ja2NoaXAtaW5uby11c2IyOiBIYW5kbGUgSUQgSVJRIikKPiA+IFNp
Z25lZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+
ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIHwgNiArKysr
KysKPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiA+IGluZGV4IDY3MTE2
NTlmNzI3Yy4uNmU0NDA2OTYxN2RmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPiA+IEBAIC0xMTYyLDYgKzExNjIsMTIgQEAgc3Rh
dGljIGludCByb2NrY2hpcF91c2IycGh5X290Z19wb3J0X2luaXQoc3RydWN0IHJvY2tjaGlwX3Vz
YjJwaHkgKnJwaHksCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEVY
VENPTl9VU0JfSE9TVCwgJnJwb3J0LT5ldmVudF9uYik7Cj4gPiAgICAgICAgICAgICAgIGlmIChy
ZXQpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgZGV2X2VycihycGh5LT5kZXYsICJyZWdpc3Rl
ciBVU0IgSE9TVCBub3RpZmllciBmYWlsZWRcbiIpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBp
ZiAoIW9mX3Byb3BlcnR5X3JlYWRfYm9vbChycGh5LT5kZXYtPm9mX25vZGUsICJleHRjb24iKSkg
ewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIC8qIGRvIGluaXRpYWwgc3luYyBvZiB1c2Igc3Rh
dGUgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXQgPSBwcm9wZXJ0eV9lbmFibGVkKHJw
aHktPmdyZiwgJnJwb3J0LT5wb3J0X2NmZy0+dXRtaV9pZCk7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgZXh0Y29uX3NldF9zdGF0ZV9zeW5jKHJwaHktPmVkZXYsIEVYVENPTl9VU0JfSE9TVCwg
IXJldCk7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICAgICAgIH0KPiA+Cj4gPiAgIG91dDoKPgo+
IEdydcOfLAo+IC0tCj4gTWFya3VzIFJlaWNobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
