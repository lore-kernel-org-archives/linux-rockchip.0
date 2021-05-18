Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86166C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 08:59:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3988461353
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 08:59:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3988461353
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2llhJrmG4DDnz6Kso3ZUNmX/Qq3JuYMHQd/NzPS87Tk=; b=c2JQzG9DK8NdZJvLEHZ0umLmo
	Fl4voGY6bGncfIvXf4elpySjJfYWhW9qEyBcILBlPWW64oe69jc2O2gt0XE7yS9EIf3KiaC62Y6lG
	xfDDKnXm1BBklh7OxaCQsZ8ESa7SbWdibyi7x6TwFxmRz4YqnFcmvH0d6KUZ4SEYDn3AbEKrrXcRd
	DAG64XLzjz846f4TUyViHwr2KNuLid5XKzhEzuAr7mPsqMb2M/4/A1ImI1vi1Dwcc26/Wfp+0YJqA
	nKqESNWUONRQ2w3DcckZYPREjWkXJHdcnh05yDp6jatJAXEd4OzdkrJXvfpjVL+02T4rHXpnQRaa8
	57W8FOnvA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1livZh-0001QM-0Z; Tue, 18 May 2021 08:59:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1livZf-0001Pp-IF
 for linux-rockchip@desiato.infradead.org; Tue, 18 May 2021 08:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/qQpnLi2qBgwEpUigoYrSzBOlkaPo67AiZzsrM3RAP8=; b=FGFst5Jr4bhVvHjg/IFnHN/TRg
 jEmrOwvO5ayF4ciH7Xj3oUJWRJJ39FLZWgxgsvWlOvoD6QwD8KmMLU/8PqvRhyLWoRhxSFxnsQ7Bv
 xkW6hXDJwl4zpfS2DNyBz5HRdyOqapUBVZAAHxsaBob41lJ8bmRcVfZyAZL6yMKM4TkYzfPEGZKRB
 Ey5zY8XIgzWU59noNGmzs1sBYKCWacsmfaSljxoTAD6IGSRZF/b+9r1rR2KBH4Suo3SkSWbaOtST7
 e0Za+H42g0q0lXNvy4V2VSQSazIWRLS2rytmhw/+VB4y6WcPGD/kWY2V3NmjZP48NLU1t3ot1YJVD
 dOWhr8ww==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1livZd-00ETxd-38
 for linux-rockchip@lists.infradead.org; Tue, 18 May 2021 08:59:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 68A2061209;
 Tue, 18 May 2021 08:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621328372;
 bh=UgRUbJBBnzpQLR7EDO5qOM4DnpZGVxZ1RG6udzAgiSI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cgIBNr/pGVp/2pKxnCVr3/1dfbYoIilVzSYhr8SiMXo35yUdwOvOqcGNOC6paBu5j
 VUhb4VSaRcSiLLutDH0ZifW8KQyhfEQYIDVfdj+Rbu07DOd9irFFpLhe8Fr1J4H2SG
 3RFRqbqyByyQw9Z49WATQFDdvf9vGS9m5RhYHfayhwyeKzJg/OTgmMLESJvzp4Y0LZ
 ZGnCr632Km3OG02yjd4k5lW6MzXDTieI44HgoOff0oX/mApS5Fy22ADiV56qBD11dz
 gZIOw33NJewTZLKIzlzlhpLLSpSYD0xs6aVfQQFt0FeCjM+4Uv0aO33sMGVP97gXEv
 xeKXASFC/tZxw==
Date: Tue, 18 May 2021 11:59:27 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YKOB7y/9IptUvo4k@unreal>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511214605.2937099-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_015933_172530_E41461AD 
X-CRM114-Status: GOOD (  12.92  )
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

On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> Add a driver for the Motorcomm yt8511 phy that will be used in the
> production Pine64 rk3566-quartz64 development board.
> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  MAINTAINERS                 |  6 +++
>  drivers/net/phy/Kconfig     |  6 +++
>  drivers/net/phy/Makefile    |  1 +
>  drivers/net/phy/motorcomm.c | 85 +++++++++++++++++++++++++++++++++++++
>  4 files changed, 98 insertions(+)
>  create mode 100644 drivers/net/phy/motorcomm.c

<...>

> +static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> +	{ PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> +	{ /* sentinal */ }
> +}

Why is this "__maybe_unused"? This *.c file doesn't have any compilation option
to compile part of it.

The "__maybe_unused" is not needed in this case.

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
