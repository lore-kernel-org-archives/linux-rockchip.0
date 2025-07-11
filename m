Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CA77C83F25
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 18:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFsNUvvkoX0uDV8zek0xrmSUjSn4fe6A6Yv2nxvFJaQ=; b=NCg1jE3+5F3kO5
	o6YRGtdrgwd356xCUpNxSHvJFgfKr8ChaN10fmFlCRUWkiEZP1cN71jpl/t2xmcgj9cEgHKPlbNbg
	594GcYTGr9UMqENeRTirp+wFze+jGLRjHKfqWDQcOzuKMi3pziBWZlLIZUGfKlBWviJCOE+M3GA64
	Ojh5jgihje5AU+oHcwxABuTHw9tkTif38fsVA9R9BSKgth2FssmNmZcP0BshVa30atEXmuB9elsal
	8e1DGBEu5DexfKI/ZZicKX7x3ydE/nqyP9yzN4DCCKHMDcg3gxofZ4fKyIwlO7uVI0mkoh4YXhxVC
	+RwDwau+AnvSxU4k5lQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaICo-0000000FTBn-3Qst;
	Fri, 11 Jul 2025 18:10:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaHtD-0000000FReB-3LZ1
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 17:50:28 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BB7i3p001266
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 17:50:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zODF07FEndKVYerePzf13yZa0v9IMBpC/Vm6umRGgcQ=; b=gApSY9r+2eAhMTb/
	78i0vkS9emlIFK2N5TD+V0KqbqrE+DJTruHeob27jHnXjtuMt6rEH6OnMoIKrZxX
	3Jq4Hr5MiTU8vX6sUu6IL//2V4H3anIsaXpeuOu0QaYGh6EQ5x45kEy0GonU8Lv/
	nLN1jzwClGo2Lr3s2CEXqhRwP8bFtWyp5WkI8xz2IMmP/8P/jxUqHbb+orW6fkJb
	WtBbHDz+O9dVEaTTVpNR3QLe7fR3brxtWx7elNWmJgiibuy2YvnEBP1TFmDrkja+
	dCF80k5Kjn7KMZFjQb1pJYRpF25bm1DDZDkX3l+rxZqa+NFHLEzIEUJvOagwF9/t
	k90SgA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucncve0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 17:50:26 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b00e4358a34so1698274a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 10:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752256206; x=1752861006;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zODF07FEndKVYerePzf13yZa0v9IMBpC/Vm6umRGgcQ=;
        b=eOIRg22oi1fpY5f8KllwMzD2UjAjWZMLG04ZgkgKlE1JJoOiL/SSg0z/BSD7m9T4vu
         FLBMz7x39d0ew4ZKpPHlXhDccBkNKKcbc4Y37HLngf6LU53FItjsW7aC05OjP5HpUeIP
         kGfq+AvXA6KyulKkFc4QBP8mYTqsTmQzm1QLHd6Ig6YgSunmCRgUG91mq4qhgZFRV5Yu
         Ma1/l691StwzO1gdd/XxjgqkHBpLEEeCa48gEHpDKcqgKyRC1LLNWqCP1vqZg89//cDa
         x2Fsj5aDwR7koQXNkjLRkNLg8a7DyNgBeS0j5+W41VuaLxS1HHjaK8iqzfdiPYsFsEeC
         XTKw==
X-Forwarded-Encrypted: i=1; AJvYcCV9lLsUcCE3gWEDBX43KKQ5CZwbLamev2iqzhSqmT/xwbBgmBIYN27l1+gvdD3vIsHrQDjnVhUCO45N6fPEHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwaC067vHyUxT8qqwoHgXmUIRDlK9yjkFgfBXzx6zBnxHG5O/t9
	Ylooqjj1fhJ5JDuXZKc2x1yUSjN+wrya1q9XRY7Qft2tcRNaAgRfwS69mcXPkZxbT5T1xBhrAjs
	tpVw3+5AwBHu+AUZXw4Mu5MvnsYNBP1NSdpNrjjvB3H7aRUwRb/4drsffpL1QdN+wNbWb+9Fh9y
	U=
