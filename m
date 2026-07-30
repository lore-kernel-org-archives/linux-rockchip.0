Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C537CC55162
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 14:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5/utjBFP5SOEKRQ83IQC5zv3CqbJS9hyp5wCnErsbE=; b=y1332pT+PH69fS
	ACJrAyEJpYpPWyqORP3wZTbXkYMQA3bj0WGxtnhBo3zbyMyu+ofDf/rqz6l1VVApHc+Tk7+r1vBPc
	cgZAldt4TSyxSV7kBGL3/Us2SZw8vXSMuT4gYjDA9TkMld4pegoMVWY6R0bXlMrQn7+tfEZYUn13u
	mCWF+RNFGpxYfnkbX0BrVBxedldWeAvl+ThUGgyvDyx+BCdvLENODmzQsvcmjQxX5D1mIoSKgVHDE
	t+g3wofscPiFPW2TQpQdT5XZwOZZcIovhYxbDkMVL1E+15UxjV2Ma69x4XD2pOxdQKp4AHXntbz7h
	W41k1Uh8lki0v0RVBVCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRkb-0000000AkJC-1GfZ;
	Thu, 30 Jul 2026 14:28:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRkZ-0000000AkI8-04tn
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 14:28:44 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UDDFtX715737
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:28:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TeJATUx7ljVkLhlZlRGhQEAK
	TzXhPv+shwk0WDPgUfI=; b=C2YalGhSDICS4YRAXU2U+L8xwNORatJmUHoMwofp
	qqN7zufjbU8P37qCC9v/oSfnJTFw335fRWqFZRwWTwZvPjssYqUAJH1YqlvTybdY
	RaMXj8bmjYW1YnKlr2SmwhSDNWQAqe9hTkQ1ouKGjAlvZ1ILcJ6Oaw7hjjgJARMB
	RNA3nYnnNLijiCCoufJFiKBoc9YGo/+ghAfKIv7Eb3T53vJGWPAhiLUHIdEH1D/V
	fmyI8Sb4jwi5K2KRQlg1QS3hDE2hrTc7hC9bRyN5teYGXrmbUtmS6i/lRRXXP3vC
	OqsELm+b+ksxIjy1qcgPuEKkXGtiVd2YIRTyzOiKKt4uGA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr6ucrfpp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:28:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5283fa0656dso10950041cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 07:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785421721; x=1786026521; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TeJATUx7ljVkLhlZlRGhQEAKTzXhPv+shwk0WDPgUfI=;
        b=jaY80kRGOC+hwu2Caadux9NbbOj5fLw0sgzOUHleDR70SZoEBXDcOL5nOId9f1Z4Xn
         V/gKx9v0NSlzzlSAStJ7uWXDaIsMhjuJnggNxG6FmrpfYP3iAZecZD57ryUDeDwF+JnV
         Ma5AFc1njVnqDPtDZ6kbaVqoSIX95KiCc1fS8DyRB7JE5Nv62pjh0X6hafKf7rOSlBvW
         5jE3zLWd2eSVfdRsdcyJLYL4XZOg/02UH/nRQrwNyvYZej9PynPrC3Hu8N4eDP6NnVVh
         RC/oCmi6hXOSbNDOC2vXrtJbDaVCB20ozLFspja5CcTbFK0dj5oarDlvc2RR3PedKibH
         K5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785421721; x=1786026521;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TeJATUx7ljVkLhlZlRGhQEAKTzXhPv+shwk0WDPgUfI=;
        b=m2woKiGzRJxnfKCWa58qs6DQjmRqoIXBdH7utgAQ2HBqpZ04wx8ukwLD6bVtYx23pf
         Lln4b1Oh7FPv7a5hedLQXQmkIFnr24STU1KJRAv0awHfJghgPZCG25KVHkGQ5qtMi2xc
         CWh7wH85dJBxM5HI6VjCgYg7eNhWQ6bTEyuUxYRZ7ufd6YToma9xECzw06Cmxkf9GgJV
         VIzOZBya0s/4xwRBoWoCCXe/xyXn3E/2UCLqjZUZ6i7xu+5EBhVKq0POF7h/rLP4CLE3
         ij+PgmwrnKdLE9S+m/J7nDrsnq3YfWpTCYzNm8nryICOrr659dN8CU1RT+5sFuVyBBhp
         fV3Q==
X-Forwarded-Encrypted: i=1; AHgh+RqcQ78x/zbh5HnilHc0RDe2CGC14ZzuN8ZgroyCrKgaf+KnJby3CmZ3SINB/cItqoBnKfaWQjoVwD45yPluMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpigQX6qX/WKHMMGMteU9lKS+eNZsPrCzJiJi+zsSYZIU0WYpk
	DkAXzAFY0bGB5pV/x5niNXZ7yXAKDvEeLBC/cIWsc1Uxla5ipT9Eou1//r1jR1odPyoNiGK8I0m
	nK1s2WK5oHXnx9kKvAUrqS6t6NXQLvEpGEe28My5EaXlLStq4qZZ7uwQrNMir7p7Y2nZ5ta9cCu
	U=
