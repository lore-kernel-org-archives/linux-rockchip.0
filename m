Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB27CAC5B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 08:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hiNrjhIzq26Sh8cA+T28tIQskRUikTQavUHyuwa3YA=; b=BsJKZlfKHu2jdm
	2hDxVh6cO2EmrRW/c9upKSdbVBQnYmk2ZRYjOyWECamoegb2Y1e264Wv6y4nCljUYtu9yAzdlvGe1
	L8yd07Sgcg0g+Ft7vHja68zv2s1IaS33GDuBVno/tI2RDVBIJidAeVl9fsTm4l+MOfz2178GwdF3i
	UAT3qD2JPvAABnPjUqVZGmsL8RFyMMw+suKXqelCsqZ6Mwzo3WY4k4BUzDM3hXNO23jagk2uHCh5t
	isIdfwPg0/TyI7pdvvfHTp5EcC8RiZOxrN7cBVYtT3VgIxn72MemPDGWGe6MIC19D3elU/Y+NTCTz
	Ek2Jy9I+IwjjbXTdctrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39iO-00000001qrm-1Sgj;
	Mon, 29 Sep 2025 08:58:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39iK-00000001qq2-3VlR
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 08:58:35 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SLpjjm004361
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 08:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wSequNqFSYA0hQaFMGDh8sH2
	KqbBMi/C9WAGDMfQdVw=; b=CgQghBqqAX6HNwF8cUOrkL+/imUDeljUBwxSMLqU
	EABUCjKImHemM61jfkSa5ngSAaIIN9qk6jx0xNtyw/ve46+UV8CrZ855qA5wkC0j
	FSgIqWNYpuQxbvCgAz83PFQjPOdJBELHYSvfXbYkYH/oDfo4bcf37VgPicVaACDa
	AII0m6+fC6Qsd6ILfrex1yeoqb6DclNrOokHpZOgLmXoY+CV2NQHiV4XpasOiexT
	GvMBOrNzWP8MbsKx+20UPxjPyi71gb4UoYmKNhadnp/a3/onTUYD1TZcHHZKoqBL
	zVv/0A4znKvD6uCf1A4OqshGicsKhhpGhIwxE8Tp7fwnuw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a5vjxn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 08:58:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4deb67c61caso58602551cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 01:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759136310; x=1759741110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wSequNqFSYA0hQaFMGDh8sH2KqbBMi/C9WAGDMfQdVw=;
        b=EnCE5IzF2OAsYXzlzlsk8NDSoGS6dPFAkJyD9Ob5dxaO1bGIjBtykZZMbY4cC3LMt7
         MnhzojFoubO7wuK2b09VwETfhMq4bOiNZnW7auMlyckqDEQkUDyPUColuMC7LTnfYeDf
         D4Xz0w1OzxqkBcpf8ovWTnAADKOG1YTx7CJQB0NLhVl3/DznREpkurDwPznU+HzVhyP/
         xVc7M//Z0pYPYMjby3XmTQIwv+nhr0NuRJfMtB6hBGiRN+le/4px4tia3EPGvUr1JAZE
         Cc0AYP2aGjnfhCb3hklPkJTdnjMRwA43+7K5ORnQdfS0yiiQtqtV0pIiJvbOZGbZ3Yf3
         GLXA==
X-Forwarded-Encrypted: i=1; AJvYcCWgqBN7v0ujgLxVdHq4qSF+7skCjW1JW3BGmErJIAUpuYLMGuyv59O3ym7VbdC+Uvp91g09H092PeSN7F6tKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyY9d9YE1VYWWSs4fJgNbwLXbv5RrUBCTLpDEyt4eDNd6T4DtdB
	IXammsaDqtvNWRQ6wGTo9l4uu85F7EVxgvz40JkPXFaE+B0Rs6qRJDXIH3I9DmmuvZMntuhxolF
	XYgys+CNk6euuhptHnkp+8Dubummpk2nhxo4+lcMFt0zWN9qikdrwHn4e/H4W3YKMyEKj2ybJhZ
	o=
