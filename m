Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D118E95A8E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 13:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hseQuKtDTbsD8c5uaSpbhtVVo8IUUeDhc3OFy7i5u0Y=; b=1qr+lewMWYrrrS
	tfCnwyl47yfpQeY5ac2UOTKyQtfmO3ukJzplcq53pJamUXLxe0N6qmXRP9ZE+G2+Ca/LGXhMGY981
	z0HTBOLjJcdHJHbRS7VPWNNPUjYOkzlWixs6aZ7s9uqFNi3YzHJstPmgCV6OxkGsH9ZVoXcF6Hn6s
	Q+i+dpANDhOwmOIorCOJXmFZHQAxJQAPagJmwuEfVK2RaQ2DwMCN9I6X90D95CUE7eUaaIowEkIgi
	E26iMwY7nfh75XTOBiYAGbpLKVLgSKgvviHO318gHQotZSIVt+t6sX5KOVwxEyxOUKb2UH3OxdqQ0
	AsGlL4g6qCeN8sC5Bqyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpqiI-00ArUo-2C;
	Mon, 09 Oct 2023 13:54:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpqiF-00ArTg-2o;
	Mon, 09 Oct 2023 13:54:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 399D7FtN016203;
	Mon, 9 Oct 2023 15:54:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=VYzUeQtCRSwWQdye7rKIPm5i7nIiZjO3UlgmNVPCqnM=; b=P3
	uZlUed27OO16Q43zRjjfq56m6C5YKBlmR/dUZcgmb5hiRQMkXRIjWxkgSxKvKZYv
	OUmy1GQeMyAnOxAWvwM3XXSXsamrjwc/j5SDQZvQGikG/sPqQXCeI6n9g4wsfKKv
	Ljg6Prw7K/QzzDF3BUaolsWsW4GWWnxKDI0hAOvpbzmE8CcvnJC/3NzO78nvSBwB
	7OU4EP9tBMXy2C/D0+ZCGOFyRiNboGYuhdbwahuQ5bpu8L/VruQwCb4PypE4dMl6
	QVcePMl/rePH4DIPe/L1j6HH/l/RqGnl1z8ycOPrgGLgEYTxjgVN6/XOVOuWw22B
	pfNWsXzYVfNsHzMd+XYw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3tkhf7dg40-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 09 Oct 2023 15:54:14 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2235810005E;
	Mon,  9 Oct 2023 15:54:14 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 18595229A87;
	Mon,  9 Oct 2023 15:54:14 +0200 (CEST)
Received: from [10.201.20.120] (10.201.20.120) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 9 Oct
 2023 15:54:13 +0200
Message-ID: <26e0112b-6420-c583-4462-d5ab2a2c4197@foss.st.com>
Date: Mon, 9 Oct 2023 15:54:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 5/7] arm64: dts: st: add soc & rifsc structure to
 stm32mp255
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
 <20231004091552.3531659-6-hugues.fruchet@foss.st.com>
 <86886ecb-dd39-49fb-a575-9e9bf303a8b1@linaro.org>
From: Hugues FRUCHET <hugues.fruchet@foss.st.com>
In-Reply-To: <86886ecb-dd39-49fb-a575-9e9bf303a8b1@linaro.org>
X-Originating-IP: [10.201.20.120]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_11,2023-10-09_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_065424_199365_445C6764 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 10/5/23 21:46, Krzysztof Kozlowski wrote:
> On 04/10/2023 11:15, Hugues Fruchet wrote:
>> Add soc & rifsc structure to stm32mp255.
>>
>> Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
>> ---
>>   arch/arm64/boot/dts/st/stm32mp255.dtsi | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/st/stm32mp255.dtsi b/arch/arm64/boot/dts/st/stm32mp255.dtsi
>> index e6fa596211f5..4f2b224fe077 100644
>> --- a/arch/arm64/boot/dts/st/stm32mp255.dtsi
>> +++ b/arch/arm64/boot/dts/st/stm32mp255.dtsi
>> @@ -6,4 +6,8 @@
>>   #include "stm32mp253.dtsi"
>>   
>>   / {
>> +	soc@0 {
>> +		rifsc: rifsc-bus@42080000 {
> 
> 
> This change on its own makes little sense. We do not add empty
> placeholders...

So I will add it with introduction of vdec node... will do in v2.

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
