Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8152AC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 13:09:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB0E261574
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 13:09:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB0E261574
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FgPrJuv8TNbzmlT7pPa32U+uxnF9KLh6egk8roqb6Yg=; b=PnVZ4lV+p8jyL1cM0CP3SthyB
	2LqCIyAoewe4kwbRBjG9h7FueoCCe59CrCv3dvBNWLmFCQd63VQcJDIj+ssbx+NimfAO96O6lD+IX
	GUTTgiuYamu9TMlKZbo6NUv/jt5YE64HAIw5W8W3wdw/A8i6LgDroe56WGEONa2eFtaZt2gcgKeI4
	fp01CsU2ulOi2yeZcZJytwxn8H3vbcNPg7AlzcsFEK2/UkK0Xo92KJo8eYHgtTuwkbf+tivUWs9d+
	z2XFkUWk3xEJonlZUSyZerm6iTiS8B79O7cHBYFEUmSEzv1EP3ZZMyg/+KUFxFPO1PebWDBQRZPbd
	hSYVMLeOQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhXZF-0086ZW-Up; Fri, 14 May 2021 13:09:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXZE-0086Z0-6p
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 13:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BXqAC1pbKs3j4NOO8yWXGrt0LNNTBr4iLV2yAP7ms80=; b=UDI3iXJBw5zJKSlpSY1vUS9bW5
 J7HYO5qKCqR2ZGwpi4qQAWBjPIwqvAYBPnd8MaSUC22YQZ6DQb4aVBGo90xra32CBXjjKaluuPy0l
 sofW2S5kG6ra9pGVWDH7aBCAZIuGOCyU73IjJQuEY2xIk2BFxxECoo5iSZ0okKauhRyYXqjefIP3J
 qxirDtmC3xT38HNn9vUeIcKiiK9CFWryn1ahYFmDuhbx6PywUD/ukt0AZVK6p7XAdmyQyalj0SHdt
 hEVKRQsbtW60tV06luLvsHYbJ4cmkI5kgodJDGK4KMEhM9ynzlt9F9Sq+0i4bN9SrOHDDEZq/Ts5W
 PwZjR07g==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXZ9-00BziA-Jg
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 13:09:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BXqAC1pbKs3j4NOO8yWXGrt0LNNTBr4iLV2yAP7ms80=; b=OgwWUSq1igQM+qijDhyiGpZbB
 7pJhTLrdVnAZ5DZ3iS5WTWxGeL+xy8flu9DxXz2OkAC+kU5Vf/DMusm6P3V9sMJSWrz4SqgBJeFTU
 fmI8iThYjOUYoR7z3wz+2xklLyju2B9NLCEQi09WwkXwo4BRs3k3O5BnAnl6/mK0Vak55wjvlKEHR
 O91YCtVgJcoS/7vJOzu4DkGu5iTk/x9u/UNK8QvK47UO1m1TcIuG8Wdmuh97HFjzNCxpxy6RU5EBF
 npNVpKRklFtY0KrDX597FXumGg26Id1krUVYbQ2hrBo4LCA8lkivL1pmswzIKPnNVI30X3enx4uS9
 El6wrBUFA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43972)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1lhXZ0-0008Bd-5t; Fri, 14 May 2021 14:09:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1lhXYy-00042P-TJ; Fri, 14 May 2021 14:09:08 +0100
Date: Fri, 14 May 2021 14:09:08 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <20210514130908.GD12395@shell.armlinux.org.uk>
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514115826.3025223-1-pgwipeout@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_060919_670505_BA4FC1C7 
X-CRM114-Status: GOOD (  14.06  )
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

Hi!

On Fri, May 14, 2021 at 07:58:26AM -0400, Peter Geis wrote:
> +	/* set rgmii delay mode */
> +	val = __phy_read(phydev, YT8511_PAGE);
> +
> +	switch (phydev->interface) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +		val &= ~(YT8511_DELAY_RX | YT8511_DELAY_TX);
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +		val |= YT8511_DELAY_RX | YT8511_DELAY_TX;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +		val &= ~(YT8511_DELAY_TX);
> +		val |= YT8511_DELAY_RX;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_TXID:
> +		val &= ~(YT8511_DELAY_RX);
> +		val |= YT8511_DELAY_TX;
> +		break;
> +	default: /* leave everything alone in other modes */
> +		break;
> +	}
> +
> +	ret = __phy_write(phydev, YT8511_PAGE, val);
> +	if (ret < 0)
> +		goto err_restore_page;

Another way of writing the above is to set "val" to be the value of the
YT8511_DELAY_RX and YT8511_DELAY_TX bits, and then do:

	ret = __phy_modify(phydev, YT8511_PAGE,
			   (YT8511_DELAY_RX | YT8511_DELAY_TX), val);
	if (ret < 0)
		goto err_restore_page;

which moves the read-modify-write out of the driver into core code and
makes the driver code smaller. It also handles your missing error check
on __phy_read() above - would you want the above code to attempt to
write a -ve error number back to this register? I suspect not!

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
