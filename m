Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED63C83F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 18:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aD836JAulNsyDW+eP0+O78iQERrc/08fJr35zJ6pTcI=; b=Cf2EPPuT1gQydl
	hdMDBiP4V7tQFnbIw/fomMDvOfl/jKaMN/MKAIuMOKNFKbzjlPujZ1jdFOmdrg1GGM307TMYwYC4U
	UYQtzePX2ANTx3EF14C1Ts3YuhjYzTJJi4wz4yn+91eX6Uh9JT8QZ8OhISNiqX4UbeRglU+VEXF+R
	GxpEBFUlJWkelCdaATSgtXSaXVTpiRUDARCqGAk8QJ64FJX9ks1baUhAnlpLcpWNbV/iRTib1jX3L
	QOM0w5ukdDzb8oSpPHX4I694MTSI/RCSZzY/iNLyZLSfMCLqrnQ9ydla+w5rGpipmHfs2OUNbslWX
	kjqd7nLuyAdyxSHjdcVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaICd-0000000FT12-3QcN;
	Fri, 11 Jul 2025 18:10:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaHJz-0000000FNNX-0Vi7
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 17:14:04 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BAuOvi016817
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 17:14:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+yUxiWOGlCs35rCfqD4oAy1uFpwrIW5gk0AdeeQDOzs=; b=dEa/dwq+qpYCp9ov
	IwRHGfEsQXTn43yLpCT4+xX/3a7ltSkZSMokDMIE38v3evpbApnArv+9rfpFfgv+
	sE8M3YGTtI0B0kJnQ4glXiPL0ahgiGk2cyyzjmpWf7U//T312lcmwB0uANxwwqAm
	Y/g7DfZWTHTbPgzXBsnwKI3tFzsWH3uVx7Ve2i1N66S4qY0wA4WBV+vSIKFEaBbj
	SE93RvPCIUB4+go9Kd3WeUOSWupWlAiXk6YPp20rUFRTrbo+DkG9Bl0a4r3rLJ6W
	CHTF5zkuY7PP4Mbcx8HQ+ccxeHvsKOefhJkmsimVzEOQ4cjo//lOTj3+pajpdLda
	6PzSHg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap9cbd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 17:14:02 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31202bbaafaso2472716a91.1
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 10:14:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752254041; x=1752858841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+yUxiWOGlCs35rCfqD4oAy1uFpwrIW5gk0AdeeQDOzs=;
        b=tyetHFK+aELQ/oIn9x0zxYsFoCcyLIiGNu+uwCxLoX9Wus//zUdV0jYILPWMWhpLZ8
         +/77onA/pari0EC4HoHhLAkjinJTRfQyFEvKCE2aNWdCZurnqXLsuQHMatBOb3XKgGBU
         fyZ0cy2dRShZYA1cfoVDlyfogIOME39Spq5zESm+wV3GjRcmQt+3J/qgVrf0A6YyvHiF
         WWz39AA7hWBT9U+W929Kg0KVfESf6rH4qKMXRUq6hLn/qpjOfVFbyvYyG8IlsmPpF6ld
         vbLO3g06+/AYVNt8DsS/JldQjGbH1o8/eVaJAn4ya0Srh+rKw4EWmnSRxuwHYtzzx+1B
         IYxw==
X-Forwarded-Encrypted: i=1; AJvYcCUQz3mLZeMqNgFz9zIwwUgJRPKjVsrsKNGkuwiYuzDuDIgNf9q42Q2cHLMIb1E5KOqaxEprTEh40/ackXyatA==@lists.infradead.org
X-Gm-Message-State: AOJu0YydAYBCLqaHcE3hOu8EXS3lDiIRvJ+yVte7Aq2jqSPxB5HhDI6X
	QKl9TLGODrZuUaKc6W4uNs449oZNNg9ij76og7SyesP4Xx8WF2r4OjJfLvUsL8b4vTNdjlSFigJ
	iKd/rlmGPHUcTp/6da8ZULOtDISJdt62dnhed52JLmr5egBasQJ7KprAeuPjUVu96POPSL99rMX
	0=
X-Gm-Gg: ASbGnctjajuOiZonuW93VLKsvNGV7IKvLtnd6wa/vAHsdBr7pXBgWjNek9xhtGwHDQp
	39srENAWOI66R504BaGd3K8QgvvHtYX5508fE3Gl9+GAR70vPR0DQcanSrrX2Hy6/J5D/IveVJ2
	GkG2ebFs5Q58Tz8GmUc4z8DeIQYkkQE6NEqiAoPi9b8a164NXPrG3u9ivjVsDF/+FpqNGoJxvJL
	tSvgkTTX5e6qwCg2ENSPK8bAsN0E4AwS8rFozlKMsWxkiRtA8nZhJqwbf76UQ0MUY0F3ulegteG
	yYo75YzoIMcX9uoddbARGdGFV+VrpmegBC/3N/wYYvquUvQdtsVQtAwvPPYfuI/S+URvo7NB6Q=
	=
