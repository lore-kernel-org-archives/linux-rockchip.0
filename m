Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7107C369A8
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 09:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZgKLTgaXosbaoSyLHquU+jHO3WaW/bOVTTNJPh0YGt8=; b=XSlhUxv7xfvFEa
	OvGFC4L5QvCksPuB8STTi/F4OQ1M1noQOu+3pMgcpQdoPfVsLrQJwENDafJIOCMPKfQDZgT1dMx6J
	eq0xJQ/T/yfUJoCtG3hJQxY+xab299Dh442FregJT7AaXJ/HVN/tR2VIimFInq1OuA/sflkMKY+js
	8ZeufoGOTQxqGiu9UDAyO/SWO2q+FQzq8dUgYsUY0KDTCg/TnnWWfm5BAgX6rqr8U+c4c6/FZWZHJ
	pzWfL89HMUuhjMc9H7qTvIXDVEin4h4bbXUtnMF67d4FUivxUX4Pw7kctz+W2GPz5wo+r8sSn1OWm
	NTEZlk0QtZ51ksLAMKxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3AYB-0000000DBDj-0dhH;
	Fri, 11 Apr 2025 09:19:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3AUn-0000000DADJ-10n2
	for linux-rockchip@bombadil.infradead.org;
	Fri, 11 Apr 2025 09:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=SdbE/DxPDX7mmNIDt0tfMeaCACq/2F5Z7OVDEZCEKFI=; b=k9jj7YJEUoLF+JFmuIcMdEShin
	Wt2kqsd5QuyIOum+rtC4Z9RtZw5OQaQ4h0iJ/yFZnvIZteXS/Ixltw3Qjo8Ndq3SpBOkgV9Yckvil
	ReWqKasc2Z1ldVkGk/sKejjZtDmuEybcf61P9FUdXnh3BUKtwbVLyvGAq1n9CM9XSvD4NDVzU6oHW
	pm09y4MiPiSMApmMo4OWySr8rJ4erKvKo3ORpX6UhB/yIt8SPWsGH3Fucg2Vx6bPNzK/L1tam8iMp
	AiMl0llawVxDICnzUHK4qr6bS4kUJ+qMSRAHyh6K2tLDLkz8vA4AkK+j1FK5A8awZiBg5UD6gZ/Kj
	0ztjZqaw==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u3AUk-00000008zfs-0aWJ
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 09:16:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5nj3E028877
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 09:16:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SdbE/DxPDX7mmNIDt0tfMeaCACq/2F5Z7OVDEZCEKFI=; b=BXHwukBeNNqi8du2
	PVAq5NvS3OJB6v0j6KUFrswmG8tzjAz7KGLPqliamMJzgcOQsOusYeYfwraPkwXM
	MzZkxReq2Jp0tI1ZE8GwclTnyVGu9rdbtf/aoUGbMFBEQumNPirxh/TELp2Edsba
	0xmGi/O8EA6O17AviSO1mrZv7a/vWN7koPTxvChVg52MAhh1YogFDueJCPpWy0nc
	L/Zrwe2qPMRegUg7eviewRj7A1MZ2Q3m/52qCzNzp0820vVT06VSJmadEnvgekP0
	jhLJsglOmUyb1GQOF85/iHbyGQY07St6pqWggtoVaQzqSNTWioo2n6IUTDb/oGFV
	TszYRw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbuswbj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 09:16:12 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6ece59c3108so2614566d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Apr 2025 02:16:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744362971; x=1744967771;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SdbE/DxPDX7mmNIDt0tfMeaCACq/2F5Z7OVDEZCEKFI=;
        b=JaJeAahs2tcyF8BRsDNbSv8tDHYWPKPP2bnmqgUbbcrGTNXtK8zJSsjB3ORc14MYHK
         7t877ZkvaiDhFotVEMX1gyxGU+VNRLyXRVKPgMYxxzhIPdnGxzsE9mjgE5leJfbdqDzf
         yqXedWeXgEkjT29J9KVgGlONEQy3NzVb61i1OMMjnAHTnMksDfyo/h71k/z84bpg3lH9
         fJ95jtjju16egKFgaKSsMbjLdGjMG2N5ME5/Hq52DGZSxK4gCl+p3RHbipl77Deruzmt
         EdIGrU/2SgoApFRrVNfyu8B2fYAVDdm0USlddsjSEqDM7x9z1Z3sni/WhjK3PFaCvIKs
         xcXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUS20KK6y4hZaVnAeG72Iz9JhDCnPFqssTZGn2TAYTXZYj067sMevFDPOmXNJWS6LxD2cH86uYRnRI8Kd2Kvg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNJLhL0FZmth5ZOXXFzsE8dEWFQZP/U0eYFBTLJ3SMLsAjRnLe
	qeHAmBltuy3jjkDK5IpGi2a3hZEFEOeR7bMUaIynBZcNmlYEnld3Rs3MWXjYg6A2XWfHXLQS40P
	0tjpEU1dPhAdRyQRp/owUsukYNpVQ1TqzpjOSAJXYBLT+3BOKOXAQ77mE8BvpIlR38dDT3jA=
