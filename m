Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED13C982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 07:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxgZsSg5WRgpX+S31r7Iht1olRAoykJuQrJl02L/1n4=; b=rm5xtBSj+AZC8r
	YdeQusq6OiaAbHZZSv9bxQIX3dQL94G5Vz882lVL3lx+ZwMkdNc8r20PqfVWJi5fSgkfEQmidZ5Uz
	4Pj45Qt9ZaAMxpqU2f3s7+7cnNgWB0FWEwRmwnsO/tjR6jrQmas6ilVcXwyBTrqAWjHcG31iM/Q8O
	MyIl0QOVWlw89dSRvQFL3eEKCcjhXan9gTqOBfqpBm5Me7P1luBfCnNj68fEyLJC5jggKdOyRhsPh
	qJhnI8jIT334iuo8jRR6Xv+2jaqD29yzKUKWt4/jNEHuNae8w7uTyUcrL+n89tfkFKzo5VJ0gvs0N
	tw8XF9MSTp7E7Tq0Yuaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YB4-00000001AeQ-1n2A;
	Mon, 21 Sep 2026 07:11:02 +0000
Received: from mail-qv2-f12.google.com ([74.125.230.140])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8YB1-00000001AdU-2eTC
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 07:11:00 +0000
Received: by mail-qv2-f12.google.com with SMTP id 6a1803df08f44-91059280d58so24060176d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 00:10:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789974658; x=1790579458;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kOgPfCklfblv+g6nVV8jDyWvhZtKrbscHFmS476/ss4=;
        b=pLGKt44YkoYSjtxt1yvxn5C7l/0jeVireVknmj0bPeIjRfbp19DkSRf0oe95MA10wG
         8LHZN/ypm8vtsDvjJkFh1oUja5eqgFeFpzNQKbmQtwwhvRd8X/ua/aRQDT3UYBA/WSJE
         SQfhcWbhby3GkWkYHWpXjxGNxM5elA/S+pjGC9xC4X9pCUCqdgb9PD7+4JxWReOUqKU3
         hT4hjBksOULnh1ckJxgijyhA18/ICUfW9k5dhjnGdMW/sxLSlJzhN9bG83gRkDc5QTi3
         eVw2N+8ldW42EWtBFREvahBTYyR3mA6vI/5uUCtQuancxXRHd1cMjHkIAj8cRvjEOcVj
         cc0g==
X-Forwarded-Encrypted: i=1; AKwUvBxnG7zW7ywpRteEfBlGQ7m8eWdOOfh4jXwF9KZdznm/6XopKqr+nfDytMBjL8BsL1sszTCSQb+DIyIfcCDOPw==@lists.infradead.org
X-Gm-Message-State: AFuF++nGXz9CpSSVmxPT86LxQiY7y+eoj9us/oeydlCohi3o6i/gVONX
	p3IJBzqCw6UcJiI1fY2f/guY0kX9vVntAIFRxr7vT35yr5Po/zAQxz+562mDuliK
X-Gm-Gg: AYBFou0N0Zg4TV6ZumnkN9YMRiu4pBRKgd9dqwFvzcfvwofwj95vYn2pOxv95k8TUdv
	Bvn3eGRyFc76TZMAfSz7ZMq4hOTEyXplKKnbyFrgynez1CG9vHbK32+XI2tRNNzlZxoiHwbs1zC
	ylBetmRafwD8eOwZy9m18tlTdyUPdEQWzk+dG6SohGKQYKWGUo3lVwpDrErEB5k+JhdDmPJOyAu
	uP9JQsVNT+0Y5dO/TGZcdlD0sWrKa6xfuBHZJTTHU1yUxFuHGj0tdpdpXjUV5YufB6k5oBZNdhR
	FvEwkAFsPzvutHJCU816jb9c7FNu0QsrKTcjH8uMrQno5p2YBoj8GPEEj/4jI7ysmIcrRgxP48f
	j7s1lVjXHCdFLIlvJbyaTPquW9qMYAewnN/vTXNkHxR7Tsx+Al8dX8lCw9lEAh5R41yWQHYltz9
	lQPNNNrTOPhiTWxV9KrZEq+YmAdhV8/Q0Tk4iCfrrWaqCk21aql4APaFg/KZPApG9TSuI5aAzSb
	gXuSzqcI/85kwovBMKqrz9amYxd2p/kMsh7Z5s9NClkMqj4
X-Received: by 2002:a05:6214:3a86:b0:912:3fc7:2336 with SMTP id 6a1803df08f44-912a7fef5efmr109428476d6.31.1789974658158;
        Mon, 21 Sep 2026 00:10:58 -0700 (PDT)
Received: from mail-qk2-f43.google.com (mail-qk2-f43.google.com. [74.125.230.235])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91260962cddsm63234456d6.3.2026.09.21.00.10.57
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 00:10:57 -0700 (PDT)
Received: by mail-qk2-f43.google.com with SMTP id d75a77b69052e-52fb767d286so25687311cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2026 00:10:57 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvByt3hceDHoTppsJ5T4Xo/0RSWb0rynWF+BuWBcjTuzz7+Fe+E3SdrESmR58hiPR2YpNCSCWJkgIyVb3/h0pIg==@lists.infradead.org
X-Received: by 2002:a05:6102:c4f:b0:7a7:198b:674e with SMTP id
 ada2fe7eead31-7a7198b70eemr2080779137.35.1789974354429; Mon, 21 Sep 2026
 00:05:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
In-Reply-To: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 21 Sep 2026 09:05:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWWOB48AUCbXh=9ZGCK2qZyVH06kJ2paRY-wxkq5NC16A@mail.gmail.com>
X-Gm-Features: AcwNN1WjYVMR8LtQc9Hk29H2mvcKQfYOy_09b_XHHWkw76vwCkEFuElZphsH01o
Message-ID: <CAMuHMdWWOB48AUCbXh=9ZGCK2qZyVH06kJ2paRY-wxkq5NC16A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20260921_001059_693851_9EF053A2 
X-CRM114-Status: GOOD (  18.52  )
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

Hi Kieran,

On Fri, 18 Sept 2026 at 12:55, Kieran Bingham
<kieran.bingham@ideasonboard.com> wrote:
> Add a new dt-bindings/media/video-interface-devices.h header that
> initially supports the Orientation types and convert existing users
> throughout the code base.

Just noticed these are already in since commit 6ab5acfb8dd38729
("dt-bindings: media: Add macros for video interface devices") in
media/master (next-20260903 and later)?

> v3 collects tags, and fixes the typo, but drops all hunks that do not

[...]

> v2:

Interesting changelog order ;-)

[...]

> v3:

[...]

> -v4:

[...]


> -v5:
>  - Definitions now accepted in linux-media, rebased to get conversions in.

Oh, you say so here ;-)

>       arm64: dts: renesas: Convert to new media orientation definitions

So it's been safe for me to pick this up since v5?

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
