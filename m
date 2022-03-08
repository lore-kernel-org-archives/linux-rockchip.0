Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD599C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0IBNhZmM6ZG1xBpCdxfbjKm9vKbfFhPR9DJuwbz6xio=; b=lbCYc9gMasYNLL
	uBi9UhzUzv6P+yS/kA0RHdAacOuE5VjN2M3CBQFwMKe57etUmDsKZQEV+1yaVEBjxBaLq5AhmB6fA
	HmdkFZUNGH9qXLxHClCZasltdblBRerdJE2Nf4874xUqMueM5Ovt6g/xesAMvOROyW8EBQV8v9UIW
	D/KcAtd/iM5LnAMWa2F8VCZrgMnKjeHpXfyIuO9HKFOGMzHW3VebgZwymz4dOtB1LgA+X8Duax2zo
	HShHMLvPNp+uPU39H7LbYDSsOFIqt3MabiAbteqy+2q4iPexqY/W26O86LZGyoPQgK4gljF5lvfD2
	znIFkM1OZnpZKqti6Q0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfDB-005sMm-Oj; Tue, 08 Mar 2022 19:09:33 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfCo-005s97-8F
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:11 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 132so17282806pga.5
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WfeJ5Z/28d4DwwwwEjo+Xl8PsAuc47UIF+v9aMkJPaE=;
 b=g4Kn+knbxPcL2nDhbYO7LeofqDCYGIzYat8Uyvm4hBnk/d5333G7ySljmfyQYE/UX1
 Rw+7tkAdrzG/RAZVqapYRbjzY81SexLEMmsu+AwVUsO5KzHEud+nHcFxU7lkjYurEV2L
 AzXJs1J0+S7c90q2nf41z2xJzeZ0Vdp76lXtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WfeJ5Z/28d4DwwwwEjo+Xl8PsAuc47UIF+v9aMkJPaE=;
 b=PIRHVomcJrjzFat31pg+VIfSAOCGvONknrl1OzWP39NPcabyCw4940fJFY83KFrssG
 w2AAPEX6EJYZReUT3eVSCQnwO4/CS0DSSe/NMyAkF/ya4abYF+8VANhNQm31rD+tvtPg
 Devrz3YW6cMtO53wejt6pfhOKo8TqWcrg8aH9v3J4UlxTFFXOEZ44bPXFL8/L9IjCnba
 zBNRbeLjkvdUjJYxrnaCJLt+mxXI3j9qQjiwXRQdyHlkJEYv+erLEC/++xuE0NPPeuTR
 dO7z7+0vix2cQ7eMlCqvI2pxhrHps488bILv5aHzm7PzawFPzB2nQqG2lC/hXXxuQ6bA
 zBBA==
X-Gm-Message-State: AOAM533lKYNcjHxCz/8ysbpO9kcE2ZSesvurPHh/HopYeTVISEVpwcbJ
 rtXo8Qzt7WZscu9oYbnESfAQMA==
X-Google-Smtp-Source: ABdhPJzS5q/sqiq5fTsLk+gxrR8BJqiWX5haq34jcz+ml+GBnO2cRbA1Joomrpy3ASNpNH9qD/103A==
X-Received: by 2002:a63:fd4e:0:b0:378:7d6f:d7e9 with SMTP id
 m14-20020a63fd4e000000b003787d6fd7e9mr15410471pgj.440.1646766549462; 
 Tue, 08 Mar 2022 11:09:09 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 e11-20020a17090a280b00b001bf23a472c7sm3680868pjd.17.2022.03.08.11.09.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:08 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 00/15] rk3399: Clean up and enable DDR DVFS
Date: Tue,  8 Mar 2022 11:08:46 -0800
Message-Id: <20220308190901.3144566-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110910_328940_766E0A31 
X-CRM114-Status: GOOD (  14.49  )
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

Changes in v4:
 * Update .yaml to use more "default" entries, instead of free-form text
 * s/phandle-array/phandle/
 * Move to .../memory-controllers, update filename

Changes in v3:
 * Add |maxItems| for devfreq-events
 * Improve deprecation notes
 * Add Reviewed-by tags
 * Collect some Acked/Reviewed tags

Changes in v2:
 * Fix yamllint issues
 * Adapt to various review comments (use of *-hz, hyphens, node naming)
 * Add a few new bugfixes
 * Add some new properties (ported from downstream kernels) required for
   stability
 * Convert more properties from "cycles" to "nanoseconds"

Brian Norris (13):
  dt-bindings: devfreq: rk3399_dmc: Convert to YAML
  dt-bindings: devfreq: rk3399_dmc: Deprecate unused/redundant
    properties
  dt-bindings: devfreq: rk3399_dmc: Fix Hz units
  dt-bindings: devfreq: rk3399_dmc: Specify idle params in nanoseconds
  dt-bindings: devfreq: rk3399_dmc: Add more disable-freq properties
  PM / devfreq: rk3399_dmc: Drop undocumented ondemand DT props
  PM / devfreq: rk3399_dmc: Drop excess timing properties
  PM / devfreq: rk3399_dmc: Use bitfield macro definitions for ODT_PD
  PM / devfreq: rk3399_dmc: Support new disable-freq properties
  PM / devfreq: rk3399_dmc: Support new *-ns properties
  PM / devfreq: rk3399_dmc: Disable edev on remove()
  PM / devfreq: rk3399_dmc: Use devm_pm_opp_of_add_table()
  PM / devfreq: rk3399_dmc: Avoid static (reused) profile

Lin Huang (2):
  arm64: dts: rk3399: Add dfi and dmc nodes
  arm64: dts: rockchip: Enable dmc and dfi nodes on gru

 .../bindings/devfreq/rk3399_dmc.txt           | 212 ----------
 .../rockchip,rk3399-dmc.yaml                  | 384 ++++++++++++++++++
 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |   7 +
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  12 +
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi  |  28 ++
 .../boot/dts/rockchip/rk3399-op1-opp.dtsi     |  25 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  19 +
 drivers/devfreq/rk3399_dmc.c                  | 299 ++++++--------
 8 files changed, 609 insertions(+), 377 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml

-- 
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
