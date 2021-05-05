Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DACC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:47:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F6FE6101C
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:47:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F6FE6101C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9XXbUq1DjoVxzwW1kK8ROu+1uCn/rIRZPcCXVpW5iuA=; b=oc3iWqRUbirHpRr9tjlnJz/wd
	ICz3Ng+UqMXx98GDFhRD2wOZroQQz9H307wqQMg0jCGvmNv1zKdZP1jdiSFkSei4QVNUEVgplF2eP
	dpUrhvBoLr7xx/j0KGHFvsSSHGQWdIstnvNfgGY3N++mOvnan9cfX4E7WvCeIyg9jzXuNNSkU4Brw
	tD54WBUi2mcHj16Br6NcvslSMlJtRwXE1u97xYI0812rm2f/wrbqiIKWSixrG4PMUfs06iQaG1ExG
	eOUhsnQbsOwaNLkgDUxhictvUKmLC9HvwKQiNHYoyoWAQKqzLkfESxGo/+lRR9kQ6cY7I3YBfYFHf
	FEjcBN5Hg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHrl-001LMy-1R; Wed, 05 May 2021 13:47:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHrf-001LLo-Bm
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 13:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=7SV4VE8XFVwXrg5JCkkA1WTJVXwjUsOp/9SKRP4F+cc=; b=hgF82HMeahGkGjJGIo0pfWxD6I
 m8G5ktTmLbDJws33LYFHwKTHVuG8UFf7PnXlVUDg/p8USYA0jUd8WptHsu4YfEPv+QIx6k8iEeba2
 +GVwCNWxetnqWICR7MbFXBVtxEED1lxZpzmuB7NNkMiCiCxOl+ShPW/8c5epIicy7Ut+weQG87aF1
 PslORt/24G9nhP5SvlBpJCy8MbOZsPqJdVA1cx/FrhpX2Xpxxyn6gyal74NC6FtBKDbAilixSAnnD
 EIm/OchdFfh9+z9kadOnguzeQCS7E16qtE6EsFNtNMY1zKNt/yxU6mPiwQx52jIhPbDh/Nt8hyDfR
 SH6CDLjw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHra-004n3E-Hg
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 13:46:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A044610FB;
 Wed,  5 May 2021 13:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620222413;
 bh=f2HvundY/v8CdCUmWlDh+pnal+3mUV1iWqzpr2EOCMA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EjY9SLA8HDPK0DvF0y+Jr96DIoEJFOULCNyYDAhEh2vzk9A8L9Uirup/H81xby0Sx
 l0ped0vM+QDqjEzShUDgfjr9NL9X4LaVvoyY4mw5xJGmlDvMdJI7SIKo2X8Iq9gxss
 oJF4879n2tXmw+iarHnVKbm/3j3FMf63g6pJ+XvrMh//jolSYJV/j4eZCPo/dy8Gqz
 t13kermK4ZNSFaFswgJaqfameakMwYxSG3Th2Is+Bglj/M4OW6ZskctAG8lao8S987
 +0NQ+saAX+StNskg5k6gz8TyfxMQbLh0985/xdVX2x9hgUg6LRa1lW1ukH1iLrntnp
 hlssLhxPN3F8w==
Date: Wed, 5 May 2021 15:46:47 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 09/25] media: hantro: do a PM resume earlier
Message-ID: <20210505154647.62784bf7@coco.lan>
In-Reply-To: <11c24f97ef71b16c2e7b3ba40ca66a28c12df692.camel@collabora.com>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
 <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
 <11c24f97ef71b16c2e7b3ba40ca66a28c12df692.camel@collabora.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_064654_655090_92E623EF 
X-CRM114-Status: GOOD (  20.62  )
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

Em Wed, 05 May 2021 10:22:03 -0300
Ezequiel Garcia <ezequiel@collabora.com> escreveu:

> Hi Mauro,
> 
> Thanks for working on this.
> 
> On Wed, 2021-05-05 at 11:41 +0200, Mauro Carvalho Chehab wrote:
> > The device_run() first enables the clock and then
> > tries to resume PM runtime, checking for errors.
> > 
> > Well, if for some reason the pm_runtime can not resume,
> > it would be better to detect it beforehand.
> > 
> > So, change the order inside device_run().
> > 
> > Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> > Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>  
> 
> It seems this is wrong now, as this series doesn't have
> 
> https://lore.kernel.org/linux-media/803c39fafdd62efc6f9e4d99a372af2c6955143b.1619621413.git.mchehab+huawei@kernel.org/
> 
> I don't fully understand why all the back and forth
> happening on this series, but the former Hantro patches
> looked good (despite perhaps unclear commit messages).

There was a request to break the original /79 series into smaller ones,
to make easier for reviewers. So, I opted to split it into (probably)
3 series:

1. Fixes (this series);
2. "use pm_runtime_resume_and_get" for the I2C drivers;
3. "use pm_runtime_resume_and_get" for remaining ones.

Before flooding everybody's email's with series (2) and (3), better
to focus at the fixes first. I'll probably send the other two series
by tomorrow.

> Any issues just squashing these two commits from "[PATCH v4 00/79] Address some issues with PM runtime at media subsystem":
> 
>   media: hantro: use pm_runtime_resume_and_get()
>   media: hantro: do a PM resume earlier

The problem is that pm_runtime_resume_and_get() was added only
recently (Kernel v5.10). 

So, I opted to place the fix patches before the changes, as this
way, most (all?) patches can be easily be backported to legacy Kernels
as needed.

Thanks,
Mauro

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
