Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F235C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 15:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUjsKgzg/o0NLEIsr2fHze8AJF5FDT77T8DWP2RpnM8=; b=UtVB/Ytpu7dvJS
	+2XVmhgxHiYGzEJgFo7PTrn9dMz3J23sdir3xzUy92BgPsv0fAGuMeazhPjMrjNaf38nqDe7anCwZ
	+L9t4goNFto0IeMHXvGrzQqYc9VKeaayMBhBWjk42JOXC6VQal5w+GxShfof/cpwUGPEfFzRXexiv
	Q7KtG0Jz5U3pJ3lrnku5AuF4836bdA1rUkOEFFI7qtT+NfNTiVT7v21uq2g9aRc9lAymAfTTk4teZ
	bhRql18SPnWerYE36nOiHTwDxm7JiLhkpV687liOOVUCm6kkuar/pcrOubbuo2Yvgj3tXu+ToxVEA
	t0x/qKDxl4XeZab1edbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyEO8-001ibN-VT; Mon, 06 Jun 2022 15:11:29 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyENd-001iPc-41; Mon, 06 Jun 2022 15:10:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBAABD6E;
	Mon,  6 Jun 2022 08:10:54 -0700 (PDT)
Received: from bogus (unknown [10.57.9.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 407A13F73B;
	Mon,  6 Jun 2022 08:10:52 -0700 (PDT)
Date: Mon, 6 Jun 2022 16:10:04 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Liang Chen <cl@rock-chips.com>, Sudeep Holla <sudeep.holla@arm.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Etienne Carriere <etienne.carriere@linaro.org>
Subject: Re: [PATCH] firmware: arm_scmi: Relax BASE protocol sanity checks on
 protocol list
Message-ID: <20220606151004.hevt4zh6boypdd4x@bogus>
References: <20220523171559.472112-1-cristian.marussi@arm.com>
 <Yp4Br5d0jMnlF5yy@e120937-lin>
 <20220606144305.agzzyf7c4kp2nwlw@bogus>
 <4402272.LvFx2qVVIh@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4402272.LvFx2qVVIh@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_081057_269877_B2DA9BE4 
X-CRM114-Status: GOOD (  30.21  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jun 06, 2022 at 04:55:10PM +0200, Heiko St=FCbner wrote:
> Am Montag, 6. Juni 2022, 16:43:05 CEST schrieb Sudeep Holla:
> > On Mon, Jun 06, 2022 at 02:31:48PM +0100, Cristian Marussi wrote:
> > > On Mon, Jun 06, 2022 at 02:59:10PM +0200, Michael Riesch wrote:
> > > > Hi Cristian,
> > > >
> > > Hi Michael,
> > >
> > > > On 5/23/22 19:15, Cristian Marussi wrote:
> > > > > Even though malformed replies from firmware must be treated caref=
ully to
> > > > > avoid memory corruption Kernel side, some out-of-spec SCMI replie=
s can
> > > > > be tolerated to avoid breaking existing deployed system, as long =
as they
> > > > > won't cause memory issues.
> > > > >
> > > > > Reported-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > > > > Cc: Etienne Carriere <etienne.carriere@linaro.org>
> > > > > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > > > Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> > > >
> > > > Thanks a lot, without this fix the Mali G52 GPU won't probe on my R=
K3568
> > > > EVB1 in vanilla v5.19-rc1.
> > > >
> > >
> > > Yes, the break was reported on -next and today it appeared in 5.19-rc=
1.
> > > A proper FW fix is also up for review by Etienne but in the meantime
> > > this tries to limit damages relaxing a bit the checks.
> > >
> > > > I guess this patch should have a Fixes: tag, right?
> > > >
> > >
> > > It has not a Fixes tag because the issue was introduced in 5.19-rc1 a=
nd the
> > > fix will go in with the next round of v5.19 fixes by Sudeep (AFAIU) s=
o it
> > > will be solved within the v5.19 cycle and I thought the Fixes tag was
> > > not needed in this case (I could be wrong...)
> > =

> > Correct, if for some reason, we can't push this before v5.19, then fixes
> > tag needs to added. I will add that then, but for now let us target get=
ting
> > it in before v5.19
> =

> hmm, I'd disagree for the generalization.
> =

> While true that is not 100% necessary to be present in all cases, so
> definitly no reason for a new version when applied to the same -rc series,
> having the Fixes tag not only clearly marks the patch as such, but also
> allows people reading either mailing lists or the later the git history
> to actually see where the issue started. So I really think it is a
> nice-to-have in most cases.

Absolutely agreed in general. But I asked Cristian to not add as we are work
around the firmware bug by relaxing the checks in the kernel. This is not
fixing anything in the original commit IMO, it is just that the original
commit highlighted the firmware issue on that system.

-- =

Regards,
Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
