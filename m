Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B189CCA470
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z6s8wjYOdtaPha0+9UTJh6Utdc2Rp+TnF1SRzIN7Ys=; b=0P4QGoch+wMXdQ
	DFFpjLiaZAJiIvgRO0KS8pWW/z6u6EyLW8bOhBCfougtero8r1XTH9fkJxmAwjDNh/KdVUqBh0Roo
	YfyY+GGUiegyMGpLskDd/hwnJnZBCcZP4jiuGiDlAFNF/lRbEYrErCWZYJtzyjT+FoWDUEf4iVBgi
	S7Pe9f7H5jCH0rbFSWY8nP/xSdVpjgto0uyppz6QyAMXDQPIMZuIT8bdWPOyL0rrJv6aOZykHYHLh
	LJuHPJqOcP0WU3oJZspJudq4OJt6YAF1QTVryjtGw1C+N3o9Xz5/OLwLmvf4rKFka68xJiys+67Lb
	5dJY0or4vNoA7hpULglw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gqV-00000006AcY-1V99;
	Tue, 30 Sep 2025 20:21:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gqT-00000006Aba-0rm8
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:21:10 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UK6AWS012703
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:21:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+VFb0crc/qOwGeBvP/JtK6gr
	pmOtlDvuwQF4VkTnYOY=; b=OKIFGfsAMS6m9Xdz77R/OpPAtDirEHauS58EhqBK
	TFdGF65sxJhhca0WWxoGIJzqTzensMRHi1C4MUxrjEccLsQPnreEXG/IYa96Epp5
	vp2O/DWSYZSHs/H1Tcw4yEavtsgQB+LCBGFbhwfq7vmCvhoch6shAXdozWriH1vd
	SGRy2WHwYItvrIRcm2jYNTe/BAZROnuMzfXh79HwM4h/oA7e5RSs1p7Hxtx0y+wD
	0MlAkDlzFu54pcauGfmFnSyJJB/MwnHpl+KEvIaoUsXbqsuwFSOQZWe3U0MkjR9q
	xp1n2t3tcxIZ6Pg9Z+nVVQS/wRiH2YNRsJxFZecGEJpOSQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mctq68-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:21:08 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4df7cdf22cbso7351961cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759263667; x=1759868467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+VFb0crc/qOwGeBvP/JtK6grpmOtlDvuwQF4VkTnYOY=;
        b=woagfEUezL3N3EOpHwH99YrCqvBvkIj78DS15FQzVmy9J78myaWgVh6qmRo6SJDGMR
         QsOXXFSTIOT3kNCPD8kmH1aAys5L89xbxpcLf9KQYRWdGXyJgr9d+dCHW8P3jV+mhqb8
         9qRIMKP6AafjwayVmMVJgOKs97eMEoeET5+qP9igZ4n0YLObIp5Hx3bL734Vp6Upz4ge
         blWDnpooHainzqNVLQ8y3L31QbqhuGeQjNevdgRkS9FcLIooGKBmyHMoEsOa20YiH11B
         dPDotQiNbipsIHDskD/3gXgKjYhJiU0WsLORo5JIkzZs+kVKbhLSFg/fh37K0sDi8Z3D
         lVfg==
X-Forwarded-Encrypted: i=1; AJvYcCXsJmTpGF/SMiqAeQtK09naqiA9gfstg32b4Wmo6Y0Ba2/taIQLtcnWoNICMJYfsTkJIgSZET+20uGMovIgow==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEncBPtuWX6XndPPR5Vr3EKkDz8jAUAz9Ybk+UbzhI7+erHPF3
	RKlEMTX21y9xRyd4dzyCdwy5Z4rgd1nEoHxzJYz4e6XEHHW8qVHwpvN/RJEngXmUwOyUAIU3Ieb
	qVebtq1YsTZ3mD6rZBJjkYpESp4kSBX8Qad90keT5G3ZBEMrfMTWfymOOjIgucUMqoOSvFgB1bw
	Q=
X-Gm-Gg: ASbGncsb7y8n0r8S0zokPCIk7ga0ZIIut9qncd2af0y0ic6Fans87SqxVbiMl8zwfzc
	LXZ2uAuMS1x8NBF8KwNWC0cuHuQXBNp2t93conDlVqSCO7d225JihVSH1pXo0X7W0DGSJF6mW6h
	4m86pjVVuti2i5mPB4p/NL7/y2LcGBbJWRZyKGbc9nWTRnp6dnOxdy4f/4OcXCK+LlhXIYK7oMW
	qDhBHHh9mfGE934DztuzWfXiHxLIttLljGqoOxnyRAZ3Ki973MyLwgx+ptYgOHsJT0QJon0KiwB
	RwOWJq4VUtm32gNMfC2lcfQ4/JjIOz7rz/O9hkn/2P15D34qc1dZWhykasSnLUA4XeeiiWfvS0D
	Zo1Ie5DLSdSYWOw061s/flIy2j++tKK8e4xi3YnfeqNKndgAM4+1Yp2XiLA==
