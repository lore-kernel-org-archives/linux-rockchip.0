Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD96EC61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRL6cd0JVkeYCBs8jFSaKpFpzYhh5jpuKxeprRBdRCo=; b=oqro8j5Qqbi/7x
	qHRR/RubY6pALM1zeKv0Syc81g3lZ1bR5ViVqJAMwxf60q1Zdnx+8d9w7NIHJ2xpDTI3ztY+04G09
	GTqAEC08Pncr1nPDpWjtqbL2wZuoJjo3qxX8lF1X49/qky9PqbckfqEplSs8zaaca4UXQEwQyxS9U
	4KwPmC0uYbGEX53X3/AihJY3v25djetIvz+3aN9sFYioA68z43RKdbxiH0SJLp/ir1nMiVdW5UEa2
	BfBEroGxvYpDHwb7MOGhTPdEqK+81MiMTzarh8kH20OvGbaLURlpUVt7K2jUPpayHxI+m7PMpZADb
	Ct1KYn5OAlZdYmddabpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwE6-0027l5-9y; Tue, 14 Feb 2023 14:24:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRvpc-001u2u-SK; Tue, 14 Feb 2023 13:58:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5380E61655;
	Tue, 14 Feb 2023 13:58:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA492C433EF;
	Tue, 14 Feb 2023 13:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676383131;
	bh=TuC8tVpk0ce89vVUZF/r2/zcJ2fwuxq2ofOc0pDWTUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mEdMixvQH6GYnKwYTbKMCAQ5sE0YeusakgZq/+lF5rgjV54hqv8LC8kot2Ro/Yv8l
	 Zn5CBd41N5U2UcEfywQyEbpaGkqkrKd85jyIlnrnDDw3smsJ2qGnpezDsSfsriTL8k
	 oH9twYbLBhGrTt0j7Gb/IggQlNLcQg2XPUw8T/aufPb46HB6os2tzrMMiaL53Nv8ac
	 bNFp+Ti/FwE11NsgmKu/v2CiNfPO6u6AFb/RcImKSOkaItz3AgDNsqgrG5v76giOGG
	 0EEb+okFxm3GnPsmeyjBC2pd88vZYZMYNOdpZLGdC98u0OcUdiWXypHv1+KTPcvz4q
	 PtZj6vJE0onGw==
Date: Tue, 14 Feb 2023 19:28:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: kishon@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH v2] phy: rockchip-typec: Fix unsigned comparison with
 less than zero
Message-ID: <Y+uTlWpKKaXY+57P@matsya>
References: <20230213035709.99027-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230213035709.99027-1-jiapeng.chong@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_055853_002972_5DFE70BF 
X-CRM114-Status: UNSURE (   8.23  )
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

On 13-02-23, 11:57, Jiapeng Chong wrote:
> The dp and ufp are defined as bool type, the return value type of
> function extcon_get_state should be int, so the type of dp and ufp
> are modified to int.
> 

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
