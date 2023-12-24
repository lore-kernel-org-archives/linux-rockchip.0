Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE05C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePA8PcH8VcNL0mhTScckivU5qHEfcnE/eDwPBm+KjpM=; b=ttEjLuQu2noK+z
	cNyq1k5HJw2AEJa1fdk2/aXsYnVabgGncjKIn745Pb3BmLy0XB0OcrctYGca+R15zFKCkrjKKak0X
	f5f/QpFlYQJajc+TKPLf5oPDeGza4eSWAgaK7rBruwyUFsMqqXPgzYMIy8DfJMj6RELJdBGQwFve5
	8iuV9CkgObbtsGgMlkcSHucCOkhmCuXW7hz2sgQ2NVCmuDX+/lbQAap/ITqN/tVfuo4fYBBlGRX0s
	notvY+LDMsP+Y0KvMCRAJqDArgHAJEDPKVKYk0YCLL112wZqzFO5PRhLODmFnrHA8By9OlmvDLQmP
	mpuNp6ebELpt5LnOoiPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW9b-009uG4-1j;
	Sun, 24 Dec 2023 21:36:59 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW9Y-009uER-0Y
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:36:58 +0000
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-36000a26f8aso25885ab.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453815; x=1704058615; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Os/oPiSZBtjIUvvwHAsDtB34DNNtYdnH9WgDGcFTsds=;
        b=PialE1Y6+O2NhXX7vuZN9JM2rj9BsYEv1+0zi8FDHY6WjYLDunMn4cnXzHQMb446+l
         eJtp2m3dHrcWA4wHm2HXY4Ce5OcFZgSAeDglOdut7L+tvKFjsQUOoZqGwQe0SeuV7+Ts
         3iNzWFIVE/VBzee3Q0ejFRK6HjDbzpgnSc9sZj8sY8BQ9/QV9uLishxkDnfEoBP7fsGz
         ymWxocIcogRov2hwMg3NuuLN5s0XdajP0/2cWOPlIlY7NT1f8pC+3ZPya4iCcPKnnh87
         CIlmTMUmQaoTkSarK1Zh/5XwhyydlaV6xu9RRNESrpH9AVA2d6IxGkNCP2zOZZt6zxkN
         Pcyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453815; x=1704058615;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Os/oPiSZBtjIUvvwHAsDtB34DNNtYdnH9WgDGcFTsds=;
        b=j1V/HhjCxvYOz8RMXNoIQkaS8DAB020emF3zTeOJwxWarz4RuPd5KZWgq5j3/fxRRh
         YpjiNCNVh6SCjyITv+abniIVELUK3zcl+VzMOQMhKANnrDkIK5hmsqxPtxCci7F+QFsy
         iKv5Nk3tpjyVqWS7MUxzJ9da4ekZ4w3WHLuPZkfmBmkXbcf7udfy3F81BQFhYkF87zcd
         LNBHyWl19TmgtsfFQYCNerzYbKKZ3TG/fJ7sLp8kLrcq5boTZ1T5I5B5hrB+EByRRSVr
         kQ+0Rpk+Lp+vuJgAubrWayHWImfm70jZqYJFA9jq4X+flKjOnx2eg1ebGQfGXK81OXox
         wtCg==
X-Gm-Message-State: AOJu0Yzqfnq4vt5gpPTU2oJcFgXmsgseoXOzdasV7mlVa4+SSYxDL6Ae
	N+ffdzdk5lPzC99stdzUh9BURaJjqNCR
X-Google-Smtp-Source: AGHT+IH2zcpLJWPKD+BeBsfBapGRJ4delpEMsonOf6psnFmaNZJ7wb6YGlKK2PGLdTvnRk1ktYgw3w==
X-Received: by 2002:a92:ca8b:0:b0:35f:65d8:dd50 with SMTP id t11-20020a92ca8b000000b0035f65d8dd50mr389199ilo.18.1703453814883;
        Sun, 24 Dec 2023 13:36:54 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id y18-20020a170902b49200b001d0ce267eaesm6915344plr.250.2023.12.24.13.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:36:54 -0800 (PST)
Date: Sun, 24 Dec 2023 13:36:53 -0800 (PST)
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
Subject: Re: [PATCH v2 04/10] iommu/io-pgtable-dart: use page allocation
 function provided by iommu-pages.h
In-Reply-To: <20231130201504.2322355-5-pasha.tatashin@soleen.com>
Message-ID: <0db8fdb5-26ee-5069-30d2-118595516926@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-5-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133656_222830_D04E5593 
X-CRM114-Status: UNSURE (   6.87  )
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

> Convert iommu/io-pgtable-dart.c to use the new page allocation functions
> provided in iommu-pages.h.
> 

... and remove unnecessary struct io_pgtable_cfg formal to 
__dart_alloc_pages() while there :)

> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> Reviewed-by: Janne Grunau <j@jannau.net>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
