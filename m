Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFF0EE7B5E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 10:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8GCBN6x61F9Knw3b7EmzTSCpI118hlbufJTPPdlBPd0=; b=LoMFyyVCVU3Ixg
	wuqqHvJ/KG2hP1Ov/ZMoh/Qyre2t00/z/fqL/2JfesuP+tX/tAfngqRw9U2+SXE+HVCOiCm5u8DHx
	kzb9jYtNSYRXKwD/zQa6JnGmnrXRs4m2dUYKCQo+sRXaAeB3OtDENIRnyjH5M2EcZCCKMloDZkSpp
	/1DkN9UkG3c94o+694TRF+/6v+RJC/3esGjLmV2O6ilKohG6X0PrhRO/X2gaein+9okMCU4Gfsspj
	UoTbWNH4MRl/SLI/WDoHxnGFPXhDq7QtFl3LxJ9xS9E6BVCqxvR+pCPPedhowO9aBoCUUFE8d/o+p
	jXIUcsBueNcyFCcQfZyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnzGF-00HNTG-1q;
	Wed, 04 Oct 2023 10:37:47 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnzGC-00HNQx-0q;
	Wed, 04 Oct 2023 10:37:46 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 394AEoCZ026784;
	Wed, 4 Oct 2023 12:37:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=selector1; bh=CpI7neB
	XhCSjFx6tMjeMOMf+DEVU5RTw/WINZZr8x8k=; b=FqfspHoPTMg+H9TBxgX/CzP
	VNndxrfDVRa6vRMPU6nwgIXSd+U8PcGRsqkPZHK5dFOzoMmyflPjedA2mgruxcJZ
	pYvUIj5V+k97SEde0mkLRy32PHpx+ZSBgsE5s0V5n2xcM4ncc0wXPYX96HY5Pp6i
	sCp/JCVyyITge+04lBPa1sKNYuq2NJ3eK6xCcvnsl2ixgg5mcM+Rcbxbuse8T2Us
	YaV94BKrXQn+AiOmPs1kdCnkIhbovL2GI6aeBKiaeldxJOeBY3akHUohKj5zx0so
	e0EYyVN9DpdL1pBiPVJmljU6T8ePUo/J5a0/DJqSIKiNWzWNRDyc7fK84hrxuag=
	=
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tew80p71d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Oct 2023 12:37:29 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1C0B1100053;
	Wed,  4 Oct 2023 12:37:28 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0CDEC231510;
	Wed,  4 Oct 2023 12:37:28 +0200 (CEST)
Received: from localhost (10.201.20.120) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 4 Oct
 2023 12:37:27 +0200
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
Subject: [RFC 0/6] VP8 H1 stateless encoding
Date: Wed, 4 Oct 2023 12:37:14 +0200
Message-ID: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_02,2023-10-02_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_033744_629277_5190CB33 
X-CRM114-Status: GOOD (  13.27  )
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

Hi all,

Here is an RFC to support VP8 encoding using Hantro H1 hardware
of STM32MP25 SoCs (Verisilicon VC8000NanoE IP).
This work is derived from work done to support Rockchip RK3399
VPU2 in RFC [1] with a reshuffling of registers to match H1
register set.

This has been tested on STM32MP257F-EV1 evaluation board using
GStreamer userspace [2]:
gst-launch-1.0 videotestsrc num-buffers=500 ! video/x-raw,width=640,height=480 \
! v4l2slvp8enc ! queue ! matroskamux ! filesink location=test_vp8.mkv

For the sake of simplicity I have embedded here the RFC [1] before the
changes related to this exact RFC, all rebased on v6.6 + STM32MP25
hardware codecs support [3].

[1] https://lwn.net/ml/linux-media/20230309125651.23911-1-andrzej.p@collabora.com/
[2] https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/3736
[3] https://patchwork.kernel.org/project/linux-media/list/?series=789861

Best regards,
Hugues.


Andrzej Pietrasiewicz (2):
  media: uapi: Add VP8 stateless encoder controls
  media: hantro: add VP8 encode support for Rockchip RK3399 VPU2

Hugues Fruchet (4):
  media: hantro: add h1 vp8 encode support
  media: hantro: add VP8 encode support for STM32MP25 VENC
  media: hantro: h1: NV12 single-plane support
  media: hantro: add NV12 single-plane support for STM32MP25 VENC

 drivers/media/platform/verisilicon/Makefile   |    3 +
 drivers/media/platform/verisilicon/hantro.h   |   10 +
 .../platform/verisilicon/hantro_boolenc.c     |   69 +
 .../platform/verisilicon/hantro_boolenc.h     |   21 +
 .../media/platform/verisilicon/hantro_drv.c   |   15 +-
 .../platform/verisilicon/hantro_h1_jpeg_enc.c |   42 +-
 .../platform/verisilicon/hantro_h1_regs.h     |   71 +-
 .../platform/verisilicon/hantro_h1_vp8_enc.c  | 1589 +++++++++++++++++
 .../media/platform/verisilicon/hantro_hw.h    |   93 +
 .../media/platform/verisilicon/hantro_v4l2.c  |    5 +-
 .../media/platform/verisilicon/hantro_vp8.c   |  118 ++
 .../verisilicon/rockchip_vpu2_hw_vp8_enc.c    | 1574 ++++++++++++++++
 .../platform/verisilicon/rockchip_vpu2_regs.h |    1 +
 .../platform/verisilicon/rockchip_vpu_hw.c    |   23 +-
 .../platform/verisilicon/stm32mp25_venc_hw.c  |   35 +-
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |   13 +
 drivers/media/v4l2-core/v4l2-ctrls-defs.c     |    5 +
 include/media/v4l2-ctrls.h                    |    2 +
 include/uapi/linux/v4l2-controls.h            |   91 +
 include/uapi/linux/videodev2.h                |    3 +
 20 files changed, 3755 insertions(+), 28 deletions(-)
 create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.c
 create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.h
 create mode 100644 drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c
 create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu2_hw_vp8_enc.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
