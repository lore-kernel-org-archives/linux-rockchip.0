Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A454C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 16:22:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BA89611F1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 16:22:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1BA89611F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2ZWwFt+67MeKZhSNEyC3H59Yw3zJrfj9aWBV5YvlfM=; b=z7AcJY20nyt1eU
	tqs6SFj75gsOdaPq5aYRdf26lU8it+ZwxBmPVSUbwr26VYFv8zPnLK5NugmyKjE1JC4bojWpPmQSy
	7Jepa31xlFsl0/4vYiOTy3PN6ISK02GPRNgC2G6kCc0eB7a15T4e0f8FSfyb811WOTQMHMwBVRt3S
	VojFArvJumoa0hvdznUkIVw+94xW64cnXesZdo/+fenN2kklkCQVKqBX2y5++nDPjFquJlxkaV9R7
	F9XNsXkTqLszJTqFSHMRx82IdA3t8S2Ru57sy/Gbi2eJnKe58DwdxOQ+PlTyP4uLyHCM153S5dJpa
	oMUy633pud76TQaDE3pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2yh6-007sAr-ES; Mon, 12 Jul 2021 16:22:08 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2yh3-007s9P-RT; Mon, 12 Jul 2021 16:22:07 +0000
Received: by mail-io1-f51.google.com with SMTP id l5so23367678iok.7;
 Mon, 12 Jul 2021 09:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OQl5lHjb/OmsBGI/gFWR8f+atDzQ3WELfz4e0zefRf0=;
 b=aW9+0M8noBol+kg6zT2TwIuTuy/Q7kWCsVAVxOFz4qsyRDQEQtAwYz7IK0HfsXwMM5
 UpbOl64fB8+kyaZF5cpjrrUxsJdfjXcTE1F96hD32aDq/A9QVcFc86fsJeBW8fAHy/Ix
 hyutOnCIZN4PuN/DdDisFMn8/VRMpGt+kH+td8heNVvbi4it4wALJ+p6vvxXabdX7NZj
 UjJsa7LFRikwgRcZ2LesNtkDKa8gpuHnyPK/XF0MH/gwhkeh9Qqb/T2E9w51cJecUKy6
 Eq+GRzdcYTqjFSWeMKKTNL7E1Dy3VYVAv+7XY4Ds98vdvzjOzEZgqBDTxJ0ele/Pqi68
 YkhA==
X-Gm-Message-State: AOAM530vyT22ofJf6O5J6bfBu9pIYK580E4TVUlsJSKCE1aopPn8CCv4
 K8c2pHRTKS596wypUF/8RA==
X-Google-Smtp-Source: ABdhPJyHGSGtKgV06NdfXbbA53qEMa67Bq7B7JXq4S+FQYGqUQKOvc+lJo/dXqUW5FAdXIcYbFJ0/g==
X-Received: by 2002:a05:6638:348c:: with SMTP id
 t12mr40409897jal.1.1626106924794; 
 Mon, 12 Jul 2021 09:22:04 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id z7sm2994991iox.4.2021.07.12.09.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 09:22:04 -0700 (PDT)
Received: (nullmailer pid 2050122 invoked by uid 1000);
 Mon, 12 Jul 2021 16:22:02 -0000
Date: Mon, 12 Jul 2021 10:22:02 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-kernel@vger.kernel.org, airlied@linux.ie, hjc@rock-chips.com,
 heiko@sntech.de, algea.cao@rock-chips.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, andy.yan@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: display: rockchip: Add compatible
 for rk3568 HDMI
Message-ID: <20210712162202.GA2050063@robh.at.kernel.org>
References: <20210707120323.401785-1-benjamin.gaignard@collabora.com>
 <20210707120323.401785-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210707120323.401785-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_092205_931531_FBBAF389 
X-CRM114-Status: GOOD (  12.34  )
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

On Wed, 07 Jul 2021 14:03:22 +0200, Benjamin Gaignard wrote:
> Define a new compatible for rk3568 HDMI.
> This version of HDMI hardware block needs two new clocks hclk_vio and hclk
> to provide phy reference clocks.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
> - Add the clocks needed for the phy.
> 
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
