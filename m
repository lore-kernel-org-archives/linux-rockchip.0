Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0771BCA1016
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 07:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfcGv0vtJTER9AUT7pj9B+854Ij+Fs7GCoXm3uEO2cs=; b=HP6f3pRzD5vsin
	qkp8U4ueuYSpt3tVTQiCoU4HE4e1ZG3nkYbPzn+fBphfF6QrcMR5JXIMR0HBavmBKj51RnFYbBrcj
	7t1qQQVx6zCV7u/5ou5mn7c08NcHp/8lPJdHAd8DnOYwJA+7pECg2hHgC4FMqzZbG4GIIpPPDKSWc
	GU846ptglXXmwsclITEHBwEPVL3qV/XzJksmHYKBVfebmEKlaRcPWVrc8bbnKAdyEkYmkJ6u29zr/
	kzyQrvZil0UOvXn/7irsVsLR93U7p84lv0N+K5x3bX3To5svhWPpxy1O1KL31ptEMxDphCDJX+KJN
	ikDLsxKMo3koYCogcxwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwbZw-00000001RWW-0YGX;
	Thu, 11 Sep 2025 07:18:48 +0000
Received: from mail-ua1-f53.google.com ([209.85.222.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwbZs-00000001RVQ-3uQ7
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Sep 2025 07:18:46 +0000
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-89e5b87f406so124352241.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Sep 2025 00:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757575123; x=1758179923;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+Xz8T3amYkNV7rSzjipUYMhb6u7hBtXfStQbJ8Sahd0=;
        b=iUTRfj0yIjihJ9YUkOajj8NUlB/ZH1/wZfj+yg/qONzCzsZ4z6p9pcCUT7/CGr2AhK
         iyHmqWR0aNKseIetxZVs/poDS0LNwHeya58m4dzfiIu1GwOJjBnRqFHYonRxBDSBw28J
         3nZ8A+MfYJWBZ+H+MQ4BE5Noa3wmPJ2ngDuaX3yQHhVR+2mXL2NHYsMaXKs8pZ/vhq+D
         UYcAchDudnoajwTbHozhpi8Yh4viN7FviNOD1ppS3lSLynnyxSmEKUSG5Af6teEwVwVE
         Q1zTFJBy/LNv6a7E1ch4Xm3UTGEr59y9vGZgMlkjh0NUOpuIY7hQIfy0DUqfpiA+aJ/H
         eYvg==
X-Forwarded-Encrypted: i=1; AJvYcCXg1ahTHzzJWeZbTHlzafxujSLWO8xgcrU5HLYecwxnP1qblkcgSxyHJeF9vMEzIWAssWh1F+M0RhzR3ScTXw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwsoVSK3kWdOEjovBiOkFAyOzeIyZpKgs5QH3li1GFBvt0eBQ4v
	BrpQNpEPv/wzThpEHSqSqo/NLENgF6DGWEU9qsGCvc/25/6LiX1fFNsMNIli3hSb
X-Gm-Gg: ASbGncvep1kUztIrxJuObo7NgvX2VgdIHV7zZ7wzXbAmndPiyRU76EhMRIbh7dv4bds
	e/7UcWVozKXBJ5nmwobdR5zQJvgkTussnz16hZpc2x7W40Ndm7TU2ii/UqrBNMNpMAWphM0wlBo
	+ou32P2n/Z8qtef3lfwvzYxOc8Il7ATRp4lTZ0DP3z/yIE90I22Q2f7W3d4eAny893F2M+JMK0a
	hbUYWTKFe+1tJHhu5ZR2WoeMVN/zTQUE8vgwsfeOnqjFz0+9a5kxXynlm57rJJp0HZxTyTOLLNv
	Ch7txmvoh/KXlVSB5NGzTx2PTlJXmyFaS0nMM9nTq4VQHQVnC8wilgdS0XErO3KxGRQo+DAd4R6
	iCrPedOt/k4eIleNk7Jgewi/hh+iHpdxWhHX8O8HblfDegvb0c+FTylEIbTpFiPEpDSS7JPo=
X-Google-Smtp-Source: AGHT+IH1crQj/YBrwRXHevsPZnOTbXNQB8dFRbzhlc1TwqSJiL7ETdEK/67vrGnC86YGU/R8rM7WPA==
X-Received: by 2002:a05:6102:dd1:b0:525:33a9:c71 with SMTP id ada2fe7eead31-53d149b5dd8mr4557963137.24.1757575123474;
        Thu, 11 Sep 2025 00:18:43 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-553677f3b3esm188513137.0.2025.09.11.00.18.42
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 00:18:42 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-89e5b87f406so124349241.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Sep 2025 00:18:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU2wxN4TFsvi8V9WXrwHulpwdij8iu2bzPCM9cBNDmhvBDbdgVxGn/3nEtv63Ayo92l+8HE2OPJ6HAu7KRd7w==@lists.infradead.org
X-Received: by 2002:a05:6102:54a9:b0:521:760c:7aa8 with SMTP id
 ada2fe7eead31-53d14d8c892mr5750708137.27.1757575122627; Thu, 11 Sep 2025
 00:18:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250909111130.132976-1-ulf.hansson@linaro.org> <DCPDDIZ3S1CM.3DJYY5U4T6V4U@cknow.org>
In-Reply-To: <DCPDDIZ3S1CM.3DJYY5U4T6V4U@cknow.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Sep 2025 09:18:31 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVxjOLZsas4+nmAkZjbJsQjxdkZvZ8tTY9pq2zz3gvFNQ@mail.gmail.com>
X-Gm-Features: AS18NWAQShHnTB-pHMrvSyt-wwqsfojP53wsm5mwBKc4qvyVjVjagRnbLu_77lI
Message-ID: <CAMuHMdVxjOLZsas4+nmAkZjbJsQjxdkZvZ8tTY9pq2zz3gvFNQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] pmdomain: Restore behaviour for disabling unused PM domains
To: Diederik de Haas <didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_001844_975027_2A93257C 
X-CRM114-Status: GOOD (  30.96  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Thierry Reding <thierry.reding@gmail.com>, Saravana Kannan <saravanak@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org, Konrad Dybcio <konradybcio@kernel.org>, Peng Fan <peng.fan@oss.nxp.com>, linux-pm@vger.kernel.org, Johan Hovold <johan@kernel.org>, Sebin Francis <sebin.francis@ti.com>, Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org, Maulik Shah <maulik.shah@oss.qualcomm.com>, Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Diederik,

On Wed, 10 Sept 2025 at 21:33, Diederik de Haas <didi.debian@cknow.org> wrote:
> On Tue Sep 9, 2025 at 1:11 PM CEST, Ulf Hansson wrote:
> > Recent changes to genpd prevents those PM domains being powered-on during
> > initialization from being powered-off during the boot sequence. Based upon
> > whether CONFIG_PM_CONFIG_PM_GENERIC_DOMAINS_OF is set of not, genpd relies
> > on the sync_state mechanism or the genpd_power_off_unused() (which is a
> > late_initcall_sync), to understand when it's okay to allow these PM domains
> > to be powered-off.
> >
> > This new behaviour in genpd has lead to problems on different platforms [1].
> >
> > In this series, I am therefore suggesting to restore the behavior of
> > genpd_power_off_unused() along with introducing a new genpd config flag,
> > GENPD_FLAG_NO_STAY_ON, to allow genpd OF providers to opt-out from the new
> > behaviour.
>
> Is it expected that I'm still seeing this on a Rock64 (rk3328), just
> like before [1]?
>
>   [   17.124202] rockchip-pm-domain ff100000.syscon:power-controller: sync_state() pending due to ff300000.gpu
>   [   17.129799] rockchip-pm-domain ff100000.syscon:power-controller: sync_state() pending due to ff350000.video-codec
>   [   17.140003] rockchip-pm-domain ff100000.syscon:power-controller: sync_state() pending due to ff360000.video-codec

Yes, as the sync state is still blocked on them.
Disabling unused PM Domains is done independently of sync state.

> This is with a 6.17-rc5 kernel with this patch set applied.
> And it also has this patch from Christian Hewitt added, now in v3:
> https://lore.kernel.org/linux-rockchip/20250906120810.1833016-1-christianshewitt@gmail.com/
>
> When I boot into a 6.17-rc5 kernel without any patches applied, I do get
> the 2 for ff350000.video-codec and ff360000.video-codec, but not the
> ff300000.gpu one.
>
> Interestingly:
> ff300000.gpu -> power-domains = <&power RK3328_PD_GPU>;
> ff350000.video-codec -> power-domains = <&power RK3328_PD_VPU>;
> ff360000.video-codec -> power-domains = <&power RK3328_PD_VIDEO>;
>
> I would be surprised if that was a coincidence.

Fw_devlinks ignores the index cell (RK3328_PD_*), hence all links are
created pointing to the pmdomain controller (in case it has a platform
driver) or the first pmdomain (in case it has not). thus blocking the
sync state call and power-down for _all_ pmdomains managed by the
controller.

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
