Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF01C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 21:57:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 018EE616E9
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 21:57:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 018EE616E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UXtun5zjHOIi8w5YJaxJEUE0/zmvzgvNPtLWXSTFGQA=; b=kwTNW2dxWdfSV3UnycS001n5e
	t9ATWtu7g75VmNC9bVT0PhEkFapKUdt5vlL0qtbSgKRuQb4OnuHIyjK4ozEDKiYtA61Ahz9u7Jcft
	Bx/e+7rITMlIANBv7ZwzS2LvfUuwVCy7gDE9CLibW5bBDemgUH5BVCkL+DvErZkdsjIo1J+GpViTG
	AxBhAjKe1s5bvTYKLA4wGMCJUJwCjrrx3A3pTT/oF1+hBB8L7HTF1Xoek/572eNTrq4UfpPoIcSS3
	jd/tUmmnnWTgH+8+CeZW8DObHb2lHMAolUYZyRBBkVYkqIvv2SEORIo9XXTZKSFkPpHTTw5mU6Qpd
	xRTw5SxEA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgaN6-001Ni9-G8; Tue, 11 May 2021 21:57:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgaN3-001Nhs-OZ
 for linux-rockchip@desiato.infradead.org; Tue, 11 May 2021 21:56:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RKf0jhjqNyYKa1rwLYcbF4xtKVI/z4lp0gDi5eHVKyw=; b=LXXmonnPM70VO0qAzHGJ5oasg0
 Ul6zVgLYXxZcLox8EPIgeN363SspGpuQNCZy9xKTdQqE5pmaliXFcpI1T4X8RP8B1YT1dL03XO5n5
 ZCKyxhs367QUCjAeR9ixUdOqtcTXKEmFVnDAW6zzmDos077jBy3K8PUvdwBhTYUTthIaOSiywboyG
 lB2CyJLOd/MM74vM/yfLPCuSgOGaRvDgMvGr65c2rAoqSlfGgZQ/UJfpu5lghuJS7RlVVWpQFc0oD
 nCGR5Psk1jIfIo+thrW3ppld6UuEWNaOsEk1Oh81chcdY4XjNGOkTtqnKe3yDfcguuoeRIojcSD1E
 UZJWQHoA==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgaN0-009wMB-T4
 for linux-rockchip@lists.infradead.org; Tue, 11 May 2021 21:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RKf0jhjqNyYKa1rwLYcbF4xtKVI/z4lp0gDi5eHVKyw=; b=xhdV61NXfHaovmyP1GOMVMIqz
 QjCVo7lOaj+nCCq9P4erUTr+/yU4fr2EsAOcWvwerLlNfjxNETg2mUnKotlQWCpXE/4dF8rR51bl2
 5AynBeYQmksC+PMcyeH0O7oy2EzZyP32gPSIJTejJhp3jdgCWiuhmZkOzl4aOdCRClRouIpouA9Sz
 PZgNtrq8Fy+JMmEr7VnYy62LYx+LqV+XHt3GLz9pHvk2J5Vp0yOgL6nTpH1Q+Gq1/PheSPYzNBNnS
 VmVPs+S2t3/K8a0vVi2cf9Px25/iLHZnLzDn/wcLimAoK8S/p56tqDVeO03Q/fe5Lfhrhzch4aC6F
 +nK2xpdTg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43874)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1lgaMv-0003Fx-Gv; Tue, 11 May 2021 22:56:45 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1lgaMu-0001Qg-7M; Tue, 11 May 2021 22:56:44 +0100
Date: Tue, 11 May 2021 22:56:44 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <20210511215644.GO1336@shell.armlinux.org.uk>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511214605.2937099-1-pgwipeout@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_145650_966154_E02F8D8D 
X-CRM114-Status: GOOD (  12.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> +static int yt8511_config_init(struct phy_device *phydev)
> +{
> +	int ret, val, oldpage;
> +
> +	/* set clock mode to 125mhz */
> +	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
> +	if (oldpage < 0)
> +		goto err_restore_page;
> +
> +	val = __phy_read(phydev, YT8511_PAGE);
> +	val |= (YT8511_CLK_125M);
> +	ret = __phy_write(phydev, YT8511_PAGE, val);

Please consider __phy_modify(), and handle any error it returns.

> +
> +	/* disable auto sleep */
> +	ret = __phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);

Please consider handling a failure to write here.

> +	val = __phy_read(phydev, YT8511_PAGE);
> +	val &= (~BIT(15));
> +	ret = __phy_write(phydev, YT8511_PAGE, val);

Also a use for __phy_modify().

> +
> +err_restore_page:
> +	return phy_restore_page(phydev, oldpage, ret);
> +}
> +
> +static struct phy_driver motorcomm_phy_drvs[] = {
> +	{
> +		PHY_ID_MATCH_EXACT(PHY_ID_YT8511),
> +		.name		= "YT8511 Gigabit Ethernet",
> +		.config_init	= &yt8511_config_init,

Please drop the '&' here, it's unnecessary.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
