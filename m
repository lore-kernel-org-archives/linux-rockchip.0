Return-Path: <SRS0=VfWU=E6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23334C56202
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2020 00:52:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B984E206D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2020 00:52:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hRV2dOEU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B984E206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PDA6oMDpm5n3cCPqZi0OIVC1AYhoVQXA7jpdyMq8Usc=; b=hRV2dOEUdk67TS8FDMJIqHDqw
	5rX7QcR88m+k81WzAI+25NF/2sLAgkVq1OXRuqMWnTpvLwji85BSJKcB5KL90ZEYxcfDo2juaw9f3
	ehZ6UseEaQcMaIvDHvxRa0XEYyNzZid8oZL5Ae5SQ91UmPnJGbIID5u4AljjO/xV4VWLTQljJUzLa
	QxHNPtfahLTfephFQ9GzUMYGlhcubti8sTB+LakeaEDZcpxHuqXaUJXIaG10FXNRX+eK62ZtzQZyg
	+tVRMGWlVZ71srnk2oWhmZ3UE3/yRUHaiBxbmbS2Dg7STOVO4Q1AvfVEXSvAU3ine+sjiXvN3PvOH
	G1HyIgJuw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khMZQ-0004FT-AY; Tue, 24 Nov 2020 00:52:36 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khMZK-0004Dp-En; Tue, 24 Nov 2020 00:52:31 +0000
Received: by mail-oo1-f68.google.com with SMTP id l10so1744334ooh.1;
 Mon, 23 Nov 2020 16:52:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gI7zhBhIP0+6Xsp8/COOViVeUh5gtUo2CsgJ6HRlj/M=;
 b=WbNqqffdlwTHb8KOJRGM+F/vfVL3HWP6q4pvxmZu3ZGcF2bEACynhtEKQ17PXG2azo
 EPWXxSKEaCGPL1/l7aqwzkGtfublLwcf9XxZn8jOHMGMi4g83yHoh6HfblN3VUix1ErD
 uc43NgH5bKv7mpRxFC4dtztitTGz3Ppf2nfnwgIW0d2KSIU3C42lVkRl4ebs5OlghNCY
 ByzHWmd00egexv9IF1U2lFrvawJOklxOEemagsb4EWW0kj8i06CyOt1Jk00YoA2XJa/o
 uJVgVwCSGihZAWuLMM6O9AfqFpfavuqkyJoajNUVFoyrPiuYM/+svzaeeQETv5huhJGo
 /Ugg==
X-Gm-Message-State: AOAM533Q4BNsQi148fxapLAy5KGU6ftjA9QPAWMhzksD9//IdZFzZX+w
 YSBRvJyhzGdRg4tWfmJjS5QdLWeAoPEt7A==
X-Google-Smtp-Source: ABdhPJxfDedYAlZku27QTOWM5j5xzKn5BOZ4jnQYDbl+nzZX1cLsiIDZX6RkUqEmF688w+gv+DoxJw==
X-Received: by 2002:a4a:903:: with SMTP id 3mr1493364ooa.48.1606179148457;
 Mon, 23 Nov 2020 16:52:28 -0800 (PST)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com.
 [209.85.167.170])
 by smtp.gmail.com with ESMTPSA id z12sm8354742oos.12.2020.11.23.16.52.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Nov 2020 16:52:28 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id q206so21837890oif.13;
 Mon, 23 Nov 2020 16:52:28 -0800 (PST)
X-Received: by 2002:aca:4cf:: with SMTP id 198mr1036440oie.175.1606178695336; 
 Mon, 23 Nov 2020 16:44:55 -0800 (PST)