X-Received: by 2002:a17:90b:2287:b0:31a:9004:8d36 with SMTP id 98e67ed59e1d1-31c4f512a2emr3401825a91.20.1752254040895;
        Fri, 11 Jul 2025 10:14:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8jwEw4xKzZ2Gauazi95OMMWknYXW3kdStTOkWdXT5CV0YXjXLaabiJCMU/29GPhFaCVApJA==
X-Received: by 2002:a17:90b:2287:b0:31a:9004:8d36 with SMTP id 98e67ed59e1d1-31c4f512a2emr3401777a91.20.1752254040270;
        Fri, 11 Jul 2025 10:14:00 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.229.152])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c3e973e80sm5633493a91.15.2025.07.11.10.13.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 10:13:59 -0700 (PDT)
Message-ID: <b6f4819e-462d-7a59-eb19-bfb65ec27229@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 22:43:45 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 04/10] dt-bindings: arm: Document reboot mode magic
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
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
        Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        =?UTF-8?Q?Andr=c3=a9_Draszik?= <andre.draszik@linaro.org>,
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
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-4-b2d3b882be85@oss.qualcomm.com>
 <2d8e17ad-6bd6-47a9-b5ab-0a91689684ee@app.fastmail.com>
 <9bd63c0b-cf14-d00b-c600-9582061e3afc@oss.qualcomm.com>
 <23e0f0d5-c0f6-4fc5-9775-c0ae73681d31@app.fastmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <23e0f0d5-c0f6-4fc5-9775-c0ae73681d31@app.fastmail.com>
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=6871465a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=8g6h00HoWaIZ3EdQG8aEvw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=rM0-y_1GYM4-gDGtagQA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: EW_3Q9gnO9dt4jdkcF5f4s8FYpIXt8rz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDEyNiBTYWx0ZWRfX3N33tghCsPZB
 jpQA5KY1GFfGz42b1Y/kWDymGjXpp+Wv1V4HH5SxzYDZE2FgCd4jvu00yMPXW8fT4sEKZo/1B3l
 6RGFhJ1hgvXqe5gHpSAl0yWlsjGqGTAm3iYc8MrgaaSjC7RDi7SbzpOORahiIEDGOEdEha2YpRn
 58CeBcomUEoz95I72svLXnAmGJhjxrkEdk1EAT4L/w54MbjuMo52+awVnDEjjz9VTo/ikq6aSWE
 FKG8yRfhSm8WvdKksXtRBLJzPrpSnzgJOzcqgwvmTLn/U+XcxB+4Q95jvylm60SR3J9GEXKL59k
 31pLBGnDjMCgr47XU5CtEU4WN51pKsBwqoneRKp/oVMVEI0xpCT/GTE+f+6LnI35ddgsXk/u8BF
 M3HaMDtIx5DNujK1VQmQG8IYxvaks35uWNN62w1Yidbo9YY72XepEePKupzWgtn3JfkpYOPp
X-Proofpoint-GUID: EW_3Q9gnO9dt4jdkcF5f4s8FYpIXt8rz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=917 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_101403_271399_D9002261 
X-CRM114-Status: GOOD (  13.82  )
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



On 7/11/2025 11:10 AM, Arnd Bergmann wrote:
> On Thu, Jul 10, 2025, at 18:53, Shivendra Pratap wrote:
>> On 7/10/2025 9:00 PM, Arnd Bergmann wrote:
>>> On Thu, Jul 10, 2025, at 11:15, Shivendra Pratap wrote:
>>>
>>>> +  reset-types:
>>>> +    type: object
>>>> +    $ref: /schemas/power/reset/reboot-mode.yaml#
>>>
>>> The other users of the reboot-mode.yaml binding all call this
>>> node 'reboot-mode' instead of 'reset-types', can you change that
>>> here for consistency?
>> nvmem-reboot-mode and syscon-reboot-mode use reboot-mode in the
>> device tree node name.
>> qcom-pon does not uses reboot-mode at its device tree node name, it
>> uses pon.
>> Kept it reset-types as this patch was already reviewed earlier and
>> the name makes it closer to vendor-specific reset-type.
>> Should we make it reboot-mode? Please suggest.
> 
> Yes, I would still change that. At least all the platform-independent
> drivers are consistent that way.
Ack. will change this to reboot-mode.
> 
>       Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
