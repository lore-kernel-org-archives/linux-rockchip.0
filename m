Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 126E8C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 14:52:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC19A61480
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 14:52:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC19A61480
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AoZ9p/CQ6C696FfbNY9sx8xWpSwxorDcU8mcCOQhU9c=; b=qySj8sUzeg8TceVTIs4dB6I/p
	0iMxs56WHAtf6CfHruszYnbSOSRehGr5i++dMEExm8hcJpiBV9l0+Limzl8Qzjt9u3/nOjBhJmf0R
	/ojij+bRb8ZH9fdsvwcJtw6nS7jawsvwwUTWdRwygKg+CW8Prcun4sz9RjP/nW/B9zI/73+O5JUks
	015QcjC8o2sBsvKfBOChYZVymRNqACe8hVNX1qO1sDxt7Mv93/ZLfCrKIHtK/3wgEPhi+2fD8LPL7
	XBG/7mJo8lgh/KGX86N655ZPK2KwqiHXtyjvuBTAhjCXOSM90AlQ5XjJ9BIDmdZDvN6IpzTfyHXN8
	1L+i3H4VA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhZB8-008LMT-9V; Fri, 14 May 2021 14:52:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZB5-008LMC-Fi
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 14:52:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=AmV+EvcDeYdDnQmn67vbG6wCy+Lo347GLmfcoYF4nYU=; b=0zT49y4gS14Po4hyPT1nmVmHSq
 LGECFyhuJwl0mA/iPUa78WWe8eJ6O+OAzumniEm4nwTnMdJU6VhR2Wf/Lwsc7JDYI0lGgzTLWtqdy
 Q3CY3JvXu7AP2NgLdIIAkq0pjv2XbRwloXruYiLC+h5bpqSr3futfcCLVJsDx+cXMFQUk+CeOh30C
 8BVFBapQUnt48k1P6Rufny36HSGS/sXSCp157xxnp0+l/F6TIKVMAizvNYN3tD30Zo0zpu4Dmapvb
 TP8CdA64e+tI0Pf10OAFIj9795lKmcbQJXmJKldU3U0MxBNzTPc0PzxYnxYPJZhYAwZRnQ3ea5oz4
 /17i5FrA==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZB2-00C3rJ-R6
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 14:52:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AmV+EvcDeYdDnQmn67vbG6wCy+Lo347GLmfcoYF4nYU=; b=pgAhzW7y6e8e6S6CTD+RLxhtpw
 CIbMBW9p+nLCtjEejKjaI78U+3rS4xdSD+r6syqVKDDi5oul/aTaiVlDDHAk21Q+qcBBtRzBbitBD
 P33FQlRqgtMUki3Iqy1ps306xLiCE8BIMZsDHKA1FrrSh/78ephvIVnMkktqYUNAGEQk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lhZAw-004CPx-UN; Fri, 14 May 2021 16:52:26 +0200
Date: Fri, 14 May 2021 16:52:26 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YJ6OqpRTo+rlfb51@lunn.ch>
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
 <YJ56G23e930pg4Iv@lunn.ch>
 <CAMdYzYrSB0G7jfG9fo85X0DxVG_r-qaWUyVAa5paAW0ugLvoxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrSB0G7jfG9fo85X0DxVG_r-qaWUyVAa5paAW0ugLvoxw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_075232_902239_74401F90 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

> > I also wonder about bits 15:12 of PHY EXT ODH: Delay and driver
> > strength CFG register.
> 
> The default value *works*, and from an emi perspective we want the
> lowest strength single that is reliable.

I was not meaning signal strength, but Txc_delay_sel_fe,

  selecte tx_clk_rgmii delay in chip which is used to latch txd_rgmii
  in 100BT/10BTe mode. 150ps step. Default value 15 means about 2ns
  clock delay compared to txd_rgmii in typical cornor.

[Typos courtesy of the datasheet, not me!]

This sounds like more RGMII delays. It seems like PHY EXT 0CH is about
1G mode, and PHY EXT 0DH is about 10/100 mode. I think you probably
need to set this bits as well. Have you tested against a link peer at
10 Half? 100 Full?

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
