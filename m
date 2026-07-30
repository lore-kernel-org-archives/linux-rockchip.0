Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F00AC55167
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 22:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rgyiywz+DQv6/xv/KUf2kuquI4kOdacD5TjBFk1ayw=; b=EMcEavyoBxbmgm
	eVwkRSrB+gdMXl/8DajR80u7hR9WFcmtpsnWPwEwBtXD9e6qSBaBA+huyxOzbLYEToy/TJDke4p3K
	I1kwwA+XmhF5rIcTVvWuuiggDtoYq5zJ4SWENImi2fth3jzerhurGweAQGaZKvU++AugEUbWAIEw5
	Fpy8CbWgSDhoHS6nSCBIp4457I5JeuzQd3ovomaIkrjrTBLgsfRKHCCqAisCj/DntEq0aHWKEqKin
	uFObIozIA5Q0qZBVjrYg3aXfeHn6B/FAELEvM2/RFCqGhBE2r72/7sKLCQigFbNRJPO/sY3NSgY7Y
	rfE7tDu3pXld035j4jLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpZI8-0000000BQzV-3isq;
	Thu, 30 Jul 2026 22:31:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpZI7-0000000BQzM-2qaW
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 22:31:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1A448601E0;
	Thu, 30 Jul 2026 22:31:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CB0F1F000E9;
	Thu, 30 Jul 2026 22:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785450709;
	bh=lia3VttcYmNU28MbjTLvi9iby44TkIBK7PduY4/5a4I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=MHRYPcHl32Os8tLIr+AZQxCTXycWR8ryuEvpKsT108bOjmnJrjtwLNDWnaQd27FAa
	 UwXtYFeWV7lbRfUntzIOGku5tj33PDMJAW1TTI7jJ1kJs9VR4xSdsFE3VKY2sPdn66
	 NcARGkHHdhN2zVzvgSw+XdiguKBRVJd/wo7uE/hKN0taiAerNwp2AwBhO3K+Qrgko4
	 ppOyYpS3WNYKofJc8BPiKBLZf/hu8SpXaBz3kh+yMHiDeknHuNE4Asq8AdjHVA8fIC
	 cutMZ6Jjze/RNuqwZPM0nkwZCCKKdvFIVYs1bzN1mFFMC1fc6EwMjowPKixiodWEW/
	 vgXvNdE3mLP4w==
Date: Thu, 30 Jul 2026 15:31:48 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Frank.Sae@motor-comm.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 maxime.chevallier@bootlin.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, attinagaoxu@gmail.com,
 alchark@gmail.com
Subject: Re: [PATCH net-next v3] net: phy: motorcomm: enable the reference
 clock for YT8521 and YT8531
Message-ID: <20260730153148.3a4052ed@kernel.org>
In-Reply-To: <20260728055659.1211459-1-gahing@gahingwoo.com>
References: <20260728055659.1211459-1-gahing@gahingwoo.com>
MIME-Version: 1.0
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

On Tue, 28 Jul 2026 17:56:59 +1200 Jiaxing Hu wrote:
> These PHYs need a 25 MHz reference. On boards without a local crystal
> it is fed from the SoC and described as a clock on the PHY node. Get and
> enable it in probe, in both yt8521_probe and yt8531_probe, so the PHY is
> clocked before its registers are accessed. The clock is optional, so
> crystal-clocked boards are unaffected.

does not apply please rebase on net-next/main and repost
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