X-Received: by 2002:a05:622a:5d4:b0:4b2:8ac4:f097 with SMTP id d75a77b69052e-4e27faf2456mr85876451cf.33.1759263667324;
        Tue, 30 Sep 2025 13:21:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFs3xT3p2rzPd59HRBIpsMj0tVPI+tZJQCN5NZbJA76QgFcZCY2wPZXNF7YjDhP63JSlWg6Kw==
X-Received: by 2002:a05:622a:5d4:b0:4b2:8ac4:f097 with SMTP id d75a77b69052e-4e27faf2456mr85875861cf.33.1759263666813;
        Tue, 30 Sep 2025 13:21:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a32113sm5289277e87.102.2025.09.30.13.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:21:05 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:21:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, jingoohan1@gmail.com, p.zabel@pengutronix.de,
        hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
        dianders@chromium.org, m.szyprowski@samsung.com,
        luca.ceresoli@bootlin.com, jani.nikula@intel.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 11/18] drm/display: bridge_connector: Ensure last
 bridge determines EDID/modes detection capabilities
Message-ID: <4r25h5uaamfkprrmvrtdqfjlcgcnkfyca2o5q53hteta7rlrbq@xqlrjxhi7z2u>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
 <20250930090920.131094-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930090920.131094-12-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68dc3bb4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=2L4VR2zxEnLzMnak7dgA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: sfJ1lDLabMUmEWwm6e6LSf6h8xzz_6sd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX7QV+OMa2npcX
 XbfwI1pCh/ERHl9pxs6jEbdAZpQiCk/fpJ/UDCXbEcxqYa6avFrsSmYdNScBV0iG5pSgbHMU9yZ
 yOpiN+cu/dWFvLOFSjEVfXd56XQ5tG9qzh3UgkZ7hrlVoq/KyqxzrjKp9O8gRUTRScPjTdn6vUu
 d5I7foX69yFpeZdn19apRyrD9p6+tDgKzvhPjnrfoKy61UH3hEG+ZwQBKKrsu5XVkPxLEjmNgUp
 mJfXu6B2wJ1/gkx7uT+JuWnD9AME6JFmw4cWp+QTPTZNbcgjguvPP/PZ9LC9joPr/Xoa1N7I6Z2
 ODcDCFGPdabAHtASEHI5UZRfWQIIrYRYlG/Zz9KU88SNb5nNq8/ZXZIitnE7zX2xI303woG0NKy
 zluXDYxpE16npqN9UN9leiB+/lJJow==
X-Proofpoint-GUID: sfJ1lDLabMUmEWwm6e6LSf6h8xzz_6sd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_132109_244050_40FAD570 
X-CRM114-Status: GOOD (  18.45  )
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

On Tue, Sep 30, 2025 at 05:09:13PM +0800, Damon Ding wrote:
> When multiple bridges are present, EDID detection capability
> (DRM_BRIDGE_OP_EDID) takes precedence over modes detection
> (DRM_BRIDGE_OP_MODES). To ensure the above two capabilities are
> determined by the last bridge in the chain, we handle three cases:
> 
> Case 1: The later bridge declares only DRM_BRIDGE_OP_MODES
>  - If the previous bridge declares DRM_BRIDGE_OP_EDID, set
>    &drm_bridge_connector.bridge_edid to NULL and set
>    &drm_bridge_connector.bridge_modes to the later bridge.
>  - Ensure modes detection capability of the later bridge will not
>    be ignored.
> 
> Case 2: The later bridge declares only DRM_BRIDGE_OP_EDID
>  - If the previous bridge declares DRM_BRIDGE_OP_MODES, set
>    &drm_bridge_connector.bridge_modes to NULL and set
>    &drm_bridge_connector.bridge_edid to the later bridge.
>  - Although EDID detection capability has higher priority, this
>    operation is for balance and makes sense.
> 
> Case 3: the later bridge declares both of them
>  - Assign later bridge as &drm_bridge_connector.bridge_edid and
>    and &drm_bridge_connector.bridge_modes to this bridge.
>  - Just leave transfer of these two capabilities as before.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  .../gpu/drm/display/drm_bridge_connector.c    | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

But I'd suggest pulling this to a top of the series to let others also
take a look at it.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
