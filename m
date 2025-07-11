Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57233C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+YBDWcNUkt3vojcTbjI2rML3mBrMCO5d3683pJT5us=; b=rFH8lO3OV/IOWT
	QFvEWNLZcWWepFbBD6BWywfNbKjOBumFY6YIN6jGqJBCEW1z53mFotFwaKHLiaOrQoEaQbzLP+UTC
	qzzvZyTZJV6SoBu4zw3nYjbkzjjPorBA/sRip/ku60RfSBgOjeBZ5KI9feG41v2lUotnSbXN04QC+
	TZvfzMJdli51apKtWG5+rm4+/Apy24lZWtYhQvrB9zBanNA/E1hsibxZ2K+Hv07DW2j2EUBiH8kXP
	ORCUiwC+z8Buqt8D11/b+SGUjsCQXqXEFU2t2+oltJ31mGAV+T5nwXT7Il9ddu75mkv8eMLYizTXT
	nPevNofc1eUWFR9Xl9Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCyU-0000000El4Q-2wtb;
	Fri, 11 Jul 2025 12:35:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCvX-0000000EkjN-1PfJ
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 12:32:32 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BBB5QW018272
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 12:32:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I+uJUa0zDVqqPkW/P6ZNncfaiD0Ik/YbmbIwujNrzqc=; b=E/pjBBToKGzsD7Nd
	aP/K0oulwHPlxsH9QDB5UjkokGaSTwp+ppzV3nPC+zT0BAr1G2IsxtUchb0/O1r6
	IXdkA7CV8TuW/2M6R1CGUEA9OTppGialSdxTjdC5tlulcQFhsGbFUpxIAY5Wdejn
	A3ym7h3zKXy/RBGl6G/H77MKPrI7+QLrsSlDnCZJN7KV9rsIRPzDY02eapz7lveF
	aZ7oKzOgavVo3GAdhfV6WxApnbgw0XnrD2vuizxgp7T753m8zZZmrSlR6jxDNbDC
	4rgx/9s1/zjlN4vrW6g+s0VCJ+K5kIBA7byNQu6EUv95pcKztrKQZlEfD0AxWhx4
	apS7jQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap8jcs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 12:32:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7492da755a1so1839967b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 05:32:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752237149; x=1752841949;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I+uJUa0zDVqqPkW/P6ZNncfaiD0Ik/YbmbIwujNrzqc=;
        b=F/k64UO9RUGQYy+tS+Q2eejA50maFybSrXpKuwyJ9fvz87ZNnNI5rsRRaqoCIzHLVa
         NMamKaiyGv09QUr5/Bdtb25Ou7y5+tpfCghiGQdv1qHxttodt5GOstblPg0hlDt6nEE9
         80VAYrsEk16v8imehpr/cogzD874NZPcu3AtIs91CRXJxb8fUuDp1/F55lDLI1cQDavr
         6IV5AC8BaEInzK2D95/z3sTrjdcXnwn4zTG7E0Xa9kD9ZwSNES6L5IXBiee/aQPa++7m
         3KA20ZhTAIWsN+MAQBdvjJ9dA4ijvJA++Gjr0VSq4Zt0ZgIXCdX4Bm6MfIobwE7l7Uh5
         7fmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUf5B0GcemnafyuO8FuD2IJ7vTlFMaYKgX+EWJNz4F17TCL/k+HHl7wlJE6YgYi0N/BCky4Z5k/q+CsXUz7Uw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc631HCtuga8qp+1chYbaloU8/y25fcsXyyTYDojxBumwRPkbX
	sOwkVVVI1gKSftRN0/eu9DOfS8Vep1fFgSy+pv7kbCVwhevywFGG13dZQNxqqr4PM4Z7rszRIyE
	+Vonv2PNcWWWlj41F85EPd+TSKtHGVWN4wVOjoh5e6Ar3QG+r+AOWr951LDjzXSYBAkYvYMAIQQ
	o=
X-Gm-Gg: ASbGncv8bMB4U9dFUsQ8pyQVbyPi5OWC9lA95Zs7Nz+nj5xLkiMTsBnvqI4c0+Fh5j1
	CKZ6BRQUhS1xJtRCMfdsCc3IFkI8gL0a/i/T/u8ywT/DFn1Ow+ejVoBhMCxFzBfeGoX8XRmlUIT
	5DLFeXCQJHxwZCBK4Bp8PfswG3NTmwgsioDeRv6fj8b5xkS8K3wKYsLCLwHm66bOtb0RxyeJHAN
	FqawdaITV8iKFhswvM4to6TD+StTWApZ8rpUbbKv7X+f4JoTfES6pWG1jfg/pwl/z3q6t6nj5Wb
	lFaHknsIDjuhOaA5PVLgSceCnyDs+FgkAlbd9EHvEUNhgEeWK/WCMyuuc5lVdauzQhTga4E=
X-Received: by 2002:a05:6a00:1151:b0:74c:f1d8:c402 with SMTP id d2e1a72fcca58-74ee07bb96dmr4845212b3a.8.1752237148331;
        Fri, 11 Jul 2025 05:32:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9gsUsqbiWSyynICyXIvV85uCk9/J6nn3GoQC+GKfjb1N1fCIuGevD1MSbYwD9kXnui8JeEw==
