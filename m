Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D85BAC636CC
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPG0p6Cpp9DDkI9Zfl1TN9/v4n38M6JEslYfI7pOoKc=; b=JLwkZoMGGSIT5Y
	AUXCQisGbBueodATx6DC1eKbNDwW9RIDtMiul7EcBmNZFKwFKznZVCSMX73lXtqzD6IMx8nD9riiw
	LvIk6EANT0Ad26TN4r8/MMucluxzkUr4sv7BfIYSKFQ3MtOZcBxGB9S9MSEs6rtK/hxicgR9HpKtE
	jV0hC+MMX5oquJRtBMhRopJpV0EKoI2lTbyP8D5zSQmj6KpIZ5nN+lxNLX8Oc6LBLfzvnzy32ay1p
	grrMnh82eo5JYJn9p8Oqc2fpALSWNySwkRLS2koRCPZzsTznDji8pK0/TznBTb1bsWMGCdPcZQpZr
	4SWCBOuA2Rxkp1vGkqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOJyA-005FIl-Bc; Sat, 04 Feb 2023 14:56:46 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOJy0-005FGC-C1
	for linux-rockchip@lists.infradead.org; Sat, 04 Feb 2023 14:56:37 +0000
Received: by mail-yb1-xb29.google.com with SMTP id g2so9578051ybk.8
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Feb 2023 06:56:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rf4kEQFqYpGqwepDe2k0BFPly4fiPwxUV1tm7XECwi0=;
        b=QVAtIRChIxCR6P+PwZ2WuX3It0zLbkAtOl9s/GmJE8LI8RDPdtyd9dINy3uKAghklE
         TUOEqv53B1G7zPUBMKNrreD0viJKTiF/0R/iQlyNF9zdggwQIJG5Plu9fZpBCgwwNsyU
         u7NmbrzZdhCdyY6B3ZDWxlOu/4K+/nF4iG/rw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rf4kEQFqYpGqwepDe2k0BFPly4fiPwxUV1tm7XECwi0=;
        b=dsRCyBcHWwfYqP/ry2+CyuZJzqRo6v4Pgjo6zzx+a6IZerN98vl+KVTI2tWK/nl3TC
         Xmtp3wb27Yk5HTcwsxAS5Zeiy/m/MdnMZLzSGr6xO7WylYH7OZMUp0V7HLNrVX1DAN2d
         V5FtWRTRydfBYQDIH1SeUtK7chyIP8CueNYely+sy1jNIHdzNUDKJqOXC6bwLvPwhUue
         STm+fOCBj6FRcDW4PdAMPeIPY4QZIG+v6COr73OUXQF6s1bnm1zdJhQuKJz49bdFR/ir
         gVJF8xIl4J2YFvWWKJS8aYkcgOb8md5irHP/wzxqnAVaFF+nd2+pSWYzwbHOEFI3B7ku
         6kxg==
X-Gm-Message-State: AO0yUKWs5SrbHAkFynuE/dbnwdlmN9uJjROZJ5wsI38ONZk/5/el5XR0
	QtRxr+4puEnvcGAKy3E/4pvYG3r4i1i7QJCW60meww==
X-Google-Smtp-Source: AK7set+7/WVmtVsk/6QM0tDldE11JjcDa7zEEnRm08L8icJZF0CNC6jPLtrG12yq4ka6KvR5kaMoAP/bFBGW9fXwR1M=
X-Received: by 2002:a05:6902:49:b0:880:3ca9:736a with SMTP id
 m9-20020a056902004900b008803ca9736amr165394ybh.462.1675522592847; Sat, 04 Feb
 2023 06:56:32 -0800 (PST)
MIME-Version: 1.0
References: <20200403140616.19505-1-jagan@amarulasolutions.com> <CAMty3ZDBdry965H1VvC8E+cZC07qY-9ZM53BmZSstGhtpxWnEw@mail.gmail.com>
In-Reply-To: <CAMty3ZDBdry965H1VvC8E+cZC07qY-9ZM53BmZSstGhtpxWnEw@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sat, 4 Feb 2023 20:26:21 +0530
Message-ID: <CAMty3ZCTVvkkq0LgDnHTnm_h1L5fDicsBPFPWtha9KujSqed7w@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: Enable GPIO_SYSCON
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Levin Du <djw@t-chip.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_065636_415722_277B9DE9 
X-CRM114-Status: GOOD (  12.44  )
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

Hi Heko,

On Mon, Jul 6, 2020 at 7:49 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi Heiko,
>
> On Fri, Apr 3, 2020 at 7:36 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > roc-rk3328-cc board has vcc_sdio regulator controlled
> > by a special output only gpio pin. This special pin can
> > now be reference as <&grf_gpio 0> via gpio-syscon driver,
> > as mentioned in below commit.
> >
> > commit <99165b93dafe4f2a821b5dae106f2ef6b4ceff7e> "arm64: dts: rockchip:
> > add sdmmc UHS support for roc-rk3328-cc"
> >
> > So, enable bydefault on the defconfig.
> >
> > Cc: Levin Du <djw@t-chip.com.cn>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
>
> Any update on this?

Can you apply this patch?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
