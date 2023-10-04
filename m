Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75F64E776F4
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 09:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0czMnuPAOENzg8bAIFcqp/QR5MSOVL3vpN/x3qvpSkg=; b=Jhw/BC6UuxBIvO
	d40SYw/dYJGj2AlTl4bJML8KoXXbKLSIsiUiecv/+rxVD4BAmzY+Zloi/bvGr3TKwMmizgy6TiYW9
	jrloSveIXVtLnh8DDx5QcsFpmAKogu6JMb5vmE4ckh3hyFus+HGIW/o4nMgAQUttuA29gXAfADkbv
	KIldHu8H89W3reOJsoG9WzNtm/Lh+1g7LFFx32RGDPOeUsd1FEZMOaa5APWZ6V05cxqOEOMpw6Dkc
	OXprIjvMRcwBk3bTMlIqSEfUKPbht190KcEOgo7SzKy0Zep1tnpDcuQMurAWQYl9zv3rexEeK5nKp
	IPAJ+10Xb7+ADqA4pkDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxzU-00H1B5-1w;
	Wed, 04 Oct 2023 09:16:24 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxzR-00H16p-0o;
	Wed, 04 Oct 2023 09:16:23 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39450iXO026794;
	Wed, 4 Oct 2023 11:16:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=H9wD0gT
	t+mkq/DOzMMafrG+djMfE5iECoB38jzPVI5w=; b=OUB8C4LeEMgys6L8eCVKok/
	ytJ+t6z6jGwmthPPKi/+XRrp/BrcP0Etnmma8coqiMFrVpdmp1I6hyMmK4n6zeh8
	UkwWzt02uCt5b/Exr3YSpBp2DkaIxSlfwiMnduNkUxkOkAXRiATZmBCK4L5Lr35i
	JcomaICqZlbvzo4EIbsxAM+03xmToUA9gRkeXGvvOYCmhg0PMDYsFyN/8IZhDaFp
	R/R4cxvzN3oEVUp5sU+IRNWmRHV0WrB91D3pbWl06xCdRM7Vs2K0quu+HjXCkcqG
	BiD086epi3+Tr8MF93e9ol6S+QrRmDImvhnO290K1OVLFE5w0hLFCT6KqtGU5WQ=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tew80nsd5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Oct 2023 11:16:00 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0B78100053;
	Wed,  4 Oct 2023 11:15:58 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C39A422A6DB;
	Wed,  4 Oct 2023 11:15:58 +0200 (CEST)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 4 Oct
 2023 11:15:58 +0200
From: Hugues Fruchet <hugues.fruchet@foss.st.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel
	<p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans
 Verkuil <hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Andrzej Pietrasiewicz
	<andrzej.p@collabora.com>
Subject: [PATCH 0/7] Add support for video hardware codec of STMicroelectronics STM32 SoC series
Date: Wed, 4 Oct 2023 11:15:45 +0200
Message-ID: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_01,2023-10-02_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_021621_705243_44F417DC 
X-CRM114-Status: GOOD (  11.34  )
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

Hugues Fruchet (7):
  dt-bindings: media: Document STM32MP25 VDEC video decoder
  media: hantro: add support for STM32MP25 VDEC
  dt-bindings: media: Document STM32MP25 VENC video encoder
  media: hantro: add support for STM32MP25 VENC
  arm64: dts: st: add soc & rifsc structure to stm32mp255
  arm64: dts: st: add video decoder support to stm32mp255
  arm64: dts: st: add video encoder support to stm32mp255

 .../bindings/media/st,stm32mp25-vdec.yaml     |  56 +++++++
 .../bindings/media/st,stm32mp25-venc.yaml     |  56 +++++++
 arch/arm64/boot/dts/st/stm32mp251.dtsi        |  12 ++
 arch/arm64/boot/dts/st/stm32mp255.dtsi        |  21 +++
 drivers/media/platform/verisilicon/Kconfig    |  14 +-
 drivers/media/platform/verisilicon/Makefile   |   4 +
 .../media/platform/verisilicon/hantro_drv.c   |   4 +
 .../media/platform/verisilicon/hantro_hw.h    |   2 +
 .../platform/verisilicon/stm32mp25_vdec_hw.c  |  92 +++++++++++
 .../platform/verisilicon/stm32mp25_venc_hw.c  | 147 ++++++++++++++++++
 10 files changed, 405 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml
 create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-venc.yaml
 create mode 100644 drivers/media/platform/verisilicon/stm32mp25_vdec_hw.c
 create mode 100644 drivers/media/platform/verisilicon/stm32mp25_venc_hw.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
