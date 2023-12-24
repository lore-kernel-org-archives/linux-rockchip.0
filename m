Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B159EC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyqvStq7dstEpKE6+vV7LbB6yUYeBAQM4HQerR9wLVI=; b=CmTh//gOt2zWam
	rc5gVgOybIAKPTcohRHe8aMIcpNlLMSz7/wL32HS9q5jkHMo7zwz2VOBRDGB9gZ0etvGfoVQA6jA9
	GNWkC0C2EDVUpxWzB/5rY9Vd/pdrvHI470l5Qd9+0XWxRL/v9PJM+UlZPQCaGM6AUvCKurj2ZJ5X3
	q1r5DIGLUkvio3jSlUQ4Z0XEAP+nt8Bb9+pYmMaPioaKS6N8aJQcMV7OX+Jl73jRlSzo5iL0ZKNzo
	5ZJZqaEoeIT+hMDv8Xq2tSZ9n9kcM1RfkBK6wtOuz/wX/6eXRCaGuNxmz8cdSRr3NnOw1U2Gnr6SY
	s0nEhhtjIGAOVvhHykFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW7M-009u52-0Q;
	Sun, 24 Dec 2023 21:34:40 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHW7H-009u3d-2N
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:34:37 +0000
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-35ffc781b3bso58165ab.1
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703453674; x=1704058474; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=TfM2Ozc84jVU4EjDuheFZr1xJI8bldYDvajnMAoQpG8=;
        b=XVvNFcIlycIcu0Hh6uJDfwOCR5bJ9J6z7N8P9n2KmyDdKmWumCCOV5RP+ATkI2md8+
         AI+/GnNQ7LiFrYSUiioZqdNPWMliyYnXpmwLKCupEtpzboyQoBb+SCqVylCnDRblSiHn
         fQdC00RWhxL40MtTZFhfZ/CIJuzjwASmzK08otvwoOu46pFkXc94DGPBeWKJgHycmGA/
         fWP4DNn3RqVcMxr+O3s8uohJLoVVXpOa7K7HqG4W+YLSb7KCuBZRURGOtH1qQuN9+aba
         oPTm1wCGwx87FaUEmFqTFb1/nZP++wyNlN65gWb984RMbE0cqHgCJz5lwq5GDk+yihPA
         K9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703453674; x=1704058474;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TfM2Ozc84jVU4EjDuheFZr1xJI8bldYDvajnMAoQpG8=;
        b=Cn490z6fiv4O0hvl0o66oQ18uBBSlH9zn+Y0dZuCdk7YchZKKqasIpJpg4kLKaj9Qi
         9oux/s8gfPnQgSzoRc/wxe+jWHRv4ftudvQX6nVgwym3Q6YiFFFHUQipIIjk+Me35yss
         Xt/fU9VxOtj6ajSwjSxWGhceatmxGghxluo014GsK/TFeoW5/iBo0/o+aIrn0JUs+xr8
         LoAbV3Tjdei8oGTHSv2hmFdJCWCEcTT09eE3Dov1KkCMT5jTmXEgQZAR/yk4uONxC43o
         Bpma9NaUSGo8RwTBHmzcDrz3yDNPKrVFj+O3Sl7vRdMkdTE9KJZ3H4BradPD3aXwBZgx
         7DMQ==
X-Gm-Message-State: AOJu0YzPQvzI3tAvAUBIemzJrbnBZIZfKMBqb2IyLD09m+SKuWuz/EQC
	J7t2A+XVXtp4tQQKx56/PoU4MYmZdltQ
X-Google-Smtp-Source: AGHT+IG3cVdgoPXJNOP0FoX9QP3AtXmf/dh4TZ34AQ57wFrWDSmH4MJwWcFfrokVe6jo4lwlGVdhWA==
X-Received: by 2002:a92:6802:0:b0:35f:ff76:2d40 with SMTP id d2-20020a926802000000b0035fff762d40mr25383ilc.28.1703453673759;
        Sun, 24 Dec 2023 13:34:33 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id h16-20020aa79f50000000b006d9ab1e15c3sm2281753pfr.129.2023.12.24.13.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:34:33 -0800 (PST)
Date: Sun, 24 Dec 2023 13:34:32 -0800 (PST)
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
Subject: Re: [PATCH v2 03/10] iommu/io-pgtable-arm: use page allocation
 function provided by iommu-pages.h
In-Reply-To: <20231130201504.2322355-4-pasha.tatashin@soleen.com>
Message-ID: <f36a5a1e-f28f-c25b-337b-8c67ccd46943@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-4-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_133435_894799_9AF2630F 
X-CRM114-Status: UNSURE (   6.21  )
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

> Convert iommu/io-pgtable-arm.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
