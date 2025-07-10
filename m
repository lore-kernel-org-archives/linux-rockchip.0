Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAB9BC83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 19:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIqckwAeq8VyYMjccIyG9tbxbvOl8pzd37sa/PC5olY=; b=HUNa6ZGq3UaGkw
	DnVthY2ZDrwmLDJ6nd94Fhqkb7YcZI5PYpVldEfsi2pvF2CBIS4W2Gjdw5r1hsN/wJ2OqPG8Q+JIo
	S3u4jZ+XhfRJTgKaHawQftSe/mVi1FzmfvwcZs1pgYpoptsN37e2wqOxNcQMNhzToT8LWtAI6D+iE
	vE8Nd1VAERbl3VqECJCBnPNWFVUieLohy/sikpTUVvfcAkJr3HM2qze4MNX1L/KdZ/vDYVWP6sPpi
	4FWUcrb9XRr0+KuYKN1Dtr4d+eYZGiRTYRL70o+mn+xspdZTEf4YGlv5CtWRCB52su2ewT/pRipy0
	wnuckmxgZfpVQs4SOYSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZx0Y-0000000CoyG-2LJA;
	Thu, 10 Jul 2025 19:32:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZuWv-0000000CVkD-0Mda
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:53:54 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8w8d2012568
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 16:53:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vfb8B/yryQh/PYLYMQLTf7EgWVJB4S9JcLJ8lU/8XF4=; b=JOtXlvyYzwn25xXB
	DnH4/ZPBSqb2hwUscr7qSxMyx0IUmJIWpou//KtU8TgKGTm3L81SsGqJ3BO6zv1w
	LzA1p2dhaSr18KnWEXBK9Fx5wXu+dm3sgt6hZrAEkXrmD9EndinnVdcuCokajMb6
	S1vWu6PH0OoQULV5FhVKKrHD4xZj5e/jShEo5rsiXpByBfwBTTVCNBMdYfESDFT6
	kF+tsApEQ8j872KG3rCFBpHjLJCBspHWZuQw9M9R1+77YrEn0YbftLksCVnkK52x
	pVzOWCIR3FIsRo2cEPz8+ovQIUG3siHH0+tZ8de7R/EFk5m14OYSG6Z9BDGbjRvz
	z8b5mA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucn975f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 16:53:51 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-740774348f6so1017928b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:53:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752166430; x=1752771230;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vfb8B/yryQh/PYLYMQLTf7EgWVJB4S9JcLJ8lU/8XF4=;
        b=c2dXDzcSu5aT5V3gKbLxZ22IevMcvrP+c3uzKWI0WpkdrGJVhM3pHcnIbFI0J/lt1Z
         wQ1sbRQFfBVhSp3ESZsCww0GKNmx3JMOzjztmChbQW/I8m/R9ftdW8nrlg7h2ywnyLeH
         qx1dzcqwKdmNBhQ54P+I+1jDBlGmreRrklcK4pgy1jXjmqNebm1S3eu0gNYN3XHp05N6
         NAD/VM4LTeHC/d/s0uOLCOluhyq/bjR6x1SyZqPiIHcfbPrJhOUFC6sClZ2zMdcU9r64
         WJXqxRooQ3Rou3rBnIwkwfq+3LiZByH//TcxYoamnUPbx9GmnHlu9paW9HZ2wRqCyCPG
         r1Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUsQFWA+MXIO+rlTeoBjQXyRR26DhE6CrOwBIwWgOD3BvvvmsZzMknod8dXB65YVNfZ8kt7tgk3B0xEsrYHZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxOnEwzTwEmvrQhPeXUgC6sNsi4nJVY4VCatZux/GD0P279xGD
	Egcfnh4LjY9CAFCJRiFytb5ubz+ofXtwvOUW5WzZWmaRJVSAGO6lHzSKv3aOM/nkYRwwOtDXcHb
	DkjBKaJnpIJtqtvIUuViTivS2WFW/jxu4Vvlxeiombq3DyRsQy5NiNFmqCLR5lztEwYlPRAUDc3
	Q=
