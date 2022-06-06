Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45325C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 13:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeDBYErpeZT0g+OoQvp5EmqflHGBBfPdbvmXCzE8JQU=; b=UErPOAcZLclYmE
	6iGRT7vUtttREWulQrGzKC7a6+1WB4Hx9QGSozZkWrNptK6I5J6Zwp75dBOBkcWTlbXYyMqzyof3f
	aYOLFdD2ZaTbmItQF9Fr+EQmyfrKLThRxqRQkGt/nrM85kVgkU24r4TJYabAmMqrwTDyHGVGdLi9C
	lpyV8t9PEB6/9WPVu2p0M2M4oTEZtNK5Ro7XszXVra23X60V49pR1g+kaODKaiDyccajVN4Ybm21F
	rleX9YNibTxg7hUvgPTwmfx9xNL+Ycsh5XwoRTsDvPsD1SZce0qLw5B55Q9KdhUdMg3EmlBlwRhY9
	EH3hJxHZu0H46JJoDRZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyCq1-001N0I-LH; Mon, 06 Jun 2022 13:32:09 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyCpq-001MxP-HQ; Mon, 06 Jun 2022 13:32:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 429A71596;
	Mon,  6 Jun 2022 06:31:56 -0700 (PDT)
Received: from e120937-lin (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DDAB3F73B;
	Mon,  6 Jun 2022 06:31:54 -0700 (PDT)
Date: Mon, 6 Jun 2022 14:31:48 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Etienne Carriere <etienne.carriere@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] firmware: arm_scmi: Relax BASE protocol sanity checks on
 protocol list
Message-ID: <Yp4Br5d0jMnlF5yy@e120937-lin>
References: <20220523171559.472112-1-cristian.marussi@arm.com>
 <45bf11a8-47eb-e088-ba99-30c8788c7143@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45bf11a8-47eb-e088-ba99-30c8788c7143@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_063158_668639_DA77DDEB 
X-CRM114-Status: GOOD (  16.86  )
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

On Mon, Jun 06, 2022 at 02:59:10PM +0200, Michael Riesch wrote:
> Hi Cristian,
> 
Hi Michael,

> On 5/23/22 19:15, Cristian Marussi wrote:
> > Even though malformed replies from firmware must be treated carefully to
> > avoid memory corruption Kernel side, some out-of-spec SCMI replies can
> > be tolerated to avoid breaking existing deployed system, as long as they
> > won't cause memory issues.
> > 
> > Reported-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > Cc: Etienne Carriere <etienne.carriere@linaro.org>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> 
> Thanks a lot, without this fix the Mali G52 GPU won't probe on my RK3568
> EVB1 in vanilla v5.19-rc1.
> 

Yes, the break was reported on -next and today it appeared in 5.19-rc1.
A proper FW fix is also up for review by Etienne but in the meantime
this tries to limit damages relaxing a bit the checks.

> I guess this patch should have a Fixes: tag, right?
> 

It has not a Fixes tag because the issue was introduced in 5.19-rc1 and the
fix will go in with the next round of v5.19 fixes by Sudeep (AFAIU) so it
will be solved within the v5.19 cycle and I thought the Fixes tag was
not needed in this case (I could be wrong...)

> Would be great to have this in v5.19. AFAIC:
> 
> Acked-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks for testing it.
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
