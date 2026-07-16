Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C0E6C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 07:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPPhUOvDVvblzsldkVDLyqSAmIQJ1m4v4lkHlhXeyUo=; b=yJtcHGBRku5Xa8
	h8fe7vSICYBYEm1Nz0cxoJaeoo5O4LBwG6PQWoXAgRg/smlGBGMyJAdBMWP8vD57Og/IzMGjVHmUp
	TO/rqO2Td7z+rtMC3BWmBhTNFpU1QFL37Fme/V8XiIosbdlOFy2NyV4okq5irjr0hgXHBprsSSnr7
	FHB3yn2qpmqaldQ0mjTfZH+BmezB+vec4IiY4Em/ZsI8LlGkWSfVHH1JoPqGmEjFkrl2VvgRnnBOe
	YTDDpMdnSY+T6ijLwJwSZ3vA4MwfWWHoeu+JnAAsEAQTZhMFKB7hgybsH8nd86Q7UJ4qsH9CML3kE
	PrVioBiq/cO1Vo7mEgSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkGYV-0000000Getb-3bKc;
	Thu, 16 Jul 2026 07:30:51 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkGYS-0000000GesU-0qJS
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 07:30:50 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 226D6C2B9DC;
	Thu, 16 Jul 2026 07:31:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CDAA2602B8;
	Thu, 16 Jul 2026 07:30:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 08DB311BD057C;
	Thu, 16 Jul 2026 09:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784187044; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=GCrqmH9b1H/YVE63PUByvlMfO6u776WKzGDBctjFpRU=;
	b=pcyisqzjUShEU8xVfu/cSx/J1/B5EedBEBPC6x2l3O0Agw/mDY3UrHEkRQy2aCxE0zFqMn
	f1cybtCjaxz+DEUvEhn7AFNdLCztSNagzHWalHFlsZViRWhpCrNZsG4IWlf8/DTCjGEBp6
	43uLpyhowiDx6ouf/1/Q0b9bSs2PKw7Hl3n9zJ4OVfWPT0UwrN3mLVc5qDtKeOKeJdIjCn
	jUTro2i0AfG4bAgYMm4p+bicBjQxgKdihNmGgMQb+wQKyx31kCj8w33KEs5/iEie0IPsDW
	mWJnxJR9nXTb9ag1gZYCLEWp1949HjUBDp796k17o381cP2HTj33u4+JxBt46A==
Message-ID: <a1e6cf0a-a243-4739-8563-be385add37b2@bootlin.com>
Date: Thu, 16 Jul 2026 09:30:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next] net: stmmac: dwmac-rk: enable the reference
 clock for output mode
To: Jiaxing Hu <gahing@gahingwoo.com>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, heiko@sntech.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org
References: <02ef3409-4078-4c3a-8c17-cb1a7f1f07e4@smtp-relay.sendinblue.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <02ef3409-4078-4c3a-8c17-cb1a7f1f07e4@smtp-relay.sendinblue.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_003048_412495_88AD2896 
X-CRM114-Status: UNSURE (   7.65  )
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

Hi,

On 7/16/26 08:56, Jiaxing Hu wrote:
> 
> rk_gmac_clk_init() only requests the refout clock group for RMII. The
> ArmSoM CM5 has an on-module YT8531 RGMII PHY with no crystal that needs
> the SoC 25 MHz reference (clk_mac_refout), so in RGMII the clock was
> never enabled and the PHY did not respond on MDIO.
> 
> Request the group whenever the SoC drives the clock (clock_in_out =
> "output"), not just for RMII. The clocks are optional, so other boards
> are unaffected.

DT binding for rockchip-dwmac says :

clock_in_out:
    description:
      For RGMII, it must be "input", means main clock(125MHz)
      is not sourced from SoC's PLL, but input from PHY.
      For RMII, "input" means PHY provides the reference clock(50MHz),
      "output" means GMAC provides the reference clock.

So the statement "For RGMII, it must be input [...]" is now incorrect :
 - it can be output for RGMII
 - it will be 25Hz if set to output, from what I get from the commit log.

Can you update it ?

Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
