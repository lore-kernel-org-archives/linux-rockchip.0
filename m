Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9829C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 21:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7M9usMGmbbYwOqm3GFPe7CP0olqJCzfDOLsKRtZ0iw=; b=BZcoEZnGoPr+gO
	HpVeIU7I4X1Nt0sepvTV/lIr1BykVYcYrNULujTLC0tvyEvpDRUxZ4xp6E7LJG1zY1pAlOd2I8Qn5
	msCyazAVXyL9pEygJfZrFIRnps0rIJY6qDIXPh1/jtCbDe2Lm1RO1W0Y/k/xnavqCak3LFs9ZAFTV
	ubvEi8wU/5rc26rOFyvElF7nlx+VNUyHZFqQE1coao4t61pw6TrCy7q18OsIyoHjFSUHBnlY/ZGGu
	OUMynpuQKrAsOsKm/SYEur4+kb/BrGAW3pHh/YlScHxUzMDF7aAOvkRqOdnMyAnGmI9KLVDLv25na
	Zp+J4/lvTiNa1/g1TaBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWD1-009usy-0Y;
	Sun, 24 Dec 2023 21:40:31 +0000
Received: from mail-il1-x12b.google.com ([2607:f8b0:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHWCz-009usG-1v
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 21:40:30 +0000
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-3600101e819so19205ab.0
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 13:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1703454029; x=1704058829; darn=lists.infradead.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Ze3dFp7nuwLIlYyxkNcxvwY2+LEPIxqYIZFYJMGB88=;
        b=gZAjFXIr3ZT30a2aQQ7kR50Fb5kkvNdX7lN12xEd4bvUmKV+ps+3KnCa+eHrggGwH0
         PWjpYnMETzTfDVh9n6D9rAP5Jne3ghCFMhAo1Y2pNECFquJLujBQx2kDzKj2m8Ns9RJG
         QjLdZTgfDHn1HDENMfVshmLLlpnL3F2lJV2qDRwo0FLz7TS3vA3J/SFpt9jYqDx+/pU0
         fb5hIoH4JF9yJvn96Ydre6xmNIi+GwRuFUGCJ4lwkNt1oeu+e7UAfE0/7h4JIjsYGBuJ
         NK9mJyFd3jpAmiK/8hCpcxBfHG8g5zSaPTWOvyAv37vFjvnOvy3cu4y8ErVg9ATzsehw
         VsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703454029; x=1704058829;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Ze3dFp7nuwLIlYyxkNcxvwY2+LEPIxqYIZFYJMGB88=;
        b=w5OSshHh9yidxdcAuhCLCJuTQCSq0LD3gPUrYyGWy693XnZ9BZn+t3akmr1eJ/Qwc4
         XtsuN7D6BLsULvpRAMpbh5Z1FHknxhuClS4H3F4Up51Oqh4yhB0LgEPJ2g69Ag9iOYMb
         H+vNeX7sHcxsvI+S13ssLoT5nwsbBPRMiB35AfKBFc/YmC2TpimTbh/IZzxdOyoba+2g
         aG/sGPKLIMhDKw0SdG+2rVKPNBGSjMjeR6Nq/y8Ng2UJyOuwkBloXrOYsUlmOiKUdGz9
         UMQGGEBZAG+tibLPVFtMTZZjlLwRIkd4eJHolol5jD5wv8nandTWMos/VO/vE28YUdRf
         jilQ==
X-Gm-Message-State: AOJu0YylbdwGZUJH1j5+YqXwrymrgKV72PxOmoCpy5VLE8iJMnbLfc+m
	I2b+NbcsPJofVznhk8oCt3QelrfhF1KU
X-Google-Smtp-Source: AGHT+IGVjH+txTkfFSMsBbhv6Zq0xwdPACuwyfbDHigrPlypESjKlpkGed7PeZwM+hfx5XjzT8YDrA==
X-Received: by 2002:a05:6e02:492:b0:35f:addf:c08e with SMTP id b18-20020a056e02049200b0035faddfc08emr371465ils.19.1703454028683;
        Sun, 24 Dec 2023 13:40:28 -0800 (PST)
Received: from [2620:0:1008:15:c723:e11e:854b:ac88] ([2620:0:1008:15:c723:e11e:854b:ac88])
        by smtp.gmail.com with ESMTPSA id w22-20020a634756000000b005cd945c0399sm6737737pgk.80.2023.12.24.13.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 13:40:27 -0800 (PST)
Date: Sun, 24 Dec 2023 13:40:27 -0800 (PST)
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
Subject: Re: [PATCH v2 08/10] iommu/tegra-smmu: use page allocation function
 provided by iommu-pages.h
In-Reply-To: <20231130201504.2322355-9-pasha.tatashin@soleen.com>
Message-ID: <2b7e2912-4be7-4b24-ee56-0378a3ac1d3d@google.com>
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com> <20231130201504.2322355-9-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_134029_658858_BFEC6716 
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

> Convert iommu/tegra-smmu.c to use the new page allocation functions
> provided in iommu-pages.h.
> 
> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>

Acked-by: David Rientjes <rientjes@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
