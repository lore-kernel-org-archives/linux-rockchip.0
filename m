Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A846C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 22:20:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D714B61177
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 22:20:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D714B61177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hbH6tWtM7WK63oYbMvzqPS42t5WdXReFVqDp+BlhwhM=; b=JbyNeT/UYnvlWmjoDnBR4MaIJ
	276vnQyN/fHkrt+zqcxkckIMW1/94JuNzWb4+/6/Ofiu+5f+C2MXZcc92Jp/BWpob+zIArMofYX8k
	Aetz6Mq3s6qzB8fAu7Y8e/wU/muxi03+NsBSeIhTdgFq73AvHmduPFD6xI9N2MOGcx6ZWPvBJa5ow
	6ATwXnBs8KbWyOVGu0WVSrQezZyN4AxjDNnjm99oOK0VUoHMtyum0eDhQYyRISOsSiZRy241IBxhs
	X81LwUSLyituPg7A8NZdDTVOB568QeHyXcIUKC5+0bdPlikIXN4RfojquP2NT7c8oa8oRLWsmgvJX
	9wDD9eGgA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWnsN-00E02S-24; Wed, 14 Apr 2021 22:20:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWns3-00Dzvl-O3; Wed, 14 Apr 2021 22:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jFyrIpeFo5U8A0ub5rVfkRP1qf9ceKJAtWSaPoYqoA8=; b=bn7Omw1Po8AJRrzVSUzW/CQ7Ke
 nv56vg8xhqWkfa2o3WL3f1UX7dkPiEtJPvanVX4J/2RT7v/BBgddxb9A6WEIHCF2v+nyon9RkOPjD
 27VaxNgiNzG+956+8CPaKCSzB/9chWJuj3YlpC1HEh6qeO2GDeZfP8zrl0/gKSHcI8oWMMQ9BYidK
 +1nyes5WtIc1PRtMR4kdjgkjYsIuam1FHnFPKJo5SrXqQkpDaJcRxCxsaLqfyKc4C4BLcZcbnIRDX
 Rpnz2v5RnaJHdtcxt71wfSrnzk2DP/AJMGNUuELTDED9GhqXxifDznpa04HIIse5IACeVxsaIxUP6
 4K0/9bVA==;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWns1-0088hR-Ee; Wed, 14 Apr 2021 22:20:26 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 w21-20020a9d63950000b02901ce7b8c45b4so20802762otk.5; 
 Wed, 14 Apr 2021 15:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jFyrIpeFo5U8A0ub5rVfkRP1qf9ceKJAtWSaPoYqoA8=;
 b=IjZdTXDjidOP9y17y4FDJdmzyJDFM698Jd0GtobhtTMuvo4l7BlvwOf1jP4/4oLOOj
 OnKcmi7Waw+yRUSAdlpEqlGQ0HSQM0p785VW60RBiDsMLAcnfR76SoFUWaXqbzZouhW+
 7/akQnvfE2Enwyz6hsruYTgTwoxNTcnjaTvG1d7rd9LcSqdD33B8BQBUK54fdg57guF/
 XMxWKKMPJ2N59nf4yJW7s9MeVKqjokLBW5vQZkAYuSR9JFtVSbjZDzf1ESgfV0BISRmi
 oNzteRzwHk6zFwSp8yR60uNoXab7p6iCsE4hTo/0a/hAoRnO99IbwCpQ5dXLrRYUlx+r
 kc7g==
X-Gm-Message-State: AOAM5305jlieCbRYJAoEKOQiacEclUkvjluV8T4mNeVdgChxG+mL3siX
 EzCMKjCg/wYJwCgmiXKD7Q3zjTTGMQ==
X-Google-Smtp-Source: ABdhPJzasy2C8tx84w/qIT/2CBlJzhuZBN+y3/61CKGEdRa99Ugdd+1UWwRCiRj4qKg1CHgwIOuJig==
X-Received: by 2002:a05:6830:2398:: with SMTP id
 l24mr201288ots.349.1618438824647; 
 Wed, 14 Apr 2021 15:20:24 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l4sm188103oic.26.2021.04.14.15.20.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 15:20:24 -0700 (PDT)
Received: (nullmailer pid 70448 invoked by uid 1000);
 Wed, 14 Apr 2021 22:20:23 -0000
Date: Wed, 14 Apr 2021 17:20:23 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, zhangqing@rock-chips.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 08/11] dt-bindings: add power-domain header for RK3568
 SoCs
Message-ID: <20210414222023.GA70402@robh.at.kernel.org>
References: <20210414211856.12104-1-jbx6244@gmail.com>
 <20210414211856.12104-9-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414211856.12104-9-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_152025_514969_62484886 
X-CRM114-Status: UNSURE (   9.69  )
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

On Wed, 14 Apr 2021 23:18:53 +0200, Johan Jonker wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> According to a description from TRM, add all the power domains
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  include/dt-bindings/power/rk3568-power.h | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644 include/dt-bindings/power/rk3568-power.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
