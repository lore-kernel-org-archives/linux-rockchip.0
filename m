Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C526C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:17:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBBEE610CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:17:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EBBEE610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+rbvDZhyi0905ed0EJVXPzv/JG1FhLD/23nYMS12ZhI=; b=e7PsvNl9ybN826iqA0+yGrooi
	IAGivWmcF8Ja5lvtqHftUsI7oZlMKSfxk2K00U4VM5tp5GzhxZETGmtj4ohPZJvIy0/uHrNkvOuXT
	vyPAkkk37WRnYNYMgMQZ9VsbCYwTDaFXUcXVXZHalITTtOuu4JAqrdU/U66D1SH3GgIzRhY0M4pat
	RfNBbHzFvNWYc6wQoEBT0Sovz9ega3mWEDwD14jv0IXmXWZTmcEErb1lu/zWLPds3sv8gIyBk3tDm
	e+IljCYrzt/Li3maWm7ffgKtBlN66GsYOKF0vW5YSrcDbCcRSLKnm74PE+cdfVs+iAJQPFclE+iWI
	vbbVMu4Qw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljM4F-0045bg-C2; Wed, 19 May 2021 13:16:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljM2p-00456m-Tw
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 13:15:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oqsAPUWXIGMYpUjPUFn+8YbwmjYEi12f9Rt7EvYL5AE=; b=n72rtFO2LcBufdDBE/p8y0t06E
 lw5hOg5oa7EzKNgtpzaZ9qYnUZtnJNm7yYqMcDgovHTWz1krD/aa+6OPm/7fl/mkG07jcPWyk3FuD
 1OlMWeAcRvOpQXeSJtFjnZr+zlus2lri1Lv9IUtdygCRRoqybOptsB3GpdSuRq2qFWIsYgPYBgp47
 SUD89FEetJy7DXPfBMndJ3W6w3hGs9ddeJa7V/CY46cxM7NELaFmTWlcrMcGUdR0ZtLZCO7ooq8L7
 SqhLs5nvzBwkrfvc3KRnQHPtBs9k83mofHhHN1v/+cCbITM9wZ6ujyi9sPv+63lcnGYQsVKviqftr
 Udt/sMGQ==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljM2n-00FUTg-2z
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 13:15:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oqsAPUWXIGMYpUjPUFn+8YbwmjYEi12f9Rt7EvYL5AE=; b=loS0BerXYT08KWDBPBZNF6Biv
 w5tzVd3y0T+YnKzKN2R5UlXEy6uN6u1vOoN6q2AwsRxrFAF1Fv9UXNEo6k1pMN9P+EYAvamcC1q24
 NScW+K5XWO6AEqbjH0J86VkDYDdibZiLVHsvI22Q3UnzKAS/Ni5kDSuBmheMj0oHxoEeaFfm5mZ+Z
 aXMtRgZyt2t+Q9eFqu64oHGKo8TQqYYNuL27VNU543eYdYfhvJLMj3lTFVlPNT33zqWsMhypwg4K3
 5r0QfhktmXjjZi+CLCDoxXXTQIOe8Aq/qGR/6Ze6vGPUpaYtE9SB88uMt8TnVMUsi0t3rtAhvVtxh
 FVYvoMFgw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44172)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ljM2c-0005oK-Kg; Wed, 19 May 2021 14:15:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ljM2b-00022p-D8; Wed, 19 May 2021 14:15:13 +0100
Date: Wed, 19 May 2021 14:15:13 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Leon Romanovsky <leon@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <20210519131512.GA30436@shell.armlinux.org.uk>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
 <YKTJwscaV1WaK98z@unreal>
 <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
 <YKT7bLjzucl/QEo2@unreal>
 <CAMdYzYpVYuNuYgZp-sNj4QFbgHH+SoFpffbdCNJST2_KZEhSug@mail.gmail.com>
 <YKUK8hBImIUFV35I@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YKUK8hBImIUFV35I@unreal>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_061525_218194_DE544C92 
X-CRM114-Status: UNSURE (   7.81  )
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

On Wed, May 19, 2021 at 03:56:18PM +0300, Leon Romanovsky wrote:
> I'm sorry that I continue to ask, but is net/phy/* usable without MODULE?

Simple answer: it is.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