X-Gm-Gg: ASbGnctCwR4kmCbJko8ok91JHtK7wX9PddTjLLqOGTmyMOyLgA7LE1FOCwgMVGf8MJt
	1F8jmXgJ1uiqvtx3iEO75p7/P3YDKkDwYwB+TJsvQHushkMzvr/WlRuV5KZF4YK8KfLzdZS8IGr
	jxfO3N3XU3TOIUSBSQfQqV4UGJbZvg1t/251akhCHYBQd9xbAQ2swPfJFjeXmABb+oindz9Xe0M
	P7V1ZQogEfuITVCIQ0qZqJQxA8ATmaF4ICpT8czdw/0//vENg7rDKV93M/aF4MzIpz0vf1FmCfb
	NA1wSEltfn5fZRcY1+YljetDxWfbcnGg8tB5K0M4YzCakMIAltyBZ1i4aXKKZNMasg==
X-Received: by 2002:a05:6214:212f:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6f23f1679e4mr10563656d6.9.1744362971589;
        Fri, 11 Apr 2025 02:16:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEA6e1P/nhdQHi+asbk4W6Q507S4YUL3gYt86eK9/3HOGGRdCgqddHT581PqAJyvJB7RwUyaQ==
X-Received: by 2002:a05:6214:212f:b0:6d8:99b2:63c7 with SMTP id 6a1803df08f44-6f23f1679e4mr10563536d6.9.1744362971205;
        Fri, 11 Apr 2025 02:16:11 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccd2c4sm406829166b.129.2025.04.11.02.16.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 02:16:10 -0700 (PDT)
Message-ID: <d49926ce-e651-4da1-8e15-d24290047388@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 11:16:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/17] arm64: dts: qcom: msm8992-lg-h815: Fix CPU node
 "enable-method" property dependencies
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, imx@lists.linux.dev,
        linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
 <20250410-dt-cpu-schema-v2-6-63d7dc9ddd0a@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250410-dt-cpu-schema-v2-6-63d7dc9ddd0a@kernel.org>
X-Proofpoint-GUID: 53gW2Ic-DXRKUQU_WHbGiTb6_41EqzU7
X-Proofpoint-ORIG-GUID: 53gW2Ic-DXRKUQU_WHbGiTb6_41EqzU7
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f8dddc cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Rt0Z8iD2R8SC1h9hphoA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=769 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_101618_554178_C02DE29C 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

On 4/10/25 5:47 PM, Rob Herring (Arm) wrote:
> The "spin-table" enable-method requires "cpu-release-addr" property,
> so add a dummy entry. It is assumed the bootloader will fill in the
> correct values.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
