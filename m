Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63200C531F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 12:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/0n4UZ5LSM2QDasUMQACciHcwgwHR4lg2paELslR0w=; b=PL85XqJkMRxa2h
	MsVpjkZ1mXpXsjBeQOvs6wVOCj5MIMG2CIbY5BNUa845jB3TmuH8gCmiaAmNncyukvuiKGhAUiFCY
	llCOcoAttHgM/gmyuI4bGTzeV6lo9xRFIfEC4QLUuT96Pqz0HMHq/AvaWPkTHoU/BAzf8faVIgmTs
	faqfeErLtFUBVJ5ObZRZZqSzsNvtuDiejpAnRQQgnjzO67Z4FG3Axd0oEPmn9DBErCoQFEh2pBvam
	QwhTdpZrSm7rIKKgY/o34ycEsb7PNJDiir8aJcVyFdoeddvYWdvn4ByPguyZiKfD8LwZvgB0bVK9o
	5crI6RXmJeBx9YHqYTvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnEvh-0000000GMPi-3h21;
	Fri, 24 Jul 2026 12:23:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnEvf-0000000GMOk-29Ev
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 12:23:04 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66OADx002616319
	for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 12:23:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	swyQuDarVDN5VJVqjAFVM+bZ5jRGsu+zccVbSS0Cmqc=; b=XOA7KUZy5pk6PVqE
	Nc4Ta5bdbp8FPw6UN6UBTUZItLw0RamLPAjQLYfYFfU9f4lXXakwv4L3C6ubnPOE
	Gz5PjVhI9ZSKdTodG0gQkr0fDrFr/UK5ZBn8MXpnOy6s6PRAIyL8KyAxQoxlhNjC
	65a6mUyMdFY2D/Gn7SB8VIkqPnvGrHPSa/fOrND6nJ/1OZSPfaIMhflF7kMKN0vU
	dPfPcFOnlYFndTitzlIk70aHKkSOF90ZQOiq0UckkepiYDHd+pskcC+vHhDdNrt2
	iCdJR8NASVXn3e63hqKiGF1WTyrfKhFja8u5FDEKyNzcV9FOFwuwvu942F6C4Zgy
	SlLV6g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fm0pw9qgw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 12:23:02 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51c07313be5so701361cf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 05:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784895782; x=1785500582; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=swyQuDarVDN5VJVqjAFVM+bZ5jRGsu+zccVbSS0Cmqc=;
        b=DtuuRQ8Zshql7xxt/1Okyt88esQgMHJ1ptXH41RWNWEq0FHl0ULREQCwX9IcYZuEt0
         0lMLVFZNf3qeav/cOJCBtaqlcvcfOEhH3wx49N8EykVORZk7usge2y51y1Q8RsTofqOc
         /4nH3Yy2Giey//AH3IgMajBP4MBQVhxPuVRV9Wl0xXGRPzEVmc/lURNYLbW61kw4N4DG
         KThGC1IYcLy5YNkV6FrwrTY84GfFyRoQaDpwhsuY1gYjbmupCO2DhS3XwvPY5H+p9gvp
         FgjF9VsDxJipaOBQoVrFx9K9n8cHE+PyBX9JeQFJPcOQrxWkxaf5FtQblYUaXS9hXcXr
         aS7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784895782; x=1785500582;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=swyQuDarVDN5VJVqjAFVM+bZ5jRGsu+zccVbSS0Cmqc=;
        b=l41z+mavth2pX0bimq767Mxbm/YEfY+xhxWsXRZHYZG55Ts02s0GcNM6VsRJDx2hFu
         CMrbj5sosksWT0qJwWVML+pX3+93bazGlCZrY+poTNeFOBOFReNywCz82FFT+H61I22m
         WcdGOIfm+6LaphfsPy/mcjYfu6UG3Lradw4SUzeq/wkkrD0X+Ebeme93eekDI0oHgHrW
         wteoa9JxC5Tij5NBX3XVJ61PSJqts8AQhn1QNaP0glElOyqU9o4Np0zKvNdw+7m+Yvne
         JbQpKYNRAFLWvBscC64frRA5qPk3ITVDGJ4oHZBau7s5CYEKXSKgiI6Wc4U58k9mkppN
         RCdw==
X-Forwarded-Encrypted: i=1; AHgh+RqpXOf96cZ008ysnYZ++lHK/IvUmHSYdxl33gNCicvD2XsjmG1jq/btcnR1F7M/wcYpLHP/GDOWAXfFReXUgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjC5RCy2LWeubLfYGklJrU6sn6YcieI94Yzog0J2nqdF2DSRFs
	XRggWqWGZGT32nEImgCln6sGasamNFjMX8XiSfoqWuTMrsYGoT1en/174ZKWlqqsC6nlDitUhAK
	s2us32gBgF0JTH9o94xC/zuQBfVUyDa1oZdxrlEpqStBfVXPSp8w7wX3cjTyKiqdwSyddW1wAhu
	k=
