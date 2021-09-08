Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52592C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 19:45:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11F5F61175
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 19:45:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 11F5F61175
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIMRCv0RnGmdfo+8HlDBiz6qspZWLUZPpG/dZdigvMk=; b=EK8vkK8F5MOWeM
	4rcywKMI7E3+l9p/vbY9J0WWUCj/xZy1DY5iZlRLxSMeI8Fy9oJpQdRSGPwn8GDqJ+p4Jc5658C2N
	DsjybLTfcnirQlU8A2ZDdyv6tWqd+Mf91jTG9q0Xh8tMbriBNkJcWPnT55AwMNdUPmhUsqnaG8bUH
	pZiAsdrPoyJMm1zQPUooVvYUocFYNbM4D+JBe1KfGLd8oRDFxVC84fVDPJxy6dhVkoNDttVMXOayz
	cExWQVrK1eelWSgx60ahgm5Q7yaSmRaAUGgqEy7USOyP1p/5ExSeOCe6n1LDF8+vqWbj2YsZ0Rbtc
	spd+6Zs4zdN2LkS9s0OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO3VR-007Uyw-Av; Wed, 08 Sep 2021 19:45:13 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO3VO-007UxJ-Ix
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 19:45:11 +0000
Received: by mail-io1-xd31.google.com with SMTP id b10so4791804ioq.9
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 12:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cY82i5QFt3f+oSOKzp91m6FG0+h9u8XPOeGXpy/rmp8=;
 b=PwjzusCCcXmrdIWclxRAbuawGLVSB/EhOV0thKoYUYRN8m+k7eb0NyC+XejhuiM7E2
 Lo8AkpNDdkwirrJNaeci63OOGFVyta6AEUcmcJjX72OKeVxDTK5zyN55XXQEu43RY1tS
 P2AQ+ZQLsdhztPCSDW3x+zG6Y8pSL2z1eP9g4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cY82i5QFt3f+oSOKzp91m6FG0+h9u8XPOeGXpy/rmp8=;
 b=bzMKUlnp3JsXFiVU58VBgWodOZ2KRgprSEQpLPIdehlsbKntXdlulvxhAg4Uj1tl0m
 8LHgtxDuHvNoLedRlpmKE0ClGcv9QLrR1f6QoTFeptaW8WqNhcJDbjVPV5dMhY9peJ97
 OyB53g0gXkQ40ymPK7HywC1eB7mKYY36rE3Df1EWhhH5O8oRU/i7wmC+pwRtGep63Pc7
 Aj4U+buveefXPT9xhRc3QNMnbJt/gtArGEWnSDAu5S9kJW2X48biighFffZ/1NdPQ0hb
 dO0ZKLllpSi7qgvTd+dX9BNVKyv9BVYp4P6UcNJgDHief5dVGwgMjR0xiliGv39K1EqW
 JPig==
X-Gm-Message-State: AOAM531y0m3Sm3wqRPicj2oEhrygFBz77Ec/w0/ewI2NNVqbYFilO5vg
 H2s1wtiIoqp11RprVqxegomX0nkyFmlzuQ==
X-Google-Smtp-Source: ABdhPJzttC+dUmQMc1+3iZIZTShaQvMBqLfBjLd34+hWSISKcqSXAKUx7LuBPwQuO+ZAbdhPHSix1g==
X-Received: by 2002:a02:b183:: with SMTP id t3mr5367885jah.93.1631130309638;
 Wed, 08 Sep 2021 12:45:09 -0700 (PDT)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id x1sm17702ilg.33.2021.09.08.12.45.08
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 12:45:08 -0700 (PDT)
Received: by mail-il1-f182.google.com with SMTP id x5so3570639ill.3
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 12:45:08 -0700 (PDT)
X-Received: by 2002:a05:6e02:e02:: with SMTP id
 a2mr1190609ilk.180.1631130308475; 
 Wed, 08 Sep 2021 12:45:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
 <20210908111337.v2.2.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
In-Reply-To: <20210908111337.v2.2.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 Sep 2021 12:44:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ua21T1S33nx9oFRLT8bhJFMazA_5Gd_+DQ+GYWm=q1Dw@mail.gmail.com>
Message-ID: <CAD=FV=Ua21T1S33nx9oFRLT8bhJFMazA_5Gd_+DQ+GYWm=q1Dw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] clk: rockchip: rk3399: expose PCLK_COREDBG_{B,L}
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>, 
 Chen-Yu Tsai <wenst@chromium.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_124510_651149_C0DC5357 
X-CRM114-Status: GOOD (  15.44  )
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

Hi,

On Wed, Sep 8, 2021 at 11:14 AM Brian Norris <briannorris@chromium.org> wrote:
>
> We have DT IDs for PCLK_COREDBG_L and PCLK_COREDBG_B, but we don't
> actually expose them.
>
> Note that this requires the previous patch (making "armclkl" and
> "armclkb" into "critical" clocks) to prevent these clocks from taking
> down the CPU.
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v2:
>   - Split "CPU clocks are critical" to a new patch, to make it more
>     obvious
>
>  drivers/clk/rockchip/clk-rk3399.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
