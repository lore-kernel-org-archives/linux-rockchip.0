Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D08F7E93709
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 11:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AbnN1HV35O+I7SeqjuOlnIKoqvJE7jL6w821lYQYy6E=; b=5ATz0rqefT+eVn
	VMRra3RzEYyA4zAixbBFz2Bq8LGrpInpds8giCCkBr1uqruHlNJUYuYX6bObTr/kBHXl8dDm5haAT
	PJEHmYQhW4BLxkL1TQ6AiVm9ZtT1o43H1OJ8CL8ZxcKELcMDbt+0vOStR7RJkZ/Uf0IDhP2WUi3i6
	dfSBS+L7sJumvqYMhU2fpTFUDMkqEcbhORFNCmr38NK2qe0KEikKGhiCOFQLEexVPMc60mj4P4gtl
	hgoc0N1el2hCa1tOJ3ccdWwE8unPft5bGa6NrVQKMV0OqBg2ghOMMp0NB3nsjqiIeeX3gznmqXJUD
	DhC4cSO0Bdn3ZQuvOIFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoMol-002PtF-03;
	Thu, 05 Oct 2023 11:46:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoMoh-002PpQ-22;
	Thu, 05 Oct 2023 11:46:57 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 395AZB2Z025382;
	Thu, 5 Oct 2023 13:46:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=4xkLY2sFZ6bAzP0C1Okvtq5k6MsL61eKVQtjQb/uCzI=; b=ih
	YJGuaoo6cj7jDjv8uH+x/yHLAIAYkgZMQObGOUiuNk1/TqYdrHiovCWuZw64s+rh
	x/a9xMB1yUcVzidue2x3rz3sAPaSSscGSZw8nOQj+SkUtnTf6J91iUPeE5JhqVyH
	8AdXjupa7lH5IgiQ9sUDFQZXT/5SdNstWBZAHRsmnHnQKhekScWINLECzhgc6oA9
	twXbm+xtMTeT3Bn7rdsh8zklNFhgyItrygbhaXLqkU/nN6QBJzsXTFOOxXWy1X0d
	vBvWEgUvR5mbwWhNEi4BwNCu3syuhstUFx2AiuuUi/kEADr9kLJnMQ3hoAFwgNZf
	2s6m4Xb/hrFLoh0IBW9w==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3thuh409b3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 13:46:34 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF7D010005C;
	Thu,  5 Oct 2023 13:46:32 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B19E124AAD8;
	Thu,  5 Oct 2023 13:46:32 +0200 (CEST)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 5 Oct
 2023 13:46:31 +0200
Message-ID: <a4ae0d0a-2a80-45d7-9527-928e26fef4ef@foss.st.com>
Date: Thu, 5 Oct 2023 13:46:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RFC 0/6] VP8 H1 stateless encoding
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
CC: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
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
        <linux-rockchip@lists.infradead.org>,
        Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>
References: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
 <20231005-bleach-unknotted-9b11443959b1@spud>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <20231005-bleach-unknotted-9b11443959b1@spud>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-05_08,2023-10-05_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_044655_965733_287A9009 
X-CRM114-Status: GOOD (  17.93  )
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

Hi Conor,

My fault, mistake on "to" when sending mail, please ignore this serie 
there are no bindings/DT in it.
Sorry for disturbance.

Best regards,
Hugues.

On 10/5/23 12:59, Conor Dooley wrote:
> On Wed, Oct 04, 2023 at 12:37:14PM +0200, Hugues Fruchet wrote:
>> Hi all,
>>
>> Here is an RFC to support VP8 encoding using Hantro H1 hardware
>> of STM32MP25 SoCs (Verisilicon VC8000NanoE IP).
>> This work is derived from work done to support Rockchip RK3399
>> VPU2 in RFC [1] with a reshuffling of registers to match H1
>> register set.
>>
>> This has been tested on STM32MP257F-EV1 evaluation board using
>> GStreamer userspace [2]:
>> gst-launch-1.0 videotestsrc num-buffers=500 ! video/x-raw,width=640,height=480 \
>> ! v4l2slvp8enc ! queue ! matroskamux ! filesink location=test_vp8.mkv
>>
>> For the sake of simplicity I have embedded here the RFC [1] before the
>> changes related to this exact RFC, all rebased on v6.6 + STM32MP25
>> hardware codecs support [3].
> 
> I don't see any bindings etc here, what is it that you think I would
> care about looking at in this RFC series?
> 
> Thanks,
> Conor.
> 
>>
>> [1] https://lwn.net/ml/linux-media/20230309125651.23911-1-andrzej.p@collabora.com/
>> [2] https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/3736
>> [3] https://patchwork.kernel.org/project/linux-media/list/?series=789861
>>
>> Best regards,
>> Hugues.
>>
>>
>> Andrzej Pietrasiewicz (2):
>>    media: uapi: Add VP8 stateless encoder controls
>>    media: hantro: add VP8 encode support for Rockchip RK3399 VPU2
>>
>> Hugues Fruchet (4):
>>    media: hantro: add h1 vp8 encode support
>>    media: hantro: add VP8 encode support for STM32MP25 VENC
>>    media: hantro: h1: NV12 single-plane support
>>    media: hantro: add NV12 single-plane support for STM32MP25 VENC
>>
>>   drivers/media/platform/verisilicon/Makefile   |    3 +
>>   drivers/media/platform/verisilicon/hantro.h   |   10 +
>>   .../platform/verisilicon/hantro_boolenc.c     |   69 +
>>   .../platform/verisilicon/hantro_boolenc.h     |   21 +
>>   .../media/platform/verisilicon/hantro_drv.c   |   15 +-
>>   .../platform/verisilicon/hantro_h1_jpeg_enc.c |   42 +-
>>   .../platform/verisilicon/hantro_h1_regs.h     |   71 +-
>>   .../platform/verisilicon/hantro_h1_vp8_enc.c  | 1589 +++++++++++++++++
>>   .../media/platform/verisilicon/hantro_hw.h    |   93 +
>>   .../media/platform/verisilicon/hantro_v4l2.c  |    5 +-
>>   .../media/platform/verisilicon/hantro_vp8.c   |  118 ++
>>   .../verisilicon/rockchip_vpu2_hw_vp8_enc.c    | 1574 ++++++++++++++++
>>   .../platform/verisilicon/rockchip_vpu2_regs.h |    1 +
>>   .../platform/verisilicon/rockchip_vpu_hw.c    |   23 +-
>>   .../platform/verisilicon/stm32mp25_venc_hw.c  |   35 +-
>>   drivers/media/v4l2-core/v4l2-ctrls-core.c     |   13 +
>>   drivers/media/v4l2-core/v4l2-ctrls-defs.c     |    5 +
>>   include/media/v4l2-ctrls.h                    |    2 +
>>   include/uapi/linux/v4l2-controls.h            |   91 +
>>   include/uapi/linux/videodev2.h                |    3 +
>>   20 files changed, 3755 insertions(+), 28 deletions(-)
>>   create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.c
>>   create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.h
>>   create mode 100644 drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c
>>   create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu2_hw_vp8_enc.c
>>
>> -- 
>> 2.25.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
