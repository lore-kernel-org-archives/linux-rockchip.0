Return-Path: <SRS0=kwzO=MI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E0CC07E95
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 07:15:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00028613DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 07:15:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 00028613DF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9b29RJGR2XGvCvBQCnWT1ZwN5MwLYM8Ke3TCtlid7KQ=; b=lHWK/fgERooZvA
	qQ+NeMw95siSBppmWCx19nsA/ida1Q5zjmz3cZbtg6soWrCqbhfQDgWEwXmEKeFzSpm7jhIA0hKHw
	76kLWVFQyFZxXjpXBMPMAXMkOtn/KvN/cW24KlvgLs9HXh0zvhmpfxko1JYyOZCjJkXSU2elG1ZoS
	ybAVkKqHC2GjBO1Ax7WuLeHs9VwShVc29O4M7txaNJ2aU2obEnWrfP+3KobUzHdt2w7wOQ+Kdzpe2
	bLR8NOkRc6Ph5fJt8WPBIdgfjoVkFtQ758PXhq06aE+XtuqIGqtsWa17v3rkVHLPbopPJnkIUObIo
	VJzMv9U8liNXed/fTzKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4I4Y-003UJZ-PA; Fri, 16 Jul 2021 07:15:46 +0000
Received: from mail-vs1-f47.google.com ([209.85.217.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4I4V-003UHK-IJ; Fri, 16 Jul 2021 07:15:44 +0000
Received: by mail-vs1-f47.google.com with SMTP id r18so4450371vsa.4;
 Fri, 16 Jul 2021 00:15:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tLGLcXHLbLcKs7Bv/yUdoVLSx2l4hTbshPA3ruuQMsI=;
 b=meK10ZVnSq1vga4J4oJPWOzbSxAGg6zGav+N+bftx9R9uskjHfhq1ZRH03j2tiBika
 lpUcOQ/tS8ZgeU8sRRi/oAaaLGfZZVA51vEgcRscBAHGBe9kuUzRVmfNCBrPfY7D4GQT
 OBrNoxRMw8cGGgmSoy08QaQ/rskksE15gaHWQzhQstq6az8CPwCrFgG6qeRVk5N4eMOB
 CiKvQMEHz+FUNpj/vd7E5tVNVSLBix7cWWaJSpvG7B7lauvv2Z5FRtcF7ESosZn4/zc5
 NZrd/Y3EySjjKrLlD/Cs0wsAS4zOFCyW2Av1kRUIg0oFo1xRx1F4iYNIG0ZHr3bXy0v1
 yI0A==
X-Gm-Message-State: AOAM530WnrpPOUGbD/6oDOgKNv+6I9kN8E2rL2+lhnmGpEZKW9gM47g7
 Dmn+wwM7lm3zj83HH856RfS1jyLhsykz4JUUwyE=
X-Google-Smtp-Source: ABdhPJxU8C9UjOTZB6uTgOT7x032cUeTIuy215npQXpthcl4cR7amD3NaDh1SQpre3fagltzCSTNTDsojjxlfwMLuiA=
X-Received: by 2002:a05:6102:2828:: with SMTP id
 ba8mr10966737vsb.18.1626419736162; 
 Fri, 16 Jul 2021 00:15:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210208143855.418374-1-geert+renesas@glider.be>
 <162638886252.651069.16002951650407635275.b4-ty@sntech.de>
In-Reply-To: <162638886252.651069.16002951650407635275.b4-ty@sntech.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 16 Jul 2021 09:15:25 +0200
Message-ID: <CAMuHMdUYLVHwb1EdLO0D-cAyJAvx=pjHHZNg1wDCmVu+nTBVKw@mail.gmail.com>
Subject: Re: [PATCH] soc: rockchip: ROCKCHIP_GRF should not default to y,
 unconditionally
To: Heiko Stuebner <heiko@sntech.de>
Cc: Douglas Anderson <dianders@chromium.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_001543_650115_95552ECF 
X-CRM114-Status: GOOD (  19.98  )
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

Hi Heiko,

On Fri, Jul 16, 2021 at 12:42 AM Heiko Stuebner <heiko@sntech.de> wrote:
> On Mon, 8 Feb 2021 15:38:55 +0100, Geert Uytterhoeven wrote:
> > Merely enabling CONFIG_COMPILE_TEST should not enable additional code.
> > To fix this, restrict the automatic enabling of ROCKCHIP_GRF to
> > ARCH_ROCKCHIP, and ask the user in case of compile-testing.
>
> Applied, thanks!
>
> [1/1] soc: rockchip: ROCKCHIP_GRF should not default to y, unconditionally
>       commit: 2a1c55d4762dd34a8b0f2e36fb01b7b16b60735b
>
> I actually found the old one deep down in my inbox some days ago,
> so had applied that one already. Hope nothing changed with your
> RESEND.

They're identical, thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
