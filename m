Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7417CC46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 12:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC7gyM0N9Po29n7MOvPYmqLhddKEsdyHTrCQxtyqSIY=; b=PBxKfHO2hpQo/A
	Jxgf1MjoGeMNc5rQb01S3gY/MMjicRUMFkh9XQ8BtHaWB5iZwN8GIsNyUNMpftI6u9MACnTW3MSjk
	YEXJXxnjjYETMBuQqOHXaEeYY6GiEHq2yMK4ebHM84B4Jgl5wN6Y71poIRFr5qHuU9J1TC7cg7JX0
	fapAni3CEr5uBO6RJ1ZZfaTmcxcrtvS9dd6dIKXE/70kB17Ivi35pJNlZV6Shg3dja0gQuGn4k9R6
	KKL0YAmQ7XvwpqeIkCwTEy/9hlQQzSJKo+kXgWkNAc1wflIXAVS5Nw4WYW1aZ2CoElL0zXYJyx7jg
	LTmoVo5w7VXOKvzqiOtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rScUS-003Fwc-2q;
	Wed, 24 Jan 2024 12:36:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rScUP-003Ftp-0n;
	Wed, 24 Jan 2024 12:36:23 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40O9u063008801;
	Wed, 24 Jan 2024 13:36:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=BGBC9tF/Cd6rbj5dyV7/fk/vzSioDaHQikjSTIAEr4o=; b=aK
	J3dQEWjWMuf109lvExHWEoekq0n8ACVGJy1e/sKLn9fY4mQguLUV8NrHn2iVLoCq
	qz7P35OqCmw5Rug03tjpFjBoiI0E9jgCRI6/NLq8ZaGO+9O4tWp6M4TcLMRS+ZyF
	CW9LrscJ7Dbp6nGeMF2S0YxpC2QnR1k+5qicqbbeYebMe1QWb39Uk64zvQ4/c8eN
	YcIVBW1tVjkd4dRqzDBn3UlfW3o/peCm6y1phJzLIs2eI5pRC99VmS1xIFq/TeC9
	ZRLYUAGlfwHU7fa2pu3ql/8tsNnEwOSWTtc/lxhMl3rQQGz2DMTYfdN8aRGyfInO
	zUGH1IDwuML7fyCfBdMw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vtmf9u4rm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jan 2024 13:36:06 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A6BCA10005C;
	Wed, 24 Jan 2024 13:36:04 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9822C2D3CC9;
	Wed, 24 Jan 2024 13:36:04 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 24 Jan
 2024 13:36:03 +0100
Message-ID: <f7f8344c-7a72-4450-81c7-8bff4569f044@foss.st.com>
Date: Wed, 24 Jan 2024 13:36:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v6 0/5] Add support for video hardware codec of
 STMicroelectronics STM32 SoC series
Content-Language: en-US
To: Hugues Fruchet <hugues.fruchet@foss.st.com>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Nicolas Dufresne
	<nicolas.dufresne@collabora.com>,
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
        <linux-stm32@st-md-mailman.stormreply.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>
CC: Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>
References: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20240110104642.532011-1-hugues.fruchet@foss.st.com>
X-Originating-IP: [10.201.21.122]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-24_06,2024-01-24_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_043621_755762_7EDCFFBA 
X-CRM114-Status: GOOD (  20.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi

On 1/10/24 11:46, Hugues Fruchet wrote:
> This patchset introduces support for VDEC video hardware decoder
> and VENC video hardware encoder of STMicroelectronics STM32MP25
> SoC series.
> 
> This initial support implements H264 decoding, VP8 decoding and
> JPEG encoding.
> 
> This has been tested on STM32MP257F-EV1 evaluation board.
> 
> ===========
> = history =
> ===========
> version 6:
>     - Use a single file for VDEC and VENC variants as suggested by Alex Bee
>     - Fix some typos raised by Sebastian Fricke
>     - Add Krzysztof Kozlowski Reviewed-by
> 
> version 5:
>     - Precise that video decoding as been successfully tested up to full HD
>     - Add Nicolas Dufresne Reviewed-by
> 
> version 4:
>     - Fix comments from Nicolas about dropping encoder raw steps
> 
> version 3:
>     - Fix remarks from Krzysztof Kozlowski:
>      - drop "items", we keep simple enum in such case
>      - drop second example - it is the same as the first
>     - Drop unused node labels as suggested by Conor Dooley
>     - Revisit min/max resolutions as suggested by Nicolas Dufresne
> 
> version 2:
>     - Fix remarks from Krzysztof Kozlowski on v1:
>      - single video-codec binding for both VDEC/VENC
>      - get rid of "-names"
>      - use of generic node name "video-codec"
> 
> version 1:
>    - Initial submission
> 
> Hugues Fruchet (5):
>    dt-bindings: media: Document STM32MP25 VDEC & VENC video codecs
>    media: hantro: add support for STM32MP25 VDEC
>    media: hantro: add support for STM32MP25 VENC
>    arm64: dts: st: add video decoder support to stm32mp255
>    arm64: dts: st: add video encoder support to stm32mp255
> 

Sakari, Mauro, do you plan to take patches 1 to 3 on your next branch ?
I will take DT pacthes in mine but I would like to be sure that 
dt-binding will be applied in a next branch (for the next v6.9 cycle);

regards
Alex


>   .../media/st,stm32mp25-video-codec.yaml       |  49 +++++
>   arch/arm64/boot/dts/st/stm32mp251.dtsi        |  12 ++
>   arch/arm64/boot/dts/st/stm32mp255.dtsi        |  17 ++
>   drivers/media/platform/verisilicon/Kconfig    |  14 +-
>   drivers/media/platform/verisilicon/Makefile   |   3 +
>   .../media/platform/verisilicon/hantro_drv.c   |   4 +
>   .../media/platform/verisilicon/hantro_hw.h    |   2 +
>   .../platform/verisilicon/stm32mp25_vpu_hw.c   | 186 ++++++++++++++++++
>   8 files changed, 284 insertions(+), 3 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-video-codec.yaml
>   create mode 100644 drivers/media/platform/verisilicon/stm32mp25_vpu_hw.c
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
