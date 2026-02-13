Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23D2EF99C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 18:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1R0eKs/GIZFVXi6uEDOdC82RUFp7KLDdNiwPN7wTYdo=; b=tmfeOimSJuwhfG
	OsxHj1HZpKqtsLI1AD8ktq4h8V9RvaMNjb2Xhrxl+rU2FauHkV6dGDWxw6iBJrhnRGhobZvb4J6+7
	Tb+eHk+GNazbSBcvhzjpnA4U6WjHR79N2RDvk9kRqoI759AyAwBj8tty8CuGyPEWHklIStIURZ1BY
	KecLQfMzoVsr6NTV1fGkahOb7g437U5PAoI9p5KZXcUBRJXf+AlTvcNUt4UhujSiABh0N5Dxvt1Fz
	+NjwIBUUa5Dqy5b5NepolFQ3qmC+EEybZGM/mozKGcbGNHqyiYXQjal+1WOyJV9KMB3VBO1t+Ay0I
	roQYeTkHFA4du79g4Asw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqxt5-00000003n5H-16h9;
	Fri, 13 Feb 2026 18:27:31 +0000
Received: from sender4-op-o15.zoho.com ([136.143.188.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqxt3-00000003n4h-05IT;
	Fri, 13 Feb 2026 18:27:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1771007223; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AzE9jYI3jHPtw3O8eJ+jhLILfMg2IbWH8pow8bZ7nAtg7VUBUjCGEBgnQqdpXWEZ9bvCm48cwwmaNEI+N1W8zAFHorCk55GA0dqo55mPy3sEDbX4WfYW5IwwDnKRffBjrAzv4rFdybZZNJfBJhPAcl48O3V+TwEZ3E6cBI9bN+I=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1771007223; h=Content-Type:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=mY3KvVQTMdhlwCwGfxZ8paH0e/fwTPQdmCblgG7lpwo=; 
	b=I2lNyBs2W6XPUaVCHM7VGzGgWmN2+prqvI786acCyDDdxTOP9xfTFPEI7WcZLsTtMXE3ZsgFx1YDhILEfGiC0qAxoKXmOYX3yQP6BgmtQvcW6Kc/SU97u2rTxhJPt15zQ/IASDLo6ioP1aBN5wUk/VBQwYcxwfDFvkFhISXKhGc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1771007223;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:Message-Id:Reply-To;
	bh=mY3KvVQTMdhlwCwGfxZ8paH0e/fwTPQdmCblgG7lpwo=;
	b=emu0VDIbvKpft0jaGTu82LjXNrUP9yxq0fM/SdxZsQcUHRK1EQKRKGlF7QIKpL/B
	C5NrAoTaCsc6Nxdsi2O8aU/l61uGAfFLq4E6sDl86ZPvj6ECJwnnbOrOYAdXgAuQeCU
	IdS3AeASN4s9jsHbzjC0jnYhIKk4RKk7WKwpw11k=
Received: by mx.zohomail.com with SMTPS id 1771007221343248.33202963816166;
	Fri, 13 Feb 2026 10:27:01 -0800 (PST)
Date: Fri, 13 Feb 2026 18:26:44 +0000
From: Yao Zi <me@ziyao.cc>
To: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <me@ziyao.cc>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Problematic understanding of phy-mode in Rockchip DWMAC driver
Message-ID: <aY9s5PXP4zZ7R6fa@pie>
MIME-Version: 1.0
Content-Disposition: inline
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_102729_138769_94EDFB36 
X-CRM114-Status: GOOD (  11.49  )
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

Hi folks,

I was looking through the RGMII delay setup logic found in
rk_gmac_powerup() of dwmac-rk.c, and found its behavior is strange,

	switch (bsp_priv->phy_iface) {
	case PHY_INTERFACE_MODE_RGMII:
		dev_info(dev, "init for RGMII\n");
		if (bsp_priv->ops->set_to_rgmii)
			bsp_priv->ops->set_to_rgmii(bsp_priv,
						    bsp_priv->tx_delay,
						    bsp_priv->rx_delay);
		break;
	case PHY_INTERFACE_MODE_RGMII_ID:
		dev_info(dev, "init for RGMII_ID\n");
		if (bsp_priv->ops->set_to_rgmii)
			bsp_priv->ops->set_to_rgmii(bsp_priv, 0, 0);
		break;
	case PHY_INTERFACE_MODE_RGMII_RXID:
		dev_info(dev, "init for RGMII_RXID\n");
		if (bsp_priv->ops->set_to_rgmii)
			bsp_priv->ops->set_to_rgmii(bsp_priv,
						    bsp_priv->tx_delay, 0);
		break;
	case PHY_INTERFACE_MODE_RGMII_TXID:
		dev_info(dev, "init for RGMII_TXID\n");
		if (bsp_priv->ops->set_to_rgmii)
			bsp_priv->ops->set_to_rgmii(bsp_priv,
						    0, bsp_priv->rx_delay);
		break;
	case PHY_INTERFACE_MODE_RMII:
		dev_info(dev, "init for RMII\n");
		if (bsp_priv->ops->set_to_rmii)
			bsp_priv->ops->set_to_rmii(bsp_priv);
		break;
	default:
		dev_err(dev, "NO interface defined!\n");
	}

I don't think dwmac-rk.c does any fixup for phy_interface, so the MAC
driver always connects the PHY with unmodified phy-mode.

ethernet-controller.yaml states,

> # Device Tree describes hardware, and in this case, it describes the
> # PCB between the MAC and the PHY, if the PCB implements delays or
> # not.

So let's assume this is true for Rockchip's DWMAC glue, then the
driver's behavior could be summarized as,

phy-mode	PCB delay	Rockchip MAC delay	PHY delay[1]
rgmii		TX & RX		TX & RX			TX & RX
rgmii-id	None		None			TX & RX
rgmii-rxid	TX		TX			RX
rgmii-txid	RX		RX			TX
[1]: if available

where only the "rgmii-id" case makes sense. Other cases come with 2ns
delays added more than once, and would cause broken link.

It looks like dwmac-rk.c considers "phy-mode" to represent MAC's delay
configuration. If so, the table would look like,

phy-mode	PCB delay	Rockchip MAC delay	PHY delay[1]
rgmii		N/A		TX & RX			None
rgmii-id	N/A		None			TX & RX
rgmii-txid	N/A		TX			RX
rgmii-rxid	N/A		RX			TX

all cases have the necessary 2ns delay provided for both TX and RX
signals, however on-PCB delays made by traces couldn't be described
at all. This idea is also proved by comments in Rockchip devicetrees,
for example, rk3576-roc-pc.dts,

	&gmac0 {
		...
		/* Use rgmii-rxid mode to disable rx delay inside Soc */
		phy-mode = "rgmii-rxid";
	};

It seems for Rockchip DWMAC driver, "phy-mode" doesn't follow the
generic definition. Should we annotate in rockchip-dwmac.yaml to mention
the different usage of the property, or update both the driver and
devicetrees to align with ethernet-controller.yaml? The later would
break compatibility with existing devicetrees since there are already 15
instances of "rgmii-rxid" found in arch/arm64/boot/dts/rockchip, but
luckily most boards make use of "rgmii-id".

I only did a brief search in lore but find no related discussion, please
point out if there has already been messages around it, thanks.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
