Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F4FC44512
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQo2FxSgSaX8p0kvfK94Lc7Kt8C92fZTBgKoRGXG4MA=; b=OkdkknbQ0i32XX
	4WEa7Bw5qd80kqS2RpE1NH/FB95Dix3u+u1nSublVieiFsE3YSQAz+VgGP0rByfrdi5Fv+91WyZ+D
	kKTGX3hsWd9s2opWhUkR4pjax+NCdtfrqwPlHJ0fJkCJcLdyATa2xwbeGuHtNSEgxZPEeo9JwsiRd
	xPnuhhuYF62roBEZ1SqlNv+TfILK0T1Rc/EHIdIhEXBe9HxEYEyjYFrzpMbfhQu6qoMCaQPb9ZCib
	K41IWQ1zfpxkO5jW7F0bZwK5QHXQUVutWN1RrCAeBExjfb0N7DZWdZdiqsynsXtC+C6n1uylXWOyG
	VyhQC9o1gaBxAw9UWihg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkR2t-00000000Phq-3T3z;
	Thu, 16 Jul 2026 18:42:55 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkR2r-00000000PgK-1AbJ;
	Thu, 16 Jul 2026 18:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Puj8hSyXVH9SJHRVn9nQt1SSuIa53OLrxJsSKuY9XeY=; b=kIswzkUFjBjWZZ17R9Frormnbw
	roZkXBKY6QvdhOlJtDu3wGZjF4/2AMkxsxyiOVPOA1oZRdbehyXwfaVEvqJylpGqmNQd/jZdNZGQU
	Z+PrJkIw8ValXztuiGFzc8PMotxrOb1R0p9zp8WAYheBr1NkBdmO4C5ABfE6lBBXBcqE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wkR2k-00Cc39-Tt; Thu, 16 Jul 2026 20:42:46 +0200
Date: Thu, 16 Jul 2026 20:42:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
Message-ID: <e99f752a-da1f-498d-9305-089b9d736e70@lunn.ch>
References: <20260716095101.2498464-1-gahing@gahingwoo.com>
 <20260716095101.2498464-3-gahing@gahingwoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260716095101.2498464-3-gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_114253_322177_F5B0EC73 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
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

> +&gmac0 {
> +	/* The RX delay is added by the PHY, the TX delay by the MAC below. */
> +	phy-mode = "rgmii-rxid";

Please read.

https://elixir.bootlin.com/linux/v6.15/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L287

> +	clock_in_out = "output";
> +	clocks = <&cru CLK_GMAC0_125M_SRC>, <&cru CLK_GMAC0_RMII_CRU>,
> +		 <&cru PCLK_GMAC0>, <&cru ACLK_GMAC0>,
> +		 <&cru CLK_GMAC0_PTP_REF>, <&cru REFCLKO25M_GMAC0_OUT>;
> +	clock-names = "stmmaceth", "clk_mac_ref", "pclk_mac", "aclk_mac",
> +		      "ptp_ref", "clk_mac_refout";
> +	tx_delay = <0x21>;
> +	rx_delay = <0x00>;

Try setting phy-mode to rgmii-id, and these delays to 0, or removing
them.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
