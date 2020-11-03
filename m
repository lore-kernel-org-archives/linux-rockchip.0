Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18050C388F9
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 15:29:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 641DC223C7
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 15:29:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qtBATT2m";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cX7YnHDv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 641DC223C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7NRH1txUwcBhebqib85VrbUPJf+H3AeADEFaoPZO/BA=; b=qtBATT2mqa0gH8NB/NvNfpEajC
	rReW1RshqEbFOdvmJZSL1M5L2hXUAmXwksZDAy21EMKJG0b5dJhGhtFW8V5Cun21AOMY+egIZhg0k
	LGQfeHX1tT6sYdMFOwCCa9P0KYoBAuzy0vDXw/ID7aIvS98+iypLE5AvAvr0tYF6Fkfgtod74S7YL
	excoG6UOQpQ8qQ06KvdSH6W7DSZo/LS2tJtYSek5YhovQ3dCLBPYYHLuj5sQhRQxTSezNeKWFt74C
	RBtEodZHKfr87vbILwz4wQdOi9fvk2kVWv8s4Qa4PV5cylhvFqgucFfSP1yaf4Kub+UkOuFFO27ew
	DDYBKNkw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZyFr-00020H-5E; Tue, 03 Nov 2020 15:29:51 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZyFF-0001gg-PN
 for linux-rockchip@lists.infradead.org; Tue, 03 Nov 2020 15:29:16 +0000
Received: by mail-wr1-x42b.google.com with SMTP id b8so19026628wrn.0
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2020 07:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cinjSse47w4OyBjCwL2P/oafcagxHnLlboUEJDujNWw=;
 b=cX7YnHDv9m5+T7PbYX1ejAYBuULrQQ+M0omEMTQnojpGH8v/C5HKpdzGwPJOa5ab2J
 hWvr65vepL8wyiP+0aMOixJkRcMW5S6eaXcMWPrYmd/7G58lnJBRA7mZOEsNleDYa0yr
 SKIlBUDn2JHHV9/9oFL2tnLHsBG8k26M+lqdFa2vY0c/HN4q7AYGC48aRoGa/vyC4lH/
 my/WLOeYp1lwX1+QNh/x7yP9dEPhbwuo7fSZHgNeLSf8FfpoUnTAFo5BL3I2Y+E4p++O
 Hbne+HYaqgTlebyKrpkPS6jDswYcHoysUa1ZTvtvRAVDOBwaryaj9SVgIWvC0yOjixW6
 hI3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cinjSse47w4OyBjCwL2P/oafcagxHnLlboUEJDujNWw=;
 b=TZvVEjCyPcgv9TJdQuuLCeOu3vIC0epZtQPTPV/OSYijJ8MsDfxc8D1HMlxdHnsEjL
 Qtb5HR5qZKUVkN7y4e/9Fs9lYtEjpIEel2tLjvDCRbYNbHlEApfdJwgFqlg9aflTDUnt
 aU2JSmJwKAuYXodg9ffl9t2VXOO4zLvEXtskLwI+bj43BTBgFOVtQsUgGHOoyt7a9BY1
 K0s1thPh6jnBCIuoz+ZtQf7+Sy1FSHsZdFYuH9uOh+9OniBhPUpMVsDjPyFKRoy2Btsb
 UcdtddSFkspmdpzKd8zNNsfOgptarEWNRpa+xtoZnEboX8VkNjfhI5eVWT8ongYKIwpo
 goXg==
X-Gm-Message-State: AOAM5305ZRv+6Yl8bmd/p7thC0Ob1b3JSzUc2sI2k6He7y8OuBY2IJQw
 +0F27WrZhf19YF7t9BbfU8PLgQ==
X-Google-Smtp-Source: ABdhPJyzlV0HXdTidCRBprYLkp0uWjD8RuYpiqDZS7BW//F1Q+dvuU4dB6/3Ff6PqbhKnABb0CWqEw==
X-Received: by 2002:adf:c803:: with SMTP id d3mr11847040wrh.108.1604417350540; 
 Tue, 03 Nov 2020 07:29:10 -0800 (PST)
Received: from dell.default ([91.110.221.242])
 by smtp.gmail.com with ESMTPSA id j127sm3491779wma.31.2020.11.03.07.29.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 07:29:09 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 00/25] Rid W=1 warnings in SoC
Date: Tue,  3 Nov 2020 15:28:13 +0000
Message-Id: <20201103152838.1290217-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_102913_886795_EBEC44D2 
X-CRM114-Status: GOOD (  12.32  )
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
 Thierry Reding <thierry.reding@gmail.com>, Li Yang <leoyang.li@nxp.com>,
 Qiang Zhao <qiang.zhao@nxp.com>, linux-samsung-soc@vger.kernel.org,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 YueHaibing <yuehaibing@huawei.com>, Sandeep Nair <sandeep_n@ti.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, act <dmalek@jlc.net>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Cyril Chemparathy <cyril@ti.com>, linux-arm-msm@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, linux-tegra@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, "Software, Inc" <source@mvista.com>,
 Dave Gerlach <d-gerlach@ti.com>, Doug Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, Ben Dooks <ben@simtec.co.uk>,
 Mark Brown <broonie@kernel.org>, Dan Malek <dan@embeddedalley.com>,
 Vitaly Bordug <vbordug@ru.mvista.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This set is part of a larger effort attempting to clean-up W=1
