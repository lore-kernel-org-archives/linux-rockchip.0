Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EFF6C87FCF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 12:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QF5VxO2uZr9uxui4TEGDRKK3rBpLCzKzA2U+Viam14w=; b=d36DtHUZgIt1yq
	ciLUz+cz5NoRLGSir/9eFd3mdqrlUTg75MluH6eVt/4/4nq6Vn9qJzHN4g+LhjUWAukjv2zFb1DtV
	pCyHjgJfVUElC2d1s05XkttG+N4RU9DfubJcywfbuWC3XHT/gu0NzB1Ezt8lFmqJgwq7ixG1fd72w
	fUfWVYCfFHtDa+/zjRGpYQkTksi2+6eJsZwepwtSnOAJSP1BXDpWTEd1cGPETG4EUQHEukgXxsC3K
	aUvkEBErRbD/E2WvxbRK2MWKlfTygApuxPei6D0JelJqCGNby+gklzVOJt4e4iaSEG/PuEpuYL1pT
	v1fbFyTOesDMKrSJR+gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufdfO-0000000BQch-33WB;
	Sat, 26 Jul 2025 12:06:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufdcw-0000000BQMd-0MqY
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 12:03:48 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56QBRPc6007894
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 12:03:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1D6BmR83TK96SbIkz00tF236
	OzVTpRaO1A1uvpbe2kU=; b=o6+UkxTW9yXrNwNRUGXnacOqvHp4+4zOl/lOH+rD
	eIiLIB3ZeSD0ltmuqE029Glavkd3ATJLxAJxi/1fEBNsUvQl2H206QImn/vkyEUG
	CZ7wDU/bRB0ERd2Ko+g21RL7Nb/SODcCrErqZUl3/0ulLg4dZQyvn0zagOhI3Ccy
	Bgq/FImLNqQm3rEbe/9Xq5GSrDwK0biq5ZpImS92MFZPyc1fWAs8jF/vmb/Z7qd8
	37Ah6SKo8QYGFlQ0YMn2sdVW9EIvHl2BhmWnN6iseHjFwE5bZaqeo7K4suU9+F1Y
	E1iEb5F5idMvFr6HIybVTcBWUV+hYJFc6I4iffu+GU39Ug==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484q3xgjvj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 12:03:43 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb50d92061so46888936d6.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 05:03:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753531423; x=1754136223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1D6BmR83TK96SbIkz00tF236OzVTpRaO1A1uvpbe2kU=;
        b=kaWl5wl5OZ2bppIhkvEWP/U8IjK0UFnlnIWDiBME8tUJvP4y88dCRBtekNY7ZhVf44
         yPOZFjz45NKSAr2yqOPj3SN00Zimvs9uvUUmsPtZHrPFYXT3mkUfahGLAcsdE5id/zFr
         /HjWqNQHK1ZRZHIYGOI3s8EeIkReVvZfYJeXzKv/GbWlFK9kZ4EDUbkq7yyiRyVePi0N
         6ibaKd0T590UrL2DoNGJqHpvTftDE3hvI9GprkfL1z2CTh1TPE7idbGwTOttSzMEG67K
         OvZdehC0lduiVa9kkJ0O+8DHEFcoj1nh5G6uGEqiq9tg1xljMTlsuDRy6iA+KBSwCPvR
         Qk7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwjnlqUKcl5U+F+H/8kXzB3j1w0Thk8a0qV/5z0R88KlJ2bpzs5MaSK/KpgkChIJMVP8ghLJl2KVHcE2muEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYqcBBPbbBNscStBbIlLkh3IEWMRkmvS4CNKs6elShQScA1Bpl
	tnVY7gsPQXR2DV6NOHXqvrJLSvtTtKrH4yd66eSBoSFFVFpeaJUJ0AdslpPtKWLpJxtJYuP3UX+
	aNe5e9csglWgW/EB1RnEo6zgpioJHyeqvTL25Vjfe3DOGNB7AgGgAKjGTPaAkc0cQkWMxy4+3ds
	A=
