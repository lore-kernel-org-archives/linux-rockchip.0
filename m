Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B69EFCE53
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 23:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2rlWuL5FXtu4CjrKHOvr634R+Uej1C1y2wZC4A+8+o=; b=emjld5vL+QFwks
	mKhXi5KPzyX0JFWu/0Km+8F6Y3kLFr/2/mVRwXWm53aQjQIXD0i2WJt7m4E11z+S2k7AzVqcha5na
	JjHuGOVhGyxN5vfpqcti3RyY0FVaA0hxOCz4zRqJoup0ChoKsPIYY0RIjxyicXpMp9DOWlAqICyOq
	4xKu4GqLJWmOs2M9QsI6PLrU8BusYx9U0DY9mQcNS0ypbRjqjZBdjyv9bSdm925ZHX8MW+2ZEUEqi
	Ryk5uzn5Ujb7bPJVrCtYgj4cEYr0AczKgzZstlYrorGRl0DxufnhCVN2sn4RuhqNPx0iLmVmJAQr+
	GKl+ICS3osJoyTAIrlLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw2E-00000000eUY-1Lty;
	Wed, 04 Mar 2026 23:53:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw26-00000000eQ3-2m4C
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 23:53:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624MBoA51203575
	for <linux-rockchip@lists.infradead.org>; Wed, 4 Mar 2026 23:53:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V50tlCURGOSWEpUNVC/f5JBG
	lAu9WVw1+uCs3+cXy8Q=; b=bHnTZhnFYn/tiIi8J4ULThpsgbab7UrmgW5OOJJi
	m7XwaAv8gzL5i/PPJCFmKWpARNfKhBWcj2eQ98Jty0ias+PktBjqdKCkXAPaELNj
	a0Gl+BUEEowrMPAKllx/ORmbxKvdbnv06gsWNMRC4vNwMWDRsN+/Umbybcd+e88B
	r/+5sfU/Jr5rGByjhLIWV29LUZnpLgy3RQf4wS6C8MkG2aHm4Hpng0Hc/lXMymq8
	+xAymHfPQW0I/zSIuwudwEu/Xyt9EGrksONWTgra0NIIeQgGca3xHZntcQ/B1uyx
	S9yybI9F7OtwJgszxO8ID4FgfjHXJVcqqpvfDRNL7lu1yA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpf9c36x0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:53:38 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8950562d351so702982846d6.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 15:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668417; x=1773273217; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V50tlCURGOSWEpUNVC/f5JBGlAu9WVw1+uCs3+cXy8Q=;
        b=J9wd2uZWy5gz4IoBFr9hzd30sSQmVfnpABgYEshS5i7mAGrqQRmgj+AZ85/5uW4mhF
         FMhI+CuRrw3Ah1E+50Aq0Su3VVY1mcD89uueMdQibZXWG6xsybzjXoqbJANSs0dskjv4
         V9VhSUACbpxZ6lQKatwtw52qFPny3q5FxpNueabHOM5sQ6VWBDOFS2aiDNzmkD3u4mxf
         IsxLbi8wtMG3gzAPa8CgcAG0obDJeuomuCUGfbYTXS5Hac3HpvCZyknKhXZnMqo177NZ
         jtb6Tghxr41mCphqhY0jgAGrFq/CDToRWzMTo1XCTm4DHjpT4DnUAQsMy50VTxTo3dd/
         tvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668417; x=1773273217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V50tlCURGOSWEpUNVC/f5JBGlAu9WVw1+uCs3+cXy8Q=;
        b=e3SfmgdbMIIlfpm7RqirCwGvHIRKhSXdRP21TDeonOjO2aVqAcBFRRjif8x5UeXfbg
         /9HBbxG7KkL72e+zYe5CUdInZAypUwgv7Ui65w8LpRGoyFQqSLssmoEd/sQEaqTmOMy2
         extrlUxMGNZ5tcn4rnj3oVWC/xL+KdThEKZSVGg/VUVZeBQdAkUWhgjfYd1aTvmsvPHE
         MeqScw83XyAZUZs3LUfcPefiekXOpRlDVawF+gi/wlKFuTsX/cV+jKIsHclXpBrXNcpE
         HEYUpAfPGx8bLX4+NodEJjhMZs4w7aI60GFMecEBSwxKHoVwr6kbtwrRjqLlU6lh02Rz
         3tcg==
X-Forwarded-Encrypted: i=1; AJvYcCV9BoS+koX9le2Tm3cDKzFt2ywE2WUhcUYVxaERn063JqNcbLXEDBGDN//Dxn0vSsKCda6F/kBhiAQDq/gFzw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAUF0qSs7GmYHfrxEa4kuQMS8NvvpCMyweZAZ+Wg53GS+NkQBD
	j9v/XWi9M1Jmx6kI8hg+xl4RU/yGjv/QHUekSt7xrV0WEjtA9fpXlaWATwovMUmRwNDd4cEqYz6
	yE8LiSRZc4MTnvpACaCiMsq7lRdYRnZ4v2j6f36MRZPyL8xdzRwS8UdUwZ9Iw92XXIzAxzU10od
	g=
