Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A22CC28B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Mar 2025 12:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=do6K1nsY9oXdFicXnRG6fteBLpjRZIAwjelOi411ZPk=; b=z7evuFtaxf2frE
	hEOBM4eXU4aIdAmDSNVHXW/mzpsZQHD3/C7/lHxsO5cq6LpxwpAwhvvLiSePvAyjGRn9j71Pas9hB
	Pn2nsX2/Fv53dkvtkFQ8gMElp1iwH+kLghM/s2CEL2rSd6yDJKall8O6glnzsq7UojEgpIVwgfP3A
	+Lz5qbW1avp640PJDewYr5MalfWKGLst/G5QX7bYZlQ6kTvfGMhV9bLKymH+eHtwOB1egf+rR9VN9
	fXTUg7SyAmHbr49QT9C/w5WPNTh6/uWoROw//Y1Ci6coUVycB9uoZD+WS10iASWVbP1ugFf87K0LT
	IQLta8jxp8NH3kVG1PBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvFPf-0000000C9TA-2REQ;
	Thu, 20 Mar 2025 12:54:19 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvFNx-0000000C9NV-2Xz0;
	Thu, 20 Mar 2025 12:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=H+sTAz6dqyxPYftC9u0HB4/K7kVqtaa/p/1ZD4PoAEU=; b=p3
	bf7TTSFQTd36LRDyhoubAWAFz+dcsRa8w0/WSfTJAl5bMm0PQVksnXDxhTlHIIqG9HqEOxhcT+ShU
	wNTb4JHyVQB+x8L2AHsvwXAq/dxvGqJytoYognUFgIBTpZwiGrJzPv52A6vC3SHAkifgP+MgAvpGT
	xSJpVyyvqGFGlOg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tvFNo-006TXo-1G; Thu, 20 Mar 2025 13:52:24 +0100
Date: Thu, 20 Mar 2025 13:52:24 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add gmac phy reset GPIO
Message-ID: <4eaa58b6-72e2-4b83-ab82-500022c90461@lunn.ch>
References: <cover.1742331667.git.ukleinek@kernel.org>
 <49f66206fccc714a8745b9ac35247615ad5cc369.1742331667.git.ukleinek@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49f66206fccc714a8745b9ac35247615ad5cc369.1742331667.git.ukleinek@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_055233_641880_C1E30F68 
X-CRM114-Status: GOOD (  14.75  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Mar 18, 2025 at 10:08:46PM +0100, Uwe Kleine-K=F6nig wrote:
> While looking through the vendor U-Boot code Heiko spotted that a SoC
> GPIO is connected to the ethernet phy's reset pin. Add the respective
> reset-gpios property with pinmuxing for the GPIO to the phy node.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index 70e88769e21c..411f8ac7994b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -485,6 +485,10 @@ rgmii_phy0: ethernet-phy@3 {
>  		/* Motorcomm YT8521 phy */
>  		compatible =3D "ethernet-phy-ieee802.3-c22";
>  		reg =3D <0x3>;
> +		pinctrl-0 =3D <&eth_phy0_reset_pin>;
> +		pinctrl-names =3D "default";
> +		reset-assert-us =3D <10000>;
> +		reset-gpios =3D <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>;

Sometimes a reset-deassert-us property is needed, in order to give the
PHY time to get ready. But i assume you have tested this with lots of
reboot.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
