Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A141CD6912
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 09:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JX91ND9CFA/CNxt2q6nI6HcyhvKQl/Pq1hTGAjWRc1Q=; b=SnASVJ4VInwJaV
	CdkIzvJjBudarN5pz8QqE+gbq5Rvqwt+TjFQOhbuAbnGSpRhTiYkwpUbyn+QLtCH2pGlw+j60Ougj
	0s4yQhTegQfNz61UHK+2+pDbRJMO+V578Zwobb9dv7m8HL0RI4+ajyEfVUQh2geI8kMcx3wapgzLO
	WSKwchFxmsVHHHgwiY7yHQW/iwJs48G58O64N9JokpZ4q6Q90lH2f5HaGIuXlMO8o2PM/r49XNAUX
	pt04kTHzNbAbLtOXVfXczwnqf2ha/bFZFyzoe+kziyXfh+lHug8mkwXLv9L9sZBg0nkqDqnhCzqmj
	HFyyMpvA/E1AIhnOkIsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq8rc-00Cuq7-1e;
	Tue, 10 Oct 2023 09:17:16 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq8rW-00CumO-2M;
	Tue, 10 Oct 2023 09:17:12 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39A86UJj026211;
	Tue, 10 Oct 2023 11:16:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=bQ+mwMv
	2GMXDQf764N7qmXyJrCQeTnM9Hg+Q5Uk+ITA=; b=fncGbiBcXl7cajFxjY1ruYt
	/LXieHxa9Q0iv/zqnr4BVrQg5kgegreoqT/L+sgqXLb/y9ybVhIaydBIp6u642lk
	Dtfcv5U4ChtnTf7GmitNHh+5H4EWYzG+0zG8m1SKDLFSaxAa+sg5Cu50bRO3S77k
	h+IRMHWJjcigmH+COIP1CEBxo2h1X5PRvkV5WHLbzaBQb070qp5RJK6pELEE+yaR
	sYthF9lqZINrTEk/jbhcE3nPdm9iUjTJSNEI7OpMmk56CwUb0HQC+5+abYMPwTW1
	SzEDRyJHSKOpK7yTNLUGlZAWGGqqKXzCM/yYq5U5iJzCw1yBQmGTW17OPywtODg=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tkj9gs37j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 Oct 2023 11:16:48 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D1B6C100058;
	Tue, 10 Oct 2023 11:16:46 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BE4F621BF69;
	Tue, 10 Oct 2023 11:16:46 +0200 (CEST)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 10 Oct
 2023 11:16:46 +0200
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
Subject: [PATCH v2 0/5] Add support for video hardware codec of STMicroelectronics STM32 SoC series
Date: Tue, 10 Oct 2023 11:16:38 +0200
Message-ID: <20231010091643.3666290-1-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-10_04,2023-10-09_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_021711_062256_B7087FD4 
X-CRM114-Status: GOOD (  12.79  )
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

 .../media/st,stm32mp25-video-codec.yaml       |  58 +++++++
 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  12 ++
 arch/arm64/boot/dts/st/stm32mp255.dtsi        |  17 ++
 drivers/media/platform/verisilicon/Kconfig    |  14 +-
 drivers/media/platform/verisilicon/Makefile   |   4 +
 .../media/platform/verisilicon/hantro_drv.c   |   4 +
 .../media/platform/verisilicon/hantro_hw.h    |   2 +
 .../platform/verisilicon/stm32mp25_vdec_hw.c  |  92 +++++++++++
 .../platform/verisilicon/stm32mp25_venc_hw.c  | 147 ++++++++++++++++++
 9 files changed, 347 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-video-codec.yaml
 create mode 100644 drivers/media/platform/verisilicon/stm32mp25_vdec_hw.c
 create mode 100644 drivers/media/platform/verisilicon/stm32mp25_venc_hw.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
