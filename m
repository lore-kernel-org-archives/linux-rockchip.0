Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ADB7E95A96
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 13:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XE7x5QIZVNEeqe1LcKlLB5YVB4zgn98ZigV44x2KhG0=; b=DvKZx4dMcob4t8
	C2pjBRI9CgbQudIyYh92Nch4L4o49GVf+ZQjLv8wCL7McEvp9blIPLx1LLRwqUeWhFv0uWFnvqG/z
	xD+OfA2sHxeqfxtRP35majv4B9Ay6wlwkplNIsygslHDrZjg3ezMX4Hu90NpE73gK+4PI6uIPPVPi
	6XXFEQx3i2FH0/zSXxmO2Z+uX5RldsookNJ1gaIxVJSp5Vs2rIlA75+sWgdTqIw8gzgJUIwqQ4fE8
	JSChyuiI5WyHTath4v1ZD0YmCldCLeK2Cb5I8Wqyjs7Dp2p86dOgx7G2Hbfa3zPGx4b/UBv7g8cZ5
	zJgx+fgx78QzOgRp6ufA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpq1i-00Am1k-0b;
	Mon, 09 Oct 2023 13:10:26 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpq1d-00Alx9-2W;
	Mon, 09 Oct 2023 13:10:25 +0000
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 399D7FAX012942;
	Mon, 9 Oct 2023 15:10:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=dfLHM8Y/UzU7etH/A55fKiYTRZ0gEKXngehJqU3T/I4=; b=rl
	PHqK7uLpGElo7aPc2ynDZjZdrdMI1PGlvuA8yPxnSS/0AZRuM/uMd/UPLm9rt0Wx
	EuEeQZ1IK+8IUHZiBWhiThDPOHxnqGAGotdjN+QFeyq7marVITHx78VGcy2+SQIO
	l/ikBrPFHjaDK0kyQnamiAaHyD4bfLSo9olcY+5GoQuCoKRwzUe5TVMZv4LgF9v3
	5T3AFJr8yNHQbcBJmuK0xZJvw9QvdlKmxe84W50z+03p5gdtxiaAmiMvaIqH0cdt
	jJ7oHazCg3ng0BHT5jP6ktR6fP5aMHlQEWjhU1K06PYcv8Q2GMElfefPD2b5MuH9
	GSs96KProJ6rztMrpAYw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tkhk3d8vw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 15:10:12 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 056C310005E;
	Mon,  9 Oct 2023 15:10:12 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F0E38245508;
	Mon,  9 Oct 2023 15:10:11 +0200 (CEST)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 9 Oct
 2023 15:10:11 +0200
Message-ID: <b4367291-9e9e-dae3-3b56-c487e714683c@foss.st.com>
Date: Mon, 9 Oct 2023 15:10:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/7] dt-bindings: media: Document STM32MP25 VDEC video
 decoder
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil
	<hverkuil@xs4all.nl>, <linux-media@vger.kernel.org>,
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
CC: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com>
 <20231004091552.3531659-2-hugues.fruchet@foss.st.com>
 <d5dc9b70-00b5-4bda-8fe9-9438f19ecba6@linaro.org>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <d5dc9b70-00b5-4bda-8fe9-9438f19ecba6@linaro.org>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_11,2023-10-09_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_061022_142748_441269BD 
X-CRM114-Status: GOOD (  15.51  )
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

Hi Krzysztof,

On 10/5/23 21:45, Krzysztof Kozlowski wrote:
> On 04/10/2023 11:15, Hugues Fruchet wrote:
>> Add STM32MP25 VDEC video decoder bindings.
>>
>> Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
>> ---
>>   .../bindings/media/st,stm32mp25-vdec.yaml     | 56 +++++++++++++++++++
>>   1 file changed, 56 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml b/Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml
>> new file mode 100644
>> index 000000000000..cf41f704113f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/st,stm32mp25-vdec.yaml
>> @@ -0,0 +1,56 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/st,stm32mp25-vdec.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: STMicroelectronics STM32MP25 VDEC video decoder
>> +
>> +maintainers:
>> +  - Hugues Fruchet <hugues.fruchet@foss.st.com>
>> +
>> +description:
>> +  The STMicroelectronics STM32MP25 SOCs embeds a VDEC video hardware decoder
>> +  peripheral based on Verisilicon VC8000NanoD IP (former Hantro G1).
>> +
>> +properties:
>> +  compatible:
>> +    const: st,stm32mp25-vdec
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  interrupt-names:
>> +    maxItems: 1
> 
> This must be specific or just drop (little use of names for one entry)
I'll drop in v2.

> 
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  clock-names:
>> +    maxItems: 1
> 
> Same problem.
I'll drop in v2.

> 
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - interrupt-names
>> +  - clocks
>> +  - clock-names
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    vdec: vdec@580d0000 {
> 
> Drop label. Node name: video-codec
> (assuming this is video coder/decoder)
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
I'll do in v2, thanks for pointing-out the "video-codec" generic name.

> 
> 
> Best regards,
> Krzysztof
> 

BR,
Hugues.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
