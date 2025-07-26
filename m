Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846F1C87FCA
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 00:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6Y4lBbHE4cEI3BOT3D13+gbfQUgj8oR5L98Cl5LsfM=; b=4yYxUamWuU4nGL
	b3BX2upObGlN3EKahtodoX1gKIlhKo+YfIeNj0ARGUNsQwqbcuIB2A94RuhMQGyTF9Ha/XDl5SSQn
	qomS8E6++B9Qvxqb8C2UT2H6793M1XfwOTjjvCxJOi1WhclQMc5qsQUoMfnc0xf7NyfijCMfdk78L
	FSci7BluEbBWAzgyO0MZOeiQAeVpmwab2ZjvaOnRQZgrZXfGVd28ZphKr/yEaO4hURzOCn59mBSMp
	ThJDSpSUEz86o9Hb1qz1sevupj6Eo1nTOfa0gEgIUqaMPRf1upwnpJI0Mg7Lgg1yBTbXiSf8bBASU
	/12f2P8M2UvKOSWuAcpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSiQ-0000000AxFA-1Eja;
	Sat, 26 Jul 2025 00:24:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSZQ-0000000AwYQ-32fo
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 00:15:25 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PKm8HZ012718
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:15:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Wc7wbesunn622E6lhLM0ZKBY
	dN3sWZP6DO3RHiTM7ok=; b=ShqQ6KY+EvXQdv+pJtp207j/oBCI6PI91JG+xF4K
	ENbUXrQUsRqAImbFnEwjKPynhDig8hIXtaqX0Dsu9OWjF0Qg8waVyefba1Uje4Di
	VN55T/vSLEfn6JkUM3LcMG9BlQuIpotnjVBTiaKe86e5Q8JAJ2zxwZ5n1yuHfyvS
	pUSrAnAYTobW88AWgrAkeh9zycMsi7Nm6W25wPprgLQ15uHBXVGnKA3o47zFrcCf
	Bq+RKgMEz2qaN9SJZZaLxrbGM2H1xEoiGX+NrqlwMUD8WafEgrklNZiUR1fGknOh
	PpGRPXoSvX8BqZ6VO3oOc9xnZPO3oI4l8Wh8vlVFJFTmZQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w503sdk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:15:22 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb50d92061so41204996d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 17:15:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753488922; x=1754093722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wc7wbesunn622E6lhLM0ZKBYdN3sWZP6DO3RHiTM7ok=;
        b=T1TQnGIetIpIYQKrO59j2whIvM1mji/ZYYFpK5Q1TjY18XzjDmeHIT8Se1fUZo8kur
         uaPD3bw+l/jnb4zQEh3GHrcd0qmeDp4Acz6LSTyDdL7IJV988KehP9vJ6gkBqaIJHLiG
         zbycHbgXZXe8/z0yzN3kqbOd7Upa+HGTJRGToqxiI6rnqHI10W0EixPq5tNAuOe5WQsc
         mYb4g6milw++4j/3axUlMOXdqru20Q4mqMI7PPy9DyA6FC8i/wTSDZweEijyq4HE2eIk
         FMB7IMI5HB3cTccGNrTMD/pEVB/UGpTcx3btSknAWQ5WnZnhETSzWD5nfhNgpkPRd/qa
         TP5g==
X-Forwarded-Encrypted: i=1; AJvYcCXOEfLbNDOQapdT8kfh+UhsmL/Q4ScNb+ieSMeoOwI5UARUQHfQ9A4zvHOITnszzD4OP9h56WTkQb9Y/Kfm2g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyKtIrscmiT7839iQk068sEfUygILEXSVU3Sr0eNScIZe49B8R8
	kYISbIVqhA0upKo9f5QV/BhPhlFnMjE8+DK/OK7QDTs1DxjktgS1+F9LCPbd+k7jQVxw+/z6ROw
	P91ocDDEVwSHrfa97j7EmSx5PRmcdHE1odBcnEkxSDfmF+/jOM9pR0xlfLsU50k3XqOVKm4UaLB
	E=
