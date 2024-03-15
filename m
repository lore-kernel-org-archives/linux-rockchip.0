Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7373C54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whWOv7O712IxHQVWeuut1Mg4rEYVoizg0Wz1meE9Znw=; b=ogNeELCWKKLgo2
	QS+e9AsNYHcGglz3EtRIA7dcmKYLjTgOYHK1b3Vt/qwi1KyEi/MNFxEbse/DXlsK8PAb/JzxbD/nK
	CxRSRKISzYlBT61kg7nbr3ISPkljm6PLoGixiA0YAAtLvOlh1ReOPuEBm/H9ZYngHxtPw7V6DNz+y
	thgcN79hBKTyYaRGpZkB3dg+4uTcRxBZ0aDjJ+q0Z1ZKQhb9NKghGRFW3Eq4eAWbQW426TjkeJL+5
	PY5f+XLDlMgpOkyAM0qVIsQeluXAVZ7AgvoF2pGiCmBvgIwtw5IZ9xgw+0n90Im4ImBb8DvQVFyF+
	rDFxlz+Mw3zv4XmIYweg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlF62-00000001daC-0vrb;
	Fri, 15 Mar 2024 21:28:10 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlF5z-00000001dZ8-2Y33
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Mar 2024 21:28:08 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1deddb82b43so45105ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Mar 2024 14:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1710538085; x=1711142885; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=f8xWPRJ3tZZgN10pKFEIYzu9dCAJ11FurTmpvR2gSvg=;
        b=IN04yOcO3La6Eqroq9TiSKk2tqJX56O97/SJaqcdIayPeyjhIRXxNVSPqpNE8WUMsj
         dPrJBoHyRMinbpapPAFOIn8Ql9Pn/RUbOX7Yk+bR/6wSWg7A2/1dHBHo2UBJwq+y33H+
         nepPHeO6NUMLwwHoexBc8TJUuUOkMFNXLj134jJ64k08GWLKcOwIBujCJssSg9H1AKob
         tS5nxa0pAMPrpU3F8ya6Z+vZEAuPEwcwscFhqaKcdnXID3J71N6ff7h6USNYMKjigE+J
         F1aHfEdJvUvqJx+3tLLcv4cqWCV3RasF4T9s/0paBBgWfVrXPQn53YwM/ckdEjidOBe6
         IVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710538085; x=1711142885;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f8xWPRJ3tZZgN10pKFEIYzu9dCAJ11FurTmpvR2gSvg=;
        b=TIk802r4wM21jF+E0opXgeaml6AMvOYJuKU1BHNYA3xMwhlF+lwERKac6NNCPgEzpq
         W3sIILdQXZlA5lUSnsdNfhZPQQF7R0TMkQkzGy9fZ5PE2adLBCvws2stazrTY6xO9dfC
         HH8y/5ow6n57GNt92UDk94pyck5nhbM4SvS7cTAkNqd/Yo4G7jO7K1NnfsH/Xc3ExWPW
         9UHIi7uAetXZQTp1DdGnWkqqQYw1acaj6NLYPjE1dHCWlEJ4QnCenrQcVjO8cXLKi95S
         mqnutj/I+FnRhrWAlEQVj6wBEbFJqLGy6ZdpPggTK9QuhS1nsXhF8ZTqScHjqNuC7LBj
         JrUA==
X-Forwarded-Encrypted: i=1; AJvYcCX7Euf6GpflILDtRbykM/loW0dKXrQiNMzQEeO2JQjZiH3uAWBGEh33+nVCYI3Pz0zi9JIrso72t9oeN2tko6FuZC1auzmAQlCDxNagP9mzqVIF
X-Gm-Message-State: AOJu0Ywg0G62xxMkw1Vr9+l63ubwhe5KRMLrkGh3fg/k3NnMEzPXQCds
	qe/zt6LsmcTwqqrMJyuezNy9tnBVPhTHAV3RaQTMrzC3sS0LtuY+Y8kjTSBgfQ==
X-Google-Smtp-Source: AGHT+IFx0V9evEEHTCAL0rngEMSTSxrVQJwAPcZMZ/kTvEYdGlomkmF5ttVwWUPGQnGpzwrxLolHsQ==
X-Received: by 2002:a17:902:ea0b:b0:1dd:96e5:feae with SMTP id s11-20020a170902ea0b00b001dd96e5feaemr291145plg.16.1710538084580;
        Fri, 15 Mar 2024 14:28:04 -0700 (PDT)
Received: from [2620:0:1008:15:59e5:b9a4:a826:c419] ([2620:0:1008:15:59e5:b9a4:a826:c419])
        by smtp.gmail.com with ESMTPSA id u17-20020a17090341d100b001dddb6c0971sm4396163ple.17.2024.03.15.14.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 14:28:03 -0700 (PDT)
Date: Fri, 15 Mar 2024 14:28:02 -0700 (PDT)
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
    vdumpa@nvidia.com, wens@csie.org, will@kernel.org, yu-cheng.yu@intel.com, 
    bagasdotme@gmail.com, mkoutny@suse.com
Subject: Re: [PATCH v5 02/11] iommu/dma: use iommu_put_pages_list() to releae
 freelist
In-Reply-To: <20240222173942.1481394-3-pasha.tatashin@soleen.com>
Message-ID: <34b593bb-796b-7657-8971-17d24dea4e99@google.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com> <20240222173942.1481394-3-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_142807_658865_FFE9C9CD 
X-CRM114-Status: UNSURE (   7.62  )
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

On Thu, 22 Feb 2024, Pasha Tatashin wrote:

> Free the IOMMU page tables via iommu_put_pages_list(). The page tables
> were allocated via iommu_alloc_* functions in architecture specific
> places, but are released in dma-iommu if the freelist is gathered during
> map/unmap operations into iommu_iotlb_gather data structure.
> 
> Currently, only iommu/intel that does that.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