MIME-Version: 1.0
References: <20201103152838.1290217-1-lee.jones@linaro.org>
In-Reply-To: <20201103152838.1290217-1-lee.jones@linaro.org>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 23 Nov 2020 18:44:43 -0600
X-Gmail-Original-Message-ID: <CADRPPNQx2=f46EQOvYLZUMbL+4qyDXUyvzjsKqFLC-iuQFRAQQ@mail.gmail.com>
Message-ID: <CADRPPNQx2=f46EQOvYLZUMbL+4qyDXUyvzjsKqFLC-iuQFRAQQ@mail.gmail.com>
Subject: Re: [PATCH 00/25] Rid W=1 warnings in SoC
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201123_195230_562562_2852D626 
X-CRM114-Status: GOOD (  15.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Roy Pledge <Roy.Pledge@nxp.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Scott Wood <scottwood@freescale.com>,
 Thierry Reding <thierry.reding@gmail.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 linux-samsung-soc@vger.kernel.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 YueHaibing <yuehaibing@huawei.com>, Sandeep Nair <sandeep_n@ti.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, act <dmalek@jlc.net>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Cyril Chemparathy <cyril@ti.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, "Software, Inc" <source@mvista.com>,
 Dave Gerlach <d-gerlach@ti.com>, Doug Anderson <dianders@chromium.org>,
 lkml <linux-kernel@vger.kernel.org>, Ben Dooks <ben@simtec.co.uk>,
 Mark Brown <broonie@kernel.org>, Dan Malek <dan@embeddedalley.com>,
 Vitaly Bordug <vbordug@ru.mvista.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Nov 3, 2020 at 9:29 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> This set is part of a larger effort attempting to clean-up W=1
> kernel builds, which are currently overwhelmingly riddled with
> niggly little warnings.
>
> Lee Jones (25):

>   soc: fsl: dpio: qbman-portal: Fix a bunch of kernel-doc misdemeanours
>   soc: fsl: qe: qe_common: Fix misnamed function attribute 'addr'
>   soc: fsl: qbman: qman: Remove unused variable 'dequeue_wq'

The above are applied for next.  Thanks.

Regards,
Leo
>
>  drivers/soc/bcm/brcmstb/pm/pm-arm.c      |  2 +
>  drivers/soc/fsl/dpio/qbman-portal.c      | 18 +++++--
>  drivers/soc/fsl/qbman/qman.c             |  8 +--
>  drivers/soc/fsl/qe/qe_common.c           |  2 +-
>  drivers/soc/qcom/kryo-l2-accessors.c     |  2 +-
>  drivers/soc/qcom/llcc-qcom.c             |  2 +-
>  drivers/soc/qcom/qcom-geni-se.c          |  5 +-
>  drivers/soc/qcom/qcom_aoss.c             |  4 +-
>  drivers/soc/qcom/rpmh.c                  |  2 +-
>  drivers/soc/qcom/rpmhpd.c                |  3 ++
>  drivers/soc/qcom/smem.c                  |  3 +-
>  drivers/soc/qcom/smp2p.c                 |  3 +-
>  drivers/soc/qcom/smsm.c                  |  4 +-
>  drivers/soc/qcom/wcnss_ctrl.c            |  8 +--
>  drivers/soc/rockchip/io-domain.c         |  3 --
>  drivers/soc/samsung/s3c-pm-check.c       |  2 +-
>  drivers/soc/tegra/fuse/speedo-tegra124.c |  7 ++-
>  drivers/soc/tegra/fuse/speedo-tegra210.c |  8 +--
>  drivers/soc/ti/k3-ringacc.c              |  1 +
>  drivers/soc/ti/knav_dma.c                |  2 +-
>  drivers/soc/ti/knav_qmss_queue.c         | 62 ++++++++++++------------
>  drivers/soc/ti/pm33xx.c                  |  4 +-
>  drivers/soc/ti/wkup_m3_ipc.c             |  8 ++-
>  23 files changed, 86 insertions(+), 77 deletions(-)
>
> Cc: act <dmalek@jlc.net>
> Cc: Andy Gross <agross@kernel.org>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: Ben Dooks <ben@simtec.co.uk>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Cyril Chemparathy <cyril@ti.com>
> Cc: Dan Malek <dan@embeddedalley.com>
> Cc: Dave Gerlach <d-gerlach@ti.com>
> Cc: Doug Anderson <dianders@chromium.org>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linuxppc-dev@lists.ozlabs.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-tegra@vger.kernel.org
> Cc: Li Yang <leoyang.li@nxp.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Qiang Zhao <qiang.zhao@nxp.com>
> Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
> Cc: Roy Pledge <Roy.Pledge@nxp.com>
> Cc: Sandeep Nair <sandeep_n@ti.com>
> Cc: Santosh Shilimkar <ssantosh@kernel.org>
> Cc: Scott Wood <scottwood@freescale.com>
> Cc: "Software, Inc" <source@mvista.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Vitaly Bordug <vbordug@ru.mvista.com>
> Cc: YueHaibing <yuehaibing@huawei.com>
>
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