X-Gm-Gg: ASbGnctY0bEiLQxE3ZYFowrRj7mRirHeUNVe3GWRy8r2KeNpWmf+02L4Tk86rlUYVRB
	dNnmQr6mjYCi7Giv+895ggZOj4BhCT04MD0RPBpDAUqn7b78oChvsSHw+rmdjBC6GRUGxhJeWFh
	/wNAl5bRpDykEuuXpoEmR1LHHBAFNKA5hr7rpMVODlVWdI1GNWPjfA7lrRTgFNdQ8mXhKFpKRHF
	uH1zTDrX3JS4ueEVHZ8XF5wz8jEXL42lybsvwxHM7Hsa8T2CVJRbPXEaix2m7SOcpeZWd/mHhlf
	7hGd/wLLqnXlKhyU0rNoA3r8mzSJn402I6FOmDx2PgrDLhA7CPAAl2BxE3egipCPE5jj2kwaakd
	QaIGgsS3QYJTeRezpVgJwaWwQPqCM+6CtAKW1EBH3m2xg6qzFzr2e
X-Received: by 2002:a05:6214:2a88:b0:6fa:cc39:68 with SMTP id 6a1803df08f44-7072053c3b5mr42704356d6.15.1753488922022;
        Fri, 25 Jul 2025 17:15:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxKX4spzgAgy045riATOyKNu99U7axrHMs7Vy4UMZ91CFAU7dGAREfsaxr4wy+fd4nCMcT2A==
X-Received: by 2002:a05:6214:2a88:b0:6fa:cc39:68 with SMTP id 6a1803df08f44-7072053c3b5mr42704086d6.15.1753488921541;
        Fri, 25 Jul 2025 17:15:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f427c501sm2101441fa.77.2025.07.25.17.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 17:15:19 -0700 (PDT)
Date: Sat, 26 Jul 2025 03:15:17 +0300
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
Subject: Re: [PATCH v3 04/14] drm/bridge: analogix_dp: Add
 &analogix_dp_plat_data.bridge
Message-ID: <kmgosc2oboburyxrk6drvfghqg3eo3z7pbeywlui523aoqyuqv@uyog5cv2ijq3>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-5-damon.ding@rock-chips.com>
X-Proofpoint-GUID: 2zJuXhKt7Nu1R8nzXzNK-VFKtdc9oHIb
X-Proofpoint-ORIG-GUID: 2zJuXhKt7Nu1R8nzXzNK-VFKtdc9oHIb
X-Authority-Analysis: v=2.4 cv=bKAWIO+Z c=1 sm=1 tr=0 ts=68841e1a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=Ui6KuL_mdHivunMvz7MA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwOCBTYWx0ZWRfXyqlTJ6VPAaht
 /+IfuZIy9jBtgunHRzpwzTfJYUOJLFV/eMb+ahxeHHY1s0u/qc0R0GxjKxJOjcQ/n0nvsBLppP6
 YlT0japoTKDM1b1CXy2DuDtLZ3hh+hsdsAgghS14/oOK9tyCgKDy5HVxNmXjyzOau4o60FmUha7
 yyLlY9Ev3JycP25CrCOLg48V4luUMgI33goKqzBRwHxFaR9cQaQWZtnkwxsBVRd3hxpSOLvAkEK
 DlDcoqH4jieFZ96S83U3PfdkqfjujKfs+x8fAx1OL0T9qymJzUt6jAARSFVfS0YzjGMolk8hHZt
 ePgBCR5YmwXNBswKU19qZQ68RKzmjTKt7m5dvqjofSpF/BQpB4RXty30i7iYFM8NUQ8Ia2VpmyC
 2ZPiKLTejHdNiqmvnD11s1TxDskDMkQv9X0vUzT/yQdS9MfjyJ+5RjYK37NduAHl0VvUywts
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_07,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 spamscore=0 mlxlogscore=999 clxscore=1015
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_171524_898384_FD5BB824 
X-CRM114-Status: GOOD (  14.22  )
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

On Thu, Jul 24, 2025 at 04:02:54PM +0800, Damon Ding wrote:
> In order to move the parnel/bridge parsing and attachmenet to the
> Analogix side, add component struct drm_bridge *bridge to platform
> data struct analogix_dp_plat_data.
> 
> The movemenet makes sense because the panel/bridge should logically
> be positioned behind the Analogix bridge in the display pipeline.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  include/drm/bridge/analogix_dp.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
