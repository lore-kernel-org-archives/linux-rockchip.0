Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C047C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:30:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 063416126A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 13:30:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 063416126A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJq5reY2J5Yo7rffuUZWqQG1NGro0RY4FgpG5XsL3v0=; b=ZiJvGdiU6A+67X
	wadllRy4+K0kx2MjTU/z30Fd0liyE++mzMzHsPdi3T8KQcN0B/1KXUxahSpxJ6TmtIbZfyv7M4Qw5
	MB6uCJl1OWKUdlGsvFhuvugA3xpmUhPoYE8UV4XT9KD1UV4QvLQbot2D1PBXjLYxh5vWGGNxJfWjO
	NluUFDEZHHnS0VwqMCgeqtCK5Waicq+4rstibPR/sMOX7r3/LwAPWXaWiTOLtyEe0+ycotyv6qxeD
	beDWNGbyP9i+BzSvD6OgY82TEcgnWjASQpTATgC74Al3nNIyPUpN7AVD0agIivd/t3C/3MfOoSJ9F
	JSjDtpdJoz2JJAWRDE5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIA1x-00H4Ny-4G; Mon, 23 Aug 2021 13:30:25 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIA1W-00H4JM-48
 for linux-rockchip@lists.infradead.org; Mon, 23 Aug 2021 13:29:59 +0000
Received: by mail-ej1-x62e.google.com with SMTP id u14so12221745ejf.13
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Aug 2021 06:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZzAS6d5SoNpyFEOG1nN+QHEZYRPRGiJlkEZo4kbWHVc=;
 b=m9Sqr/u36/VD+Jg7yl6lLtMzyqT1jvN43qYFNLC4a7VwtFk5TN3JC84YhZqogex3uk
 aVMy+BBAECZePD6wm8ruVnWMgNqJFKxVgKqexq637wqLGF2JO56mWqEYyyMjHoCJzcjR
 B5nKQ5hwfVo6/fRjLPM+ANZStbB2LZ7Hk7tf+BioeAmQ2MGdUI9WzZ7SMkCjOQp7/d5n
 6uamUuo6H4usXXoKdmem6haJToJuLR5g0dHTifTnSw27+8A8byrHZdPy2s1A4InTlXs5
 CAaNJwb5GRXfhzMIQK8pIVbQpLM3EGfGCpezbJ5wl5Bfxd1/wY+2VKAkMsXlwGPYcRYm
 K6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZzAS6d5SoNpyFEOG1nN+QHEZYRPRGiJlkEZo4kbWHVc=;
 b=PGvngS//X41V6fvWPez4u78aqikrhhn6r69lXoWtITUrMsFfkYaVXeSefp2H00r2Jo
 S3jZvGZ3szoq1rGGUI/fhKy2e+VS/yC0zg0uz51bKL/kX6jH8cUkwAEk1sVMALPUiAhN
 vOxuCNUz5kefQ8nEjf3TqsePPbpMgiQnxAIZ0Gtx0OI/vv2bsmKzgmkTZtW9TuHGWKZj
 0BEBWaxSrm1BZIT0qNbRP1x0+YVU9aR/SlJdtL+9tJ2sMdYXfYkMltLOWhQEjts23G9p
 UIROyHKl4t99rxYezmaarmBeTSi5TM8q9uzrqMzRdf0CpuzA+tiaRK5FSGjMRvWfXTvV
 xZKw==
X-Gm-Message-State: AOAM531bNJQio6yvuhHa3ejqRInqSSEIaHX9Unx4yjOaUgKgZvAStCIU
 V6/YD77BAUn7ANvYROvGwta0gmlGWnXmWX6Xa9bXeA==
X-Google-Smtp-Source: ABdhPJwO2ELw3p5hZojnTdXaANerTM83mayFHUGmW3GkWzFD6K9zoHjPN0sOUOL94omXdv1oSrta0pkaceOlYnflPk4=
X-Received: by 2002:a17:906:4149:: with SMTP id
 l9mr4240515ejk.388.1629725384496; 
 Mon, 23 Aug 2021 06:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210822115755.3171937-1-knaerzche@gmail.com>
 <CAAEAJfDLvctAk3omLgFBBbzvufFKwSW5_cQZ+MjvyN4khGOe_w@mail.gmail.com>
 <24767661.6Emhk5qWAg@phil>
In-Reply-To: <24767661.6Emhk5qWAg@phil>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Mon, 23 Aug 2021 10:29:33 -0300
Message-ID: <CAAEAJfA0QGcDJLOh=-zZKnd7=UFchDAqkK+OSMgm4yv524OHuA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add interrupt-names for RK3399's
 vpu
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_062958_204491_4D93ABCF 
X-CRM114-Status: GOOD (  19.03  )
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

On Sun, 22 Aug 2021 at 17:25, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Sonntag, 22. August 2021, 16:37:24 CEST schrieb Ezequiel Garcia:
> > Hi Alex, Heiko,
> >
> > On Sun, 22 Aug 2021 at 08:58, Alex Bee <knaerzche@gmail.com> wrote:
> > >
> > > Commit a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> > > intended to remove the interrupt-names property for mmu nodes, but it
> > > also removed it for the vpu node in rk3399.dtsi. That makes the driver
> > > fail probing currently.
> > > Fix this by re-adding the property for this node.
> > >
> > > Fixes: a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> >
> > AFAICS a728c10dd62a removed lots of interrupt-names properties
> > from devices other than IOMMU.
> >
> > Maybe it's best to revert it?
>
> where did you see more mistakes in it?
>
> I.e. first of all, at least when grepping through my kernel history, I only see
>   commit 53a05c8f6e8e ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> with a different hash and at least there I see a lot of iommu interrupt removals
> and this one line removing the vpu irqs in error.
>
> So from my glance at it, applying Alex' patch should solve the issue?
>

Ah, seems you are right. Sorry for the noise!

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
