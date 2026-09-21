Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81212C982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 20:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFedXOwCcAac6Lyp9S6mOGYeTqFSfksImDVJ0QqLaX8=; b=cDBc2Ulbr3b8lI
	AgksL8rGgN0qzB+F1Ie5IZGk/+G8YRQlzM/lB23IIkuthJqZfFdUoffbkg9R35djwG46i7UE+B0i6
	4ujLffnBYKBMP0CdUDstHY7VcrwsDRMAD39JIOuGW8UCaek4AicnzZS4I65JVCVdikx86NAaF3vIn
	R39KTW9Vipko5f+VhZ8boWnLnSuFjvbifQCbxqTOz1i9E8NATIJOzBW42AydupcWeg3qlHaSLATwQ
	Cj3IBlQRuONHRqHDFU7ezpGTqx0onNwlPDsMNg7p84DvhguxNaTBZfVvnmYi6UWPe8CXl5k+5qFRL
	T2w1wIHggdiugJrrnFyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8kV4-00000003KSX-2Ndh;
	Mon, 21 Sep 2026 20:20:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8kV1-00000003KRi-0NYA;
	Mon, 21 Sep 2026 20:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=t56rUUwRmXd5Bwozpjc5KFkjkkSuskX8gA5Flws04pw=; b=0YgOTHuRfrXx1uFY1wMgE/U3e0
	+dw/SC2Xa43f3HhGb4BANiW7jobFbsqgyg+H+OHB+9velcZTPQP3OLgQRcZfL3ZuFMhwbsfoU5LpQ
	KscCXVeHleND2dk4DeIMrIyRmDqEd8x0S2W14yqzbij1R0tY0zrPzqENhXhxgQ/oBN/6abHZa0jsm
	5xtYyleOrUyi4tvI1qjEATxfxEhUWURulNBpTFmXcQNpeI6XMz77ZsMBHl59H4Fe1nSDbBEACMs0s
	R9vl+SbDHSNLxIZbf9boY17c+SpCWINR8BSudWHYfoTZz/fQGUOw/ergGpgsnhGaGG8tvgzRk6wau
	8gIKa2bg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>,
 Matthias Fend <matthias.fend@emfend.at>,
 Mikhail Rudenko <mike.rudenko@gmail.com>,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Tommaso Merciai <tomm.merciai@gmail.com>,
 Svyatoslav Ryhel <clamor95@gmail.com>,
 Richard Acayan <mailingradian@gmail.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux@ew.tq-group.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH v6 4/6] arm64: dts: rockchip: Convert to new media orientation
 definitions
Date: Mon, 21 Sep 2026 22:19:14 +0200
Message-ID: <4535025.ejJDZkT8p0@phil>
In-Reply-To: <20260918-kbingham-orientation-v6-4-5e8b1f01be29@ideasonboard.com>
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
 <20260918-kbingham-orientation-v6-4-5e8b1f01be29@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_132027_150236_66ACAFE3 
X-CRM114-Status: GOOD (  10.26  )
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

QW0gRnJlaXRhZywgMTguIFNlcHRlbWJlciAyMDI2LCAxMjo0NDoxNiBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIEtpZXJhbiBCaW5naGFtOgo+IEZyb206IEtpZXJhbiBCaW5n
aGFtIDxraWVyYW4uYmluZ2hhbStyZW5lc2FzQGlkZWFzb25ib2FyZC5jb20+Cj4gCj4gVGhlIG9y
aWVudGF0aW9uIHByb3BlcnR5IGZvciB2aWRlbyBpbnRlcmZhY2UgZGV2aWNlcyBub3cgaGFzIGRl
ZmluaXRpb25zCj4gdG8gcHJldmVudCBoYXJkY29kZWQgaW50ZWdlciB2YWx1ZXMgZm9yIHRoZSBl
bnVtIG9wdGlvbnMuCj4gCj4gVXBkYXRlIHRoZSB1c2VycyB0aHJvdWdob3V0IHRoZSByb2NrY2hp
cCBkZXZpY2UgdHJlZXMgdG8gdXNlIHRoZSBuZXcKPiBkZWZpbml0aW9ucy4KPiAKPiBSZXZpZXdl
ZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29t
Pgo+IFJldmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRl
PiAjIFBQLTE1MTYgYW5kCj4gUmV2aWV3ZWQtYnk6IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4
aXQuY3o+Cj4gU2lnbmVkLW9mZi1ieTogS2llcmFuIEJpbmdoYW0gPGtpZXJhbi5iaW5naGFtK3Jl
bmVzYXNAaWRlYXNvbmJvYXJkLmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgoKU2FtZSB0aGluZyBUaGllcnJ5IHNhaWQsIGFwcGxpZXMgZm9yIHRoZSBS
b2NrY2hpcCBjaGFuZ2UsIGlmIHNvbWVvbmUKd2FudHMgdG8gYXBwbHkgKHBhcnRzIG9mKSB0aGUg
c2VyaWVzIHRvIHRoZSBtZWRpYSB0cmVlLCB0aGF0IGlzIGZpbmUKd2l0aCBtZS4KCk90aGVyd2lz
ZSBJJ2xsIGp1c3QgcGljayAibWluZSIgYWZ0ZXIgdGhlIG5leHQgbWVyZ2Utd2luZG93LgoKCkhl
aWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