X-Gm-Gg: ASbGncvoCecujJGCsDSRjU0ssUsXmdIg644E/uodQESxDvWf3Lp3LluD60Xs6IetfwI
	fzCf6DIdAt/gkjOT1D6rSiLEndG4Gc7h1UbWQQy1rYk2aEKl5EFeEUp42NDROnBjtsalkzOlrjF
	B8FwxLLb8/sMDvY72epFqFYsJDURaQmLfdeXY9dPKPdCi02mYktcO/+ecn6ii62OOrA7dRihSCw
	M78l4ihvEuO3kqTnrsflPJBnfdhKZr4JALIuTFt/uvcKlX8l3OsdV/GLwFpcXsR3k6OLtfNa7R+
	xdag0BljE7bmsI03mhgGUsqw0RRhv5nizjNxjScN37cv+gVknphkd0/IBbdpPXRLTzFs1U40ADM
	IMOWl2TKVBraPs2ExbDFuqwPlhydfCjLpjIjY4sspMx967tQ5wN0Q
X-Received: by 2002:a05:6214:4e06:b0:707:2230:b6af with SMTP id 6a1803df08f44-7072230be23mr48057986d6.44.1753531422894;
        Sat, 26 Jul 2025 05:03:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXvFtpJkzYIeiG9nyGHhRK7mR3gLP3VEEBXF+lBE97EG8zozjWb6VOoTWSf2I5TC70nhrV3g==
X-Received: by 2002:a05:6214:4e06:b0:707:2230:b6af with SMTP id 6a1803df08f44-7072230be23mr48057536d6.44.1753531422345;
        Sat, 26 Jul 2025 05:03:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f40b339bsm4061511fa.23.2025.07.26.05.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 05:03:41 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:03:39 +0300
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
Subject: Re: [PATCH v3 09/14] drm/bridge: analogix_dp: Add support to find
 panel or bridge
Message-ID: <kulhumudepz3lqm6c36wbqtc4gv35pyqki7el63bovnvxcsjkk@nbxijrujm2vz>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-10-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-10-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=JovxrN4C c=1 sm=1 tr=0 ts=6884c41f cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=cGmNtDV8R6BPqPJYracA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: -i5VwqUI89PJR-g1ymCy73Bnl6MtsiGn
X-Proofpoint-GUID: -i5VwqUI89PJR-g1ymCy73Bnl6MtsiGn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNCBTYWx0ZWRfX84kCy0FJrTG+
 K58YPRxbJiJAjDXcSReYssN6jmo+NLrMT9giqyMf88yrVwxBOcJDIH2yNPt5gGlD8Mj088iEGzA
 NshNJqoVAEDhmsQLOOt+LYUeOc8g90eMTu55VdYYeDGR7ML06NBVPxCLutF5Zicwf8oKUvNZ6NT
 AS/lU4eTSS1OODCmYbFTkZyxKH9OwDXLhW/Suyfk2NTDWMcscwh8CI2RpnsnDnSXCforwbOkLR+
 VNkFmXsoCFjr0w5zTHqZEeLNBA7291eMzL0PW2V2ivDE9LWJAnxlAGS6ngjopTOaR+aSH9oFqjI
 agRjCFCI+WOBPcYNM4BX1F3UOKYCkCmiGIOerqSAa/ks4Cas121cxKmhQuuhZ8hXutazxMcdUhd
 lZsmVCkUBs9QBmMFhqHwrJlTmLpZintWG+Tptw6s/gzISQlxHlbWaslgdOOCFB7KRrP4zELZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 bulkscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 spamscore=0 mlxlogscore=999
 mlxscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250726_050346_235949_5C15AC4D 
X-CRM114-Status: GOOD (  15.59  )
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

On Thu, Jul 24, 2025 at 04:02:59PM +0800, Damon Ding wrote:
> Since the panel/bridge should logically be positioned behind the
> Analogix bridge in the display pipeline, it makes sense to handle
> the panel/bridge parsing on the Analogix side.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../drm/bridge/analogix/analogix_dp_core.c    | 48 +++++++++++++++++++
>  include/drm/bridge/analogix_dp.h              |  2 +
>  2 files changed, 50 insertions(+)
> 
> +int analogix_dp_find_panel_or_bridge(struct analogix_dp_device *dp)

Nit: the API does more than just finding the panel or bridge. Also the
drivers use it in a more of 'analogix_dp_finish_probe()' manner.

> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