X-Gm-Gg: ATEYQzzDTLWtnMwonv3YKGloQ3fM2t7lhBRZzwuwfrvcnL9DjUc5mHYgrXLhazVwswQ
	p20Ac0dNRBjHzgori3v1o/bDvCmPPUbH4/igYgfKhrmirLFQBZCwDLYs7QIqq46wYnc7dQzz2g8
	V3PcM82h+XKCMCyvb85si1uS85fVDIWz/E4/lzkhbkudp+BlEFIPmyz0g3wzu41328+Nh7nHviv
	gvlnkHGe4wRmHl+eqkVpiaM3kF5W3Bc6YDs5IIKpyk7Kiyg4CP5jLIL862Dg7JesfyzFfRdCwf3
	DCght1zd1iIU4Lg2vRREjv18q0UE/UWQqhSj6F8r7JPVNqTIJ6GJaqmuEYBxtkH4kTggi6qXxYX
	KJ0gPWClfNdLwsEi+sstdhF0BUSwPxtmYkIrlBplcCJueSfaw1Mui/pMvmTeky4vGo3VEuQ7Hr0
	az8GZWnlgGo70nOaQYdXN/Al+GhPw9Yn4C6Qk=
X-Received: by 2002:a05:620a:3727:b0:8c7:c25:9e53 with SMTP id af79cd13be357-8cd5afa6707mr498608085a.59.1772668417050;
        Wed, 04 Mar 2026 15:53:37 -0800 (PST)
X-Received: by 2002:a05:620a:3727:b0:8c7:c25:9e53 with SMTP id af79cd13be357-8cd5afa6707mr498604985a.59.1772668416537;
        Wed, 04 Mar 2026 15:53:36 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1296993a0sm933837e87.31.2026.03.04.15.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:53:35 -0800 (PST)
Date: Thu, 5 Mar 2026 01:53:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH phy-next 11/22] drm/msm/dp: remove debugging prints with
 internal struct phy state
Message-ID: <esbforcln7bi4e5enmgwqj7d63usdyoobxyo3hwd4paou56aoc@kjlizz3ubksd>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-12-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-12-vladimir.oltean@nxp.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5NiBTYWx0ZWRfXzRW6l+yG10gh
 apWrZRm3mn6x3AVP1KLfc7Ne1ugGgvxKT/+5oGRosmAWkGbkDDetdaxS9EGjL3F5Qdm1aRu20ke
 BK+fxgXemqSBeAxFboygEz255dZm8vDtOFjI3NMRaURa1hrf7MhovkhY8f/TqsPq5ean+Sf53vH
 9kwpXetvqWCPosE7jRhh7tt1KsWzMpHjgZBmB92Co3PNV1tgJx76/a8LDdJezv5nPSH4s9UMhDd
 TLABQDbF6v3ZCLJAO2iEWRsXaBCG7aQsdT9VPt3PvxoVpwbqCra2fKQaBjMW7FPxMIMBxgSjxRS
 MGIP3DlK1DEhLNT8sSOaryzw092soLMPlb1rmGoc5CEsqtzPLawusWV63g/38etxXKataI1/Dlz
 T/5Y6L0Iw2bJFThBfq26lIpjbCIDjHQGJdBl0BqdePS6eIlupNpDcU7Z+fBMBiVzQvKL/YVGrI6
 lk4nlyjpGZe9Gv63ylw==
X-Proofpoint-GUID: hb8GLKVjHEWokmvqd2at858hdBAUHIEq
X-Authority-Analysis: v=2.4 cv=S4LUAYsP c=1 sm=1 tr=0 ts=69a8c602 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=tVI0ZWmoAAAA:8
 a=3ogKHO_BN1K2bhpmqR8A:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=ST-jHhOKWsTCqRlWije3:22 a=-BPWgnxRz2uhmvdm1NTO:22
X-Proofpoint-ORIG-GUID: hb8GLKVjHEWokmvqd2at858hdBAUHIEq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155338_697449_5D71D141 
X-CRM114-Status: GOOD (  12.90  )
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

On Wed, Mar 04, 2026 at 07:57:24PM +0200, Vladimir Oltean wrote:
> These do not provide much value, and will become hard to maintain once
> the Generic PHY framework starts hiding the contents of struct phy from
> consumers.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> Cc: Dmitry Baryshkov <lumag@kernel.org>
> Cc: Abhinav Kumar <abhinav.kumar@linux.dev>
> Cc: Jessica Zhang <jesszhan0024@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Simona Vetter <simona@ffwll.ch>
> ---
>  drivers/gpu/drm/msm/dp/dp_ctrl.c | 18 ------------------
>  1 file changed, 18 deletions(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
