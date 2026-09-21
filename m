Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2BD5C982F7
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 07:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5gMJXX3/E89pPPehpJ7p7CQOIKHq/RdHNt72klWq/A=; b=KnqEINKe+2TDDp
	vGJyz6DE0t6CP8TKHmQ2BJaFjXg//sBdjJ+/gotaqqcVKDne2Ijeg9ZE57YxCxZHuCg0qyJAf7LTB
	qcIntrT+IFMoXg0kqiKFcA54P0lWgfnb9mM66NxRMJOGrQGtc1jQH+4b7V2u/3MHRoh9l+eDaejV3
	2cd6ObPvo/U7enzhds5xsN65BNMncRd5yuijPRYASbh5SoAU/mUpD2wwJXfUWQk4UN7yErKECCeZb
	4/xEvgsKILZcZ8CFGHtB6EZp19rCRX0s5DRiUtai3d+A/Wp0XDf2IupxpcxN0QMlOO8jerBDoviCb
	rw6wfuTcOZHFl7t3cn3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Y7S-00000001A0t-0WR2;
	Mon, 21 Sep 2026 07:07:18 +0000
Received: from mail-vs2-f41.google.com ([74.125.227.41])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Y7Q-000000019zb-2QZ9
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 07:07:17 +0000
Received: by mail-vs2-f41.google.com with SMTP id ada2fe7eead31-785692e5a3aso1524249137.2
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 00:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789974435; x=1790579235;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=HB8j5/kP2XPOkdK+SCbhJLf9Uj+WB32C7OC3D9kNjGQ=;
        b=2oTeih0TMcnQyOd2v1Lqh7Is9DB2kn1J/YeUs4CSQMdAxetLtvzCy/mKZ8lbMYVyp6
         Ux2a/0E1BAdq9o845LX/LX7tT/0yiRxTm3485SGTQEyZJq1jgoYUyWkcEIi3rM47xyrm
         HTbG/KAOZp+iJGL1u0c+90iyDqs/tbGwN/kVC2eslNrW8dwPbbYf5Oxl3QbdEaVY4jSA
         GCSzCEDv/WE9WM/Jof7OPi3zDzb0UUpJAtEokV8ClePYRTflBRVkMkAShJgJo2eTo1xv
         gn792hz5kWspddSe0Jyk+0cYHlMs/6Cs/z8E+3hS5ErFvDhNx37eqMBL6HxlFh4s4xCq
         En0Q==
X-Forwarded-Encrypted: i=1; AKwUvBzF72vAG//bq5/vjqZTedrAGmJjcayG7gHGIZgY4W4F1QfS+SCWgwpLWr1oY5XXbcQg00B8ad3eSIoEZQlQTQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lgcQWJm5Obxauff6kXWnfvvnoRtEq0MNm2mIWk63j4/7VNhbsF
	O35dfT+0YtZMfrG+Ly5Hsx70XVE+bl1f72ON6WotA0ZZEhTtNdknoWibscOAl+gR
X-Gm-Gg: AYBFou3ZZOnAKwsTpXmR1DrEhGAMsLdUg8FmorLNAIw4mICol8dvNyWaExKT9r+awd8
	C5U4Li2xUS6E+YYg5CrdCvdP+Id8mAG1peP0SXveC7pkgGPjR6DhDPq40ezk3EwycdEH+LVgep2
	5+OvRAlF73dECNsQ2rg2PSQiGUyiyhh99TVq3iKrIcr8Z79YhYv3kqO/BQ6Lk9qmLQh4vdJJl0W
	arZ1JKbji950cJNvaEFzMPir+lCJ1Hc1vQSZWJfUjArY3cUKnKcQkNLm2aRwNRbf7i0XAsrBjy+
	q+sMd0fs+JrwWU9hKy6sDz+ePapOQWmWZTbez9XemSok/2kRy5IX7CFzr/Ai3nQu1i1YcBu1GrG
	BDZVwIrxY9xwwh8XnD7fzz6tIXICpn9XoB01d6eSWBLlLaPjSlMIvalyY5CvoqCGTBBqdjwendQ
	dCpuNVnxlP98Q73LFvxvl8kJleW+VSkMJ5giK1vajfC2Grtqbt/1FQByJ8NjapO+16z9dZfW0Zd
	GRSqeklH5AgoH4yY8cAfGPwHirmkpjnnikH
