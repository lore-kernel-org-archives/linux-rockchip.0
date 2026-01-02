Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ED11FA3741
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jan 2026 14:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:MIME-Version:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XHOwMYb1Zo8vOtJQT8auXs32tk9eg8qVuW+Dkdapsrk=; b=dKVxhcAsIq4LToiu9t2EiwfuYe
	Nz44070Aa2edlseIRTmxvme9r0WB4IcOzm08xmM0XVTudPibR4eVEA0iqOTLofXGftED0HrvX4J+z
	ZMzsKPDTD9IhdyKBVyFCLrNbPT6BhJXvq0rKLdLR+lDdfY0VzW8deCRkMGJDYUYqa9GbTCan6dyYn
	Mq8hH4gD1IXdzOcauhDPfg1JQ2HC/FFCtwBeLAqYorqlC2catICkS7v8qn5Hu2ERPGzHBLadCeVts
	05QgnPaCv/PKz2qinRCCfdury/7ZHld0bLYBmRRVyE6RhObV0nDExh+aiIoQatfKbq4++E4gTKLfD
	fY5R631Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbgNP-00000008NBm-3VOZ;
	Fri, 02 Jan 2026 14:43:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbgNM-00000008N9A-117p;
	Fri, 02 Jan 2026 14:43:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7888544367;
	Fri,  2 Jan 2026 14:43:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D406C116B1;
	Fri,  2 Jan 2026 14:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767365015;
	bh=0Df0SE8dgCkt3UZVXXK8qLY/Fji0JTvOS7Cm6KxuTP0=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=j6XwfdPvYusFqQJYWmtSc+sIl1PgjyDXKoTZsEFOL63JI66uhz/QsN2fD9KsbK84j
	 DdSRedWHQU4eQdUEbjROQu2HEhlX7UtxUssxBAjaXYVG51CqGQaot+scXbC+YnUvmj
	 o5PlnWWJEYex8cxwrnRzeps4PTqPPA14poWOuvjDmAmpEwl6GY9MRPke/2CFn3sB5r
	 QOdWhbLyw83s7K9jLY6RIn8AKob2qE97e1cSTlz/29fsDfUGLOky7BvKvcpDNMT2F/
	 msNHDTUkN3yF/Kn681Eu4TK0iuV0zo757gZ05upkBklv6ixP0bSlwCRSqj8HhPZIvb
	 IZp9z2KyW0KZA==
From: Rob Herring <robh@kernel.org>
Date: Fri, 02 Jan 2026 08:43:33 -0600
MIME-Version: 1.0
Cc: Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alvin Sun <sk.alvin.x@gmail.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
To: Ke Sun <sunke@kylinos.cn>
In-Reply-To: <20260101083415.1327341-1-sunke@kylinos.cn>
References: <20260101083415.1327341-1-sunke@kylinos.cn>
Message-Id: <176736452757.3671448.8519494279051899382.robh@kernel.org>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add USB Type-C support for
 Radxa ZERO 3W
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_064336_310911_0FE67D46 
X-CRM114-Status: GOOD (  13.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 01 Jan 2026 16:34:15 +0800, Ke Sun wrote:
> Add vbus_typec regulator and fusb302 Type-C controller configuration
> for Radxa ZERO 3W board.
> 
> Link: https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
> Signed-off-by: Ke Sun <sunke@kylinos.cn>
> ---
>  .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 10 +++++++++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     | 22 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


This patch series was applied (using b4) to base:
 Base: attempting to guess base-commit...
 Base: tags/next-20251219 (exact match)
 Base: tags/next-20251219 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20260101083415.1327341-1-sunke@kylinos.cn:

arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dtb: fusb302@22 (fcs,fusb302): 'sel-gpios' does not match any of the regexes: '^pinctrl-[0-9]+$'
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml
arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dtb: fusb302@22 (fcs,fusb302): 'connector' is a required property
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
