Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A71CC48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 10:27:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F02461175
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 10:27:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F02461175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0XpWF2RB95yE4WWaaUt4Xf1jwpodGVGTmTaVc9KAruQ=; b=Zk/koKUK6Opgin9GmhL6exGOR8
	W6XUP5Y6qS7E44dUY08+3G4uA0QlooHhDjt5lxY39SHVBAFhA9z+8b2pwLlcef6VriB5dUEfmYrrA
	j3rNS7CWhC0ahqcnOwe7ZjRYILLENeSkyqA1amY+IKMIlD1Ozt8ETJMoK+SH+6WAsBxAzhCwWALZa
	+8zTacRmY6Z39lJiTj4cF5qoUzvfJpkeDBfLL3QBM0vEzY3GvVrHPDqLPwrFe79YBUfpx4oMswnna
	tIn2kZXYIwz3lE18wjG1CbngKGtVwH3/9oHDtV0ns6UsdiZvdrWpmvGpz92eug3pUGbW/mxJe6Eud
	hyGsarHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luBiA-00DjRN-LG; Fri, 18 Jun 2021 10:26:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luBi8-00DjQc-17
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 10:26:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6654B13A1;
 Fri, 18 Jun 2021 03:26:46 -0700 (PDT)
Received: from [10.57.9.136] (unknown [10.57.9.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D16E73F719;
 Fri, 18 Jun 2021 03:26:45 -0700 (PDT)
Subject: Re: [bug report] iommu: rockchip: Add support for iommu v2
To: Dan Carpenter <dan.carpenter@oracle.com>, benjamin.gaignard@collabora.com
Cc: linux-rockchip@lists.infradead.org
References: <YMxkQ2Xn9g5DSEBO@mwanda>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <1c65dcde-5fed-f301-8a67-f78ec86b84d1@arm.com>
Date: Fri, 18 Jun 2021 11:26:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <YMxkQ2Xn9g5DSEBO@mwanda>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_032652_167994_93811E92 
X-CRM114-Status: GOOD (  11.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-06-18 10:15, Dan Carpenter wrote:
> Hello Benjamin Gaignard,
> 
> The patch c55356c534aa: "iommu: rockchip: Add support for iommu v2"
> from Jun 4, 2021, leads to the following static checker warning:
> 
> 	drivers/iommu/rockchip-iommu.c:552 rk_dte_addr_phys_v2()
> 	warn: potential shift truncation.  '0xff00000000 (0,4294967296-1095216660480) << 28'
> 
> drivers/iommu/rockchip-iommu.c
>     544  }
>     545
>     546  #define DT_HI_MASK GENMASK_ULL(39, 32)
>                             ^^^^^^^^^^^^^^^^^^^
> 
>     547  #define DT_SHIFT   28
>     548
>     549  static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
>     550  {
>     551          return (phys_addr_t)(addr & RK_DTE_PT_ADDRESS_MASK) |
>     552                 ((addr & DT_HI_MASK) << DT_SHIFT);
>                           ^^^^^^^^^^^^^^^^^
> Is addr supposed to be a u64?

Hmm, the cast is in the wrong place to be useful, but the shifting and 
masking to unpack the high address bits also looks backwards anyway. I 
think the whole expression should probably be something more like:

	(((phys_addr_t)addr << DT_SHIFT) & DT_HI_MASK) |
	(addr & RK_DTE_PT_ADDRESS_MASK);

Robin.

> 
>     553  }
> 
> regards,
> dan carpenter
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
