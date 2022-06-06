Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 633B9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 14:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VL4b1ilR6rgTqEr8943tRmLT7FczxC8fS3gwqYJMQYQ=; b=zGrvnjTH7/VLO4
	Y1QM56oMw7ilGptFTudzRnEY0j2cBi5iuBrR+89+qH6bl7w9IIZOJSKqF9rHuasRph3I5Kc1XAgJd
	4c0m+teJjgRwABzcfYpFkCaD0aFxhdtyRudOnPVafqpHpnqaU4KT0/oa8r4UF6vQahdCo+njSxrDG
	Bk7hx7QUPpikScGMdqK/kDXMzvrWhORloPhS/ANzoqj0DJEF7d355dleBQnScFi6i2hDclfPaKJXW
	h68ah+5oKtcAEr7/7UfHkcSNLWG25Z1PfGwTBPvWfTCsRTPknadsPhdaxBrKsvxgaoysd9kTYKXkr
	onPBlnkyug4fRgzBqR1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyE8f-001cJa-MZ; Mon, 06 Jun 2022 14:55:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyE8U-001cG3-Ew; Mon, 06 Jun 2022 14:55:19 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nyE8N-0007Ur-G7; Mon, 06 Jun 2022 16:55:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Cristian Marussi <cristian.marussi@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Liang Chen <cl@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, Sudeep Holla <sudeep.holla@arm.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Relax BASE protocol sanity checks on protocol list
Date: Mon, 06 Jun 2022 16:55:10 +0200
Message-ID: <4402272.LvFx2qVVIh@diego>
In-Reply-To: <20220606144305.agzzyf7c4kp2nwlw@bogus>
References: <20220523171559.472112-1-cristian.marussi@arm.com> <Yp4Br5d0jMnlF5yy@e120937-lin> <20220606144305.agzzyf7c4kp2nwlw@bogus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_075518_555907_7851F8B8 
X-CRM114-Status: GOOD (  29.11  )
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

Am Montag, 6. Juni 2022, 16:43:05 CEST schrieb Sudeep Holla:
> On Mon, Jun 06, 2022 at 02:31:48PM +0100, Cristian Marussi wrote:
> > On Mon, Jun 06, 2022 at 02:59:10PM +0200, Michael Riesch wrote:
> > > Hi Cristian,
> > >
> > Hi Michael,
> >
> > > On 5/23/22 19:15, Cristian Marussi wrote:
> > > > Even though malformed replies from firmware must be treated carefully to
> > > > avoid memory corruption Kernel side, some out-of-spec SCMI replies can
> > > > be tolerated to avoid breaking existing deployed system, as long as they
> > > > won't cause memory issues.
> > > >
> > > > Reported-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > > > Cc: Etienne Carriere <etienne.carriere@linaro.org>
> > > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > >
> > > Thanks a lot, without this fix the Mali G52 GPU won't probe on my RK3568
> > > EVB1 in vanilla v5.19-rc1.
> > >
> >
> > Yes, the break was reported on -next and today it appeared in 5.19-rc1.
> > A proper FW fix is also up for review by Etienne but in the meantime
> > this tries to limit damages relaxing a bit the checks.
> >
> > > I guess this patch should have a Fixes: tag, right?
> > >
> >
> > It has not a Fixes tag because the issue was introduced in 5.19-rc1 and the
> > fix will go in with the next round of v5.19 fixes by Sudeep (AFAIU) so it
> > will be solved within the v5.19 cycle and I thought the Fixes tag was
> > not needed in this case (I could be wrong...)
> 
> Correct, if for some reason, we can't push this before v5.19, then fixes
> tag needs to added. I will add that then, but for now let us target getting
> it in before v5.19

hmm, I'd disagree for the generalization.

While true that is not 100% necessary to be present in all cases, so
definitly no reason for a new version when applied to the same -rc series,
having the Fixes tag not only clearly marks the patch as such, but also
allows people reading either mailing lists or the later the git history
to actually see where the issue started. So I really think it is a
nice-to-have in most cases.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
