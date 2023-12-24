Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C68C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTLwbWTJmgzvUuJlHSGl6Ts0AEtZZEIWlNqU4WAaxNQ=; b=ls7r9d2zCIcg6A
	nEhMuQhXkzK146+dOdtwqHQKVy94egYK2pWINFRBGptnPLWruWRuE2d00SqARd8iZLCqVgdhb48IM
	r8x9T1YCY9jXmLcCkdNF+EOSUUdz9pPKujcMRf5F9SD5SngnIQr8axmD2rqs8jxuyoqqGMOFoikuO
	G82ak06St7Ppf2RSAWBozW+V1vQ1Bg6GuEY1TYmsUfFWO6v17lRD8/HOgzKDAD9ZkND2Ms24uS1tT
	kUo3KqUFEU5ZbitqXWdQgZr/RuoaRDKJFq8YzHeIYAfKcH0eF8gffVK0k2GzWLdpNcbCmF61Gw51o
	Nx8VXhqgc2cD9wKvdYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWC3-009uba-1p;
	Sun, 24 Dec 2023 21:39:31 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWC0-009uaj-2Z
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:39:30 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1d42ed4cdc7so135525ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453968; x=1704058768; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=EOImtChB3trquByqyhjURvrTs5b+pxovzmqfkNY6h9E=;
        b=hwBgkJKXZM7RXjALs0uyz/EBVNLFD8Jv10OSMjqSEp/RDYGN9v6/HpGf6aOiQiMn1q
         fVTPCp4Hnfb06DqS0U2/+p6/JR4iorZEm4DcxfGRPSgfUC3zL8AukT3tRxNetX4nD9At
         wwoxeQtwUOen8tDwzzYHrJFHQu4wGimYWh2M0BeEfxLkUQiYUAQ72c1tkJZLKiHAwteV
         1MgHtFxH/aoSmWrWsgwSoo986az5rBI4p3IJUJcoh1PzuokZ8vj3TeGRwN05EMHecfYA
         Qgm0w/uMy8agJMAAfCsVeuIYlNwCgya4QG8ZI8zeCua9o7rGCKd930aeeQjpdo3WsrO8
         cqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453968; x=1704058768;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EOImtChB3trquByqyhjURvrTs5b+pxovzmqfkNY6h9E=;
        b=fbJ7yGvcOCj5z56DEv4G3rXcCTbnD8VnlNKf0D7K6cCtSrwdlSrNT3TYR1pHFcymuD
         8RA49GjJfTdEzB/gEf9mztpbYZNt+yiiTejHUlUTY8ss7LNhqDvF0fLt5vNtXaRGFtF3
         hsOKxJOK7DzHshQoAEF+p2aNKFL4ahO//sEd9jeh+QP9bbG6KXTFF5MMkPVagPSOA8Xk
         6yL3rXqTOfCnnlSPDi6L8YhtT+Rwcu3aUP1YzjDMC+ijcY+BbPVuj9Ys2m5yLVZgTOpl
         KMps7od2iSW9t8o4wrRz7T2UaezaJN28stu8PwttVTRZOqEbzFIjilwGTS3m/TyGzdb0
         GqJQ==
X-Gm-Message-State: AOJu0YzLcfaIwwFNx+O6u3+XZZzqwqJDma7nDBkIJkxPfld5U8pIXP83
	kbCmyAwYFIc2xRjq7CePmDASwK/u5h7g
X-Google-Smtp-Source: AGHT+IElpEFSzbeLneHWmSC7ejxW+Do+3dnn4gYiug1msTA/I/LBb12Sdd4HWPHDnGbuoug2DX8XpA==
X-Received: by 2002:a17:902:e84b:b0:1d3:a238:77ad with SMTP id t11-20020a170902e84b00b001d3a23877admr287503plg.18.1703453967726;
        Sun, 24 Dec 2023 13:39:27 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id jv11-20020a170903058b00b001d3b258e04bsm6894532plb.248.2023.12.24.13.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:39:27 -0800 (PST)
Date: Sun, 24 Dec 2023 13:39:26 -0800 (PST)
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
Subject: Re: [PATCH v2 06/10] iommu/rockchip: use page allocation function
 provided by iommu-pages.h
In-Reply-To: <20231130201504.2322355-7-pasha.tatashin@soleen.com>
Message-ID: <25bded65-29ed-2fe7-9db6-570dedf8d530@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-7-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133928_862849_82C26CEB 
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

> Convert iommu/rockchip-iommu.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