X-Gm-Gg: AR+sD11UFxlxjRYnlBqxM4E+HcwlJ4BS3vFpojJw1BtOECVfJqZk5drn2DmV1FEIxvJ
	jVOUxlP1x2JlW6UcPsXBwyHXHqqkL7nGWr2KXe33mRSfC6a8SGKVYXtkDpWdpKiwwXaJ8MpPWIK
	ra+iyMTYPMLg7VuK80msClEiGrXSQs65CC6wP277jSfErXvh/QJs9/5nCGEkBmdA+yEHYRlG32F
	HShOvr1yqF8rBBmpDZuLIteNmWRhg7YEyAcLIVsXHRE0ldBUHh9YPhOw9LbGjtMv/0RvW7/aTxr
	UApazKbhOWL2pdlJeGk+umPiHaeqttqo2UkChrDwFE9sYAY7Syr/QMbSZLhCABetE51QjEAXYcv
	d3W06b5vPME3B51rfJnOK3/9ZN3fgbNeeePnjxkYigwk4QVFuIc7ZqJwmkmlnYkJeYfG1tAsHpE
	vuUP0I1Q9c1d66RQ==
X-Received: by 2002:a05:622a:a10:b0:517:9407:5c38 with SMTP id d75a77b69052e-52b425c7cfbmr6250291cf.24.1785421721203;
        Thu, 30 Jul 2026 07:28:41 -0700 (PDT)
X-Received: by 2002:a05:622a:a10:b0:517:9407:5c38 with SMTP id d75a77b69052e-52b425c7cfbmr6249781cf.24.1785421720708;
        Thu, 30 Jul 2026 07:28:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2db9c518bsm369768e87.59.2026.07.30.07.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 07:28:39 -0700 (PDT)
Date: Thu, 30 Jul 2026 17:28:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Algea Cao <algea.cao@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>,
        Phong LE <ple@baylibre.com>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-rockchip@lists.infradead.org,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v9 06/61] drm/display: scdc-helper: Add macro for
 connector-prefixed debug messages
Message-ID: <y5776gxmfby42d25sp4zxpevhuj5s7zs5sd2i4d5xe2dodlbwh@ovrkyvgakd3i>
References: <20260723-dw-hdmi-qp-scramb-v9-0-4fb12ea22ac9@collabora.com>
 <20260723-dw-hdmi-qp-scramb-v9-6-4fb12ea22ac9@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-dw-hdmi-qp-scramb-v9-6-4fb12ea22ac9@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDExMCBTYWx0ZWRfX3uG0EeHXDkzn
 amIdGhOZ0OrWV9/zLZor3kjSXU9bxtei0A41GwMqdB9uBkAQpTXt3w/7+u4HsWH0MHy8X1oVLYZ
 N+J8aWMMoMRpSbhUt/pYHAOGgW3MSVY=
X-Proofpoint-GUID: 1lITAWKb_DWImsMBC71WfPGMpEn4ra-Z
X-Proofpoint-ORIG-GUID: 1lITAWKb_DWImsMBC71WfPGMpEn4ra-Z
X-Authority-Analysis: v=2.4 cv=W6QIkxWk c=1 sm=1 tr=0 ts=6a6b5f9a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=69EAbJreAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=1j1XXGRfLVQr3Hd9viAA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDExMCBTYWx0ZWRfXzXQXC6VfxiLa
 69Sm1HMq+evJX6A3XoYuq01xZmWQocYadYN3CgiQkRyNu6th3D2s7a9iKS3QOayMvrVdWm7d2t/
 DekVOyrChqxgOYEROtqB/u0flJPxTti2ZkIA/P7keM8okFAtBsjrr348wHWeM+VwTeX+KpViKQV
 B6zMID6P+jJD6Gyl7QSyHo5Qp4BsCdDorLQLLMQk8ZjDS1opVWRK72/r/bs3zs7bkY3Gu4pSeIK
 LEaAU6ajwt+849H/VTDr9kiw0mrS9WfRjBxuFk879MTV8jHLRFjV3e572f5XUBr997bkEcgMwci
 EqlLItOmfE4zBH7jyXQ2L4THsmDynqnw4UR61ENc9oyq5Ip5iXtaQdad6NirQtaLqJOheYSp/hb
 ONuPqSfmCWLmVPQiWs2WqMuTNMRCAXJuQE2KZPDDgXrT239g/NdXLAg/BeVn2QeogbiLsRlE/cl
 7uVlzqVmLCOQj/8WoNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_072843_060294_9010964F 
X-CRM114-Status: GOOD (  13.22  )
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

On Thu, Jul 23, 2026 at 04:34:55AM +0300, Cristian Ciocaltea wrote:
> Introduce the drm_scdc_dbg() wrapper over drm_dbg_kms() to help getting
> rid of the boilerplate around prefixing the debug messages with the
> connector information.
> 
> Acked-by: Maxime Ripard <mripard@kernel.org>
> Tested-by: Maud Spierings <maud_spierings@hotmail.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_scdc_helper.c | 24 +++++++++---------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
