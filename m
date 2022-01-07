Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6253BC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 23:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rdvyvbGrMOJzKiG5mV3ucl16Ssqbt6SGus/ReO7jBjI=; b=gnGzabdLPz1pb8
	ae832GxxLynkNHHlUDwRQtYp3+oFVOoxTFK9mZ8xbXDk76WYto2eIIA46DffPPR1vIguyChgQmAtI
	Zn913ENt6H8puJayQDZB7K5iYHgjD0+hNzei46B/FHLFgGLY7+Z/gaDlQZWxKrdjkbHj/2hkiVyLZ
	q/ybXs+Z2pXVq1kRxSgvQ8csnaDDzn01Mk16mXW4Y2/GJrLuFrt8ji1pZFQIsQC92prLQSoL6N/GN
	jYEcNY0W1syJKlxoZ+Fk3GpTS6WaXPmxZPJGyQtkH9Yxpi0z6gncIPW/6l56LH0DQVWMvr/zfdnaB
	5ysGPuU+4dE3P4UJHXJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5z38-005Yks-CN; Fri, 07 Jan 2022 23:53:34 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5z35-005Yih-1r
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 23:53:32 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 r14-20020a17090b050e00b001b3548a4250so5300493pjz.2
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 15:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FPcxFdbNSuAjDGPM+825c9NOOVh3gwUSyNILvw1m1k0=;
 b=lhNOOhqYLhMvK4rkGdb4BXXvq5TC2C4KLjl5uJ3BMNplsn426UWj8vStE4yDA72uz8
 y9S20EG3h1F46L14QZXLuxaIRhZ7nMI0v4qxyVcG1v+y1WbvXorMN1hoA1ACB6fyZlVW
 4IBVVhMfh7FEyBP7/GqQ8XPmlFu5P2KaXUQyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FPcxFdbNSuAjDGPM+825c9NOOVh3gwUSyNILvw1m1k0=;
 b=NLc3fNWFMMIWmyuhJ9w198zr+f/SCCGu7tFcyBzM75Ocrm5HxtkqOsYWzhLV7jfRGY
 YHNQAIM+Jo9lJFjs6ToYr2vMIYTyE8/3ZbsM9ALBI+7Zwiryi8XGVAfhAI0BStiPPKCZ
 Mz5SeIavJg6w6xPByGEVTCHea+qOen9FYqiqofGXqtq5ZXwv/a7U1ZNL3F1Pb0BgGU8D
 AQr7gEOn71nV5AGvGLMn+z2k+KZkPSAK5HXGaUJ2nR5Hbi0cwr+b42wJp3FTbJiwM3OV
 9IsB1Qiw4SuX03szkxmRWzYlEveonHDGIavTwK71+G654rVrFs/hFHwyY73zG15cun18
 aZcA==
X-Gm-Message-State: AOAM5319g4iuF9YWXQPukjOicCPfiz6bXYbAbQuq+63T0sOONl0SEJnY
 y2tWbVi4l6XRATjHAazWHZug0Q==
X-Google-Smtp-Source: ABdhPJyF/beCttXDGa8cvG4GzHj8zaoaRTN3MHegrEuZhaQaILf9BIU+PkWqdqcpSpz7jwqc4/46RA==
X-Received: by 2002:a17:90b:380c:: with SMTP id
 mq12mr18376589pjb.142.1641599609257; 
 Fri, 07 Jan 2022 15:53:29 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
 by smtp.gmail.com with UTF8SMTPSA id e5sm13593pjr.25.2022.01.07.15.53.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Jan 2022 15:53:28 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH 00/10] rk3399: Clean up and enable DDR DVFS
Date: Fri,  7 Jan 2022 15:53:10 -0800
Message-Id: <20220107235320.965497-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_155331_149202_275B249D 
X-CRM114-Status: GOOD (  12.07  )
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

This series covers 2 primary tasks:

1) Resubmit prior work:

[RESEND PATCH v5 3/4] arm64: dts: rockchip: Enable dmc and dfi nodes on gru.
https://lore.kernel.org/lkml/20210308233858.24741-2-daniel.lezcano@linaro.org/
[RESEND PATCH v5 2/4] arm64: dts: rk3399: Add dfi and dmc nodes.
https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/

This series was partially merged a while back, but the remaining 2
patches were blocked mostly on stylistic grounds (alpha/numerical
ordering).

2) Integrate many updates, bugfixes, and clarifications that were done
by Rockchip and Google engineers when first launching this platform.
Many of these were not integrated in the earlier series (e.g., the OPPs
changed before production; earlier patchsets used pre-production
numbers).

Along the way, it seemed worthwhile to convert the binding docs to a
schema. Among other reasons, it actually helped catch several errors and
omissions in translation between downstream device trees and the version
that actually landed upstream.

See the patches for further details.

Regards,
Brian


Brian Norris (8):
  dt-bindings: devfreq: rk3399_dmc: Convert to YAML
  dt-bindings: devfreq: rk3399_dmc: Deprecate unused/redundant
    properties
  dt-bindings: devfreq: rk3399_dmc: Fix Hz units
  dt-bindings: devfreq: rk3399_dmc: Add more disable-freq properties
  PM / devfreq: rk3399_dmc: Drop undocumented ondemand DT props
  PM / devfreq: rk3399_dmc: Drop excess timing properties
  PM / devfreq: rk3399_dmc: Use bitfield macro definitions for ODT_PD
  PM / devfreq: rk3399_dmc: Support new disable-freq properties

Lin Huang (2):
  arm64: dts: rk3399: Add dfi and dmc nodes
  arm64: dts: rockchip: Enable dmc and dfi nodes on gru

 .../bindings/devfreq/rk3399_dmc.txt           | 212 -----------
 .../bindings/devfreq/rk3399_dmc.yaml          | 339 ++++++++++++++++++
 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |   7 +
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  12 +
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi  |  28 ++
 .../boot/dts/rockchip/rk3399-op1-opp.dtsi     |  25 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  19 +
 drivers/devfreq/rk3399_dmc.c                  | 230 +++++-------
 8 files changed, 525 insertions(+), 347 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
 create mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml

-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
