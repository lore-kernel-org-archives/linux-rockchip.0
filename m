Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C7B0C46CCD
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 08:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tToUJDBjnkqW17UeKci4Df8jsdBSIm54uBPRwkRktpU=; b=aak/lKhc1zQET7
	fQLD+C0ZFMO3bH/2Joa3LCRZuqBbCa+Uc7lHMeN+A0+1yDJaf6sn+CV/MyGpvrltJgbaNOZUlopnj
	PSzPSP4fjBva/3l+Vi+pJ3JrE3x+42HpyQtFJFzEXb9SXqDpY9HoPDX4FxVAOa5kEyGKyHrpgOIyp
	1f/utR9r7YyQbA8Cs3S5EtdQmas6pbFoLy7tULRLQCOqzGeu9LbkZr125dGQl6p9qevmNsip4PSJT
	hEIqi/HzADvbRd/8A/Ov6OYo7kG2e/g8W9YwHLiSGGttqDa8pKL0LSiKH/1D5rhs3dXR+uJE7WQoa
	5vKoP9YQE0mBDn3Poeeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsEZ-00Gcqj-0R;
	Wed, 20 Dec 2023 08:47:19 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFsET-00Gcmx-1G;
	Wed, 20 Dec 2023 08:47:15 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3BK6A9w9026700;
	Wed, 20 Dec 2023 09:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=cyfd0rf
	aAV6O1iXqR5snIedqjSoG4Q/E7ZuiVTF+bro=; b=RV9+YWPZNrjlUyUfwrjs6dp
	tC9o55EJlpBvVDrJ2j5X4D5E6W04WKwX4S9ArqGU3Yb5Vk+ecXG+X3M7OyB3CGCL
	0G1pH4I40LTQMyn++6U4xWoomvJZe54POIw+id0elZ4w/79ucC4DO5bg2ZEX9H1Y
	jEkD/T92ZAW+8606u+2YonNrnQ5aSIf+Ib1Fz9UBqz4QFSTvZxv3Tffc7xvqkebr
	CiLKUVMj/6XXMlJlQTFJkrh2OMvzoCn1BivqcYFhn+2DeR+TZqmmAaIlT0S9BLLl
	LUv7rm8XTTTnhzgJGlSgXQtyxZG5zP0ygAbsO9eSGhFxdoZ5lt/QngxMDd20xyA=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3v11w901xb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Dec 2023 09:46:46 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2C7BE100057;
	Wed, 20 Dec 2023 09:46:45 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0BF3E20A75C;
	Wed, 20 Dec 2023 09:46:45 +0100 (CET)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 20 Dec
 2023 09:46:44 +0100
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Sakari Ailus
	<sakari.ailus@linux.intel.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Mauro
 Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Marco Felsch
	<m.felsch@pengutronix.de>,
        Adam Ford <aford173@gmail.com>
Subject: [PATCH v3 0/4] Add support for video hardware codec of STMicroelectronics STM32 SoC series
Date: Wed, 20 Dec 2023 09:46:36 +0100
Message-ID: <20231220084641.2076428-1-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-20_02,2023-12-14_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_004713_724833_67470BE3 
X-CRM114-Status: GOOD (  13.21  )
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

This patchset introduces support for VDEC video hardware decoder
and VENC video hardware encoder of STMicroelectronics STM32MP25
SoC series.

This initial support implements H264 decoding, VP8 decoding and
JPEG encoding.

This has been tested on STM32MP257F-EV1 evaluation board.

===========
= history =
===========
version 3:
   - Fix remarks from Krzysztof Kozlowski:
    - drop "items", we keep simple enum in such case
    - drop second example - it is the same as the first
   - Drop unused node labels as suggested by Conor Dooley
   - Revisit min/max resolutions as suggested by Nicolas Dufresne

version 2:
   - Fix remarks from Krzysztof Kozlowski on v1:
    - single video-codec binding for both VDEC/VENC
    - get rid of "-names"
    - use of generic node name "video-codec"

version 1:
  - Initial submission

Hugues Fruchet (5):
  dt-bindings: media: Document STM32MP25 VDEC & VENC video codecs
  media: hantro: add support for STM32MP25 VDEC
  media: hantro: add support for STM32MP25 VENC
  arm64: dts: st: add video decoder support to stm32mp255
  arm64: dts: st: add video encoder support to stm32mp255

 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  12 ++
 arch/arm64/boot/dts/st/stm32mp255.dtsi        |  17 ++
 drivers/media/platform/verisilicon/Kconfig    |  14 +-
 drivers/media/platform/verisilicon/Makefile   |   4 +
 .../media/platform/verisilicon/hantro_drv.c   |   4 +
 .../media/platform/verisilicon/hantro_hw.h    |   2 +
 .../platform/verisilicon/stm32mp25_vdec_hw.c  |  92 +++++++++++
 .../platform/verisilicon/stm32mp25_venc_hw.c  | 147 ++++++++++++++++++
 8 files changed, 289 insertions(+), 3 deletions(-)
 create mode 100644 drivers/media/platform/verisilicon/stm32mp25_vdec_hw.c
 create mode 100644 drivers/media/platform/verisilicon/stm32mp25_venc_hw.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
