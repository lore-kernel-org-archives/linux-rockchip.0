Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3303AC46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 17:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwDzHdoiug1/bdaezEAPv7eTcZT2RcTPJE/w/L6zOBA=; b=h/T1PGN5j0UT0x
	wy22acbrGBa+JRKdAi+639RXGnonHtPSCCtO2ndtVBuDC9HY6n82yinejkwG2c1EVbNRbeXLL4rM0
	cvWwfCbVCAz1Fpl00dYE5Z1GOp019mjwcD4d1AFp35RsE3whV6Nu5lEWnPEN4GMBCYiL1QQbYXyaO
	YZR/APuYynxuYxnmJzLo8fptRCem2xPKCNZX9FKFE4rJJWQHMOcUM3XXsOOQdje3TY4eKA8/rhbp5
	RQyzI/RQZjxTatubKp4blccwNGHUnxpFFZLKvvDNxE5nvreNO4weTBcLQvlDtZx6hVC0GHqGFm49z
	5ETrWZm9yjYPHTDf7sZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIB1Q-00DImL-35;
	Tue, 26 Dec 2023 17:15:16 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIB1O-00DIlH-1A
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 17:15:15 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-427e8bb6778so872251cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 09:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703610912; x=1704215712; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=znBescOeGDyEd/eBwZlWM7zCSH3WtYT9hTuxQY/0ciQ=;
        b=BGU6FKbDpot9+QsxhgRJ748j21OvTIyDhHNPuzelb1d6BEmtpKl9JYFW+QKTO90Zlw
         DvOq+x1bQ3Cqv1Kh+xdc566ulw3QQatURubGHvUT3TxF4XS79iX1gAma9AduUJQJoDWh
         dukHr1Th4tcV2ZN0OsK+VmXzvXPP4e9LC2S5rzlmhLla2w4vgDIAXI6vlIBha1L+h3pc
         1NwdSr62H4vy20yqO3fVkO7P3vHh/v9jYFtXQV06HuuJ2s9HYJKckPTqp8R4rbxBiKKN
         PCIyPqxLYqyyXcooCUhUaVm0WOa7MWu6T2Op46uKOZl2yNiAC17CVydyVln/79AYD1Op
         5MUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703610912; x=1704215712;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=znBescOeGDyEd/eBwZlWM7zCSH3WtYT9hTuxQY/0ciQ=;
        b=TYIjHk7OLRj/B8g1uu2zOFVuyPxS0ACH1dtVXc3ZAexfBbaUUNSgjCMAExmm1d207q
         PoWwL/o0vn26kt/EuVJj2o3JRCBCRZJgOe5h5QBZ7dvhwd8aye7fxxyxWZRHGVdMw8Pk
         gR6eSFx5xv+Un+iJ0HvxR70kwrqTNkisB7TjypEdHe+MidlgCu1GiwzRhWTxfP4pmdUu
         hA8EOQLSHE8Rg+f7Feu2Fe0iVWs467JBL0UdcwS9RLxOt/s5L1oxi9x+AKQl9Fj4UFA5
         QR//JwnkyEY9Kbh32S5qzW0veSl8co/Ndof05f+4rhspn6NkmoVoiQyI562mb1hTRkMA
         9ajQ==
X-Gm-Message-State: AOJu0YzOhmOwxfcX7MGK3hV32uR+PquCBSec27qE1hsh7WtVjp/ukO52
	3zj260C2FVzZf6CzIy4lfycj2PRGwO4bBG8+LUmFGbk4C5wYiQ==
X-Google-Smtp-Source: AGHT+IHyQ5pm+vKsp8dlt+xdHnTW6C3uPhOZpDSwoY++VClJ/nDwEbMxRN02tbeUhgBwD4pSJVi4TOSqszJhqwYmmj4=
X-Received: by 2002:ac8:5bc2:0:b0:425:a28f:ddd8 with SMTP id
 b2-20020ac85bc2000000b00425a28fddd8mr8563250qtb.137.1703610912560; Tue, 26
 Dec 2023 09:15:12 -0800 (PST)
MIME-Version: 1.0
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-2-pasha.tatashin@soleen.com> <776e17af-ae25-16a0-f443-66f3972b00c0@google.com>
 <CA+CK2bA8iJ_w8CSx2Ed=d2cVSujrC0-TpO7U9j+Ow-gfk1nyfQ@mail.gmail.com> <0ba8e579-2b6f-4e9f-a38c-097694f14d3c@intel.com>
In-Reply-To: <0ba8e579-2b6f-4e9f-a38c-097694f14d3c@intel.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 26 Dec 2023 12:14:35 -0500
Message-ID: <CA+CK2bBGHv3f2AM999C5zoo018yzFdQpygUaPn0AVoJ7cX+Sbg@mail.gmail.com>
Subject: Re: [PATCH v2 01/10] iommu/vt-d: add wrapper functions for page allocations
To: "Liu, Jingqi" <jingqi.liu@intel.com>
Cc: David Rientjes <rientjes@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev, 
	baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org, 
	corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org, 
	heiko@sntech.de, iommu@lists.linux.dev, jernej.skrabec@gmail.com, 
	jonathanh@nvidia.com, joro@8bytes.org, krzysztof.kozlowski@linaro.org, 
	linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org, 
	m.szyprowski@samsung.com, paulmck@kernel.org, rdunlap@infradead.org, 
	robin.murphy@arm.com, samuel@sholland.org, suravee.suthikulpanit@amd.com, 
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org, 
	yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_091514_691836_3A6ADCC5 
X-CRM114-Status: GOOD (  13.50  )
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

> >> Document the locking requirements for this?
> >
> > Thank you for the review. I will add info about locking requirements,
> > in fact they are very relaxed.
> >
> > These pages are added to the list by unmaps or remaps operation in
> > Intel IOMMU implementation. These calls assume that whoever is doing
> > those operations has exclusive access to the VA range in the page
> > table of that operation. The pages in this freelist only belong to the
> > former page-tables from the IOVA range for those operations.
>
> These pages maybe be accessed concurrently by thread contexts other than
> the IOMMU driver (such as debugfs).

Good point regarding debugfs. While, it does not change any locking
assumptions, for this series. It might change some design decisions
that we need to make when freeing pages on unmaps (a separate RFC
series that I sent). I will have to study how debugfs affect refcnt
and mapcount, and whether we could use per-page page table locking if
needed.

Thanks,
Pasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