X-Gm-Gg: ASbGnctlSvQhzduG0ONmiJUatc7kcTw/+vMJ+daoV+jjKHyEUj7Q8taYUjrhctQe8u+
	+wq28gKhiMyXA8RcsPVNJzNBCVF3GjkP15PDyqCrwY4M6KCALD6Ge0Vn4QEP9O2mydb+bHvSLXA
	4VK1QVexD7sho7yptgikCrtsIBlaeZ0T1VZqwENqyTzFsp51odfn7JSS3SfA2Q0D8n2O1GkCT+q
	YklAUmKeC+gMB0qxxVGoMbOhw31QZQf5H+sFd7vBH4pw9GBj/1MM2nzCA5Di4yvKY7idTM8MUv2
	B5IYS4iXcrTv7AyzuTn4bzrtAKbHP+5BItGY5pIU6Sh/UMJJZdExffMk
X-Received: by 2002:a05:6a00:3a05:b0:740:9a4b:fb2a with SMTP id d2e1a72fcca58-74eb5634899mr6389828b3a.20.1752166430585;
        Thu, 10 Jul 2025 09:53:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRSPr0EphfUz6oNUApD5i2gJBSco9YazNRfkr6HyyRBAwDmdRRKU0prxAQ4k9j6X+8VeHj0w==
X-Received: by 2002:a05:6a00:3a05:b0:740:9a4b:fb2a with SMTP id d2e1a72fcca58-74eb5634899mr6389798b3a.20.1752166430065;
        Thu, 10 Jul 2025 09:53:50 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.229.152])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9f98ff8sm2985645b3a.177.2025.07.10.09.53.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 09:53:49 -0700 (PDT)
Message-ID: <9bd63c0b-cf14-d00b-c600-9582061e3afc@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 22:23:35 +0530
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
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <2d8e17ad-6bd6-47a9-b5ab-0a91689684ee@app.fastmail.com>
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=686ff01f cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=8g6h00HoWaIZ3EdQG8aEvw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=IQD7W_zIqse-sWlNMbcA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: vICu6dHIzUq8UDWteKNLJiS2XuweEGKp
X-Proofpoint-ORIG-GUID: vICu6dHIzUq8UDWteKNLJiS2XuweEGKp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDE0MyBTYWx0ZWRfX1pVRrx8hXFTf
 YFFYObXPd7fFJXvQ3zNCMnnXdsDCcvGJy3uYBU591P/OLs5W0SwQ6UHpBXkW35SCoWWTPuLr9jd
 QZPuy2Co+PlSKbehl0rFzfWWp0ZM76ZkwrAjFDVWErERszDAKLk7hEcta7YHpGInYr2AgImI4nT
 FX9aBI+BeqYSlnNRRhQm7/clNk5zJDC3UZcdSbDi/+lPARsE6O8qk6c8sejYxvDHXLvXPxggKuG
 JTD8WX4B+1tZXjGoxB3afVr09NvPAiUE6Rccak0rQYwdXPEiIem4Bx+jyuVEjblEVAiELfx4giC
 hxsXPhEUhsoulYQzH2m5P4/mEFklMoyEr7qggYdUkaBEqz3QVgontxiaHxBEwtwgB6YxtC+r8+3
 T4mG2PcS5n2FY+MGiwIghyNiFztHS8iE5wd2g69XpXfE5swWcs1ipqVYWzjXA3GGgsMRWOrt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=933 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507100143
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_095353_258896_DEAEEFB4 
X-CRM114-Status: GOOD (  13.42  )
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



On 7/10/2025 9:00 PM, Arnd Bergmann wrote:
> On Thu, Jul 10, 2025, at 11:15, Shivendra Pratap wrote:
> 
>> +  reset-types:
>> +    type: object
>> +    $ref: /schemas/power/reset/reboot-mode.yaml#
> 
> The other users of the reboot-mode.yaml binding all call this
> node 'reboot-mode' instead of 'reset-types', can you change that
> here for consistency?
nvmem-reboot-mode and syscon-reboot-mode use reboot-mode in the
device tree node name.
qcom-pon does not uses reboot-mode at its device tree node name, it
uses pon.
Kept it reset-types as this patch was already reviewed earlier and
the name makes it closer to vendor-specific reset-type.
Should we make it reboot-mode? Please suggest.

thanks.
> 
>      Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