X-Received: by 2002:a05:6a00:1151:b0:74c:f1d8:c402 with SMTP id d2e1a72fcca58-74ee07bb96dmr4845108b3a.8.1752237147622;
        Fri, 11 Jul 2025 05:32:27 -0700 (PDT)
Received: from [10.219.56.108] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f90d66sm5040981b3a.173.2025.07.11.05.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 05:32:27 -0700 (PDT)
Message-ID: <cdadd6cf-18c9-15c7-c58a-b5d56b53452a@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 18:02:15 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 02/10] dt-bindings: power: reset: Document reboot-mode
 cookie
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
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
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-2-b2d3b882be85@oss.qualcomm.com>
 <20250710224740.GA15385-robh@kernel.org>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <20250710224740.GA15385-robh@kernel.org>
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=6871045d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=s8YR1HE3AAAA:8
 a=PKmmUXB_vcMajKhYsGEA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: REsQT_QjXnPVrIAwrpzL4tjxNKPXq251
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDA4OSBTYWx0ZWRfX9VvhMMzT5kwD
 VeyqiIPp+bjHSyAXKm/fR0RoK0FI8Gkl62cRnKN34QakiplzVsYM6YFOwHzeU03tyuFH3CNy+9S
 IJEkAUyNlmXabxUCzTodQyW2ExwvkAG5FAn6bsKikAcrwLfTvzEslyX+t0GUTtXEGiTd2bENlCX
 xf4ox2jvOgJ+MIWRW+y8K0TbcEGd4YrdMiqNJ8ksiCUB65MfIHojYNkjzC4HMr3wEGrcKknWELO
 cv1x9XsbEJ1uMpQjQg5GWR3XyBVlCVb9m0BrP75nhNCqAvf8NEbqcia0mveDYcdmrsJI2JGQWyj
 qj6UYs0Mul/jTh7fEgnbat8ce5POmpZjUpc9kt/P7H1fYem+yx4xl0FBlKMSiyJEMYyIMoKGf2v
 c8MtJqCEX3GUuHURBEW/pf/ZvA8CmzlwGrkC17sTa2Y1frT2qOB2s/FefmmOEgfn75SO0z0n
X-Proofpoint-GUID: REsQT_QjXnPVrIAwrpzL4tjxNKPXq251
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_03,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507110089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_053231_495927_C5CC7FE5 
X-CRM114-Status: GOOD (  22.35  )
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



On 7/11/2025 4:17 AM, Rob Herring wrote:
> On Thu, Jul 10, 2025 at 02:45:44PM +0530, Shivendra Pratap wrote:
>> Update the reboot-mode binding to support an optional cookie
>> value in mode-<cmd> properties. The cookie is used to supply
>> additional data for reboot modes that accept two arguments.
>>
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/power/reset/reboot-mode.yaml         | 12 +++++++-----
>>  1 file changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
>> index 3ddac06cec7277789b066d8426ea77d293298fac..a4d2fe1db51e0c1f34ebefddaad82b8cc0b1b34a 100644
>> --- a/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
>> +++ b/Documentation/devicetree/bindings/power/reset/reboot-mode.yaml
>> @@ -10,14 +10,15 @@ maintainers:
>>    - Andy Yan <andy.yan@rock-chips.com>
>>  
>>  description: |
>> -  This driver get reboot mode arguments and call the write
>> -  interface to store the magic value in special register
>> -  or ram. Then the bootloader can read it and take different
>> -  action according to the argument stored.
>> +  This driver gets reboot mode arguments and calls the write
>> +  interface to store the magic and an optional cookie value
>> +  in special register or ram. Then the bootloader can read it
>> +  and take different action according to the argument stored.
>>  
>>    All mode properties are vendor specific, it is a indication to tell
>>    the bootloader what to do when the system reboots, and should be named
>> -  as mode-xxx = <magic> (xxx is mode name, magic should be a non-zero value).
>> +  as mode-xxx = <magic cookie> (xxx is mode name, magic should be a
>> +  non-zero value, cookie is optional).
> 
> I don't understand the distinction between magic and cookie... Isn't all 
> just magic values and some platform needs more than 32-bits of it?
Need two different arguments. Will try to clarify a bit below.
PSCI defines SYSTEM_RESET2 vendor-specific resets which takes two
parameters - reset_type and cookie. Both parameters are independent and
used by firmware to define different types of resets or shutdown.
As per spec:
reset_type: Values in the range 0x80000000-0xFFFFFFFF of the reset_type parameter
can be used to request vendor-specific resets or shutdowns.
cookie: the cookie parameter can be used to pass additional data to the 
implementation.

Now to implement SYSTEM_RESET2 vendor-specific resets using reboot-mode
driver, we will need two separate arguments. reboot-mode already defines a
magic, which will be used as reset_type. For the second parameter requirement of
SYSTEM_RESET2, we add support for additional argument cookie.
> 
>>  
>>    For example, modes common Android platform are:
>>      - normal: Normal reboot mode, system reboot with command "reboot".
>> @@ -45,5 +46,6 @@ examples:
>>        mode-recovery = <1>;
>>        mode-bootloader = <2>;
>>        mode-loader = <3>;
>> +      mode-edl = <1 2>;
>>      };
>>  ...
>>
>> -- 
>> 2.34.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