X-Received: by 2002:a05:6102:2922:b0:7a3:4e75:d1f0 with SMTP id ada2fe7eead31-7a55d38b2b7mr4144132137.23.1789974435130;
        Mon, 21 Sep 2026 00:07:15 -0700 (PDT)
Received: from mail-vs2-f40.google.com (mail-vs2-f40.google.com. [74.125.227.40])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-984d52bce63sm7540465241.4.2026.09.21.00.07.12
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 00:07:13 -0700 (PDT)
Received: by mail-vs2-f40.google.com with SMTP id ada2fe7eead31-7a05d236f53so1464818137.1
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 00:07:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBwUQD2KM5QoTYDXl3Fk8lHSUq5Qr0AMCctymvRGBqeyaJyDKAsa4NDefS3C4/HjmdVKjXRy10KuiDhs9ZQ7rA==@lists.infradead.org
X-Received: by 2002:a05:6102:b02:b0:7a4:da60:acfb with SMTP id
 ada2fe7eead31-7a55af3177fmr4503081137.8.1789974432591; Mon, 21 Sep 2026
 00:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com> <CAMuHMdWWOB48AUCbXh=9ZGCK2qZyVH06kJ2paRY-wxkq5NC16A@mail.gmail.com>
In-Reply-To: <CAMuHMdWWOB48AUCbXh=9ZGCK2qZyVH06kJ2paRY-wxkq5NC16A@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 21 Sep 2026 09:07:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVhK0vm_Ksze_=jG8D_=8Q45v+ezNbxwL7JntTt_v_fkg@mail.gmail.com>
X-Gm-Features: AcwNN1XBDwh6z17IsaQFiDrYFydSgUDFMGU_5lJeAdoD724Pjbvrq8QmlAe59_g
Message-ID: <CAMuHMdVhK0vm_Ksze_=jG8D_=8Q45v+ezNbxwL7JntTt_v_fkg@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] dt-bindings: Orientation defines
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Jimmy Su <jimmy.su@intel.com>, Matthias Fend <matthias.fend@emfend.at>, 
	Mikhail Rudenko <mike.rudenko@gmail.com>, Daniel Scally <dan.scally@ideasonboard.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Michael Riesch <michael.riesch@collabora.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Paul Elder <paul.elder@ideasonboard.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Tommaso Merciai <tomm.merciai@gmail.com>, Svyatoslav Ryhel <clamor95@gmail.com>, 
	Richard Acayan <mailingradian@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux@ew.tq-group.com, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-tegra@vger.kernel.org, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, David Heidelberg <david@ixit.cz>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_000716_629996_962CDC97 
X-CRM114-Status: GOOD (  23.25  )
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

On Mon, 21 Sept 2026 at 09:05, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Kieran,
>
> On Fri, 18 Sept 2026 at 12:55, Kieran Bingham
> <kieran.bingham@ideasonboard.com> wrote:
> > Add a new dt-bindings/media/video-interface-devices.h header that
> > initially supports the Orientation types and convert existing users
> > throughout the code base.
>
> Just noticed these are already in since commit 6ab5acfb8dd38729
> ("dt-bindings: media: Add macros for video interface devices") in
> media/master (next-20260903 and later)?
>
> > v3 collects tags, and fixes the typo, but drops all hunks that do not
>
> [...]
>
> > v2:
>
> Interesting changelog order ;-)
>
> [...]
>
> > v3:
>
> [...]
>
> > -v4:
>
> [...]
>
>
> > -v5:
> >  - Definitions now accepted in linux-media, rebased to get conversions in.
>
> Oh, you say so here ;-)
>
> >       arm64: dts: renesas: Convert to new media orientation definitions
>
> So it's been safe for me to pick this up since v5?

No it's not, there is a hard dependency.

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
