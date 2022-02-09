Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74A85C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 20:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krKJ2E5ALxJ1iYF5gCqtU+o+2CjLYMGwojMcN/5UiB4=; b=Z1OhVCuExFk6EZ
	AmktzUazOIYtefC89Q7fZOU7KT3withX8Jhh+w3p1oGPdZfhefmOhT16y/bSqSFFR3BBjIm/37FKA
	1oLCZ88Rh5/GF53y3hGTUhAkly0r0OuXj7tpVr7zyok/4sDuh6R88KMHwP3CzHNjhGH7L/gYU2Gy2
	xURH/YND2goDRJVlZyLT/55ap1obxIQ/SCe28aN29LZtxUmAvg6DzDy4OP+r3odMi6fqKq2HxcLur
	petnVlDS43LYHPIBdRUhqWwu/179q9b8JAvVF4aLNDmuEO/nYAQyNuz1kotNmVSr/n8XXonaKtk2A
	ROBM0kgEeUforkjPg9Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHtRJ-001X5Z-Ar; Wed, 09 Feb 2022 20:19:45 +0000
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHtRE-001X4G-QN; Wed, 09 Feb 2022 20:19:43 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 v17-20020a4ac911000000b002eac41bb3f4so3773370ooq.10; 
 Wed, 09 Feb 2022 12:19:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wq4vdKGMeXoIRNXOtMWhnncER4U349yKDpCvUwhL4uI=;
 b=6iWjuiPB3r/IE9ndpOBWzRxhbeUl89NH8rzBzufQGsmy709Idmh5lht6SAu3ZYarfw
 ZmEIcBA2WCBNGkPhmWjGggVii3Nqf8RWn1p46AwNwEHbM5HHrOB42LpL4yS2RyYLd4uK
 y2IZJJyVShe7CDKiZ72eg9gr/jIEEOhdGdglLbb9kQLUo1LpzJv4dViUPjNAepIOer4V
 HxkRxaBwViiCMeqPPdO4NW1eYDJRlcjos0MPdMQm0NtX56GH+Tsnp8ZOvHPyNChVnMyX
 VwFSirIaMSVyWeUr76w5EgnVXZ70IqBAlhQxZCgP8LwXi13eVMKwUKDroJ6LoC0aV/tY
 sLXA==
X-Gm-Message-State: AOAM531HbbPGJNWuoWnVzOSqZndBdIBZ9UOyDnwLe7JlZr/eUvnTQTQ5
 BxYAxakrksL4yuuH/7oXkQ==
X-Google-Smtp-Source: ABdhPJwkGIFmvi/YRXr/h/wnQirAhEqYAsd5AzUXVjmhqfax7kfjOA+NyA0T6LZenez6U6kRp4zfUg==
X-Received: by 2002:a05:6870:a583:: with SMTP id
 c3mr1452455oam.197.1644437979384; 
 Wed, 09 Feb 2022 12:19:39 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id d21sm6939901otq.68.2022.02.09.12.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 12:19:38 -0800 (PST)
Received: (nullmailer pid 828716 invoked by uid 1000);
 Wed, 09 Feb 2022 20:19:36 -0000
Date: Wed, 9 Feb 2022 14:19:36 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Derek Basehore <dbasehore@chromium.org>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 03/15] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Message-ID: <YgQh2AnJenCuoFgu@robh.at.kernel.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220127150615.v2.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_121940_899259_36B2A173 
X-CRM114-Status: GOOD (  13.98  )
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

On Thu, Jan 27, 2022 at 03:07:14PM -0800, Brian Norris wrote:
> The driver and all downstream device trees [1] are using Hz units, but
> the document claims MHz. DRAM frequency for these systems can't possibly
> exceed 2^32-1 Hz, so the choice of unit doesn't really matter than much.
> 
> Rather than add unnecessary risk in getting the units wrong, let's just
> go with the unofficial convention and make the docs match reality.
> 
> A sub-1MHz frequency is extremely unlikely, so include a minimum in the
> schema, to help catch anybody who might have believed this was MHz.
> 
> [1] And notably, also those trying to upstream them:
> https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> (no changes since v1)
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 24 +++++++++----------
>  1 file changed, 12 insertions(+), 12 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