X-Gm-Gg: ASbGnctkkTo7DrbcBxI8ffLkQzRZ8MdHBki0hR7AQ/MrnJl/X+4JjuDjfr8mIhTm0pP
	AFsjWzAbnxSa1skZmzq3xCYDwftaV5uXQnkLWuOY17jb+sFLDjcGkxIrQhjfgEIWVieHCMoTxmK
	Fc3FitSz+hW0qQH065NDWjhVgheXjPA7Jv6JVOi4mnrsXWeel5CwNG+/JMi9Y4hhVp7V4whUOQj
	EqTUNPt7teZYEQHvAniC/CtFWbGwOHCjKEJDee1n+TZKwSRUXjLXm+2UiAcsei/ynl2KayLZntl
	JRhhVIPPZlU4Zcoewd6VqxxF4nw7+7uoxPcq4A1PNVzmk/OkCe5nsinUfkEyTfdGzhTSykSuKHe
	BC0Iw8tw04NXgOV1uXTiyz4aQIlaMAFnFgmkmVe2zKBHCfYEIBbMk
X-Received: by 2002:a05:622a:5c17:b0:4df:45b1:1547 with SMTP id d75a77b69052e-4df45b11effmr106393181cf.69.1759136310519;
        Mon, 29 Sep 2025 01:58:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRXtkJG4+SzyzmUaBbzgU9Nn5Sl1tWg+sCFw1xHVc4pJ5o/wczABJ+K+k97kihrHCINuJSYw==
X-Received: by 2002:a05:622a:5c17:b0:4df:45b1:1547 with SMTP id d75a77b69052e-4df45b11effmr106392941cf.69.1759136310059;
        Mon, 29 Sep 2025 01:58:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831343130asm3993046e87.1.2025.09.29.01.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 01:58:29 -0700 (PDT)
Date: Mon, 29 Sep 2025 11:58:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Liu Ying <victor.liu@nxp.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 3/9] drm/bridge: ite-it6263: handle unsupported
 InfoFrames
Message-ID: <y3sndmfnwtljkbrssyycg6scjujt4kkjfo3gjclo3suzvqdahl@bdrdzmiolcb4>
References: <20250928-limit-infoframes-2-v2-0-6f8f5fd04214@oss.qualcomm.com>
 <20250928-limit-infoframes-2-v2-3-6f8f5fd04214@oss.qualcomm.com>
 <a7f0ced8-d704-4a59-bcc7-e0bd4db113fd@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a7f0ced8-d704-4a59-bcc7-e0bd4db113fd@nxp.com>
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68da4a37 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Wi-JpQQdkJIPRSjGzdwA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: GMwNxGDmD62dX2Fd9_lXfYZJPTNFtrny
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX0dWnOpZCzzGw
 yL9DE26IcEXGpHwguaeaa+eom8epMOUCfjKm5SFDQOp6vcbQZfi3/6PXA5gdVYzCZRE/+11jBxu
 wocHlWW29Nuz85TgG1yLWaQVYKcEbR7ODCSYozcRs++kY0Nu44CAU71OPiKfhJnTyhzMq0kUWxG
 hSU2VpgaQT5Hs4rdSOl958LcLhiyfARS5QNFptahJ+63KnVq6mkBlN0ORYZqdzhf3JQSyPKQV2/
 p96uXR23/jba/Jzi/v8srUBNtGJXFA+LFY5gEhWMmoohgUNRqD3Z9K+LHkh9S17Q71bA1JhbOmK
 uKgW1WDfzbjrXqCExc02HnW7rqsF6xYg+8m4qfEnMsUppXR7yR1jQnw9fYY9mooASn+q7hCX4Ln
 biwfw6+cGdMkByvlJWpYYZThWb8daQ==
X-Proofpoint-ORIG-GUID: GMwNxGDmD62dX2Fd9_lXfYZJPTNFtrny
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_03,2025-09-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_015832_989402_FE9C3CDC 
X-CRM114-Status: GOOD (  35.22  )
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

