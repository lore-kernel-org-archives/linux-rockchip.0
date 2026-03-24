Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BC6FEC0F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 19:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBIdMCwSPnvNomX3YNx0nYRvh6Lvsxz3WMuLyx4pb9I=; b=Zm6APKlwe4ilRb
	MtOd8YUP6sBtyWUUHK8Lz1sf6C14SLHUAz4t1hy/n1meNq+/5RRppNKi+2WLtWbkFENGZRNyuRmvA
	JEbCgUklC+4LxFLaKsktZUSQQ5UoDiw2JBgakoX5ntW8EBmS1FRQpjl6quc9s8M+vltuYtnyspOxw
	zWJEmOqmsilDAQB7ANYzzw7w2yycB9u0hs29EQtjBKdXaN0g27LSz+RHW+nP1wCoDevJUnYG7kInP
	fxi8jayYFobugaLwXUPQQ9C2p8oeAsfj+thpjbq3FpDxODZdnhjg0FgRL26vmwE6/9jFcbhSGu+e1
	AtT/Sw0iRlLmIYNTGDdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57MC-000000028lI-0agT;
	Tue, 24 Mar 2026 19:24:04 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57M9-000000028ke-2Jd1
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 19:24:02 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-38bf132993dso14001931fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Mar 2026 12:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774380239; x=1774985039; darn=lists.infradead.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=wYMnchnB/TeeKyI/1Ye/NWdU8u0hSMm+QUE/z4pDCe4=;
        b=ij2WbRxkjBbSzvA5BFJKGOmqTcxH5XsaNVIhpuBsAmwpxswM6326/+hyT2LkS6g84O
         OaUaGBM7+LuPhKIW1TVpRiT2aTF+zrEUoX15OLv/gao3LlPhqtQcymcUg3iUhTKRUk+O
         cno75ni1od88wIAYJZRrv3hRtXhCSuSpHZno1XLN/HvEQt669Y9MAYljR7xA+m9qn8an
         HS0KUlyz6e7BeoIucqcmyoamtoDUZNnsawEBCmjXj11xL7vwdXIT3/6ncN4GFM3GovUA
         szyph+dtK2rGau1zEmZXa87Fj9IRS9yblwrsmQGzBqr0MFxIjXNzyhzeN9i9NO9Fe5wu
         5V7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774380239; x=1774985039;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wYMnchnB/TeeKyI/1Ye/NWdU8u0hSMm+QUE/z4pDCe4=;
        b=OENu0XMW8TrvmgAbVZrCfU5u5suvmRm6ugUzkYLRtQdGM0mpL5IBHQ/WaTIBsm/1yv
         7Nm1ZW93oDHOF9QU+I2XZl8cMvhKSKDYndEBo3V44bZZQEokoA6gnKpopmM5kpF24cDf
         TubEI86wY2NqMmhOBrZQsgV2PwKjzuUUy4RhoCogzE5WUr4Q+kQi7FoZ9Xv6yXL6jaT+
         hSw5PMZ6Mo2+qzHRWhwCt/ntcSTIXdCEGmsCImytTP+dRSwkK0ulvr5kTJIH+2D7y9ml
         n/ouDP30VpjdVrogxbXgM7mY3BrRVoNH+rOgXB9Udw6cFMv0rhxhb0kIq0bq0EXZ06U1
         huog==
X-Forwarded-Encrypted: i=1; AJvYcCWBNU4k71cCYQGJ+qtxoh+M0XhcaZcpsoPH5HbCHvMeq7RghUrXbo2rNFLEUT4Gd2J0ia0f6Avge4Tr8X/IrA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtEdkIb8erm4NquP9A/X/7+jJA0n9F/8F9c5RRiNkCeHu5qTJ0
	/GhN+CMsRe+dFPHFsVSuUtD25YojvjJMA+EuNkEKT1n3j+pUVajsfPJV
X-Gm-Gg: ATEYQzxH96o9oUEQUs4reFX3n5d4MYlMUSmIY4KA6REaskYC+PDACp4FkIptokheoD8
	ZKQfLUQ5QYIDB986/wepwJqwEi8Q2P68mmfQYsL7nTaFa9721/KFv6Fbm9CrIVkvSqea8VWaqMy
	SNP5qjiyQ/3/SVzJDFnlDTJU2gLlscdYxgBw68oEevSRjJLeU0kNf+oPffj9otO1y5zGKEBjtph
	3RyuyEjSA3/kvsRHUAjo8ZJWZDpLxNaJAN2+qq2N12Q782+yfi2TvuTtBZNu2uQF3380c/omW2A
	wDuKNC4mRarG3PnBcuj96yJ0lUfFS5r6B2UefUxBr+bpTzmaylzNEz7EiDImUCavKw9L15VipAg
	lOhIRZ/9IfpVZl2yZpDsjzh80SCdFfwgxOAxs+jKKNsLQbtDFYfRuHaPTZFTYqDSBvgtoLWAJl6
	zOYP0sM2aY8uatvnvv2zc=
