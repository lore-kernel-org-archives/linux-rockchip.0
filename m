Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51B29C369A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 18:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gkt/nhyiOwrHGHnNukBBUeZynCnr/dTCIiEeKQe1qbE=; b=fpyKRXr/JAO5Hd
	7rlCbY1eGRZFl/qsuk41ecl+5HQMby0/THN7R6L3SOB8L0GxJGce/ee/9fteA24dN8eroLdvDTYle
	PbWk12EHDoVWqqwg4sqQBRft27h/MlKHzVgnJW8eMvMq4BtHq4sV8eDjeU0Po8z6HpIWtxTOVtZpU
	BUSvbEd8UukdLpCOoko5TAKQnZfi7zupkFKxsuG6LFjYjLmNZb/rxeF/u/qcA7lwvO6gVtATsfczf
	9HZaQ5COdf+FAQXoiNzh45thTDW+s0HDhrvbNml0MKnmakW3SVhBhJiLjOLXgy+1KbqVjtmozuA6x
	GZMlSEXs6eIUwdPqUhcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2aGz-00000008Bx7-1NJW;
	Wed, 09 Apr 2025 18:35:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2aGv-00000008Bud-2ai9
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Apr 2025 18:35:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HGnoo029082
	for <linux-rockchip@lists.infradead.org>; Wed, 9 Apr 2025 18:35:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h3tN8Xg2pRwFhKBUhJyoFYaiPiYIFv7y7hpbU+APvsA=; b=BEcxr57EUiJY5Zym
	kVNSxVwdl1/G+WnKZuK+rrrBokydGO/Oh3UpLZWk4kL3VGv2SmZR3i/K6wuf2YOI
	MpodShpD7Ukn+eqF+kTxaEAW5tLuv0RTNDEG9lR31fCxF4wwsbIh54Tb+rDBzvkY
	R02dOpwLQyR09UacSpshxRb/Aa1t9Sa0cqYNVnm+UUMJN9lkCsaHQecEQDnqKyfr
	M9Tj2Ei9EZY3qDpuDSHjXEdH5VGK/kupDdwYPBVBtsL4/Cr+/793ixrAqiOXu9ea
	C2RawlFXomCZxJWIpKE0WahyzSIVh5Ehs76kZRSWUp/xi6CvdT3uLQ6bdG2ibQCP
	I2IDfQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twpmcbpx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 09 Apr 2025 18:35:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c552802e9fso491485a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Apr 2025 11:35:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744223734; x=1744828534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h3tN8Xg2pRwFhKBUhJyoFYaiPiYIFv7y7hpbU+APvsA=;
        b=NBR5M+Uj98zgqFN8yv/6gnjTUegI5+rJ8HFuxHS7b7JBFyoI6AHEtXHJ8NK/N7gWO5
         +q0rZZPQmAFHKi8WRGyVPQ4oPkAWPNfCfiFFOfXJEL+icNSXpPferA72pwHukdzUDGuf
         rRGfrKyH4axVDWWf587Ej5OQmCZzuFT0Zzr1MoqqXifyIokyk63mGu0tj/knJ5oj6QG4
         bcdsyZCiFhHwTxewm0yvVZ71ANCH709vkFg0kG03ligeq63JYBKZiWGxtN3joKP+nRvF
         lcFuo/ZvBfcxQ+WpV7pepkNBxLw9zuTUkX08hiH4LZX0pNcpYo8SmweIXp9tLQROFYnB
         a/jA==
X-Forwarded-Encrypted: i=1; AJvYcCXpmaCM1cdWuPjX1UpaqZ8v4Ot8GhoDRO4tSEdJu5qhT0SIHLYj9Kd5v9gtIMpnqeqNLvLpuuDo1plHz3LPqg==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz3SGBes1q5jmIO+lrMBHlWimZVLVJFvsBpCfLnWYUN9oKtpon
	lj/1m/QCuonpvI1j4T7Tojus+LzckehZhHIuDKIaoiy20m7GHYn0f6Gg4E0a0pxYyRLxk2kpenb
	aWGJ7ZJ/bbBQIxoFbg8XkFF+Ym0Uf0qrVCTVbhhlIXhbPNmtTmwUt0HiAtL2432ELGz+tH0E=
