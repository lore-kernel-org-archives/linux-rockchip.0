Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A82FC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 08:00:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B70B4613CD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 08:00:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B70B4613CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ah6fcm07lpdmtjAAgYDh+zDapRUi8Y3tnXN3nnrdAwo=; b=LV72LPyQZnlaDKXTSLFd2+TKF
	dACLV0XsVTZNP3xriUu7VT+cjOugo/5SMlhy7mV3pYs4P7PH3+wvbRYoq5ZbGklJIlS9ZDWQ5vq8o
	dxMViBGKySA5x3mrlpSPoNUdl1vegS4VKF/N4bwghndXv2e/gUHTJWVuvcCxdHQ3rA+AXk11YY0ej
	gF4u04lRq+4Lp6rC4304EeSctz6OPYctIj2hGIEC/oC4N8imqqZN/6SbNDi++evD+F/cHdose3V70
	7YxNoxOApliYOYRG+j8fzbJQUuRMZ1nvTEwnbPonZyg8ziUr8pEgrCmX2FROYSFO10k9isWn7edy/
	QjmA7stfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leCRu-000alc-1p; Wed, 05 May 2021 08:00:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leCRf-000akO-Ii
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 07:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=S7Pq+dPO0Tv1xcOSVhnKOgwc6W4DtIJvBP6JjpLXSuw=; b=HxfV99xhOQ3S/84E/rQgGJTFuD
 0fNnsOPffBBKx5tA2yjZ+mHSAHb0k+zgspSA8Ket6Q4UfqjjIfwGHhyGmMKmNHc0KXvkQeOe33eOG
 P68brdYjTOgzGXLyZpDZTm6S1IqnKL6VuH4DWXrPCVW+4tGr3bs0mizSVtt3DbP9AhS/LzuIb5652
 DYVCpEVktkg9dlKbVOWdmZgtcu0mwi+ZkHSJUR5WCDS/4gR6A5SJFPzujr1KgV+T1i8ITagpSXYNP
 QPgDBDRNuBzP+rZzaoj+2snKxq8jp75tNM3JfKGYy6ydI1iiGDphmBHEmu+k0j18S7glSASZeL4G7
 1CiNmyaQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leCRc-004YDp-QV
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 07:59:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leCRW-0003vm-La; Wed, 05 May 2021 09:59:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leCRT-0004SA-6P; Wed, 05 May 2021 09:59:35 +0200
Date: Wed, 5 May 2021 09:59:35 +0200
To: Jon Lin <jon.lin@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@esmil.dk
Subject: Re: [PATCH v2 2/8] spi: rockchip: Wait for STB status in slave mode
 tx_xfer
Message-ID: <20210505075935.GB10432@pengutronix.de>
References: <20210427073733.31419-1-jon.lin@rock-chips.com>
 <20210427073733.31419-2-jon.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427073733.31419-2-jon.lin@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:57:07 up 76 days, 11:21, 88 users,  load average: 0.04, 0.07, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_005944_867154_E0AC1E64 
X-CRM114-Status: GOOD (  17.13  )
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

Hi Jon Lin,

On Tue, Apr 27, 2021 at 03:37:27PM +0800, Jon Lin wrote:
> +static inline void wait_for_tx_idle(struct rockchip_spi *rs, bool slave_mode)
>  {
>  	unsigned long timeout = jiffies + msecs_to_jiffies(5);
>  
>  	do {
> -		if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
> -			return;
> +		if (slave_mode) {
> +			if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_SLAVE_TX_BUSY) &&
> +			    !((readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
> +				return;

This doesn't compile. There is one opening brace too much before the
readl_relaxed.

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
