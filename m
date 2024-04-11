Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB34DC001CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muig3IIyFBnNElUUMayEgn8GTFxJGlVbx9gBR8RNqmo=; b=mTRwoaSlE25KCH
	tCLn9UE6ks8u1AHZWKi+cj57ulV6oXZTkvj3KEsgpRDIXFCusqFZjvExYiwh8zGc2snCYQkt6tFey
	sF8wwVH/d3DuiJLIvXr2DUpWtSxmjFRglQ95LYpxvYRhN4/Ebfw0Iv7KXQIjp8YGtewf2zBNUAid+
	ADz1GF5J+XEennwpZ3T0qyvYFUL7ejsAOCc/uC61tkPnMC1Xu6LC+GpE6cJ8DzPUdNBo4jlONEvCw
	DlOalhbr9hdECfzVu9/tmOgxZVeylP0H5Ze7Dw0qIVXQlaFvT/OXqBSm3ORGfltx70ko8vPNRXYtJ
	+8MGgvHqjGaYeHQBnLWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruuZ0-0000000CARF-3ksy;
	Thu, 11 Apr 2024 13:34:02 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruuYq-0000000CAL1-1d66;
	Thu, 11 Apr 2024 13:33:54 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-5aa1fe2ad39so3327575eaf.2;
        Thu, 11 Apr 2024 06:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712842429; x=1713447229; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbcCaa8DX09SvsMoBHm+TyAMbhm9qLZzeE5P/R6GO7M=;
        b=V3Th/eL4tuNu3JoYuiYDtfFPmXBR4TCMyGragmw+ZbtePsDWMOYiX17BNw5UTcMZVD
         iCznmGIWbcUuqqSWI+BzLe9E7IeuSAz8AoUBwPlAfhDTdjoIIwlf8IU2ztLsUUPn5f/S
         MrN4Sq8fbnWiBos2D9pjCu5WdtcbMbkrpMCCSI8z4Q5Cky9j/6srRHkbthAnnbSL/bo3
         2vmp3mLpc8nV2BzDci4FPgBvkarO/k7C9Orxt168welTA1gb/Cn1A5x9vp/FKKvGJpmu
         pfkxf0d4/CGO4uNxy4CRN1CR/cYT53uzQceTvYFN16JH/jQQdcRvkeF/t37m0igCu7ya
         yfvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712842429; x=1713447229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbcCaa8DX09SvsMoBHm+TyAMbhm9qLZzeE5P/R6GO7M=;
        b=etbO9BCMMSgVBSDnlCXyfRFu5G6jSRhxf+PXvZMWWzjk+MrgxOUtHIOLOuSJ8cSJuP
         I0WPXcKfDsZnc2FhVzgGpG8BSCm6WzlFuzZT6XBHOewajvSufxIsG3gFR3z1tOvMBDXY
         o739MLo8+rrgQymI0FhIEFkHF/LYWsVc6ojbwbOkScEBq7SJwxymzlF7xAG94LsQY2Ie
         dPkn0EkAdhXY2yHlx9E5dwEYYd8cP6HIF2mMI1JN+E1GOgYfkERNZPg6Ovki0cyC9RRl
         hvMplXJbfNJmoiygg8M1wWF3WKjUbXaT5ycrDDGsUkWYhabAiXu1eTLBpJqphCW3QvD4
         8Ewg==
X-Forwarded-Encrypted: i=1; AJvYcCUxCihbKu5A0WDnrPZkVhT1fdzPYNF+M2CCAVc9qxXgecH/e1j1Ke3E1GUGsmb0wn3Lv+93AuDUN3+jI/3CXLxYGmTmUr/qu/wUC0UJhux0H15pZqroyc6mwtgttDqxamYpUdMuqNuT71SDXP5IJURPQP45YAyzzFaJp6QpZwPN8N1QbvqF821k25JUA/FYPCS6hHf/fKpTgLlJKH6r6wyMnBOhBsdCwWmvgfHl8rVP0m7s+PZ2qg9BIM9k4N/XPbkkfw==
X-Gm-Message-State: AOJu0YwhY4C1b3pIi3qAjwoYS9LI5K8GVzyzuyLq3PuIlVNFnoa51/6K
	XgZQXGq58qpn4GYpHRu0t2XezQwL0k/qDcUuEzcFPiH/pa8mf8u+4fTFYCYY4hzvICEln+BEH9s
	WtPgEuTNijIEMLgJ9doKqqwm4D8M=
X-Google-Smtp-Source: AGHT+IG525FFbMbsm9efSCrv2KXUqFOj0YhoVxH+Cl2iHx5VYUfIZRxfPUChUh11UqyLT5/SR86etSAM7EFlCNkHgHs=
X-Received: by 2002:a05:6870:b411:b0:22e:e6:673 with SMTP id
 x17-20020a056870b41100b0022e00e60673mr5611022oap.37.1712842429406; Thu, 11
 Apr 2024 06:33:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhs-H82Ymc=isxu6AX4_s1QnNpSSNt74--ED1j7JxpzE=eCRg@mail.gmail.com>
 <20240411123917.GA2180141@bhelgaas>