X-Gm-Gg: AR+sD12DBqOJGQL4J9IsMy8tXfFUoiCOGtI0eQz1WJHXEErk+s9+gfcqlIEsMLtDNQx
	xnkkhFaXJ6n+OVrR1aTIuPtnt3DIId+hcZf6T0Z1tW66OHbWDPl8xKNCFHP+Smr3JcwWCzzHU+l
	iTbnsJ4wXuX0wVxsfauNAl7bxmfUOyXwvKFecTGo8oJ/uEpm08At9zqdQH1xLDyp5Cw5mLRZqJH
	SbGPfobjT90ODOD1i+riTXXM7w1YcErMW8qWtz8xVD+rj0gxl+tclT74WzQsD+9qCvU1tgAQ9wD
	FP0xNgV2PIp4O0dAObMs0jDCG0nPcMQZkYdpAujRUk48VJqWhz/Tu87JyogmbI52u5rZYfV/kpk
	Gj1xEfN1SswJNTbyXONJ1hJpO
X-Received: by 2002:a05:622a:6208:b0:51c:11b4:6b24 with SMTP id d75a77b69052e-528496c5744mr31380871cf.3.1784895782001;
        Fri, 24 Jul 2026 05:23:02 -0700 (PDT)
X-Received: by 2002:a05:622a:6208:b0:51c:11b4:6b24 with SMTP id d75a77b69052e-528496c5744mr31380561cf.3.1784895781535;
        Fri, 24 Jul 2026 05:23:01 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ebad78sm339747966b.46.2026.07.24.05.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2026 05:23:00 -0700 (PDT)
Message-ID: <720eb684-ae89-4003-b167-e427b4d31add@oss.qualcomm.com>
Date: Fri, 24 Jul 2026 14:22:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] clk: qcom: clean-up simple provider misuse of the
 consumer API
To: Jerome Brunet <jbrunet@baylibre.com>, Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Heiko Stuebner <heiko@sntech.de>,
        Prashant Gaikwad <pgaikwad@nvidia.com>,
        Thierry Reding <thierry.reding@kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Tero Kristo <kristo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
 <20260724-clk-provider-simple-clean-v2-2-56f306156d25@baylibre.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260724-clk-provider-simple-clean-v2-2-56f306156d25@baylibre.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI0MDExMiBTYWx0ZWRfX9IDa7U5pGwnT
 YbcQUDmxju6Woh3SjvT+spxMUe2KNnUQtBsQILXkDyA3OFQIJgu1in5BCjodQc8xSOge94iFVzn
 w92FN02476KpuwSHVodPt2BmlFKOEs3FDskDbPiTwaARKgV2PxqYGkvM77v0Inc8+lZp3RMhkOO
 TIyc6GEqXVrkc2KjIGNNPseN+MKm4G2eImDcn35IXQiFqHPl49MXUcu+uP8+3TGmOXdyVbKAmu9
 rU/eg4VvC3pre0XSyhA3t92sFSfS1YuOT31EnRnKaCK3CLXY2BGca9CRAuFiU3G2fN+LLsE5C1B
 aUFhYzamAVZw5ev7fT3VAxdCYxiG6DJnoIIdvhFnl8hP9xEY0IeAFqkoKB53UmBXPACSlN95qBi
 LHRtvuRxFwx7RhF4b1h7S/OR+4xefZTHQOR5h+vk4F3vk5CemPUIfyCqd0uumIE43z/F4UWtMaK
 AY4b3igVNgNJWLVXQLA==
X-Authority-Analysis: v=2.4 cv=RJeD2Yi+ c=1 sm=1 tr=0 ts=6a635926 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=20KFwNOVAAAA:8 a=IpJZQVW2AAAA:8 a=EUspDBNiAAAA:8 a=4bE8Fl-H3dgRu3KWX3sA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=IawgGOuG5U0WyFbmm1f5:22
X-Proofpoint-ORIG-GUID: 8A8zREmSoK5q0KjiQgWqJD74_fF6JCD-
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI0MDExMiBTYWx0ZWRfX2Nf1gPRBmbZc
 l0tJ6O/6brg8HR4QdO5NXBd3Z+eDxxpyvvZcXTwjXamdxmHKNUo/snvAyUDnv6WsMA/623U2/5V
 YBYdVKWpFVT6untn3xDF8RZWiZyzOxE=
X-Proofpoint-GUID: 8A8zREmSoK5q0KjiQgWqJD74_fF6JCD-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-24_02,2026-07-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 phishscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607240112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_052303_670930_5B38C7BD 
X-CRM114-Status: UNSURE (   9.77  )
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

On 7/24/26 11:03 AM, Jerome Brunet wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
> 
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist.
> 
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
