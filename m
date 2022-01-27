Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38D70C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TbGWsuPp0bh2o7WrjHdJWDhH7wbEZL7PMT6cEj10Hvk=; b=Qp0sR28EM3cIWC
	ZBGQ/7ITi4qkSc2qCr4rXs8Gdn3Q6lVUcoyANgZLeFqfsw4tjRyI3BaMfk5qJ+jGZV6QFM+VTIX93
	/MktEDJoPZzvVHmCPZ+IFufU9pJriRPRyIr8K8a/D0dYyQS5iy/topQT+TfoUU2Ci0+Pdj/Yrt4gR
	b/PuJm24TNDLaSb55ndIoiiKUftaWg2xY6Wuqg8GMwDXNBbjJWmFRbdxnBa3mADZ4FLU5kGn0Zx9r
	fHwO43APiN0D4qVkTeXTbKhw/IygAyBomp0Q3KJ1WR+mTYIByC+T0hpPDiznvNIvEkLn981lzV3Sa
	yc59//o8YOyHP4jG6pWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDsl-00HGUM-OE; Thu, 27 Jan 2022 23:08:47 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsR-00HGHe-5o
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:28 +0000
Received: by mail-pf1-x434.google.com with SMTP id u130so4371414pfc.2
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/1uOFTgg0x7nxOozmt+E9oLAD0yJmH2M0jmKFxZDwp8=;
 b=N5XEoUM5GPx0kQt4THwu9A+kK+DZR0wMVHnyygjwUG5aaFoDL+gOadyxplbQetMhe7
 wrCn7wY6jwGkNG0PfOk50FCELTNuv5Ef6BAmJkfoYlHmzbA34qzN6oU2TbxPfDvxZ87u
 PhwuMG6XcbV1qCtwINtTlV/2e77vS1BRriaxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/1uOFTgg0x7nxOozmt+E9oLAD0yJmH2M0jmKFxZDwp8=;
 b=rTRizTFzPy7vWmrvEpKHJ0nqE+ky91BTTEnF8UcHBBq3mICHeznIkLZjoZ+nTBZsyL
 nH590R0nyHukURymJMQs6S9z/VwjdiF57srFyKJ8EVCdO/RE7Si3Wnrqm1fAxseXtjyQ
 geD5gG4Qc/LA+vP4goMKASQPXWrQHnx/5r33moxW/v6Y51vs6ClSTyaNsqfF/Qt4LLrc
 NdK0UHiU5IQACZWfML/r9vroQH4KFTEJTFQhbIjn70WkkS8I9N6fcsiKVNBZMYVQL1b/
 CjbrK/n+EbNQ2DzTkoM/lo/rIeuMKU/ztmPBCXoA6BsYf+tYSx1eAMl8VuKBBizrMLX8
 Hbyg==
X-Gm-Message-State: AOAM532/QOotxTAZqoCgvVRT2s1ZJh4rzZ2JrdjjxJI5outGlRfBruNk
 Hngj0Nz23RFkYPpoGZZbzcqXEw==
X-Google-Smtp-Source: ABdhPJyhsxMBgopZJQ9Yzo2MIciHeAMHqFWshYvoQ8YUfc42nVNLVluvkoFoX6uSfTwD6O2dKCWxcQ==
X-Received: by 2002:a63:6ac3:: with SMTP id f186mr4322420pgc.81.1643324904727; 
 Thu, 27 Jan 2022 15:08:24 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id b5sm20269235pgl.22.2022.01.27.15.08.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:24 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 00/15] rk3399: Clean up and enable DDR DVFS
Date: Thu, 27 Jan 2022 15:07:11 -0800
Message-Id: <20220127230727.3369358-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150827_256618_8BA5A422 
X-CRM114-Status: GOOD (  13.36  )
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

Changes in v2:
 - Fix yamllint issues
 - Adapt to various review comments (use of *-hz, hyphens, node naming)
 - Add a few new bugfixes
 - Add some new properties (ported from downstream kernels) required for
   stability
 - Convert more properties from "cycles" to "nanoseconds"

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
 .../bindings/devfreq/rk3399_dmc.yaml          | 370 ++++++++++++++++++
 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |   7 +
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi |  12 +
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi  |  28 ++
 .../boot/dts/rockchip/rk3399-op1-opp.dtsi     |  25 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  19 +
 drivers/devfreq/rk3399_dmc.c                  | 299 +++++++-------
 8 files changed, 595 insertions(+), 377 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
 create mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml

-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
