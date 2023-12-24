Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41012C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNjY/j9GLpG2s5900rkWtHl0RlbaljBnG6SxN6WFhss=; b=o0Q1yZ9wRmz98l
	XdzpMdcKk1n1AFaDhsGOAbBTJlhUSo5wdFVPnrXCcbY0HacvL1pjosxSsuJkzJN+MIC2Ncs42zILy
	14mVWOCvkkOXJzjytL/aqMs6Om9Oa48RFcTwIgTsRonwWKHLSaFJtbYLp7PvXmZVfVakxejenI7WO
	gntzJFe9I3wImyxTK71nQuAUIfS2JRQyLMtqi0FYv/PTnyp7gX924ciWOF6hIJeH5GsCK6nVAzZAu
	rj4tVv7Ecfal3WeFzK8vHNOTJuLfmuSHmbWNa1WHtL6bPO8lbf4FJQZdvRg9OpTu1egFSxgt8Nwd2
	O1b+qXTVDlP6RX5zRG7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWCU-009ujC-2w;
	Sun, 24 Dec 2023 21:39:58 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWCS-009uhq-09
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:39:57 +0000
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-357d0d15b29so370395ab.1
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453995; x=1704058795; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=f9Q+OMVGug+ylz+2uzJShCURagJfqE6miFHjz/+Dgvg=;
        b=yVdaDPk2Wpy9+LXeYxbbBkshidk9NUBXsCIYFbNbWJJMCLgxS5p37ei74IVMnPlafN
         Nk7N6+Q3KoUiTCXRU0nF9lU9nwYCnHcqgYViWNDymbj9xOWfKpiNEriNnIpu4Jd0yFKs
         lxCoCk83oxWWOWfG6uKNROXXualtCf8DOoy7oRJGOVrDu7yVEAvyWrjCCCQlVw9jclRL
         TknTpVcAT4Mw5L1Z3N93yBJvDT6+X46iRzvva+VNTh2Ui62sq/Cx3Kx5jM2NYuD5t09I
         v7IsjVEVMAJ6R0/jSZB2ZNdAvuZ5yNG+hR6Qgh6uauOt0/8UqrzeHHAPdz5x92r4XmB1
         ZPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453995; x=1704058795;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f9Q+OMVGug+ylz+2uzJShCURagJfqE6miFHjz/+Dgvg=;
        b=G6b7lzWvbygMnF69UsIpEdj1PLfSiu6dxv7p71CKrG+40hOyO66Dz0ITuv9r15oVTk
         X1bBRrWjTeiaX1FoLbWQgu2cbplDZSL0KmvmEIu3ruFURZ/S9u97j5CqzMZ2dcGAGxxc
         TKo47q7fjVlXPb0njGFrlj/OqkZJsDAgub1MZjqpyT8bEgdCrC6BdD5qT4vRjAbSvo2g
         hQZbleG2VJGUD0KVbhjPLi+ekRRsgtKGv8mUX9o4Pro7pJ0sLlhkwHl8HMpwK5yrbior
         qtgN9dXEGAEYFqoY6sX1VALSroCGhvBDMo1sNZefzF8YC8arRc96Dag6hrsXUQogC9NQ
         TT0A==
X-Gm-Message-State: AOJu0YwzsCxXRyDVR3/3CxW587K1kY8fH7C2MPgPULYlGN6tpiLF0CmZ
	nrSBDZcE59Mjxyb8g6ylzN8KNPlFeAD3
X-Google-Smtp-Source: AGHT+IFJfsP5JhgYByhZLf3HirHsXDvYjSFYqzQ3snkAvp0nJS5eXaEyeAz3IXcv8WBPowwQKkdAPg==
X-Received: by 2002:a92:cb09:0:b0:35f:b09b:ccd2 with SMTP id s9-20020a92cb09000000b0035fb09bccd2mr397952ilo.7.1703453995330;
        Sun, 24 Dec 2023 13:39:55 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id a13-20020a170902b58d00b001ca86a9caccsm6947051pls.228.2023.12.24.13.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:39:54 -0800 (PST)
Date: Sun, 24 Dec 2023 13:39:53 -0800 (PST)
From: David Rientjes <rientjes@google.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
    asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
    cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
    dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
    iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
    joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
    linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
    linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
    linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
    linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
    mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
    rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
    suravee.suthikulpanit@amd.com, sven@svenpeter.dev, 
    thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com, 
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com
Subject: Re: [PATCH v2 07/10] iommu/sun50i: use page allocation function
 provided by iommu-pages.h
In-Reply-To: <20231130201504.2322355-8-pasha.tatashin@soleen.com>
Message-ID: <2a474224-80fa-3b71-c498-09cf22e5d130@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-8-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133956_142821_40BAF737 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
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

On Thu, 30 Nov 2023, Pasha Tatashin wrote:

> Convert iommu/sun50i-iommu.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
