Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C282BC8303C
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jul 2025 13:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAuUKCDddf6+mDS/SPSegF2H5Hjh6XUMcnfoEgQRTvE=; b=Hk6OmDp46DqgJo
	U5qEUlVwyV65vUlPgffatKgeeLfAC00tXrNzIoiJRWafvknsrBV3sGwGw1I4Tr+eAF0wlXCv/QueK
	gXILA+vM2PACU7m/e1MeC6mamF4H0Fjxl1iyynl3BgYTK8eLrodcKaBKofidOA4BOJmfP08UfQmDm
	jdCO3mypG68dWqTFR1FSJIp5SVBScFVvyWlWIT5wd4yvBm1FYk42io621VqITi8FozRhVIeGwTMkg
	UFXcM/2iLjkHIkND3Uu1MuPXK0X+UqyfoetvKUkD0z9bW+O6PYzNEfVMs0JAi7RTG+gXKxB4TIYZd
	9Lulkm4MbouhtgitSsjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY2uC-0000000GYLw-0V6c;
	Sat, 05 Jul 2025 13:26:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uY2rt-0000000GYDd-3Pwc
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Jul 2025 13:23:51 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 565CVvBb008559
	for <linux-rockchip@lists.infradead.org>; Sat, 5 Jul 2025 13:23:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6gQMTAhe570YE3iP8EB5vKYr
	zv7CsKlrKa8/6xKU6bc=; b=jGwZBNsY7lfBhGGTTJVDaY9eFTydbEkTCwD1Hlhm
	Ix1Gky9BvXFb5OosVwbFQ4uv3nGR9tGfs00cxghq+hDrGLmjMwLuMedkqKKfOdB9
	KYXD6UHMkfHeooPO8AhFsMp4r7VmU/A4UoVYVwy74oJrhv7l0EN57Ky34lftYnnH
	7Xcgqk7KYNSKEpab6ZdZoOJhHHHGnATSoXUOlq4Ut1P+62k8xOfNVuhI96rmSE6W
	qynR5cXcs/jHqRQd4yWqoXy36nyn5f/k6uF58LGvaG4rRT7AdEUUBgqi+jI825QI
	5cki/napIsViskMvYegppWip/CsErU45B8CUvxVFOKuZUQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pun214kr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 05 Jul 2025 13:23:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d40f335529so430885885a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Jul 2025 06:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751721826; x=1752326626;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gQMTAhe570YE3iP8EB5vKYrzv7CsKlrKa8/6xKU6bc=;
        b=G1Npmt1vcTiAFSDEbH1cxWHU3nx60eWfw9bxxyJVSBRpZapcQH9dSY5hFRIXMATwUR
         OuMUHw7jGW2ONUbo0FTPaAxHXK91KKBJVC7iYs+VmtDEb1GvOVNi1ziiF7alG4jtzc/M
         ssj+2zc9uGj2bOpkT5DSKO/cPwCdhsG9/VgavMuQMo6FbQCA0XBMg9pEfHaPqzO1ntCv
         up9NHY3BfHerexgBvAzbjqHoS3OwOUf2L1TlvvDEq3tVGMuU2vbU8or7B0E1SUR+FQfs
         0u2IlPDqloJTKAICzOpL8yjf/y3gxcIKgRKbUPjZ9dQtyo24AvUZ6vQMAvMR2DPEy7+V
         hhpA==
X-Forwarded-Encrypted: i=1; AJvYcCVoGpQX0qgy846UBM3cWZ1N/A86kb7qrqT9rW8hqJpy4kahCcKZvBtg208IZbx9TVnaxrDqj2IzZYuJQOqR+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyr8+zJ3MwO9OSlTIjYsrzLs6HD7998Y/7jKvPryvNaLpyfmHTz
	J5AKhMQK0AeznS13Tq9OVFF6DXhAnnXHSuPCUHcMPhTODgiFTPglgeZU/oHwavtquWqLg8gjjc9
	L8bxRj3IyIkOmXLFVMsnNb7GdSNdd+oBMHLoX6BpNHRFx02EwvCowj7nyMtRqi5YMmAgisFvmgn
	w=
