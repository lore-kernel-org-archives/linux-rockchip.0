Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C1C1C87FCE
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 00:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWavinKwpBo/CmggFo2kJGhyOpEl+UQqEofl0yGM+Bo=; b=VlDZget1LCoa/9
	LEqsPUNyBBbCgxBZnMlNTSuOdWsWF5eqZmwqpwUNn4dtYE51jlLibzOWfB7NmJgfSVfEhLl1b10vk
	BJY2HwzHnzCX5JZg9/36NyhNrQv2IzAJ2fgWEJfRPR/kXvq4t+lmlIweRCNFJuMw4OmN839e9Orc9
	SawRv+ln5lDFqFWQx+d/C71RaF5aEyC3/XoE4Sun7t3g6JMLeBZ1hD1eU+afpXSx51qKHkw3blJrZ
	pRrSBu1PdWNlakK0bnUT5ZNiDF+cNFdZM+DFz3FVnETYcRfdZ+ABnDARhVh9MrVNidV4oIO5IfHdL
	0ieHfTy+kKgSR1SzrxSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSiP-0000000AxEz-40St;
	Sat, 26 Jul 2025 00:24:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSZB-0000000AwUv-3Bbq
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 00:15:11 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PID0uH004704
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:15:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EtYLr/SHernycwo/uLJDpSmW
	e/0fY0sBOUuxVsASxyo=; b=YtUz99jy4hrPtvY31jcLkeAuD8BdeWHNdkfy6UYV
	2VbnSKPbS8S6BXSvbrAQAKy5QvUUbO/LgJeBEqDWq9NyYHtpzohVGT17gDrFYl04
	1II9/temRvO2Q1rcgeRtwpKpWOnAgndJpLjCLXO66x4hwpbHreCCJMb1KVprJ3l7
	zG9Y85rggGeq8SUG8GZYjNAApYZV75MJdaS3oOk0NIHKIjZMmvLwSsC7454HuQzY
	IsOdPnVtrsEbkrKGFGZlVmgiYuBd5TThQYdcSogkC1pVDcf39gYdQLNoQiUF8JUZ
	2sDXjdq/EgTAQov5j/LtyoeiBlnOJseAWEs31sIrAD7LgA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2kuwbm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:15:09 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-707205f0405so26478116d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 17:15:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753488908; x=1754093708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EtYLr/SHernycwo/uLJDpSmWe/0fY0sBOUuxVsASxyo=;
        b=Xi4Rb1TQfUGMyUvSYKo6L3r9LAb9GuNBEVD1WQXtv7HDe2FThK9aRYgOfdDQbF+7w6
         XqCxSJ+liP5suUuYocnmX8aUHRjZdmJZrcENrCuqnL4jAQkqcIoTXp13DzXNND2ax5pR
         RQIQ2k8+dm8dtxoTLznzaBWynnNlsWM5/5vgbbBii6ulqc3//fVaPUPzcFtMfBsb+axv
         lJANhLDHZuJ0pmTbFB+vDkqVlLGyZywRGD4lvfYbgWTWwfVi6l/giyP9K433Nrv45BWx
         4wPb79BkqLstvDXCp+vWGedaPjZ1yaRZD1xLS746WTBERVAjPD8+lYNHeyZIAXghmFpU
         kDLg==
X-Forwarded-Encrypted: i=1; AJvYcCUK4cztbu7UHagMbeRjseL0BW1bNsXgyF6C6xbhTzMK2vthB6adpcsfHJdWD5pXa931JPU4nvotFUh+GUYhSw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxSZUrS//i7DXaLE9LV5hPcWD5mU4Mm7Ewc0sFVMWimuzyev1jW
	++UV5cN3RtNrt5RC2pxP2nHYBueYfQIBZ8YVAOZLDT5qnFD7epHO2L1glRbWOAHOYFFbc1ODkv2
	cRELHin9Gi/wTGUryh+8jYkPuThX2G6IUe/hMJQu0kKttQrtFitOmYEG0XBkrtzxXEYrOXxTV7n
	g=
