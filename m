Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 023DCCE7A81
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 18:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvUour5FbHDGZbmmH+GZcmVgYG6WUtVSeVXHHcCJeo8=; b=ZJ7AHmPPv5G5xm
	/kPB1tA5O2SFfaN3TXMV7tidY13sJDkU7iRRJMkeatOdoh/pSrHH7tvOxiu/H0FWBxw1/RDfSzr2G
	AxjqVqROkGMYa5lL53iYBxyOC4L8VEeW+j3NN+rsL5XoLmiGs6j061QR2JVhDFGic51Kv8MTfVnF/
	q8BJW8PBoRWNrXtMAgelfEfKkSV4RWu2BMmKM0vdNu/KTaallehdAJiM3DGqS90yN3j8wKJexNc9Y
	pEahxMaAQDDuRovnxTvUNd/f/fojwJf4j4jjDbYM7tNJxy1LNVgmkbMpBp8lSniXMyV/1nQWV6AZf
	vVR/8XDxNiWDlSAUo2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smH6j-00000009Q9V-2VoI;
	Thu, 05 Sep 2024 18:21:25 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smH5k-00000009PzI-0GMc;
	Thu, 05 Sep 2024 18:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=WYk12iEsbdnlW331g4DNApKiQCHyaZpFj0H6XOnYFho=; b=Rw1yGOFTRlHggJlQrMRp8CtgMF
	kDHVEeMezbUMAT11yNSIyaVD1FdupgVQ31ZQxBJQ+uX1Br5NtwbsTrfgNvHpgaLSU0MZ7d/7t8+Sq
	fRxQeJVdJf4mzFs7qIGI8viq0bQpnJNPJxaGLdwyK3zuKiw4lWNUIGca9HN4jCylIN0E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1smH5T-006i0Z-B1; Thu, 05 Sep 2024 20:20:07 +0200
Date: Thu, 5 Sep 2024 20:20:07 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
Message-ID: <668ac08e-5bba-43cc-82ec-12af1848d528@lunn.ch>
References: <20240904111456.87089-1-bigfoot@classfun.cn>
 <20240904111456.87089-4-bigfoot@classfun.cn>
 <6030542f-070d-4d76-9a5a-fbfc6bd433e6@lunn.ch>
 <1e189c70-e677-453d-9e31-6637196c2b5c@classfun.cn>
 <3f5bcc6c-5ee0-4fef-bb58-f7acf9551fc1@lunn.ch>
 <fd4fc7a0-7def-4f91-a64c-71689ff71d1c@classfun.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd4fc7a0-7def-4f91-a64c-71689ff71d1c@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_112024_124233_655CA227 
X-CRM114-Status: GOOD (  11.55  )
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

> arch/riscv/boot/dts/starfive/jh7100-starfive-visionfive-v1.dts also
> uses YT8521. I added rx-internal-delay-ps and tx-internal-delay-ps
> to rgmii_phy1 of mdio1 according to the prompts, and it now works
> well using rgmii-id!
> 
> &mdio1 {
> 	rgmii_phy1: ethernet-phy@0 {
> 		compatible = "ethernet-phy-ieee802.3-c22";
> 		reg = <0x0>;
> 		rx-internal-delay-ps = <1500>;
> 		tx-internal-delay-ps = <1500>;
> 	};
> };
> 
> &gmac1 {
> 	[...]
> 	phy-mode = "rgmii-id";
> 	[...]
> 	tx_delay = <0x0>;
> 	rx_delay = <0x0>;
> 	status = "okay";
> 	/* Motorcomm YT8521SC WAN port */
> };

That looks O.K.

The YT8521SC seems to have issues with delays.
jh7100-starfive-visionfive-v1.dts says

/*
 * The board uses a Motorcomm YT8521 PHY supporting RGMII-ID, but requires
 * manual adjustment of the RX internal delay to work properly.  The default
 * RX delay provided by the driver (1.95ns) is too high, but applying a 50%
 * reduction seems to mitigate the issue.
 *
 * It is worth noting the adjustment is not necessary on BeagleV Starlight SBC,
 * which uses a Microchip PHY.  Hence, most likely the Motorcomm PHY is the one
 * responsible for the misbehaviour, not the GMAC.
 */

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
