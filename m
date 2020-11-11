Return-Path: <SRS0=RWH0=ER=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 248ADC388F9
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 05:26:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C0AC20729
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 05:26:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OacGJIGf";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k0+kPp4Q"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C0AC20729
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JzX6RHAgSleZCCvPPQAw6y6YD5l9PSV+/H2hcPV+QHU=; b=OacGJIGf7zghTGJH9aykdAGR9
	Ql0sqTotalMa4q8u73kv6kntWEe8c3OYtC1H9LwpQmEWGZ9sSz3SMX84rsY5cMSNhBb37mV/7bHyP
	cusr8/NG7Ii4lS8Jk6/XJZvb+JmRtiyolmjhiJZ2gHX5Q8C2GfigvKEf0y1IH5GfIF/RRm+Rc8Hx6
	IQ1CVReL3gX1FUXiSVMOBvDJL0lic8ZY+txfri00CIceiPx56nLbho+hFA6/9DhzTzHEjhVFdDoa/
	e6o8KmhlmyoXfl4ZeCF673BHPZk7/413fB+X9v855cTsuEEL5G40n8GDw1cNSnG4W+1kMO7B4o90v
	ZMwhIW9ww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcido-0005KT-In; Wed, 11 Nov 2020 05:25:56 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcidd-0005GQ-H2
 for linux-rockchip@lists.infradead.org; Wed, 11 Nov 2020 05:25:47 +0000
Received: by mail-ot1-x341.google.com with SMTP id f16so1036834otl.11
 for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2020 21:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=y2ndxJgHEnHcPZgvTcxab2Vcfl3sIpgvRbePyhc7fWA=;
 b=k0+kPp4QegQ8x48cvtzhFv/+5D9Dzcc/GkW9H2cVvWdsV62FFEeh5SomjgkF6ArEbs
 SALg/lHidLzXzKJDPe75nRCtJMKl+T1DXOhFkqJgHeGSByWcQswiWqNS9RdS1OPCxVY9
 sheWT6Xmes3YqryK1wzNDycXLFQMTTFdw1Q0QOtfv332yhZEihs5rlicmJNnJ4aqKofH
 3PQM44SvKJ1pzUNDJ9DmQTiwaoEuFLpE7r53YAHQgZeAjyY0+vMVtM542WaJkvkneani
 PJVq5THlhQ9375G7mmtdr4YMQ4Nn+5e7cVKti3uV2mwvfz15gwZMliWxEHK9fXeLku9O
 ODyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y2ndxJgHEnHcPZgvTcxab2Vcfl3sIpgvRbePyhc7fWA=;
 b=LkkqdNZpbNQc6+DCHt3CSnZArmjaDjwm1E4uIArkg5aKFeM+eGz/UUxhrQPt7Vi0gZ
 cjqCv2rWzy5KiDZSTWcW6aRqaF3xL9s8pydoqEdX/pz5uIFG2fgfdG4n/DmXc6sFS8ip
 HZ60YFPph3OyRTV7eTs5AlJS31WIH0Klb7YNKpntu+TONtuVPFpa6KdOfcEcl6beChk+
 BqPYosJgap2uoRjhPRn3rRZs4+h3t6/OS1AXjqTfa6p32jZXs2Cq8dwSGl/a8UZcFQcz
 c0dtyy3BcIUFzgL+p/n2ceYMqV2b4n+cQ8cRaZQjDDTgegSEEECTVgB692JalXG+FU6e
 siBA==
X-Gm-Message-State: AOAM530ANWeRTftYe4obt9FiXaz80ybITy6bhbcZF7h6ndH0boGixKxj
 V1O0wLbntjYV+wpHXOVpYR/oyA==
X-Google-Smtp-Source: ABdhPJxYlw4HOIVtNlSAXCpvPkLgs0k9q7yaxQqFlvLOOSr3etHIDMddV04BFhc/FMfh+dl4z1o0rw==
X-Received: by 2002:a9d:62c1:: with SMTP id z1mr15982440otk.108.1605072343541; 
 Tue, 10 Nov 2020 21:25:43 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id h136sm224748oib.19.2020.11.10.21.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 21:25:42 -0800 (PST)
