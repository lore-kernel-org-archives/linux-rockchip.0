Return-Path: <SRS0=BMHt=GP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F718C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 09:01:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 643C422CE3
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 09:01:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 643C422CE3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KZcepnIGxjDkTbxLmtlzSUTvbcn+b8V17c5FghQuzPM=; b=rx4+hLYZfL1fR5gOk6p7BnCz4
	3KUiNBefLlvAh8f5TLc3OKJEtJicurMF/XDEetxhR7ryHCcC0Gie8tH875qDytxTEm7xWwvK5OiaV
	Bw2QO8tNE4LOJwhFEeQrOKLBk7WsKaPnysNJO7oregPFItqjoBqsMN4/7nM43hLxIv0l1AoQyl2jB
	RVEfzD1Ltng2P4eR7eEI+6MxYUyv4BqJogD/yBKgEju3NDo88JuTXNbmDbAbnwzzzaBDHOCkwGkcU
	6LtabF5/z+6IU9KHrQyY4gMThP15/yqahrxhyHGKLG4L3zGdbXjJF3YOh408T/okaeCLkstoog4rL
	lyZ0wh3uQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzFYO-0006vJ-08; Tue, 12 Jan 2021 09:01:28 +0000
Received: from mail-lj1-f179.google.com ([209.85.208.179])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzFYK-0006tD-LF; Tue, 12 Jan 2021 09:01:26 +0000
Received: by mail-lj1-f179.google.com with SMTP id b10so2001654ljp.6;
 Tue, 12 Jan 2021 01:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=haCXkiEdHtQn5zcL0eeYqZrMblZ/rhEiT3dh2wlTt4U=;
 b=Y3dkODniZbi2ukKoPq8KwipUi0i2h6dCeVmxgrcV4bORcmGjHLuXgrDZrG15xl1ANS
 I/cQtfUAWfgfZ5JAnp5enVqUQMS6ufSymUabbWHWBzB28gksq2qDjit9cjJOTm8/ilZ7
 g0LgebtaR9g2fTwXNAfeuFKnClYv1uzN43aIsYVIxJAslfhfzbE218SvoRALKA30l0dF
 K/rCC9U371SiHwhQpToWmZWzOgMMJsTdazEffuCXyHHKYWVHWOsf9LOiJfITAkEJJAjq
 vZHFxeArLJQrDLnKmDauyBXEamy7ujHHbC1XmAa+CSnvsWlHKxkcKM9T0Cewio8GGEl+
 n7yQ==
X-Gm-Message-State: AOAM532YBoc6ufG8EkP0JI6npILkxJumazDsX3OrWgmHz/ucm36x17vQ
 BpSDY+wT+6IeNXyjcEsRDXs4Pd5IVDaBFQ==
X-Google-Smtp-Source: ABdhPJxYMSxkSKMy2aAXh1YZl06L5Z+balOygdzaMZHkFosDC1GBIZ2yiKH7Ko6hmRJYibwTK5Xhbw==
X-Received: by 2002:a2e:850f:: with SMTP id j15mr1630699lji.34.1610442080911; 
 Tue, 12 Jan 2021 01:01:20 -0800 (PST)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com.
 [209.85.167.47])
 by smtp.gmail.com with ESMTPSA id d11sm311523lfe.115.2021.01.12.01.01.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Jan 2021 01:01:19 -0800 (PST)
Received: by mail-lf1-f47.google.com with SMTP id u25so2232069lfc.2;
 Tue, 12 Jan 2021 01:01:19 -0800 (PST)
X-Received: by 2002:a19:c783:: with SMTP id x125mr1692517lff.303.1610442079205; 
 Tue, 12 Jan 2021 01:01:19 -0800 (PST)
MIME-Version: 1.0
References: <20210106134617.391-1-wens@kernel.org>
 <20210106134617.391-3-wens@kernel.org>
In-Reply-To: <20210106134617.391-3-wens@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 12 Jan 2021 17:01:07 +0800
X-Gmail-Original-Message-ID: <CAGb2v67qXN1FX7cupTvVZrM8XRA4LWxVkfFbWh220CWrU7tyAg@mail.gmail.com>
Message-ID: <CAGb2v67qXN1FX7cupTvVZrM8XRA4LWxVkfFbWh220CWrU7tyAg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi
 M4B
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210112_040124_735380_D0356530 
X-CRM114-Status: GOOD (  16.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 6, 2021 at 9:46 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> The NanoPi M4B is a minor revision of the original M4.
>
> The differences against the original Nanopi M4 that are common with the
> other M4V2 revision include:
>
>   - microphone header removed
>   - power button added
>   - recovery button added
>
> Additional changes specific to the M4B:
>
>   - USB 3.0 hub removed; board now has 2x USB 3.0 type-A ports and 2x
>     USB 2.0 ports
>   - ADB toggle switch added; this changes the top USB 3.0 host port to
>     a peripheral port
>   - Type-C port no longer supports data or PD
>   - WiFi/Bluetooth combo chip switched to AP6256, which supports BT 5.0
>     but only 1T1R (down from 2T2R) for WiFi
>
> Add a compatible string for the new board revision.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

This was

Acked-by: Rob Herring <robh@kernel.org>

back in v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
