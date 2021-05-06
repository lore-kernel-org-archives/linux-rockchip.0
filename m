Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A4E9C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 20:35:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD687600D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 20:35:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CD687600D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0CctFki2B2v15bfMaO12FJp7+fTpqFpgF3ZOOFiUpg=; b=GLx93YsqUGATteYxFm40ckrmh
	/fUKpcvWg9jQHtYkPOVkSLp3bMfkTXaf6A22qcikWWu4oGTmZmnYPo/nE6vJeld9QFkj2mzJ+p8AG
	oj4hbaktzjE18RqFBbDKEwe8xE8rXDwH9MXOzZSMSLStxjD2zCcEzJAr892W0jw6Q+s3NnReupAOA
	xFwrw1RsSkxxkcojhzZmIS++GlGW9XaQUVwA252mke4MBqzjcEbYFXgZAeIPgFOG5mvf/sTBMjCnb
	zDPnDSGJzWhHwVirobNEjrMllyo8KhOS0JN1j0CB8z5sJe71wOawDz7xpRhs4+QoZ9YOVtKvmVYoo
	toG6yz4lQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lekiv-005H0y-8c; Thu, 06 May 2021 20:35:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lekim-005Gxj-47; Thu, 06 May 2021 20:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=XviLvGpJFaRdXjUf+47jXRg5BSAJvuUIHuWDGU5d4Yg=; b=u4RmK9nX7xRHtLmK89Hb6u413M
 DDRnTkTrV1zLaLB9z7Y8ozJGlM6VwP8OksGLCSYvi9ORuD4oHiYcPeqn7WMU3N5+DMmgyOBH0rQjW
 ppUWsYNxJi5q+AAjb0TaAfM71Fm69DBvLt/ztW+QY/hSKG+l319JMahabHY6xX9zjy5pNaYREl0Ew
 NDqY+gMBkhGFjnyG1xXdtmY+yEREEiANgxrHkm8XlCDHEcNZrnhg5wwtmgL8zF40US8Ltp0pzj1N0
 nVhdBRfVUoDacjl6KO8ix4yuzwHpUvrsrWlcwLqth729TXCKYWSV70+sYt66sP4D+fmDa7SIl+9uo
 VlsDWbvQ==;
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lekij-006NOx-PB; Thu, 06 May 2021 20:35:42 +0000
Received: by mail-oi1-f177.google.com with SMTP id i81so6713258oif.6;
 Thu, 06 May 2021 13:35:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XviLvGpJFaRdXjUf+47jXRg5BSAJvuUIHuWDGU5d4Yg=;
 b=ZG7UOZUkPgMmDvy9e9LZ0aOAmgB/I0KjIqx7O2dcXimLjCsB+MYYJUAvPFA0j/1ju4
 RGkvf5yfA45PQcyi4+9hNgMWAld1U6IzF/HVl0KNO/8C6PPm1sFkLfs7BoXVHK4MJBUm
 wjjzJ6e7fuKuXdHizHokgw97TXKGndUsrh9pgzf9TBrL8SgofhWiV5hMnfip2kldUf4M
 m3/Q++qO6aWopQ8vEoMPWltzRfrN0mXaYMuGLNezlWNaNhKYDQ/52MEwHnXEgBXAB0pZ
 04zUT/M/dVoprUt4dlutkh5bnFXyc91jsXX5GT2rOp6MMSAEn5wqxUxhOCBRYLbo2BXi
 q8iw==
X-Gm-Message-State: AOAM5316bJffdUl4RwubhE0xF2Q6WcYb20odDdd1udLfpuHdd+M/Ldi7
 oP621fdX0iEbr4phDa3CYg==
X-Google-Smtp-Source: ABdhPJxRy2L+/BAoxrnnJOdfWaZK4QI9+BE9wFOUThILsEgKO/rZw4PbKWcnlhOXEaSb+96gFpBsWQ==
X-Received: by 2002:a54:4017:: with SMTP id x23mr4483952oie.13.1620333340966; 
 Thu, 06 May 2021 13:35:40 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w66sm716019ooa.37.2021.05.06.13.35.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 13:35:40 -0700 (PDT)
Received: (nullmailer pid 759479 invoked by uid 1000);
 Thu, 06 May 2021 20:35:39 -0000
Date: Thu, 6 May 2021 15:35:39 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: will@kernel.org, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, xxm@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org, joro@8bytes.org,
 robh+dt@kernel.org, heiko@sntech.de
Subject: Re: [PATCH v3 2/4] dt-bindings: iommu: rockchip: Add compatible for v2
Message-ID: <20210506203539.GA759432@robh.at.kernel.org>
References: <20210504084124.131884-1-benjamin.gaignard@collabora.com>
 <20210504084124.131884-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210504084124.131884-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_133541_837028_E635F70F 
X-CRM114-Status: GOOD (  11.71  )
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

On Tue, 04 May 2021 10:41:22 +0200, Benjamin Gaignard wrote:
> Add compatible for the second version of IOMMU hardware block.
> RK356x IOMMU can also be link to a power domain.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 3:
>  - Rename compatible with SoC name
> 
> version 2:
>  - Add power-domains property
> 
>  .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