X-Gm-Gg: ASbGncsRxcRwz2cuU7IiCpryvaB1oBUE9A4Sr8F+QPIqkJ/hTK3eRc2CatAY44h2XgD
	/FjPeivCgYpok+TP54ZMmyjFYBa2GH9HdnoD3UXx23e+85kVumEU7rdDJXM0eNUGjZWK/Cw2eAk
	+E0xtyARWttU4UACtymEZ9IsnhzjNULu8jRBPk84TBUxh0CPtVLjpy3FFTwCwqI2BjVD84CeigH
	rGgD0qXCqzIx3O3b8eS9Hu2nkTfNt0XJk2z/Z+44Burgy8Aru2Vf7Y35FVF4imf22TeIt/Rkdtj
	OObP4pDP45DvGV9gmwa2xhqgHAeRGS++qYkgFIS79U3g4KWHRHOPmVq7srXTlhSMAw==
X-Received: by 2002:a05:620a:319f:b0:7c3:c4ba:d8a6 with SMTP id af79cd13be357-7c79cc4fb3amr237223685a.14.1744223734665;
        Wed, 09 Apr 2025 11:35:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFP4Nhv309/CRScfglwzxDlYjCREIsnQLZ9iN6mVMw3ZcNyjL93Zpdnb8GcZSJKHfk6DuunWg==
X-Received: by 2002:a05:620a:319f:b0:7c3:c4ba:d8a6 with SMTP id af79cd13be357-7c79cc4fb3amr237218585a.14.1744223734222;
        Wed, 09 Apr 2025 11:35:34 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb3167sm134011966b.21.2025.04.09.11.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Apr 2025 11:35:33 -0700 (PDT)
Message-ID: <66f8d957-f7a5-4aec-b8e7-5bcc7ff7f569@oss.qualcomm.com>
Date: Wed, 9 Apr 2025 20:35:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/19] arm: dts: qcom: sdx55/sdx65: Fix CPU
 power-domain-names
To: Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        "Rafael J. Wysocki"
 <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
        Conor Dooley <conor@kernel.org>,
        Nicolas Ferre
 <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-mips@vger.kernel.org, imx@lists.linux.dev,
        linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-9-076be7171a85@kernel.org>
 <03011a33-174b-4027-bdd2-043aa685380b@oss.qualcomm.com>
 <CAPDyKFoZ7NfN+pkCPnusvTOEaxbQhr=1FJqzdDGrLcKAzBpGyQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAPDyKFoZ7NfN+pkCPnusvTOEaxbQhr=1FJqzdDGrLcKAzBpGyQ@mail.gmail.com>
X-Proofpoint-GUID: EYiN1WOLnQcmgFkpwRhf69MXn6UPtyOL
X-Proofpoint-ORIG-GUID: EYiN1WOLnQcmgFkpwRhf69MXn6UPtyOL
X-Authority-Analysis: v=2.4 cv=MpRS63ae c=1 sm=1 tr=0 ts=67f6bdf8 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=OWbFrMhi_jq_UiG4ISsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=832 clxscore=1015 priorityscore=1501 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_113537_654735_8D740DE1 
X-CRM114-Status: GOOD (  16.92  )
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

On 4/7/25 6:27 PM, Ulf Hansson wrote:
> On Fri, 4 Apr 2025 at 22:41, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 4/4/25 4:59 AM, Rob Herring (Arm) wrote:
>>> "rpmhpd" is not documented nor used anywhere. As the enable-method is
>>> "psci" use "psci" for the power-domain name.
>>>
>>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>>> ---
>>
>> "psci" is what we want here, but these platforms require some more
>> massaging..
> 
> So this isn't for CPU performance scaling?

Nope!

> 
>>
>> These SoCs don't seem to have any PSCI idle states (deeper than WFI)
>> described, which is no bueno, as they support some..
> 
> If PSCI PC mode is the only supported CPU suspend mode, we don't need
> the power-domain topology to be described in DT as it's optional to
> use.
> 
> Is this a PC or OSI based platform?
Unfortunately it seems like only PC mode is implemented.

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
