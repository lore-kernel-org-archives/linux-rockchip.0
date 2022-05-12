Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05599C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 May 2022 14:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5vMgUMdmOYbgCgLHU2XxLQBVrXow5Ndi5kb6X0zz6A=; b=P52Ccz0fxF8hA9
	oY9ZkaAMxNbe54kFjAN9mlw9POQSeY5T5c7UhDFmET6owo55VAU8L5SHuh6I1fHq9NYRsGqlo94Qe
	7uPz/D5cw4n9hOiU+QGhdxVn87H9EIOcasqkG/ddXk5TPwRA7GkAJXytjFMw3y7y/PJunMk1sZ7p6
	9CmTN5t87ihBkWeCcyYiAW7zHUqSG8OTdzdLBdhJY+PdrENy07RODLA+LRdC1VgF9MEXJmesbm+su
	aiA6IfWSFKWu5tRIKU3wuXJ1H5/0B4XS4FuvDiym2TGYgk+v8B3Hckl4TQ0V04BzsEAjDGS2xzjFv
	jcXiD/9yNziZbx3HQ+bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np9u5-00CQSK-T5; Thu, 12 May 2022 14:34:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np9ts-00CQLn-12; Thu, 12 May 2022 14:34:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC4C9106F;
 Thu, 12 May 2022 07:34:34 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36B4B3F73D;
 Thu, 12 May 2022 07:34:33 -0700 (PDT)
Date: Thu, 12 May 2022 15:34:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to
 boot due to firmware bug
Message-ID: <Yn0a9nSD7Yu6aOkt@bogus>
References: <1698297.NAKyZzlH2u@archbook> <YnOEwuuyO2/h7c1G@e120937-lin>
 <CAN5uoS_MgBiTVZCRSZyYCH4cnUZD_bHj2+mZu661bFV8TKWScw@mail.gmail.com>
 <6587375.6lpfYT6tjA@archbook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6587375.6lpfYT6tjA@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_073444_150418_B0883170 
X-CRM114-Status: GOOD (  20.63  )
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

On Thu, May 12, 2022 at 01:11:22PM +0200, Nicolas Frattaroli wrote:
> Hello,
> 
> sorry for the late reply, completely missed that there was a question
> for me in this mail.
> 
> On Donnerstag, 5. Mai 2022 11:40:09 CEST Etienne Carriere wrote:
> > Hello Nicolas, Cristian,
> > [...]
> > 
> > Indeed the firmware implementation is wrong in TF-A.
> > And also in OP-TEE by the way:
> > https://github.com/OP-TEE/optee_os/blob/3.17.0/core/drivers/scmi-msg/base.c#L163-L166
> > 
> > @Nicoals, do you want to send a patch to TF-A, or do you want me to do it?
> 
> I have no experience with TF-A, so I'd prefer if you could do it.
> 
> In good news, Rockchip has confirmed they're preparing to release RK356x
> TF-A sources, so I'll be able to port the patch over to their sources once
> they are released, if they don't already apply it themselves.
> 

So, there is no way to get a blob release with the patch applied ?
We know it is a bug in TF-A and if Rockchip is using that codebase, it
will be the same bug there too causing this issue. Waiting until the
code is released and the proper TF-A port is done may not be acceptable
for many developers. So someone from the rockchip doing these tf-a blob
release must get involved here, understand the situation and get the fixed.

We can workaround, but I want to hear that it will be fixed instead of
getting ignored until proper port is available.

Etienne, are you not the author for the related TF-A code ? How can we
get that fixed in the TF-A code base. If you are not, then I will try to
get my repo login credentials sorted so that I can only push TF-A change.

-- 
Regards,
Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