On Mon, Sep 29, 2025 at 03:56:31PM +0800, Liu Ying wrote:
> On 09/28/2025, Dmitry Baryshkov wrote:
> > Make hdmi_write_hdmi_infoframe() and hdmi_clear_infoframe() callbacks
> > return -EOPNOTSUPP for unsupported InfoFrames and make sure that
> > atomic_check() callback doesn't allow unsupported InfoFrames to be
> > enabled.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/bridge/ite-it6263.c | 27 +++++++++++++++++++++++++--
> >  1 file changed, 25 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
> > index 2eb8fba7016cbf0dcb19aec4ca8849f1fffaa64c..cf3d76d748dde51e93b2b19cc2cbe023ca2629b8 100644
> > --- a/drivers/gpu/drm/bridge/ite-it6263.c
> > +++ b/drivers/gpu/drm/bridge/ite-it6263.c
> > @@ -26,6 +26,7 @@
> >  #include <drm/drm_crtc.h>
> >  #include <drm/drm_edid.h>
> >  #include <drm/drm_of.h>
> > +#include <drm/drm_print.h>
> >  #include <drm/drm_probe_helper.h>
> >  
> >  /* -----------------------------------------------------------------------------
> > @@ -772,7 +773,7 @@ static int it6263_hdmi_clear_infoframe(struct drm_bridge *bridge,
> >  		regmap_write(it->hdmi_regmap, HDMI_REG_PKT_NULL_CTRL, 0);
> >  		break;
> >  	default:
> > -		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
> > +		return -EOPNOTSUPP;
> >  	}
> >  
> >  	return 0;
> > @@ -812,13 +813,35 @@ static int it6263_hdmi_write_infoframe(struct drm_bridge *bridge,
> >  			     ENABLE_PKT | REPEAT_PKT);
> >  		break;
> >  	default:
> > -		dev_dbg(it->dev, "unsupported HDMI infoframe 0x%x\n", type);
> > +		return -EOPNOTSUPP;
> >  	}
> >  
> >  	return 0;
> >  }
> >  
> > +static int it6263_bridge_atomic_check(struct drm_bridge *bridge,
> > +				      struct drm_bridge_state *bridge_state,
> > +				      struct drm_crtc_state *crtc_state,
> > +				      struct drm_connector_state *conn_state)
> > +{
> > +	/* not supported by the driver */
> > +	conn_state->hdmi.infoframes.spd.set = false;
> > +
> > +	/* should not happen, audio support not enabled */
> > +	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
> > +			     conn_state->connector->hdmi.infoframes.audio.set))
> 
> Maybe use drm_err_once() instead to provide the reason for the warning in
> a string?

I can change all of them to drm_err_once(), sure.

> 
> > +		return -EOPNOTSUPP;
> 
> As this check could return error, it should be moved before
> 'conn_state->hdmi.infoframes.spd.set = false;' to gain a little performance.

I'd say, it would be negligible.

> 
> > +
> > +	/* should not happen, HDR support not enabled */
> > +	if (drm_WARN_ON_ONCE(bridge->encoder->dev,
> > +			     conn_state->hdmi.infoframes.hdr_drm.set))
> > +		return -EOPNOTSUPP;
> 
> I don't think IT6263 chip supports DRM infoframe.  The drm_WARN_ON_ONCE()
> call could make driver readers think that DRM infoframe could be enabled
> in the future as audio infoframe has the same warning and IT6263 chip does
> support audio infoframe.  So, maybe:
> 
> /* IT6263 chip doesn't support DRM infoframe. */
> conn_state->hdmi.infoframes.hdr_drm.set = false;

I'd rather not do that. My point here was that the driver can not end up
in the state where this frame is enabled, because it can only happen if
the driver sets max_bpc (which it doesn't). Likewise Audio InfoFrame can
not get enabled because the driver doesn't call into audio functions. On
the contrary, SPD frame (or HDMI in several other drivers) can be
enabled by the framework, so we silently turn then off here.

> 
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct drm_bridge_funcs it6263_bridge_funcs = {
> > +	.atomic_check = it6263_bridge_atomic_check,
> >  	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
> >  	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> >  	.atomic_reset = drm_atomic_helper_bridge_reset,
> > 
> 
> 
> -- 
> Regards,
> Liu Ying

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