X-Received: by 2002:a05:651c:4212:b0:38c:4231:91c2 with SMTP id 38308e7fff4ca-38c430c33d1mr1974511fa.10.1774380238610;
        Tue, 24 Mar 2026 12:23:58 -0700 (PDT)
Received: from razdolb ([77.220.204.220])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38c34a2db0bsm6416851fa.21.2026.03.24.12.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 12:23:58 -0700 (PDT)
References: <20250303-b4-rkisp-noncoherent-v4-0-e32e843fb6ef@gmail.com>
 <acFkAPreOFBvoHid@zed>
User-agent: mu4e 1.10.9; emacs 30.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Tomasz Figa
 <tfiga@chromium.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Hans
 Verkuil <hverkuil@xs4all.nl>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab
 <mchehab+huawei@kernel.org>, stable@vger.kernel.org
Subject: Re: [PATCH v4 0/2] Allow non-coherent video capture buffers on
 Rockchip ISP V1
Date: Tue, 24 Mar 2026 22:12:33 +0300
In-reply-to: <acFkAPreOFBvoHid@zed>
Message-ID: <87ecl9f2uv.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_122401_599298_52E2D58D 
X-CRM114-Status: GOOD (  15.91  )
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


Hi, Jacopo!

On 2026-03-23 at 17:03 +01, Jacopo Mondi <jacopo.mondi@ideasonboard.com> wrote:

> Hello
>
> On Mon, Mar 03, 2025 at 02:40:08PM +0300, Mikhail Rudenko wrote:
>> This small series adds support for non-coherent video capture buffers
>> on Rockchip ISP V1. Patch 1 fixes cache management for dmabuf's
>> allocated by dma-contig allocator. Patch 2 allows non-coherent
>> allocations on the rkisp1 capture queue. Some timing measurements are
>> provided in the commit message of patch 2.
>>
>> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
>
> I regularly get back to this series everytime I have to reason about
> the caching policies in vb2..
>
> Is there any reason why it didn't get in ?

My impression is that all the review comments were addressed, but these
patches somehow fell through the cracks. I can rebase and post v5 if any
maintainer is interested in picking it up.

>> ---
>> Changes in v4:
>> - rebase to media/next
>> - use `direction` instead of `buf->dma_dir` in dma_sync_sgtable_*
>> - Link to v3: https://lore.kernel.org/r/20250128-b4-rkisp-noncoherent-v3-0-baf39c997d2a@gmail.com
>>
>> Changes in v3:
>> - ignore skip_cache_sync_* flags in vb2_dc_dmabuf_ops_{begin,end}_cpu_access
>> - invalidate/flush kernel mappings as appropriate if they exist
>> - use dma_sync_sgtable_* instead of dma_sync_sg_*
>> - Link to v2: https://lore.kernel.org/r/20250115-b4-rkisp-noncoherent-v2-0-0853e1a24012@gmail.com
>>
>> Changes in v2:
>> - Fix vb2_dc_dmabuf_ops_{begin,end}_cpu_access() for non-coherent buffers.
>> - Add cache management timing information to patch 2 commit message.
>> - Link to v1: https://lore.kernel.org/r/20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com
>>
>> ---
>> Mikhail Rudenko (2):
>>       media: videobuf2: Fix dmabuf cache sync/flush in dma-contig
>>       media: rkisp1: Allow non-coherent video capture buffers
>>
>>  .../media/common/videobuf2/videobuf2-dma-contig.c  | 22 ++++++++++++++++++++++
>>  .../platform/rockchip/rkisp1/rkisp1-capture.c      |  1 +
>>  2 files changed, 23 insertions(+)
>> ---
>> base-commit: b2c4bf0c102084e77ed1b12090d77a76469a6814
>> change-id: 20241231-b4-rkisp-noncoherent-ad6e7c7a68ba
>>
>> Best regards,
>> --
>> Mikhail Rudenko <mike.rudenko@gmail.com>
>>
>>


--
Best regards,
Mikhail Rudenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
