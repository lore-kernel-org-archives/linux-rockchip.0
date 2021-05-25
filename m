Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B136C2B9F8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:43:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1709613E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:42:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1709613E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xuRNxSa6b+JoTFmPjVZKX/H7ufvmf4Et1L2cuwsgbO4=; b=QNMLq0IzXX7Pra
	BGbwRVFouArsLJy+ywIeIa+T1x+BRNPNZezRVWvq+AXusyeL3d8MHva34Lh/aLt6krNOhfwxGPm5H
	v5SIDlQLFJG37+79yb96GYOLS5MfZW3B7FIvaoQtyiNhPNCVSKdR7VbHYTpm+HFNjaxGBMgx7PNnk
	GxAF77Mz+R5baawYrXG67+jdlJdCNCE0q/HzqOpyGqkmlpUeWdI6w5gBiUvjpq3uL6a+CRRAL0GWs
	CIcc65kEDNaDA6cTzXTTwQ52LzTBm89YNVHTuYHiMjjGTUfo1unDT58J7uSEtRTBg8n73K9SFFJoV
	16lFVnWqma+o2H9C+Q+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZCn-006642-TS; Tue, 25 May 2021 15:42:53 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtP-005xMd-Kv; Tue, 25 May 2021 15:22:53 +0000
Received: by mail-ej1-x62f.google.com with SMTP id et19so40920787ejc.4;
 Tue, 25 May 2021 08:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rJhAY+6M6l3lkNZ5wHTPFgZbqVZ72qbN/7DTJLowWC4=;
 b=D/LO853/p6Nl37MX49Fv/VQHdZCSBjh0mK2hmYEGzTVGI7snRZimKGM834bmy4vYTj
 dZFlcoOPLWyfmzdu3Zqh6IaluSV7CBbOMicdhaqDmjd7J34UUpk2g+IjgpFokjxIDecH
 gF89kI6Q2YpxP7PjrAa81O9MnaZPR8QDCfYxngngpXVO2TjDLUjlDus4+/DcwHh4jO2w
 nV3lxcssUfiUCrYwhWoEPg77KPE/YU27CRg8DRNd2wiPzg2CwokxnwsMLqE4QaCjQ7at
 RFDWwKKhDEjXvladAm3hbPOZkZTZ57qJ8CY6Ck5kfDFel+YVdV/s+O6x9POV53uO2DQQ
 iZag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rJhAY+6M6l3lkNZ5wHTPFgZbqVZ72qbN/7DTJLowWC4=;
 b=BWs8AJVNwbesGK1ePuxVrBevDF5Yz/sGDq3EbV1G/auo00qsBe4YSx7Vk5zMDaiVvi
 geQHU7if+81hmj2V9v9zxSCN1fVriaa7zundaewsGpDF1mUUj/5l0Pv5zbS8/L715Qeb
 paDEJTmR7B42g0bnpw8/LeYLXv282xNtrJSqHJ1FEoEpB8TMYx3yDCqnrZ9f3Ca2a/iN
 ooyRHPJfBYonD34S+xl4O6N0G0P+5lap0cRp9z3w9P6Nc4ucuQZN+Dmo8156YjcKEPeU
 9yj9rLd9L1XRgcjHyo5zlIqkIlIptHxfn5OUGknZIWfe0cXbhxShFzuTTJihza5Zksgt
 LsSQ==
X-Gm-Message-State: AOAM533jIhdpu8mcGYKz1lnsGOyNE+hDAZurvqr5LqCiCXAxjmgzqSCw
 V4/Bjf+Gy8qjEgohkpk1RA==
X-Google-Smtp-Source: ABdhPJzn83Td5nrvizOLNmEZVYvMJ+nRANBC4XkmMo16bcPJDx0FE2Y1K6MCW69SZLYQ5kRroa8O8w==
X-Received: by 2002:a17:906:f20e:: with SMTP id
 gt14mr28847790ejb.368.1621956169435; 
 Tue, 25 May 2021 08:22:49 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:48 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 00/10] Add support for older Rockchip SoCs to V4L2 hantro and
 rkvdec drivers
Date: Tue, 25 May 2021 17:22:15 +0200
Message-Id: <20210525152225.154302-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082251_743436_9C06AC97 
X-CRM114-Status: GOOD (  15.22  )
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

Hi list,

this series adds support for older Rockchip SoCs (RK3036, RK3066, RK3188
and RK322x) to the existing V4L2 video decoder/-encoder drivers - namely
hantro and rkvdec.
They can be used as-is or with very little modifications.

In preparation to that patches 1-3 add power-controller support for RK3036
and RK322x, since both drivers rely on pm. The drivers for them exist
already in the common Rockchip pm driver, they just haven't be added to
the device trees yet.

Thanks for your feedback,
Alex.

Alex Bee (10):
  ARM: dts: rockchip: add power controller for RK322x
  ARM: dts: rockchip: add power controller for RK3036
  dt-bindings: mfd: syscon: add Rockchip RK3036/RK3228 qos compatibles
  media: hantro: add support for Rockchip RK3066
  media: hantro: add support for Rockchip RK3036
  ARM: dts: rockchip: add vpu nodes for RK3066 and RK3188
  ARM: dts: rockchip: add vpu node for RK322x
  media: dt-bindings: media: rockchip-vpu: add new compatibles
  ARM: dts: rockchip: add vdec node for RK322x
  media: dt-bindings: media: rockchip-vdec: add RK3228 compatible

 .../bindings/media/rockchip,vdec.yaml         |  10 +-
 .../bindings/media/rockchip-vpu.yaml          |  33 +++-
 .../devicetree/bindings/mfd/syscon.yaml       |   2 +
 arch/arm/boot/dts/rk3036.dtsi                 |  51 ++++++
 arch/arm/boot/dts/rk3066a.dtsi                |   4 +
 arch/arm/boot/dts/rk3188.dtsi                 |   5 +
 arch/arm/boot/dts/rk322x.dtsi                 | 139 ++++++++++++++-
 arch/arm/boot/dts/rk3xxx.dtsi                 |  12 ++
 drivers/staging/media/hantro/hantro_drv.c     |   2 +
 drivers/staging/media/hantro/hantro_hw.h      |   2 +
 drivers/staging/media/hantro/rk3288_vpu_hw.c  | 165 ++++++++++++++++++
 11 files changed, 414 insertions(+), 11 deletions(-)


base-commit: 5d765451c2409e63563fa6a3e8005bd03ab9e82f
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
