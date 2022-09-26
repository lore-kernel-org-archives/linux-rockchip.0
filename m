Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2A1C07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 22:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=je1jB3sDMlme4UezyVTfIYgQbVhQaI9964+lUyXshtc=; b=BS9FLN1j9spAQBkARhGyhlA+fY
	OJpMp/VJcqE76WPTr/UaR+cIWMBoCiQibIyKkK3e1gT+fmdsoRNNQYlTxa4KbORH/7A8HU4RktK6k
	PBMiLBNrBPNQBlaLB/g9oxn2pl3WwU2Co5V6aNNfxbE+u2oT/GjCf0PGfWX95E6QLD317cENDvaGh
	KR7BUrUoXE9RMoigVo76UiAHvi8EJsbZRUpyTs624ldde2DNQQmUxZIpPI+JsojaS1owCkNiMnZ+L
	fAHvQ+fy0be+Qppvu3aaLa1HnrKHS/X1er7feug6HNtTjUK4PJ2Fz3wHqdzMYe7xZSHka4CjjgYfk
	CxRmMUoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocwgJ-007BsP-AX; Mon, 26 Sep 2022 22:34:31 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocwg7-007BqD-2U; Mon, 26 Sep 2022 22:34:20 +0000
Received: by mail-wr1-x42e.google.com with SMTP id s14so12425775wro.0;
        Mon, 26 Sep 2022 15:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=ou+iI7nruCTffmoQ0U6U8nomGAjNAmhtpnYz9x5oSao=;
        b=QXEWKgL8iUtWbESsUcXxxNkl37oMTDz1H1HwLk3F7eKAW20/0KhPVUnUGnZ5a2rhfk
         yWvAAyvWxQoKlr5TLr1RtMP1zJ1J9h+wWAWLinW5GP6S1kM+sgyJNiJCCpw+4RZ515v+
         BG4152d11tOZPtF3QQ5Aqt2x2QUxHlAJKvpslustUVZkJoYpDZNi4PzbGX3OTaL7C04J
         WGW9MkvxQRSz/R4wT+u9DsVDFdVBCxMyUvy0aldlh9INhnsKFjH7ZeUPp4o1ivGtlpma
         XKiC8ud5UDsPYBrdi+trW3T2CMZSDmDWQB1ROgNNwZ5kooftP8r3VlKyK9fJQWoO6lLD
         MBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ou+iI7nruCTffmoQ0U6U8nomGAjNAmhtpnYz9x5oSao=;
        b=bTtIiL1R2DRWj3ijL5seHYFxrIEjyM2pknGqztshAXlvHTDTjD1ipbgzLq83nlZ7y8
         Ey9a9crbdsaAR4zssklhtkC1Twc7M28J4kUtwntOWd2WDt7hn/McI6++Uz8N6mnB3jSF
         HdEytQADO2A7lk5ja2AUi1SVDgCQYQ9y0NROSnaOTdiN93k79RsclN8g0FhKhcAfpgfo
         oUsAFJpIplOeqlBNGXu9/O587Mq1pSebAkxqCMn7idABE/eBo/uURTG95XUpYmXYVDvc
         +QWNBHVHAePEks0/4Yphf1Ee2yhBtJ1mEnCCd9NnL6vI0xVi7IARvN2bs/IO6LhJIzze
         sg8A==
X-Gm-Message-State: ACrzQf2AoKoheemfRXHjPHjj659BMM9gYFflHbAYQUqMQrSIyq7vyoxE
	egoHpTlrhg1W00tOCQrfJrV2nKi0lnywegA8H+Y=
X-Google-Smtp-Source: AMsMyM72PThTWxmcyD8joR1b4vRD4oieuwRNO84jzrY9ayZzbzmEbjGd0JXOlSCwcf6zMYJH1mM8yRExqELbDayJiqs=
X-Received: by 2002:a05:6000:1882:b0:22a:f7a2:736a with SMTP id
 a2-20020a056000188200b0022af7a2736amr14777317wri.691.1664231655426; Mon, 26
 Sep 2022 15:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220926183533.1893371-1-aurelien@aurel32.net>
 <CAMdYzYoR2caD2ecN5vGTiHejoE5AhbyKxSgSeU1+SzU7nNVTwg@mail.gmail.com> <YzINPR0htauYppWQ@aurel32.net>
In-Reply-To: <YzINPR0htauYppWQ@aurel32.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 26 Sep 2022 18:34:04 -0400
Message-ID: <CAMdYzYqo9+DjvWTQMrZ=cDceG3KJOwBvSva0aRs_7rooko5f2Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing rockchip,pipe-grf to
 rk3568 PCIe v3 PHY
To: Peter Geis <pgwipeout@gmail.com>, linux-kernel@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wunderlich <frank-w@public-files.de>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_153419_147376_EB01E694 
X-CRM114-Status: GOOD (  16.25  )
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

On Mon, Sep 26, 2022 at 4:36 PM Aurelien Jarno <aurelien@aurel32.net> wrote:
>
> On 2022-09-26 14:58, Peter Geis wrote:
> > On Mon, Sep 26, 2022 at 2:35 PM Aurelien Jarno <aurelien@aurel32.net> wrote:
> > >
> > > This commit fixes the error message
> > >
> > >   rockchip-snps-pcie3-phy fe8c0000.phy: failed to find rockchip,pipe_grf regmap
> >
> > The pipe grf only is used on the rk3588 device for this phy.
>
> Ok, looking at the code in details, I confirm that. Does it mean the
> change should be done at the phy driver level, to only look for
> rockchip,pipe-grf on the rk3588 device?

That would be reasonable, yes.

>
> --
> Aurelien Jarno                          GPG: 4096R/1DDD8C9B
> aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
