Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71633C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 00:49:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF34E6188B
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 00:49:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CF34E6188B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PKUxqAQ+9jybYEHlExtPFxnIWZOTHtb7SGBVzZ4gzMM=; b=MyvHsPR0S/gmvFjBPI8vWGpwM
	nJsXgbSBIaHBFaT3gerfcNDC+ABW27ze7BPGMMKP76UH999zVz971nl+GLa7A5N2C3LF3hPvDfJnt
	KdhJIOnsETswpaI7i/nWwxxtIBv2Ts1ID8gt4OB4zAXYYIGRsFZtpRHeUbjo+WxAcD/Cdiz65Pr9a
	mD1xYXjdyYTV8rzNStcTSdIG3C6Ky7GrqEJQ9R1d84hWQS7+hDRyQLJGc67WcmKZhi1d+db0geC3r
	mt4XRC1bJ469Zb7iMP1Sx1zcXtNbSw0nFRWq8J7MLSpD8B/byCfIDrrRGK4Drj3jA3SIhrcedEI15
	4io2Mt5lA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgd3j-001d6L-9Y; Wed, 12 May 2021 00:49:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgd3h-001d4p-73
 for linux-rockchip@desiato.infradead.org; Wed, 12 May 2021 00:49:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cYa39Ppa/s8/J47IUv/CCPv0pyDLZZpBQwjmpffJtd4=; b=qy07NkmPNrYp3r030X8vy3bc9E
 NPodt3pX5KFwnzQDomh4LjvWO54JKF0LaRiBXdtFDfiEMry+ZQM8WVw8TOJMu5QtZpLWBhZKD4kZ7
 EMcQWsGRzrtYu43tX3nW3sq78zHchhSR29L+pP/j2crizgEd2/eWS0b96hLQkW6Q+0dsDTk1YlZbA
 SKtcXUFNXOyX/idOGsZKTp2a7copvrYBJKBn6LTVtn1hXnaR+ODlKtoz48eoGhWmq4H5tl1PKeXpK
 1Fyn0dq8C5AEP4+DpEI5Pbf2vdwB5/0e49h0ZHGLExIOzprsHV0fWxe37am3erCYaCKKSDdNUS0I4
 gTqD9C+A==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgd3c-00A1X0-Ji
 for linux-rockchip@lists.infradead.org; Wed, 12 May 2021 00:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cYa39Ppa/s8/J47IUv/CCPv0pyDLZZpBQwjmpffJtd4=; b=gN+xRV/Gzbrg3ydw/AW6zMA3SC
 fr1aEtjvwZHuhL/lr6YGfJXe/J+CopkU3Sqs+cFq4XPUx63hSjU8iLHL0m8Rhj4UF1XBDXf2lYaR2
 napwxHV+7E89wzY5cglyMUMIStI9tqe28fYZwBXxBnOTtE3e0k/BZSHH/Gv9nqLGgFR4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lgd3O-003qHX-Un; Wed, 12 May 2021 02:48:46 +0200
Date: Wed, 12 May 2021 02:48:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YJsl7rLVI6ShqZvI@lunn.ch>
References: <20210511225913.2951922-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210511225913.2951922-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_174900_672249_695C6DE6 
X-CRM114-Status: UNSURE (   8.85  )
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

On Tue, May 11, 2021 at 06:59:13PM -0400, Peter Geis wrote:
> Add a driver for the Motorcomm yt8511 phy that will be used in the
> production Pine64 rk3566-quartz64 development board.
> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.

Hi Peter

Please can you add minimal RGMII delay support. Trying to add it later
generally end up in backwards compatibility problems.

Do you know which one of the four RGMII modes your setup needs? Is the
PHY adding the Rx and Tx delays? So "rgmii-id"?

       Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