In-Reply-To: <20240411123917.GA2180141@bhelgaas>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 11 Apr 2024 15:33:37 +0200
Message-ID: <CAMhs-H_imwV4__G4_pt7eWHdyLPe9_fttWJ2a3x1ESP=B6bb_w@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: PCI: mediatek,mt7621: add missing
 child node reg
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Jim Quinlan <jim2101024@gmail.com>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Will Deacon <will@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Srikanth Thokala <srikanth.thokala@intel.com>, 
	Ryder Lee <ryder.lee@mediatek.com>, Jianjun Wang <jianjun.wang@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Marek Vasut <marek.vasut+renesas@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, Jingoo Han <jingoohan1@gmail.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>, Michal Simek <michal.simek@amd.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mark Kettenis <kettenis@openbsd.org>, 
	Tom Joseph <tjoseph@cadence.com>, Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_063352_641538_A64FE344 
X-CRM114-Status: GOOD (  27.90  )
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

T24gVGh1LCBBcHIgMTEsIDIwMjQgYXQgMjozOeKAr1BNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEFwciAxMSwgMjAyNCBhdCAwODoxMzoxOEFN
ICswMjAwLCBTZXJnaW8gUGFyYWN1ZWxsb3Mgd3JvdGU6Cj4gPiBPbiBUaHUsIEFwciAxMSwgMjAy
NCBhdCA4OjAx4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo+ID4gPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPiA+IE9uIDEwLzA0LzIwMjQgMjM6MjYsIEJqb3JuIEhl
bGdhYXMgd3JvdGU6Cj4gPiA+ID4gT24gV2VkLCBBcHIgMTAsIDIwMjQgYXQgMDg6MTU6MTlQTSAr
MDIwMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+ID4gPj4gTVQ3NjIxIFBDSSBob3N0
IGJyaWRnZSBoYXMgY2hpbGRyZW4gd2hpY2ggYXBwYXJlbnRseSBhcmUgYWxzbyBQQ0kgaG9zdAo+
ID4gPiA+PiBicmlkZ2VzLCBhdCBsZWFzdCB0aGF0J3Mgd2hhdCB0aGUgYmluZGluZyBzdWdnZXN0
Lgo+ID4gPiA+Cj4gPiA+ID4gV2hhdCBkb2VzIGl0IGV2ZW4gbWVhbiBmb3IgYSBQQ0kgaG9zdCBi
cmlkZ2UgdG8gaGF2ZSBhIGNoaWxkIHRoYXQgaXMKPiA+ID4gPiBhbHNvIGEgUENJIGhvc3QgYnJp
ZGdlPwo+ID4gPiA+Cj4gPiA+ID4gRG9lcyB0aGlzIG1lYW4gYSBkcml2ZXIgYmluZHMgdG8gdGhl
ICJwYXJlbnQiIGhvc3QgYnJpZGdlLCBlbnVtZXJhdGVzCj4gPiA+ID4gdGhlIFBDSSBkZXZpY2Vz
IGJlbG93IGl0LCBhbmQgZmluZHMgYSAiY2hpbGQiIGhvc3QgYnJpZGdlPwo+ID4KPiA+IFllcywg
dGhhdCBpcyBleGFjdGx5IHdoYXQgeW91IGNhbiBzZWUgb24gZW51bWVyYXRpb24uCj4gPgo+ID4g
VGhlIGZvbGxvd2luZyBpcyBhIHR5cGljYWwgYm9vdCB0cmFjZSB3aGVyZSBhbGwgYnJpZGdlcyBo
YXMgYSBkZXZpY2UgYWxzbyBiZWxvdzoKPiA+Cj4gPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6
IGhvc3QgYnJpZGdlIC9wY2llQDFlMTQwMDAwIHJhbmdlczoKPiA+IG10NzYyMS1wY2kgMWUxNDAw
MDAucGNpZTogICBObyBidXMgcmFuZ2UgZm91bmQgZm9yIC9wY2llQDFlMTQwMDAwLCB1c2luZyBb
YnVzIDAwLWZmXQo+ID4gbXQ3NjIxLXBjaSAxZTE0MDAwMC5wY2llOiAgICAgIE1FTSAweDAwNjAw
MDAwMDAuLjB4MDA2ZmZmZmZmZiAtPiAweDAwNjAwMDAwMDAKPiA+IG10NzYyMS1wY2kgMWUxNDAw
MDAucGNpZTogICAgICAgSU8gMHgwMDFlMTYwMDAwLi4weDAwMWUxNmZmZmYgLT4gMHgwMDAwMDAw
MDAwCj4gPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IFBDSUUwIGVuYWJsZWQKPiA+IG10NzYy
MS1wY2kgMWUxNDAwMDAucGNpZTogUENJRTEgZW5hYmxlZAo+ID4gbXQ3NjIxLXBjaSAxZTE0MDAw
MC5wY2llOiBQQ0lFMiBlbmFibGVkCj4gPiBtdDc2MjEtcGNpIDFlMTQwMDAwLnBjaWU6IFBDSSBo
b3N0IGJyaWRnZSB0byBidXMgMDAwMDowMAo+Cj4gMWUxNDAwMDAucGNpZSBpcyBhIGhvc3QgYnJp
ZGdlLiAgSXQgaGFzIHNvbWUgQ1BVLXNwZWNpZmljIGJ1cyBvbiB0aGUKPiB1cHN0cmVhbSBzaWRl
LCBzdGFuZGFyZCBQQ0kgKGRvbWFpbiAwMDAwLCBidXNlcyAwMC1mZikgb24gdGhlCj4gZG93bnN0
cmVhbSBzaWRlLgo+Cj4gPiBwY2kgMDAwMDowMDowMC4wOiBbMGU4ZDowODAxXSB0eXBlIDAxIGNs
YXNzIDB4MDYwNDAwCj4gPiBwY2kgMDAwMDowMDowMS4wOiBbMGU4ZDowODAxXSB0eXBlIDAxIGNs
YXNzIDB4MDYwNDAwCj4gPiBwY2kgMDAwMDowMDowMi4wOiBbMGU4ZDowODAxXSB0eXBlIDAxIGNs
YXNzIDB4MDYwNDAwCj4KPiA+IHBjaSAwMDAwOjAxOjAwLjA6IFsxYjIxOjA2MTFdIHR5cGUgMDAg
Y2xhc3MgMHgwMTAxODUKPgo+ID4gcGNpIDAwMDA6MDA6MDAuMDogUENJIGJyaWRnZSB0byBbYnVz
IDAxLWZmXQo+ID4gcGNpIDAwMDA6MDA6MDAuMDogICBicmlkZ2Ugd2luZG93IFtpbyAgMHgwMDAw
LTB4MGZmZl0KPiA+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBbbWVtIDB4MDAw
MDAwMDAtMHgwMDBmZmZmZl0KPiA+IHBjaSAwMDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBb
bWVtIDB4MDAwMDAwMDAtMHgwMDBmZmZmZiBwcmVmXQo+Cj4gMDA6MDAuMCBsb29rcyBsaWtlIGEg
UENJZSBSb290IFBvcnQgdG8gYnVzIDAxLiAgVGhpcyBpcyBub3QgYSBob3N0Cj4gYnJpZGdlOyBp
dCdzIGp1c3QgYSBzdGFuZGFyZCBQQ0ktdG8tUENJIGJyaWRnZSB3aXRoIFBDSSBvbiBib3RoIHRo
ZQo+IHVwc3RyZWFtIGFuZCBkb3duc3RyZWFtIHNpZGVzLgo+Cj4gPiBwY2kgMDAwMDowMjowMC4w
OiBbMWIyMTowNjExXSB0eXBlIDAwIGNsYXNzIDB4MDEwMTg1Cj4KPiA+IHBjaSAwMDAwOjAwOjAx
LjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMi1mZl0KPiA+IHBjaSAwMDAwOjAwOjAxLjA6ICAgYnJp
ZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gPiBwY2kgMDAwMDowMDowMS4wOiAgIGJy
aWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4MDAwZmZmZmZdCj4gPiBwY2kgMDAwMDowMDow
MS4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4MDAwZmZmZmYgcHJlZl0KPgo+
IDAwOjAxLjAgaXMgYW5vdGhlciBSb290IFBvcnQgdG8gYnVzIDAyLgo+Cj4gPiBwY2kgMDAwMDow
MzowMC4wOiBbMWIyMTowNjExXSB0eXBlIDAwIGNsYXNzIDB4MDEwMTg1Cj4KPiA+IHBjaSAwMDAw
OjAwOjAyLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMy1mZl0KPiA+IHBjaSAwMDAwOjAwOjAyLjA6
ICAgYnJpZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gPiBwY2kgMDAwMDowMDowMi4w
OiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4MDAwZmZmZmZdCj4gPiBwY2kgMDAw
MDowMDowMi4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDAwMDAwMDAwLTB4MDAwZmZmZmYgcHJl
Zl0KPiA+IHBjaV9idXMgMDAwMDowMzogYnVzbl9yZXM6IFtidXMgMDMtZmZdIGVuZCBpcyB1cGRh
dGVkIHRvIDAzCj4KPiBBbmQgMDA6MDIuMCBpcyBhIHRoaXJkIFJvb3QgUG9ydCB0byBidXMgMDMu
Cj4KPiA+IHBjaSAwMDAwOjAwOjAwLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0KPiA+IHBjaSAw
MDAwOjAwOjAwLjA6ICAgYnJpZGdlIHdpbmRvdyBbaW8gIDB4MDAwMC0weDBmZmZdCj4gPiBwY2kg
MDAwMDowMDowMC4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDYwMDAwMDAwLTB4NjAwZmZmZmZd
Cj4gPiBwY2kgMDAwMDowMDowMC4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDYwMTAwMDAwLTB4
NjAxZmZmZmYgcHJlZl0KPiA+IHBjaSAwMDAwOjAwOjAxLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAw
Ml0KPiA+IHBjaSAwMDAwOjAwOjAxLjA6ICAgYnJpZGdlIHdpbmRvdyBbaW8gIDB4MTAwMC0weDFm
ZmZdCj4gPiBwY2kgMDAwMDowMDowMS4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAweDYwMjAwMDAw
LTB4NjAyZmZmZmZdCj4gPiBwY2kgMDAwMDowMDowMS4wOiAgIGJyaWRnZSB3aW5kb3cgW21lbSAw
eDYwMzAwMDAwLTB4NjAzZmZmZmYgcHJlZl0KPiA+IHBjaSAwMDAwOjAwOjAyLjA6IFBDSSBicmlk
Z2UgdG8gW2J1cyAwM10KPiA+IHBjaSAwMDAwOjAwOjAyLjA6ICAgYnJpZGdlIHdpbmRvdyBbaW8g
IDB4MjAwMC0weDJmZmZdCj4gPiBwY2kgMDAwMDowMDowMi4wOiAgIGJyaWRnZSB3aW5kb3cgW21l
bSAweDYwNDAwMDAwLTB4NjA0ZmZmZmZdCj4gPgo+ID4gPiBJIHRoaW5rIHRoZSBxdWVzdGlvbiBz
aG91bGQgYmUgdG93YXJkcyBNZWRpYXRlayBmb2xrcy4gSSBkb24ndCBrbm93IHdoYXQKPiA+ID4g
dGhpcyBoYXJkd2FyZSBpcyBleGFjdGx5LCBqdXN0IGxvb2tzIGxpa2UgcGNpLXBjaS1icmlkZ2Uu
IFRoZSBkcml2ZXIKPiA+ID4gY2FsbHMgdGhlIGNoaWxkcmVuIGhvc3QgYnJpZGdlcyBhcyAicG9y
dHMiLgo+ID4KPiA+IFlvdSBjYW4gc2VlIHRoZSB0b3BvbG9neSBoZXJlIGluIG15IGZpcnN0IGRy
aXZlciBzdWJtaXQgY292ZXIgbGV0dGVyCj4gPiBtZXNzYWdlIFswXS4KPiA+Cj4gPiAgWzBdOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FNaHMtSC1CQStLekV3dURQemNtckRQZGdKQkZB
MlhkWVRCdlQ0UjRNRU9VQj1XUTFnQG1haWwuZ21haWwuY29tL3QvCj4KPiBOb3RoaW5nIHVudXN1
YWwgaGVyZSwgdGhpcyBsb29rcyBsaWtlIHRoZSBzdGFuZGFyZCBQQ0llIHRvcG9sb2d5Lgo+Cj4g
V2hhdCAqbWlnaHQqIGJlIHVudXN1YWwgaXMgZGVzY3JpYmluZyB0aGUgUm9vdCBQb3J0cyBpbiBE
VC4gIFNpbmNlCj4gdGhleSBhcmUgc3RhbmRhcmQgUENJIGRldmljZXMsIHRoZXkgc2hvdWxkbid0
IG5lZWQgRFQgZGVzY3JpcHRpb24KPiB1bmxlc3MgdGhlcmUncyBzb21lIHVudXN1YWwgcG93ZXIv
Y2xvY2svcmVzZXQgY29udHJvbCBvciBzb21ldGhpbmcKPiB0aGF0IGlzIG5vdCBkaXNjb3ZlcmFi
bGUgdmlhIFBDSSBlbnVtZXJhdGlvbi4KCkl0IGxvb2tzIGxpa2UgaXQgaXMgbmVjZXNzYXJ5IHNp
bmNlIGV2ZXJ5IHBvcnQgaGFzIGl0cyBvd24KY29uZmlndXJhdGlvbiByZWdpc3RlcnMsIHBoeSwg
Y2xvY2ssIHJlc2V0IGFuZCBpbnRlcnJ1cHQuCgpUaGFua3MsCiAgICBTZXJnaW8gUGFyYWN1ZWxs
b3MKCj4gQmpvcm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
