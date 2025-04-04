Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F053C369A2
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 20:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z44ijJTiOeKbOZGAPClvvDv4zPVfdS9Saq+iLsZGA1s=; b=PMRC+WmFet4fff
	nSG5DlJIUoji5Kc+S5VWHSZRmWYb5iuL7objIKmft+zS6mT5lU15fkraZXzAdjRiy6JKeq55uddqX
	Ilj85VAyhaRtYEnmKHGvaFiFfafFjw35qTn+RrCOmCv6mlCMWjEd1zNVqtl+UUzo0Ou3F8/A22HV9
	OPss5QPuPwjcPFUaZFCDoq7rqNJ7Ys0fleMrbF9wZE0oaOQ8Vbsfl48CdNPJiUtLIXjPIZ4RnqqKD
	wo8pygQmulpjge2qTx/mwtpWc9A16HeMHRnJLpJxpKP+qIHz2+ay/W/r3Tor+MRNbkcoNQ6oNRSkV
	nRIg9qW9XeRmElo31iiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0nrH-0000000Coew-0Fad;
	Fri, 04 Apr 2025 20:41:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0nrD-0000000Coci-276G
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Apr 2025 20:41:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 534JEwNn000502
	for <linux-rockchip@lists.infradead.org>; Fri, 4 Apr 2025 20:41:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yhwB7sBtbDgAESOIuK+j/VpMVm+i7ozwb/nf6hzXHSI=; b=e006pJL3OxxAh8DY
	yw6pzBhVXjXPMKiJbem1EZ2wzfylcu7MoE8jlhD+yLNH/8wEqqVTrpIicznQ9JAj
	6L8OAq4Hv+XXOe0wHTxagPkOi4TuKwBLxCKJIUM8F13wbKZrGGEw1a7ewpS7h9Ol
	LlWJqc17vtQxsUc1Hd9cS1Irr7ooYRrNnfTwVm28GRqrJusgJ85frwJFvBdOGD8u
	d9yCx0PeWg02ITaLXRLspQw8ZoEwfmAr3aKscRUzaiPCkam6uTntdVgYNWJodDhY
	9AmbuNyq3qqO6CUw5UrwUR8ILDDbH6MAvfR6kg2EJscGkLCxou5n0Gk1kHGxaRKW
	82u7lQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45t2d8tvgu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 04 Apr 2025 20:41:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fd4ef023so4144356d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Apr 2025 13:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743799301; x=1744404101;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhwB7sBtbDgAESOIuK+j/VpMVm+i7ozwb/nf6hzXHSI=;
        b=TfqMP6Lnlio0UzA9KkXhXWpF3OnKjhGyzYIREVgo40FSMmbX1UDZgFzTp9HUwas5WN
         7Mh0xKd/GTkt0quAk5zxM87SOEpl0xULpGf5VqN0UOfDh4uLBwRWjz4QUeXDHRp+tEwW
         BxmIhjCrk3dKBWzWHY+PHcXKmseRdMZtbWdPmGNihIsUetnKjBXfk8n+jpI2OulX8bxf
         m5r1E6OShRoTFnGO4kyyxk10WhIYdfqpCA7OO4GE0cZmLMHyNNUAfcGC3t11Wb8+rcbr
         zsprpdH9RYaxBazwTs+f7qbs2xoxlzw7ijwbnM9hRc1TPOMy++V2kuiY2LHI7B1nMB5k
         HPJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPr1F1Ev7PFQS2rX/zCWmYX7JAgjNUQ5Cxhn9YUWISm6/Tvf04Pame9YCynHrn2Fjuitjo15PXrqS+TMtTRQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwcMoZCnxmm8p1ZvZ1oFdVqjfEEQ7bZpfYbtwNhWXVGrVGSXViz
	074HSt3ySmyBVmawu+xQ8nHeVuFAK8lyoo6flb95RFhUCuMzQfzLPa5MeVdFDDrZcvpKQszCPve
	iL97NrXXMJIsoeNt57toe1bx38SF10t8K9B9txlJnswbjNQcFP8krjyID9QOCzmIwyP9yuiI=
X-Gm-Gg: ASbGnctJl7gZiqXODJUZq3dfYWKfyUopyI7tT9xCMOvpkbMVEhQrzjC6drvE0U60kYM
	cmzSUSxcxMuy56TBFEY8/yukrKEOgbK5ICtp3gcQINp4Fhb2HjXOLFdzkFltyAINgGhtl1z5pLs
	2dBOU66aY8deGW0wWLQIdNutPTEBXgnPmCA82hzJynvoiWon2FnK31IgLUviUgBNGlYe4bVY4OB
	E1Y/d5SKivxl5IouSB+W9JXcHYy/LoPotmtJ37TncDkRChip/S6tPPDzASLlLgR+lcBQhB8c+5i
	ACB8BG6KSrNny7o+24nMobcZbXiPhl9p1wAIeja6ic5Aod2/fZWGfgW0Ys52Rx8nNLdzcw==
X-Received: by 2002:ac8:4644:0:b0:475:820:9f6f with SMTP id d75a77b69052e-47924943de8mr21784161cf.9.1743799301649;
        Fri, 04 Apr 2025 13:41:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1R4hoCTSAc5GEHefyuqv2Og+2N0LdZwy28eI6DAzYwdiZd4PyFBY4gfZbXP5sqGwuyOlLqQ==
X-Received: by 2002:ac8:4644:0:b0:475:820:9f6f with SMTP id d75a77b69052e-47924943de8mr21783741cf.9.1743799301314;
        Fri, 04 Apr 2025 13:41:41 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f087ed19e7sm2857643a12.20.2025.04.04.13.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 13:41:40 -0700 (PDT)
Message-ID: <03011a33-174b-4027-bdd2-043aa685380b@oss.qualcomm.com>
Date: Fri, 4 Apr 2025 22:41:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/19] arm: dts: qcom: sdx55/sdx65: Fix CPU
 power-domain-names
To: "Rob Herring (Arm)" <robh@kernel.org>,
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
        Magnus Damm <magnus.damm@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-mips@vger.kernel.org,
        imx@lists.linux.dev, linux-rockchip@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-renesas-soc@vger.kernel.org
References: <20250403-dt-cpu-schema-v1-0-076be7171a85@kernel.org>
 <20250403-dt-cpu-schema-v1-9-076be7171a85@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250403-dt-cpu-schema-v1-9-076be7171a85@kernel.org>
X-Authority-Analysis: v=2.4 cv=KcPSsRYD c=1 sm=1 tr=0 ts=67f04406 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=xglDh1PETwH3DoLBRHwA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: 7OWFmZybp2-ZmU3ClUNfrG25g3UTzd-d
X-Proofpoint-ORIG-GUID: 7OWFmZybp2-ZmU3ClUNfrG25g3UTzd-d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-04_09,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 mlxlogscore=927 mlxscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504040141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_134143_551527_FEB7322C 
X-CRM114-Status: GOOD (  11.78  )
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

On 4/4/25 4:59 AM, Rob Herring (Arm) wrote:
> "rpmhpd" is not documented nor used anywhere. As the enable-method is
> "psci" use "psci" for the power-domain name.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

"psci" is what we want here, but these platforms require some more
massaging..

These SoCs don't seem to have any PSCI idle states (deeper than WFI)
described, which is no bueno, as they support some..

I'll try to improve this.

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