kernel builds, which are currently overwhelmingly riddled with
niggly little warnings.

Lee Jones (25):
  soc: bcm: brcmstb: pm: pm-arm: Provide prototype for
    brcmstb_pm_s3_finish()
  soc: qcom: qcom_aoss: Remove set but unused variable 'tlen'
  soc: qcom: qcom_aoss: Add missing description for 'cooling_devs'
  soc: fsl: dpio: qbman-portal: Fix a bunch of kernel-doc misdemeanours
  soc: rockchip: io-domain: Remove incorrect and incomplete comment
    header
  soc: ti: knav_qmss_queue: Remove set but unchecked variable 'ret'
  soc: ti: knav_qmss_queue: Fix a whole host of function documentation
    issues
  soc: ti: knav_dma: Fix a kernel function doc formatting issue
  soc: ti: pm33xx: Remove set but unused variable 'ret'
  soc: ti: wkup_m3_ipc: Document 'm3_ipc' parameter throughout
  soc: fsl: qe: qe_common: Fix misnamed function attribute 'addr'
  soc: qcom: qcom-geni-se: Fix misnamed function parameter 'rx_rfr'
  soc: tegra: fuse: speedo-tegra124: Remove some set but unused
    variables
  soc: samsung: s3c-pm-check: Fix incorrectly named variable 'val'
  soc: qcom: rpmh: Fix possible doc-rot in rpmh_write()'s header
  soc: qcom: smem: Fix formatting and missing documentation issues
  soc: qcom: smsm: Fix some kernel-doc formatting and naming problems
  soc: qcom: wcnss_ctrl: Demote non-conformant struct header and fix
    function headers
  soc: qcom: smp2p: Remove unused struct attribute provide another
  soc: qcom: llcc-qcom: Fix expected kernel-doc formatting
  soc: qcom: rpmhpd: Provide some missing struct member descriptions
  soc: qcom: kryo-l2-accessors: Fix misnaming of 'val'
  soc: ti: k3-ringacc: Provide documentation for 'k3_ring's 'state'
  soc: tegra: fuse: speedo-tegra210: Remove a group of set but unused
    variables
  soc: fsl: qbman: qman: Remove unused variable 'dequeue_wq'

 drivers/soc/bcm/brcmstb/pm/pm-arm.c      |  2 +
 drivers/soc/fsl/dpio/qbman-portal.c      | 18 +++++--
 drivers/soc/fsl/qbman/qman.c             |  8 +--
 drivers/soc/fsl/qe/qe_common.c           |  2 +-
 drivers/soc/qcom/kryo-l2-accessors.c     |  2 +-
 drivers/soc/qcom/llcc-qcom.c             |  2 +-
 drivers/soc/qcom/qcom-geni-se.c          |  5 +-
 drivers/soc/qcom/qcom_aoss.c             |  4 +-
 drivers/soc/qcom/rpmh.c                  |  2 +-
 drivers/soc/qcom/rpmhpd.c                |  3 ++
 drivers/soc/qcom/smem.c                  |  3 +-
 drivers/soc/qcom/smp2p.c                 |  3 +-
 drivers/soc/qcom/smsm.c                  |  4 +-
 drivers/soc/qcom/wcnss_ctrl.c            |  8 +--
 drivers/soc/rockchip/io-domain.c         |  3 --
 drivers/soc/samsung/s3c-pm-check.c       |  2 +-
 drivers/soc/tegra/fuse/speedo-tegra124.c |  7 ++-
 drivers/soc/tegra/fuse/speedo-tegra210.c |  8 +--
 drivers/soc/ti/k3-ringacc.c              |  1 +
 drivers/soc/ti/knav_dma.c                |  2 +-
 drivers/soc/ti/knav_qmss_queue.c         | 62 ++++++++++++------------
 drivers/soc/ti/pm33xx.c                  |  4 +-
 drivers/soc/ti/wkup_m3_ipc.c             |  8 ++-
 23 files changed, 86 insertions(+), 77 deletions(-)

Cc: act <dmalek@jlc.net>
Cc: Andy Gross <agross@kernel.org>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: Ben Dooks <ben@simtec.co.uk>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Cyril Chemparathy <cyril@ti.com>
Cc: Dan Malek <dan@embeddedalley.com>
Cc: Dave Gerlach <d-gerlach@ti.com>
Cc: Doug Anderson <dianders@chromium.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-tegra@vger.kernel.org
Cc: Li Yang <leoyang.li@nxp.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Qiang Zhao <qiang.zhao@nxp.com>
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Cc: Roy Pledge <Roy.Pledge@nxp.com>
Cc: Sandeep Nair <sandeep_n@ti.com>
Cc: Santosh Shilimkar <ssantosh@kernel.org>
Cc: Scott Wood <scottwood@freescale.com>
Cc: "Software, Inc" <source@mvista.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Vitaly Bordug <vbordug@ru.mvista.com>
Cc: YueHaibing <yuehaibing@huawei.com>

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
