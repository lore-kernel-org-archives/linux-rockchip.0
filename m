Return-Path: <SRS0=bU6c=P5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03E82C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 00:49:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C05B761105
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Nov 2021 00:49:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C05B761105
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2lNW3QWioV0moP6X3iq9aAqI3im8o7RyBIZ/BQ0z2I=; b=LHk81NRWerkIyt
	DodJoHfVRBFcO5oKiq67LFvw36SkL+Gz/Vj9b6uqXGF2Hz27IOZ13KhSIbRXddC5053KZ+G07fYT9
	sSdd3CKcCYdBonucBmgZQ+0raFYuAPsJEdwFj0fJJL4/r6ZpnD/GBKBXpxyh+ixTiTayYff/23SiT
	WskVeq8kyE22bo6H4gbxKTTDArlqRmfCKnuGTXKDe3cYo1H7cfPddlEwQwrE6h6T+fmVVhQUMrKnV
	kQSALEU3o3k3gVzH3PwKoQq2V6zeF0O0UA3fY4sGhifXJXAoZtJ7q4+UtHbnAENwosN+zUAF08kJQ
	37beplSHok4OhwfwLKVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkbo1-004DVn-OV; Wed, 10 Nov 2021 00:49:37 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkbno-004DTw-RM
 for linux-rockchip@lists.infradead.org; Wed, 10 Nov 2021 00:49:26 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 z2-20020a9d71c2000000b0055c6a7d08b8so1363705otj.5
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 16:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zuwi8VdgrtneqiZTm5AGRBpIkLfz+Yl+0tOyzAoPJUY=;
 b=AxpcyaLb8qnoVjm6VGIBvrmQPJpBdIrTDymYjlLvgES848fYut9st2UwxNoIzNhART
 HrRUrFj143C9MIKzKTvEf0XMmMNXf7unaYOGoQx5MXOJgRIxfpWl/t+aFA1OAJ292C8x
 oHo/nViAX0gFYIIBOZsN74QFDJmVB9ydapY3A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zuwi8VdgrtneqiZTm5AGRBpIkLfz+Yl+0tOyzAoPJUY=;
 b=cXTBmsy9zINmt20OF/1e9ufSECpoo2t5JI48h/XnXj3fTWuo8VUf4pcjj/R/5/FMBx
 lLO3MtS26/6Iy7hH4RmIQ66QB60ASSxVlOuO1I2KkHQoJNpJZlJ0gqBB5YTMStPPvSdU
 G3jp1hXjqE1YqxET58BIGEn//lvRlCOYQpC9RZY/W07ABEZlobPEaRv+O2u74XtXxLLJ
 dDmfpIGC0n1GmNCmHWBUsWULFONDxI1XfVq1lLDanBlAgW3ueQJ9Hliv0ctlZJMbU/4p
 LU05sgLDoFinkmMr6Ue8vROXmskbzRFPnpHHgy0PsMxJKg/mkogIy6O9gO+YnWsbUudf
 DIaA==
X-Gm-Message-State: AOAM533aViTRmB2CbRx3ejwlx+Y106fZ0Xftf41TY0/Y0qCAFr5pq57x
 GmGRovTMXuSLzhHsEMlbzEGcAuufWOg/MQ==
X-Google-Smtp-Source: ABdhPJx0WFUXBvOL59eZv/w656kY7nZcnJd0LmmlRUakprkiABx0yVOlLjIC48IGHixKwc0ZI6Y3PA==
X-Received: by 2002:a9d:60c:: with SMTP id 12mr9339086otn.94.1636505359584;
 Tue, 09 Nov 2021 16:49:19 -0800 (PST)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id z2sm2643688oto.38.2021.11.09.16.49.18
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Nov 2021 16:49:18 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id
 b5-20020a9d60c5000000b0055c6349ff22so1301450otk.13
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 16:49:18 -0800 (PST)
X-Received: by 2002:a9d:4b19:: with SMTP id q25mr4612966otf.186.1636505357500; 
 Tue, 09 Nov 2021 16:49:17 -0800 (PST)
MIME-Version: 1.0
References: <20211109221641.1233217-1-sashal@kernel.org>
 <20211109221641.1233217-17-sashal@kernel.org>
 <CA+ASDXNcC4_MpURRjbeXsyXsQ9Qte_YgoXFCJUKtrSWpZsHn-g@mail.gmail.com>
 <YYsV/OU47QlolwOx@sashalap>
In-Reply-To: <YYsV/OU47QlolwOx@sashalap>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 9 Nov 2021 16:49:05 -0800
X-Gmail-Original-Message-ID: <CA+ASDXMTAi+jgSDpM3vDoD1Bmimsrqv6iQrZ_=HDtQz6jQufYg@mail.gmail.com>
Message-ID: <CA+ASDXMTAi+jgSDpM3vDoD1Bmimsrqv6iQrZ_=HDtQz6jQufYg@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.15 17/82] arm64: dts: rockchip: add Coresight
 debug range for RK3399
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Leo Yan <leo.yan@linaro.org>, Chen-Yu Tsai <wenst@chromium.org>, 
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 robh+dt@kernel.org, 
 pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, 
 galak@codeaurora.org, catalin.marinas@arm.com, will.deacon@arm.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_164924_911448_B12FB109 
X-CRM114-Status: GOOD (  10.78  )
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

On Tue, Nov 9, 2021 at 4:44 PM Sasha Levin <sashal@kernel.org> wrote:
> I'll drop it if it depends on patches that didn't make it in. Thanks!

Well, it won't harm anything as-is I suppose (maybe some logspam from
probe failure? not sure), but it would be extra bad if you managed to
pick up only _some_ of the dependencies. (There were 2 patches, but I
won't tell you which they were.) If you only got one of them, you'd
turn pretty much any RK3399 system into a brick, at least until they
revert their kernel/DTB upgrade.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
