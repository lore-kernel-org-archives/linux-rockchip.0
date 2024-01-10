Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C860C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jan 2024 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+nEUuOuWUb1X59LG3D8MVQzcY3rjSUiK083BbRFHQI=; b=Bis+E0IqMwt95h
	JhnlHmBpYwAMg7LHbd56CAMukDatGjRYVt8nQwdDWJUblZdqgfCLxXo/M6+qpG2nw/aArBc0XCTV9
	6h8oo4RvowJ199SFQHT3t3PPeNRNp1K3PKlcf3Gvv1qGPhzHtL7mgUT3yILPu4KLXbgg6NzsWEqQV
	rfW0Y40rDkg6RHAamurA5aDfCbtr+yN+4bFXe6rt/VwY3hvUZpcjJIyQc8E6X9UfWv+N5/GITHn02
	XHInniBxQSmRaB/c5te7gMVTrlSXYtEwEal1Yt2Hudddgb4vzw7rnrIfZsOYqRdn55hDK3BCzdKMS
	2PH+6F+qTNu8OhLNgfVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUgc-00Ar2h-1g;
	Wed, 10 Jan 2024 09:15:46 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUgZ-00Aqzi-1E;
	Wed, 10 Jan 2024 09:15:45 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40A8aGnq018108;
	Wed, 10 Jan 2024 10:15:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=Oa0IFcQkZD0/owTviDimI7+i56Xf68eQjrWsXc8swwE=; b=7+
	MoRUnP66xGbpAivfKSxhkbeuHLkaFvGnOXwo91qiWXXUYUkMNdh4MaQuRenc5jW6
	Nh0r6WirKmHuZKhGBK59bGhD3Pc0lE6Vw3GblB+Wd6eplEGcZFrPFGkMyv+6uaza
	PeUFWuOdZy7RgjMlZ7OgEdNQCNwxtSyq1B95/3kV6cQjnCVshXC+Xmkb81bMU6gK
	yAV2QG466tXYNMzD2cS4WN8uu3O2TCtKRUbM8hH7fv3KFMYhh/ICGm80lQkFk4qs
	117SSsB5OV18pk4WO/vSdGHcs8y090oNztBm5+nInhuUi/Vc32o8py3pp0L4oNKG
	3449v/kVxfbrJmvt5ilA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3vey30qrvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 10 Jan 2024 10:15:08 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2540610004A;
	Wed, 10 Jan 2024 10:15:06 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1692B24B892;
	Wed, 10 Jan 2024 10:15:06 +0100 (CET)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Wed, 10 Jan
 2024 10:15:04 +0100
Message-ID: <733bee3f-98ae-4f51-a1c5-6c09b38328ce@foss.st.com>
Date: Wed, 10 Jan 2024 10:15:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] dt-bindings: media: Document STM32MP25 VDEC & VENC
 video codecs
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-media@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC: Marco Felsch <m.felsch@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
        Adam Ford <aford173@gmail.com>,
        Ezequiel Garcia
	<ezequiel@vanguardiasur.com.ar>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
        Alexandre Torgue
	<alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Nicolas Dufresne
	<nicolas.dufresne@collabora.com>,
        Sakari Ailus
	<sakari.ailus@linux.intel.com>,
        Benjamin Mugnier
	<benjamin.mugnier@foss.st.com>,
        Benjamin Gaignard
	<benjamin.gaignard@collabora.com>,
        Laurent Pinchart
	<laurent.pinchart+renesas@ideasonboard.com>,
        Daniel Almeida
	<daniel.almeida@collabora.com>,
        Hans Verkuil <hverkuil@xs4all.nl>
References: <20240109085155.252358-1-hugues.fruchet@foss.st.com>
 <20240109085155.252358-2-hugues.fruchet@foss.st.com>
 <9ecc73a1-7457-45a2-ade1-c91b8e7176da@kernel.org>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <9ecc73a1-7457-45a2-ade1-c91b8e7176da@kernel.org>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-05_08,2024-01-05_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_011543_751378_904352B6 
X-CRM114-Status: GOOD (  15.60  )
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

On 1/9/24 22:49, Krzysztof Kozlowski wrote:
> On 09/01/2024 09:51, Hugues Fruchet wrote:
>> Add STM32MP25 VDEC video decoder & VENC video encoder bindings.
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> You missed at least devicetree list (maybe more), so this won't be
> tested by automated tooling.
> 
> Please kindly resend and include all necessary To/Cc entries.

My fault when sending this exact v6, sorry for that.. It was done the 
right way for previous versions and no issues raised by automated tools.

> 
> While resending drop redundant blank line after SPDX. See all other
> bindings and example-schema.
I have double checked and I don't see any problem related to redundant 
blank lines in yaml after SPDX:

+++ b/Documentation/devicetree/bindings/media/st,stm32mp25-video-codec.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2

Could you point me out what is the exact issue ?

> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