X-Gm-Gg: ASbGncsWX4clkZKfRD2bX5mydetKyMbuExJsujWHzGTfbTDwokwQPo1DvRCfxAjfVoD
	3VN3RPOBckTD2JfAqLEdd3xu2QlVfKavql0LAa8mqu+lgA814cvZSWiIrNQD0AVHifHA0rxDxB5
	pnsnwETsSTEDmMprP8L1AUa+SGJfmb1aqrMJsGy4ceOhY8CQ6xObWuW+ntSnE8Hh5IW4zJjygRf
	WJe55i9xVqKqwvf7L3nK1R+oPRhjIlVuoue8CuT/J+R9OFkk9Rr1pOG1IbdMgSrbEyhlsE7/Nkg
	MdUvm30+wU5R3kKsllHEg9GAhM3EK9rZQfwH12gQiFeGTr7EzEAMwORg6IlLjTB8ZVA7jWdT3wc
	lPV3Uibr539jRYLMqjenia/DsWefhZF+/e0Fr6KaOspg/rBatqe5V
X-Received: by 2002:a05:6214:76d:b0:700:fe38:6bd8 with SMTP id 6a1803df08f44-70720534e2fmr63158696d6.19.1753488907839;
        Fri, 25 Jul 2025 17:15:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGA7feK2RtwupaGDRpvYsF4Rqy8R6n6ic8d0JslPO41UFKrxITuNTj+z6HJSoPo9gemAdVjoA==
X-Received: by 2002:a05:6214:76d:b0:700:fe38:6bd8 with SMTP id 6a1803df08f44-70720534e2fmr63157946d6.19.1753488907363;
        Fri, 25 Jul 2025 17:15:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6316d99asm197710e87.31.2025.07.25.17.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 17:15:05 -0700 (PDT)
Date: Sat, 26 Jul 2025 03:15:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, l.stach@pengutronix.de, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 05/14] drm/exynos: exynos_dp: Remove
 &exynos_dp_device.ptn_bridge
Message-ID: <fkfivnqxpecqpqlk66nadp2lpmr6jxgudraiyu7skebb5qhnpd@i2jga7s4gqeh>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-6-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-6-damon.ding@rock-chips.com>
X-Proofpoint-GUID: XCygY4t4wi_aHoLlN0PioQCbJbprL1VB
X-Proofpoint-ORIG-GUID: XCygY4t4wi_aHoLlN0PioQCbJbprL1VB
X-Authority-Analysis: v=2.4 cv=QNtoRhLL c=1 sm=1 tr=0 ts=68841e0d cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=r8lg0YXQRZsV-nIv6pAA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwOCBTYWx0ZWRfXxSlvRg+88WeT
 EWhnJGihadENrvXvsHyAnmjvgF1Wrjw1no6zkjSZo7sFdlfvn5DRugq94jz1+nTyobCHg9DId0X
 9uwc4iapMudqoY1mS1kq9kcogVPBSCSH65/yXDM/LExRjE+TT0Rt8fESRTfVCL+YR7F8ojm+5J+
 hE2a/3Xq6br09A2nH5iZbUHh+Yy+QbAlQS1sZBPzbgC/j7i07sZ6l1idFDFcQ2ZpGkuICzLLjfb
 o4AllYouxdnwLPfsi4Akp1y220pD9mKpB3pzV4zULn7tU07liIS4S6U7rhqaIogcfYSao2cJiUZ
 8/4+E7VTQ6yzCqz9MgfA5FocXKRPRR77halHNOAXzfhVi3bvvCeneY/JRyS7T0S62hqjoXrk4t6
 jPIsTCL+gOdhDz0XZMVT2lbkH9pYRca/8a03prs3qAJnKIom3SHPDReRzMCVsk6a3UC+Y0lL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_07,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=911 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_171509_794668_35B24F26 
X-CRM114-Status: GOOD (  13.72  )
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

On Thu, Jul 24, 2025 at 04:02:55PM +0800, Damon Ding wrote:
> Use &analogix_dp_plat_data.bridge instead of &exynos_dp_device.ptn_bridge
> directly.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ------
> 
> Changes in v3:
> - Fix the typographical error for &dp->plat_data.bridge.
> ---
>  drivers/gpu/drm/exynos/exynos_dp.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
