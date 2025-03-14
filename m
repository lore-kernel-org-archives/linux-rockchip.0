Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03D0EC28B2F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 05:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+3ckqOgZlKWi53TjZbxmqZfkbq1p5CSqBNnL5Uzutw=; b=qQSz98L4LZ0pq4
	ep5FiqKbSDKuuzzry8PTS55VMjV7hG3T7K79do9Sx7XO6GwlLUXwV9bS6xJTkEsct3Q+rbxrMlLTR
	oiH+LBNNrLFh/dv5u1wG5OaGo1pwPMXK2Yp54upok0Ruh8A+qEJxeu7R82WxGGZFpIkDuvi9S5NlG
	dZq/6LUzTbTlC/dg+KVBPnuCKcb3aVvck+BhyajEj9T0qrg2PDm5D7jnef61SsU78wckevEwXajsY
	jgvlz7XgCfTTeCs/hfExsEcOOOI5q0E81lHw4X8sE+mgdW6AFkMMgdPQxUTqejyb34Aw7DQWWs3/U
	Prl0Ka3RGH7FqMC9zxEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxx5-0000000D8Oz-00Fm;
	Fri, 14 Mar 2025 05:51:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxx2-0000000D8OL-1m3A
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 05:51:21 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DMR1sO009124
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:51:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=i7ECqdjToXAfktDwl6HxzCMk
	AGDOJLghBSlD2hSuCwo=; b=VaWprMZOG84smP2mJlJGrHWoCNu0uEii2CxUVUxS
	iLLhIODb4aU17fOWAKO37CetGyxlZbon4ddj/tl35EwgWAdagkZGpHoLf8omskuV
	0mDzjQJNcJpe7bKGr1s7ophYGr1bg3/5y5r5DfgmaVEkuZvJ56DCev7iTOGhmeIS
	HIxUDHcL1K1uvs8vxD5HGNftkhQquNnbSfclhNJje4x3nVfNk1qX9rSrbXPF6mZi
	vbs89pMAxb00EdmvJg5qo8dv0FxrVVHHLLXupHlvSIzLpFgRfvFo3h41sCPWy7zy
	E3VYFdZwjvUAb3ludhA2pr6kq/VwdijWQKYRcUgCa/xfdw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2rg52n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:51:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e2378169a4so35722796d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 22:51:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931478; x=1742536278;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i7ECqdjToXAfktDwl6HxzCMkAGDOJLghBSlD2hSuCwo=;
        b=I1ShamXqgv9KOfRxRvmfQYFcxH0HevkhllcdNjQMUXCHl7ElYJNex+rf6YHmgKcRc1
         ZGYGu4hhsAJk1zhtxLAsTwiij+KuT3g4wcryIF/W3x3yv4R97ZsF+ksr2+TwfIq48rod
         hm7MExHkYY1Rkq1BEjeieSztEo8vYGxEGKPKoi+MXdFWsRPoLiEFvcHSsXht1SUx6rdg
         30+GSIwU7vmWqqFte3Wc2c+xlEv3dRMfRRGmMCVE8XXwKTNzF2wb++i4eYS+PuWvCicf
         3Pkh5kGTkMDwGuDvSAGW3JJTgo52I5mRCJYi3djUOkNUGbahr2i91qjrZARTMk8IMeV+
         I8pg==
X-Forwarded-Encrypted: i=1; AJvYcCU2Y6qJB8muGq0rJ6YPvhUk4Qsf6dxLlB5cxx4wiURlaXmJdHN1jTSIRYGVTUOQ8D71t/tWkHVYIBWNSeXDfA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzuwaExyFbBmvmcVHoHbncG8Gc3KsmWrtEcMWVBQL2v9KXrX6Zz
	n12sLoqgRBv0JFIXVFmOLBSwDmzsaj0oKrPIiBc75naF8hn8iOcU6nAOBJ0080jSkzPiYulIP9l
	viNj6jLuSlMvoAPoGQPtB9oBT7iZPxTpcEK6E4x0Hhh+ZDDTrBgu/U3STZ0xXxg5q6CkEd7A=
X-Gm-Gg: ASbGnctHejgKPl/nsPOUbCLmWRpEH9Vx7SH/r6dH6LMBb3sQOISPCok7J6jYrlgaJ5c
	X3oxTRrm1TTOD9VtCqPRUH5dum8sPHbcRaeWhEVP25uOwoiaLYt3tfe6e1FO+RBiumYILELjrN4
	SytQw/4vp2FKyLInTCZpmfAQ6QDIc8kH5bG9p2cG9kRyJ3dZs12YBt0z7+9+2TzhJ2S9Sz1XWq4
	62li0DmfNFCf6AlGj/yElE3AY7nSGHplhLRo3g/qiFvi5bE4OyCnOxKNuDNTu3khwFtEXzc1ff6
	pUxwc2V+vkpi+13PJsi+ZtZNvf2b3RyWYHg1y/eHFV+8kcuVwHuTspLFh11xe0wiSlPBjcadbYx
	rVmE=
X-Received: by 2002:ad4:5ae3:0:b0:6e8:93f9:302 with SMTP id 6a1803df08f44-6eaeaa07ac5mr16664436d6.15.1741931478670;
        Thu, 13 Mar 2025 22:51:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpVbpOxeiloNBX3cLmvnlo0EP97lsdecQPHWfUunwY16xcqP5mMTKI+A3eAU/B9zOC8zu3sg==
X-Received: by 2002:ad4:5ae3:0:b0:6e8:93f9:302 with SMTP id 6a1803df08f44-6eaeaa07ac5mr16664136d6.15.1741931478415;
        Thu, 13 Mar 2025 22:51:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a8ebesm411808e87.240.2025.03.13.22.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:51:16 -0700 (PDT)
Date: Fri, 14 Mar 2025 07:51:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: lumag@kernel.org, mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 5/5] drm/bridge: it6505: Switch to common helpers to
 power up/down dp link
Message-ID: <2bsuisl4ljsdbxxxejgkevtpwaz3jazcxh4b7otv4s7vhloiop@4ujjobsrafg5>
References: <20250314033856.538352-1-andyshrk@163.com>
 <20250314033856.538352-5-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250314033856.538352-5-andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=D6NHKuRj c=1 sm=1 tr=0 ts=67d3c3d7 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=Umc180e8Ijspp4NO460A:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: 8QCNJWmAJnPdRXKC_87ylPan8vI3TexB
X-Proofpoint-ORIG-GUID: 8QCNJWmAJnPdRXKC_87ylPan8vI3TexB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 adultscore=0 malwarescore=0 mlxlogscore=755 clxscore=1015 impostorscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_225120_580549_F200ABA8 
X-CRM114-Status: GOOD (  12.54  )
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

On Fri, Mar 14, 2025 at 11:38:44AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Use the common dp link power up/down helpers to avoid duplicating code.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  drivers/gpu/drm/bridge/ite-it6505.c | 46 +++--------------------------
>  1 file changed, 4 insertions(+), 42 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
