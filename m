Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BBDAC83F22
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 04:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WgtWq6sY/d1h2iH0Gd669B+KHnoIpnD2vp7xcyaKos=; b=IJQHipb9vHhy6K
	3ShRMxF6wN+G5ZPST3xRcAcL9noK5/HciCCru3cODteEwAlTQwJfsLBwURG+pc8SXU44mCvqV+n9v
	ga6pa53IgkuwwW0zL3AqcxEuayF2msFl2t/dpLTYaDKBgu1yfZfRxBrv7LPwhYJdcXlO6gl8Qk8Os
	auvtefJAcLx9zDD26Ouik62q1GM4UcbsTqKmV9y6UdcP/qL/z3MK0wADVPiS6l2JoDQ3+KLqqQvhb
	Klsqyv38E+2YAOOhHx+nBqq9RJ5UK+VJrpfkXjKaB4pqKQVeSF/9qFs/G8HscCKfvUzo34Vq4SagX
	RyIhkurBMQA9g1eKbIgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXe3-0000000433C-4AdI;
	Tue, 15 Jul 2025 04:52:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXaA-000000042gM-3dQK
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 04:48:00 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EGH33h005751
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 04:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1G81B60xsleyJTfUNHppUdfBzYqz0JcVfIPyN+RmVmM=; b=lTHCMFWJPCu8e0E9
	V/AAabygrTtorP9ChfuHJ9QbaufTRbwAtIY2Rnsv6uzT8ZS6xO8bM8WClCszfr+3
	2UESTZeWJreQfs82l6td3wsLsNo7xAOgkgkMFCVK1nxaq0nL16cVvLakSs4lN89J
	WI/HZUoYudLihQS+dLl2FY30gwZV4AIZufsJl3kaOVET2/9yrljJ0YedI4ElPHlF
	nypIZuCALT0fhRhoUCP92kBc2JHq8t5L8/TG0IZzx2QRtDJhe4uc8AqC8RkeqZUF
	csLwdvEUN5twDhMSZpwg9ST71WieDwSh9lhcEKT1jzmlpYdexbtdvTGQO07ozx5H
	+o57kw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w58yhnnk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 04:47:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748efefedb5so4723976b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Jul 2025 21:47:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752554876; x=1753159676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1G81B60xsleyJTfUNHppUdfBzYqz0JcVfIPyN+RmVmM=;
        b=AV3y3UTQfPIociSvww4Fk6O3EG3ZKJrI1nU7ljCltGkoSeh+mogDrKzlh1Td5KUXc+
         QHCNuhofGFcbyqvaXGzqArWoIET3k5ntFZX0oN4SqX41uWocGYGhbwubzvzIbdscO3ml
         jHiRGMBwLfPcaMYi7EJFgiitqJpNLTvOG9gpkkv+hnYBRcBflPWJXne70ycPDFasn1fq
         Jr4xEt1O6H4ky3YbAQIdgqoXfFiuDQLq47hfQbYV+qfhUbFREQfGonvZ3BEzfVNhFVmZ
         QQKkmNolgoaZj/7n0N71VLUHTgtvTkOx6Zo55wuhsUwGkWHy6P2hAO5vOqGIbvxmr/L8
         jd+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVvXVXIfM6ZSEg0uoxbxSYpqErWaIgzlYsWOVk58uTV5yEh4oTBAZcOuA25aJQIdXCFxb7cU8fxxokyk9gvNA==@lists.infradead.org
X-Gm-Message-State: AOJu0YybA1weXEhWoQFxPer6DQn8lhjU/tJj2z0uYRjh8RVVENX6tRAT
	EXiuzEvm0sfs+8cnNJo5FzpdX6bYHbran5if13zP9PMLMkeAjaP3wyT3QoMDf3BzoTussPSBjL5
	o72VQ9mZPP9JIqhNMr0do1YIuDnqWJBmbyMboQ5eW6FqcvEhWrQv5rODxq1uGBxoPBx+LuL02sM
	c=
X-Gm-Gg: ASbGncvp1CaodFBIX4kOGnXtRYnYT8drfcUvr6gcd/wdMCgLRjxdun70ZGCVY5Po4xD
	/lxhQUHpLaPImdpnVa8f4b30uJCAjJdNBY5Ygv3/A0yZ41iVsc3t+Uoi3a5l8KzTkn9j5fMKn/G
	oaW+gzmqb63t+XCpyjD8nDfsRSdtMkVyDJe9Yq64lHnQ+LjHWbyreO+2dmPf8Fr6v4ClQiLstC+
	VXPO+yUZvhFf4e86r5eGoUseAU7sesG9ZgkPUAp/je+gNkbcoNiokhUw3h4oASnX9or27/8SYkT
	IAJe07woQzm5YeDOk0mZvm0Biy/BjWFFiSeC7PHenLr6wJYWS58+MjwiImjwosK7cApyGdU=