X-Gm-Gg: ASbGncssLJ8P3fUdBEGZsGueRB6DQiRedVakdEOqlHt1LetKUPPRwkf4rb1AjwWlLsE
	IEiRCimIy9uudUyjYaiRqHmq4xYejnGy+duUYVKmKAC9eiHJsiliq/MHKY75Ezhccu4hL9eIKvL
	IZVMVO9JvQD1+lNNVQyn1vax+TA+8M/1FnWknrLwa97NLQXYW2FP9BFgwV3Kwbu4Dqd0YGr5aOW
	JpOI1qwZuqvq0CtpntCsFWcgdkOnElmRzTSyejT46MX7S2raAxuZqgi/dLsvhxUXk/Ex3mHmSIo
	aHCW5AzArYWPwRCXKoFH+71EAmctOXjpphfuuO5ploWPH3OpUDBCpe4C8UEVJtsSjMCVYqV48m8
	acpiPrLjb7LeGGEnYDhJ5Gp8cz2AH+YVJq2E=
X-Received: by 2002:a05:620a:1727:b0:7c7:c1f8:34eb with SMTP id af79cd13be357-7d5dc6d1daamr909522785a.23.1751721826508;
        Sat, 05 Jul 2025 06:23:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHanLfpu80wvQenehta9woxKfrNX6xaaUmW++9VxpAOncuk4XTvJSIeGS9ggcbqk0Z1zosQRw==
X-Received: by 2002:a05:620a:1727:b0:7c7:c1f8:34eb with SMTP id af79cd13be357-7d5dc6d1daamr909517685a.23.1751721826031;
        Sat, 05 Jul 2025 06:23:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556384ce344sm585559e87.244.2025.07.05.06.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jul 2025 06:23:45 -0700 (PDT)
Date: Sat, 5 Jul 2025 16:23:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Algea Cao <algea.cao@rock-chips.com>,
        Derek Foreman <derek.foreman@collabora.com>
Subject: Re: [PATCH 2/5] drm/bridge: dw-hdmi-qp: Add CEC support
Message-ID: <ahnm4oor4qiac55zyggwe3ndxn346cx2bpzghb5j5wwmfjmdyx@gt6e5fjyq3rs>
References: <20250704-rk3588-hdmi-cec-v1-0-2bd8de8700cd@collabora.com>
 <20250704-rk3588-hdmi-cec-v1-2-2bd8de8700cd@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250704-rk3588-hdmi-cec-v1-2-2bd8de8700cd@collabora.com>
X-Proofpoint-GUID: RzRVGg7FlhfqO5IBZq4h_JnyW2pvwAzq
X-Authority-Analysis: v=2.4 cv=GdUXnRXL c=1 sm=1 tr=0 ts=68692763 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=V37JziMzuUeit7xzw6UA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: RzRVGg7FlhfqO5IBZq4h_JnyW2pvwAzq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA1MDA4NyBTYWx0ZWRfXzViF8E4Z0BXp
 EpZJycZ0DNAHfMmmP7G9qqqX/Xk+MEhHdomHtG16csJwL8EUz4pYMPMB8jSyLI7poFcg/hOo1WV
 cheNl6tEHENSvdXdz0v+8HBsp0x1bNtmeUc90ZxpmC+r85XoR/kfOLN6Xt8tw1ZGTy/IoiX4tfv
 MQ3etgEukJITigKqltuM8tbpBAe1pH4eDf3yEkRKnqYiPxesTtd9+dw+HLeYYcT9x0NEHTY5mpS
 ArZt9CiGv36rE9/J9Pdpi0jiujJlt+mZUYU7ZlnDDDXnyRW1sVM/GTGenesbNt+CNIeIvBnNN09
 U8UnCHzZQe9648GpajFgjz9vdk0FGxJT89BflyfWPuBIMRM/a4Yi/CTDPsWvyZP84nDeYVEfrPm
 8+Gksq3Sxl0E2F8pjzAT2HzRoXISVeSDs6gklyQfv4NOHgP6VSPPGdgsNA4BU+E5KUz5FtWG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 malwarescore=0 mlxscore=0 phishscore=0 impostorscore=0 suspectscore=0
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507050087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_062349_966368_92FD18ED 
X-CRM114-Status: GOOD (  13.29  )
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

On Fri, Jul 04, 2025 at 05:23:23PM +0300, Cristian Ciocaltea wrote:
> Add support for the CEC interface of the Synopsys DesignWare HDMI QP TX
> controller.
> 
> This is based on the downstream implementation, but rewritten on top of
> the CEC helpers added recently to the DRM HDMI connector framework.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Co-developed-by: Derek Foreman <derek.foreman@collabora.com>
> Signed-off-by: Derek Foreman <derek.foreman@collabora.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/Kconfig      |   8 +
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 220 +++++++++++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h |  14 ++
>  3 files changed, 242 insertions(+)

For the DRM CEC parts only:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
