Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1179C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 08:18:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9CD8C6108E
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 08:18:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9CD8C6108E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arndb.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jrw7ScYdAdVGAwZgNgbQm9bV4F65e9jbBBai86Dmf/Q=; b=N62VY9fMmLgVwo
	ra0wjl4VrezRTBmMKaRZiXnXjMDU3xO9CQRuAP+1EPxdGxr5z56BkHcQQ6BE9eVxN70kvSkeUt/PF
	oPtxRYK4jU9ZPBrknEYOzmpwH3NRpZKSoZnpkbbQ5jOGh9qPt0jk8k6eYGQmGr/iXeUJ9bAVquJDY
	REjtAjst5sd0CMn4z2YB6ZQBh3svUidzcKt5RyUTWizBZMwiWp6Xo9hDzQv20+DsPm+x4bPjlW4ej
	iPyOyFmirk7RLR1xE3VO6zdH4Y9GmOHaEy4GHUvOPKedcaj8ZPkogw/antsHoJVn+qHMYpoByNQDk
	n/e2SJNyICD9x9TrxMUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNWIu-002qjs-Gd; Tue, 07 Sep 2021 08:18:04 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNWIh-002qgK-GE; Tue, 07 Sep 2021 08:17:53 +0000
Received: from mail-wr1-f43.google.com ([209.85.221.43]) by
 mrelayeu.kundenserver.de (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mhl8Y-1msTPA4A2C-00dqOm; Tue, 07 Sep 2021 10:17:49 +0200
Received: by mail-wr1-f43.google.com with SMTP id q26so12197094wrc.7;
 Tue, 07 Sep 2021 01:17:48 -0700 (PDT)
X-Gm-Message-State: AOAM533aOzncR9XFpmftJIq0b0fMhuTjV89StLV2iliM6pKuKXtwHBIb
 7z82gN3HhqOSQzILrWxKEMuL+R4xPbmeoNn9GVw=
X-Google-Smtp-Source: ABdhPJyiTwB42Ik9Nd62RhRczNyAg0nbb/ltMSwY4nNsSbCmZOvOZpJebJwSFy4ShYpdcFJayx1+05VvpIVcJPUKXQE=
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr17191037wrv.71.1631002668640; 
 Tue, 07 Sep 2021 01:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210906194917.376116-1-palmer@dabbelt.com>
 <CAMuHMdUtg1qA7hx-QGGwd6nfe_vDEzoH95732T736FPH0Jb5dA@mail.gmail.com>
In-Reply-To: <CAMuHMdUtg1qA7hx-QGGwd6nfe_vDEzoH95732T736FPH0Jb5dA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 7 Sep 2021 10:17:32 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2R=GhAjBNjKk7hs6E7Fr6j3yAbSvf29+TdiZtpsSgisQ@mail.gmail.com>
Message-ID: <CAK8P3a2R=GhAjBNjKk7hs6E7Fr6j3yAbSvf29+TdiZtpsSgisQ@mail.gmail.com>
Subject: Re: [PATCH RESEND] drm/rockchip: cdn-dp-core: Fix cdn_dp_resume
 unused warning
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Sandy Huang <hjc@rock-chips.com>, 
 Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 DRI Development <dri-devel@lists.freedesktop.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Android Kernel Team <kernel-team@android.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Arnd Bergmann <arnd@arndb.de>
X-Provags-ID: V03:K1:62IdxJ4MuculL6GaB/Jzh7vI1oeuvDRwL5FHvx0ZXnQqz0ji8CW
 qTAc7D8pZYK4My+CMnA3yTLdgnQ6qHy4jtUXKxztWbT3aY/vmJdryiqN4dOqRxGFfpRdQ3v
 3nwhWQiNkxfD5wrxyb39iNmDa7bt6wazSbBY9e1+Aotmk9LPDeBDgwjO9U6fDIqS4hfr5Fo
 56/p0L2JJ7CuNdu363Ifw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7TIM/lv7R/c=:Lz3keaH9o1ORB4kqhfu+Ck
 TTmrZRfLp4VXd3NFnr7UZKr/2VGzUBXD2HO9rNVKnB94YTa7keV10YYVgRZH0FtxxfQcDMHLn
 2e2oNcjBEa8GcjwE7AmmXJiiHjaDSc7HkOAvscPB3U/8j110WmrCRWGPNKGGa6+F/YczT4nI0
 GF6hXEmpFuhtxPF5xQD2MHYuwbAPOeBfoRjJfQTpGtoBzc6up9sm/gdGGI3p5JfoMbs0hXZaJ
 JF6EGGYtMrHW7WNoKl9oEO7cP/8yyzOJY7XT5X7vERhC3U5d0ZpQ2AWts3t1+4E897KEAA7As
 8oj63Qpo/+yjLqjFu6bYUkCpUQ/HqDcd11mZQIt4ZOkxSJil98n6t0/2RuVvDX7ggGVFA6QvP
 P1nznEmMto4NBymC121NGpnV2CjL8Ni6aIMV4bdSZobjHxINZoggvX9gNfeReoO5MiYAipScC
 LdFrU9njEzXkwCEZ2pyCQL6K4NfPQS5cmW9ces2a715za7z8PC4UnQSmIk4QwYNDCYce5kc0Y
 ///lEQ+hMR6vKwGq7Z1KQTKblWJ+uqPjWypyMdnRLLITM1dBW2Mz/J3DWUJXlplgaKuDl6U6m
 E2ZdKu0Wz/+2DACQ53YsCJdkZW8kFwTN/31VqXnfUtuoGZUWcljysTDo+97BVs9CGrxht9pi4
 g/gB8LLJM/5qbg/GOrqub34N2xA3Dg9ZYfc0vL8tjjvUpsozaZZ5cw2yKGMZYFVmf7h8IsTuf
 4O3+b4ggq1sFH8tvgc1aIYUrx/b6/Q45gTgwuQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_011751_885736_15C00BEE 
X-CRM114-Status: GOOD (  14.61  )
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

On Tue, Sep 7, 2021 at 9:02 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, Sep 6, 2021 at 9:58 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
> > From: Palmer Dabbelt <palmerdabbelt@google.com>

> >
> > +#ifdef CONFIG_PM_SLEEP
> >  static int cdn_dp_resume(struct device *dev)
>
> An alternative solution would be to tag the function with
> __maybe_unused.

Right. In this case, both are correct, but generally speaking I tend to use the
__maybe_unused variant because it's more reliable at fixing the warning for
good when there are additional functions called by the suspend/resume
helpers that now become unused in some configurations, or when you pick
the wrong set of #ifdefs.

Having fewer #ifdef checks also helps with build coverage testing when there
is a warning inside of an #ifdef.

       Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