X-Received: by 2002:a05:6a00:148c:b0:740:9d7c:aeb9 with SMTP id d2e1a72fcca58-755b4cb576cmr2345388b3a.21.1752554875856;
        Mon, 14 Jul 2025 21:47:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLw7QsQsRMoAC5kgpjcNQia8kN0Ju9KrU7l9OxO3SkPSGi12dP1bd89nTq4dVCoxD0vfJycQ==
X-Received: by 2002:a05:6a00:148c:b0:740:9d7c:aeb9 with SMTP id d2e1a72fcca58-755b4cb576cmr2345327b3a.21.1752554875237;
        Mon, 14 Jul 2025 21:47:55 -0700 (PDT)
Received: from [10.219.56.108] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd5d30sm11715343b3a.5.2025.07.14.21.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 21:47:54 -0700 (PDT)
Message-ID: <08a0b50c-76e3-5c34-22b0-74b8d20c8e63@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 10:17:41 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 01/10] power: reset: reboot-mode: Add device tree
 node-based registration
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-1-b2d3b882be85@oss.qualcomm.com>
 <5zlix4hfxkz447g6e6imjlatmnf26pvunnsmfkol7mhvropq6o@k7wr6h4hyqtg>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <5zlix4hfxkz447g6e6imjlatmnf26pvunnsmfkol7mhvropq6o@k7wr6h4hyqtg>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDA0MSBTYWx0ZWRfX8jQvovntN/Dd
 Qy9a8kq6FPzVvHWV1D4FeluG/6InmE28WsRpDvFFQXUaIT2jDG3Z2chq6Mi3fK+XyziZXWCdlss
 1mkVK5BCMtnnqu//hUgrOzJtPoYaMakBEpQO16ughFGde0TO3SYQioAfAtW7k2BXToR+1dekGhs
 WyTQfa/GHA4B7WGmy9IS+DPrzKJ/ffFu5euA9AXx62uUN96OHKCQL1wvctyRl51fxygUtmhzput
 twRsK9RllJQ78KPeeTU490AnQYZhlPVzB8JpRIBzO9zSmzpKsnjVHlSXEH+oDpyEp+WmNFZu48t
 I8Pn2f3tVtaziIUllBoqIOhZ86b3+4i9XK32QxGBRI+K650XK9WEBKLKSv6DWuiazdPSlBWMINa
 wbJNW+BMQDhn+uUNtKug92uzlSBLktwYOig1fJe3NAV7Im2jowGEvUusFQtfrzlnZfLqEBqW
X-Proofpoint-GUID: VjqzKGhZDQJeZeE3HEnduOVupwgJO6bs
X-Proofpoint-ORIG-GUID: VjqzKGhZDQJeZeE3HEnduOVupwgJO6bs
X-Authority-Analysis: v=2.4 cv=Or9Pyz/t c=1 sm=1 tr=0 ts=6875dd7d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=w5sRTUNUNuywR65qw8YA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_214759_145634_F3136B2C 
X-CRM114-Status: GOOD (  18.56  )
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



On 7/15/2025 4:41 AM, Dmitry Baryshkov wrote:
> On Thu, Jul 10, 2025 at 02:45:43PM +0530, Shivendra Pratap wrote:
>> The reboot-mode driver does not have a strict requirement for
>> device-based registration. It primarily uses the device's of_node
>> to read mode-<cmd> properties and the device pointer for logging.
>>
>> Remove the dependency on struct device and introduce support for
>> Device Tree (DT) node-based registration. This enables drivers
>> that are not associated with a struct device to leverage the
>> reboot-mode framework.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  drivers/power/reset/reboot-mode.c | 23 +++++++++++++----------
>>  include/linux/reboot-mode.h       |  2 +-
>>  2 files changed, 14 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index fba53f638da04655e756b5f8b7d2d666d1379535..61f647b23959789a313f3af0bd967abcad45fa43 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -12,6 +12,7 @@
>>  #include <linux/reboot-mode.h>
>>  
>>  #define PREFIX "mode-"
>> +#define pr_fmt(fmt)	"reboot-mode: " fmt
> 
> This wasn't really tested. If I remember correctly, it should be defined
> before the first include.
yes. fixing this in next patch.
> 
>>  
>>  struct mode_info {
>>  	const char *mode;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
