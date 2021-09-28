Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07E1C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:11:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 636D860FBF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:11:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 636D860FBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjVt/dBsgPqt+qlBzm2nbPxc2ttTxkt1Ap9B6xhn1Pc=; b=ARF66Y+7ZGRZ2E
	Yq066G0GKkh/irXTcHvWVAp2Qztp3d4Vl3W4/p5i8Y2L2XGQSScTiy+Mn8Yt473HYusto3N06GFLa
	eet71QO3lA+nU/MrUaz0sZpXCnwfBOLnqWJE19UH1SI0rglP0v1rc9xjiQiBLLovClx5KuhSagfHp
	ZYRr87qwrPilPrrppthgT7LpKr0d0XC9rqMSyg32XyVDINGs9ra25FWp8PbAe/vJ9bwiJmHi4mN96
	u8bmJuEZZQsLkpWE6cvlFs5Zot5SK5Lwc0ppRGCdL1lmG6B11KP8lxXD7RfykXB0LiGZAK/WEwMsJ
	LMSP2SSYkJby4Fb2CfHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVKNr-008pP4-Ud; Tue, 28 Sep 2021 21:11:27 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVKNp-008pOe-KK
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 21:11:26 +0000
Received: by mail-ot1-x331.google.com with SMTP id
 r43-20020a05683044ab00b0054716b40005so190098otv.4
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 14:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GbWbdXoE6xizT93Ir1J+j8iVAb59AF1M9auCdjMcU/k=;
 b=Gvk4k0KCH+SlNhOJ0Stmp1mxeWcf6ruIlB+ap3tB4f01wMLb27p05OE3EuTY7jaeq7
 W6Dn5uSacPdSwrpM7NFs9L/MtpzPkRCdho4h8fGY1t3Hgayqan7w4QBHqWemtNbjSx4U
 uK/0Yr2FIYVjmkyTGuDL8sUJ0HacDzIfozl2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GbWbdXoE6xizT93Ir1J+j8iVAb59AF1M9auCdjMcU/k=;
 b=ljHxRV9Wlth6K+e7mf6wwKi6ww+eRthPtvS9WzXOUDMi0R39vxREHl7jX4GFyefh3y
 YmjlCNm8EpgWx/luI0t4c1urcpVLfH5BxMjNxV58ftK5y6Q0AtFZYG8dl5dVYdmHsvO6
 y/JBPF2xpCMr7FPOAYcJct1Fdu86xBVFyO36AQNrqFuEV6v7gkvPYbak5FG1sHXSR0jl
 mkasXmEkqjgPVialNPN4qc1go1s1aUKnRzFH3AvRndRLbCSLLRK1Yv7P0kkqZsvL6//h
 PD3qlKbKrNkSXeA/RJgbsuQPfQTpF3YxdN8sNl4Ly/BLScvJDOCTgRCob0KaMz1MeyhT
 YrsQ==
X-Gm-Message-State: AOAM533NvXdosyy2J9RkKRIt01U7NVsgUeele2wys/agrGc/gqdXrmm3
 B0ZWRYA9YU7vqElwt0U/YLXUXp3k6InYCA==
X-Google-Smtp-Source: ABdhPJwNWrClBm7o09izxzoFqQqXT2PdPG0HNnoKkoFrv6whmwCB+Gb/2mWWVdipAub2jWJXLKc0Cg==
X-Received: by 2002:a05:6830:1d43:: with SMTP id
 p3mr6781251oth.80.1632863483193; 
 Tue, 28 Sep 2021 14:11:23 -0700 (PDT)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com.
 [209.85.161.51])
 by smtp.gmail.com with ESMTPSA id o62sm53350ota.14.2021.09.28.14.11.21
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Sep 2021 14:11:22 -0700 (PDT)
Received: by mail-oo1-f51.google.com with SMTP id
 w6-20020a4aa446000000b002b5795cca03so74006ool.6
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 14:11:21 -0700 (PDT)
X-Received: by 2002:a4a:c292:: with SMTP id b18mr6742668ooq.64.1632863481392; 
 Tue, 28 Sep 2021 14:11:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210927175944.3381314-1-briannorris@chromium.org>
 <20210927105928.v2.3.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
 <CAGXv+5GxCHJM_CewS8dPTLc7NPC6jcKZvrUFat0nemzZpu8PUQ@mail.gmail.com>
In-Reply-To: <CAGXv+5GxCHJM_CewS8dPTLc7NPC6jcKZvrUFat0nemzZpu8PUQ@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 28 Sep 2021 14:11:10 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO_hHa2fmkNuitxp=r2nBk4-gdZHk9PrHPbmMhLye9w_g@mail.gmail.com>
Message-ID: <CA+ASDXO_hHa2fmkNuitxp=r2nBk4-gdZHk9PrHPbmMhLye9w_g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/rockchip: dsi: Disable PLL clock on bind error
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Thomas Hebb <tommyhebb@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sandy Huang <hjc@rock-chips.com>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_141125_690537_27D5B50B 
X-CRM114-Status: GOOD (  14.00  )
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

On Mon, Sep 27, 2021 at 9:16 PM Chen-Yu Tsai <wenst@chromium.org> wrote:
>
> On Tue, Sep 28, 2021 at 2:00 AM Brian Norris <briannorris@chromium.org> wrote:
> >
> > Fix some error handling here noticed in review of other changes.
> >
> > Reported-by: Chen-Yu Tsai <wenst@chromium.org>
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
>
> Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi
> bridge driver")
>
> Otherwise,
>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

I'll add these tags, thanks.

> Additionally, I would move patch 2 and this patch before the first patch,
> as these two fix a commit introduced in v5.0, while the first patch fixes
> something introduced in v5.14. This would make automatic backporting cleaner.

Personally, I prioritize putting user-visible fixes first, and more
cosmetic things (like error handling that we ~never hit) later. Also,
the buggy commit was already backported to all still-supported stable
releases where it was relevant (i.e., 5.4+), so if these get
backported, they all should.

Regards,
Brian

[1] 43c2de1002d2 drm/rockchip: dsi: move all lane config except LCDC
mux to bind()

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