Date: Tue, 10 Nov 2020 23:25:40 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 00/25] Rid W=1 warnings in SoC
Message-ID: <20201111052540.GH173948@builder.lan>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152838.1290217-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201111_002545_927065_1BF07460 
X-CRM114-Status: GOOD (  16.96  )
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
Cc: Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Roy Pledge <Roy.Pledge@nxp.com>, linux-kernel@vger.kernel.org,
 Scott Wood <scottwood@freescale.com>,
 Thierry Reding <thierry.reding@gmail.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 linux-samsung-soc@vger.kernel.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 YueHaibing <yuehaibing@huawei.com>, Sandeep Nair <sandeep_n@ti.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, act <dmalek@jlc.net>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Cyril Chemparathy <cyril@ti.com>, linux-arm-msm@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, "Software, Inc" <source@mvista.com>,
 Dave Gerlach <d-gerlach@ti.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Li Yang <leoyang.li@nxp.com>, Ben Dooks <ben@simtec.co.uk>,
 Mark Brown <broonie@kernel.org>, Dan Malek <dan@embeddedalley.com>,
 Vitaly Bordug <vbordug@ru.mvista.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue 03 Nov 09:28 CST 2020, Lee Jones wrote:

> This set is part of a larger effort attempting to clean-up W=1
> kernel builds, which are currently overwhelmingly riddled with
> niggly little warnings.
> 

For patches 2, 3, 12, 15, 16, 17, 18, 19, 20, 21, 22 (i.e. the soc/qcom
patches):

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
and applied towards 5.11

Regards,
Bjorn

> Lee Jones (25):
>   soc: bcm: brcmstb: pm: pm-arm: Provide prototype for
>     brcmstb_pm_s3_finish()
>   soc: qcom: qcom_aoss: Remove set but unused variable 'tlen'
>   soc: qcom: qcom_aoss: Add missing description for 'cooling_devs'
>   soc: fsl: dpio: qbman-portal: Fix a bunch of kernel-doc misdemeanours
>   soc: rockchip: io-domain: Remove incorrect and incomplete comment
>     header
>   soc: ti: knav_qmss_queue: Remove set but unchecked variable 'ret'
>   soc: ti: knav_qmss_queue: Fix a whole host of function documentation
>     issues
>   soc: ti: knav_dma: Fix a kernel function doc formatting issue
>   soc: ti: pm33xx: Remove set but unused variable 'ret'
>   soc: ti: wkup_m3_ipc: Document 'm3_ipc' parameter throughout
>   soc: fsl: qe: qe_common: Fix misnamed function attribute 'addr'
>   soc: qcom: qcom-geni-se: Fix misnamed function parameter 'rx_rfr'
>   soc: tegra: fuse: speedo-tegra124: Remove some set but unused
>     variables
>   soc: samsung: s3c-pm-check: Fix incorrectly named variable 'val'
>   soc: qcom: rpmh: Fix possible doc-rot in rpmh_write()'s header
>   soc: qcom: smem: Fix formatting and missing documentation issues
>   soc: qcom: smsm: Fix some kernel-doc formatting and naming problems
>   soc: qcom: wcnss_ctrl: Demote non-conformant struct header and fix
>     function headers
>   soc: qcom: smp2p: Remove unused struct attribute provide another
>   soc: qcom: llcc-qcom: Fix expected kernel-doc formatting
>   soc: qcom: rpmhpd: Provide some missing struct member descriptions
>   soc: qcom: kryo-l2-accessors: Fix misnaming of 'val'
>   soc: ti: k3-ringacc: Provide documentation for 'k3_ring's 'state'
>   soc: tegra: fuse: speedo-tegra210: Remove a group of set but unused
>     variables
>   soc: fsl: qbman: qman: Remove unused variable 'dequeue_wq'
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