X-Gm-Gg: ASbGncuYcVl5Hr/2KwBNWl/0GlGRGiqYFAhHwhu7DvwxRQlIFRQvd8SS2teUu2ecsr+
	4CD3ghZNGGUAcC1me9+4bSzyHUylDVAMraVrdhw7x5iiT37p3wophNfqQ0zGOtlH71acRbqtyD9
	37tyW7dwLK3Zn0jnR5ktIA13/VELi37G1RF0yZW93+lyYZgXLgCCqgvKDq28J5gf95c4dEQWsI5
	6DV0FyOIpzhMM8Gb2Js9sJ6JWcGaBrzWQ32YvkrVnJ8FfA2zsyfZS7pkcec1QDx0pVAuVbKky62
	eTDrSBKN5npIAWXi/yuwRtM9IjCrvqcFZzB1mG71XxwSlm3YvKHAylppZQGYVLDigCxe7bQFhQ=
	=
X-Received: by 2002:a17:902:f545:b0:235:efbb:9539 with SMTP id d9443c01a7336-23dee1abb0emr63643175ad.17.1752256205862;
        Fri, 11 Jul 2025 10:50:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoW1pfrpu8TJ9bIwQOf4KOWgHALwSOkO1BYsTZCrJkUsn+7Lrx4ekRpFxTdtXkf6n8J7ntUA==
X-Received: by 2002:a17:902:f545:b0:235:efbb:9539 with SMTP id d9443c01a7336-23dee1abb0emr63642755ad.17.1752256205266;
        Fri, 11 Jul 2025 10:50:05 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.229.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de433e160sm50153985ad.172.2025.07.11.10.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 10:50:04 -0700 (PDT)
Message-ID: <42a98c8d-7287-8aa1-ad39-4d5b79e177b7@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 23:19:51 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 02/10] dt-bindings: power: reset: Document reboot-mode
 cookie
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>
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
        Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        =?UTF-8?Q?Andr=c3=a9_Draszik?=
 <andre.draszik@linaro.org>,
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
 <cdadd6cf-18c9-15c7-c58a-b5d56b53452a@oss.qualcomm.com>
 <454c8361-151e-42b3-adfc-d82d2af62299@app.fastmail.com>
 <28f277af-9882-2c70-5156-123c95adc2ee@oss.qualcomm.com>
 <b870ed33-7d4f-4b0e-a9ae-b9c374ea854b@app.fastmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <b870ed33-7d4f-4b0e-a9ae-b9c374ea854b@app.fastmail.com>
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=68714ee2 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=8g6h00HoWaIZ3EdQG8aEvw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=xZdgJlt2tE-EQpnRY6gA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: IzehoqpmaBLGwwe8hOe0o0vDK2DSsMpi
X-Proofpoint-ORIG-GUID: IzehoqpmaBLGwwe8hOe0o0vDK2DSsMpi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDEzMiBTYWx0ZWRfX2VCO3VA266N6
 P0keYIsYclkV1wwoobvC1Hq1XXb1AYLTfkHhqU8181oXj2Zcw4QW67NGvh/QZY75v8B7hCi/8Dz
 fnsen0nXFDUM6vljR4BqU4xjpMFEnpI0n0CfMzniVJgzLxkFDd6gGNodvBaCSqzyQ6HuCzjk1F+
 1NQYxej04l2oI7+BtSdJTiP86Kz/1YuoS/lxysxtMvqKFvRjxjD/DoH1Z7ubfqw4l+L7sxD3wIc
 Vg4WCwkD1+HPMcvQ8IoBbbHYXIJGWHoylWuBvjAZ3DH1VE5MNNufkwR5R0l8T2eDKPQ+WJxJJDh
 JFiNBf0E9COAL+eY4wv4lWVL/DD4XWkTGSbi3H7yUmpVkconoDppn71WWrOrpSnarYalbsm+SLe
 iE4q3w6MLekRdJ88S6UvgzJnbkYCwBB0UH8PF2/3UWa8BdTiVOP2sExC9pFhMIBfqZdtPMsX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=690 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_105027_948219_111762A1 
X-CRM114-Status: GOOD (  15.97  )
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



On 7/11/2025 11:09 PM, Arnd Bergmann wrote:
> On Fri, Jul 11, 2025, at 19:00, Shivendra Pratap wrote:
>> On 7/11/2025 8:14 PM, Arnd Bergmann wrote:
>>> On Fri, Jul 11, 2025, at 14:32, Shivendra Pratap wrote:
>>>
>>> The distinction between cookie and magic value may be relevant in the
>>> context of the psci specification, but for the Linux driver, this is
>>> really just a 64-bit magic number.
>> ok. then if i understand, this binding change for reboot-mode be dropped
>> and driver can internally handle the two 32 bit numbers?
> 
> Yes, if you can easily keep it internal to the psci driver, that
> would work, or you could just change the callback type to take a
> 64-bit number and leave the interpretation up to the driver.
ok. thanks. Will try it out. 
> 
>      Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
