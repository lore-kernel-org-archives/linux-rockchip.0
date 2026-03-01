Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6593FD006D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 16:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhhFwKLuTLdDhjfAOB084el2xppSDIB+WNnw+RoBKYA=; b=l0lX2iqcrXodqy
	wUHwxKq1KQSXWVsOFpCcNmm9s1Ooa/XsS8lo/0olyczEgU3xv7hEs+i0D/3sbVZoIOxgDvom+OlLt
	/kS/Iek1wGNYvJjTv7H9SCtj+1ugIAZREZkYTyj4JrKV3Ttwtyr3MCtMUBbc7FGn8fSYUC5ew1edu
	nGfgKfBbAeP5T35I5i4XeIjSj+DeBPX+00S8pzxDuoK44tZWMt2QLLpRCS3FkFuGo2+80fzQjMXtv
	Y0FecsFftxGO9Wl3YRhvlBVcjTeS0h1Ve5jxfickVrWattak8ad+GjlJF3FOQL/lJRv8tqJYcoL0r
	a8d8OZqZHQn6bYaFQrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwjyl-0000000BgLv-18zs;
	Sun, 01 Mar 2026 16:49:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwjyi-0000000BgKL-2FTY
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Mar 2026 16:49:13 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621GOxAa2862210
	for <linux-rockchip@lists.infradead.org>; Sun, 1 Mar 2026 16:49:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dSllOkKEfDtkPszOpUxSs26w
	5scwH7eQoWJUjkkZk+0=; b=S4WFzvr74n+UOsusIQV8vroIg+2n/ZWGqD6P5I8I
	2QnM8/qHBqWY7ILgw/yiAvzWx2qubCHOnQ0vsX5ZwC28cc3zn5dc/5KewkUHerbV
	QZZW+NBsVHblGZuFL0vr0vV4FBjPUbU65Zeg+xCL7ugVV5oZZpgnU0KHM+4rP4T7
	RzUxQUk59lKRg+E0hMuAkjfRNqBYMlWRSO1Es3UCGXt0OChZJrGKGFssr4tyDNqg
	OzXVptZm/MnRSTytiWYP9Xpe4HPms2u9CWCNhehNOtxetcz8Ixh1CZGH/mcLael2
	5065GNEayH87h4/uFtcHDWZcrDtLuJdAzC8C101bS6eCaQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfytwtn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 16:49:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ca3ef536ddso3909299985a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 08:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772383751; x=1772988551; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dSllOkKEfDtkPszOpUxSs26w5scwH7eQoWJUjkkZk+0=;
        b=RFO6b60HGtDD2bGZ3wPC5CUIMlr521skL88qKHEx7FJego41Uo4+nXPM0K+JtsMKA+
         skKwfYQd6dQ/dFx/7Vj5mmV+vUq141HZMfyfpvyCfxUNm92HO5t1L3vo3m93esBqsT9z
         wrJgREO1YCWlXWXqyvLlHre5d0f2oCcBPmtcvcS8TShnb5msPIGAKKYPzd5eauE16us8
         Fr4U+1bBKKWlMggDbnq0/loK4sMSU3GPpWtdfpB1TZlcXPOjy77y/M/lUpQ800hEzTCh
         K04qHsGtwZNBl9/R0edFPye2PIFVvklgQDwyqLY5D1ruvR0bp9Zv+OdkRbV0IsLVBzIV
         z2Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772383751; x=1772988551;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dSllOkKEfDtkPszOpUxSs26w5scwH7eQoWJUjkkZk+0=;
        b=XkENaM9YqpGvSKj3HcM0Gzs0S4T0DfTBb3w3bYkj45yDCOzkWWnBLge6YBdrpnkgm6
         kX3c5cPllSfIucGfpPqXEByYGT4dkA0VxwA7OQFRxctkelvUorNM8HLNsuIhLlzD6w+6
         glUxiqbjD7IUHmGQ/m0dTRjhQ/34F/cpLfmkAMsfpmSfn5GpgIXEzXRphavpZZvq06ky
         S/76/9SQvAMpQ3y+qZ6iMH00i/EddSV4+e0TXDV+FuqGfVA0D9o3SBSmrriyvpNOMKTO
         +SRjtOPvjI/5AKNAJ5Giz5shvBDWkVLIxuwQgNJvHJoFvKDsYo789/0qcTqnZtZDm93O
         D5Pw==
X-Forwarded-Encrypted: i=1; AJvYcCVqjSRi5RmXPG0BKlQIWniJkOEzttvFXva6Cz37guMhre155+lLEWkJ971dFiNm3ESp+CxAWVw0fpepZNTgkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjLp0EGgUG6hWIRxt03rvoTrplBloVUQ79e2YpnAAzJO1YdqIp
	jge6MzoaC/XLiImKKg4wuDciKxji9WH9wsgM3pNSay85DHG3Va5gpXf7q6FwicX4fW7jKrL2pos
	gXL7lg9cenZpbxfms/ny2TjcU8qazJVQpJSOXQxUi7tqYKPSYob0gQbMZ2nNeU66y8AlDM5/EIG
	Q=
X-Gm-Gg: ATEYQzyIcvgQ57Jg5FoaYe6Fqfz8tNsnOSl3CHldw/A9kjgTuhJvxHDL2S0lwxOCPrj
	zxswXXNl5cTN6adoxJJ61MaMmrzezzJimRqvEBW9G5rq95tBT7lAd56KUCpqY8SaBQSckpEuW4+
	HAkM/uHU5U/aVQIemzO2waebgH/9PucFw6PBsqToKK1RQox2KV060z8zdkADHaC7UTIJqwSuefz
	wuC7Cctu9v/JhiJ5bDl+Hbv/R6eu+sdr2X8vuZ9CGZjgnyGLdnLNh/8wZVJ0JGtMsGPnktnwk2y
	yaTA6MsC/aPBoNv/zYJyNg4W5dRl/RYzcNuXwpyleKCra7XvhYoRmGwd02ho9Cu4UKUYZQLr2E2
	En4RnPTsrnwe9Lvdq26HiTWfV5cOrzh0cA1o3n67/A+VPeYUj9a8ma7SOi3YaiRfwzuTVCitgsI
	uK3HjtvqN14gXLuFRAmcz80eh7EwsK4rZ6UOY=
X-Received: by 2002:a05:620a:2901:b0:8b2:598d:6e66 with SMTP id af79cd13be357-8cbc8da8ecemr1218260685a.22.1772383750685;
        Sun, 01 Mar 2026 08:49:10 -0800 (PST)
X-Received: by 2002:a05:620a:2901:b0:8b2:598d:6e66 with SMTP id af79cd13be357-8cbc8da8ecemr1218255985a.22.1772383750077;
        Sun, 01 Mar 2026 08:49:10 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f301788dsm21899311fa.35.2026.03.01.08.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 08:49:08 -0800 (PST)
Date: Sun, 1 Mar 2026 18:49:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
        amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v9 05/19] drm/display: hdmi-state-helper: Try subsampling
 in mode_valid
Message-ID: <lw2tdcwu7yathstby4a5tx3ys6rruzeg3odvnsjsgc75sqycun@geoqspu2sfpv>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-5-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-5-658c3b9db7ef@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1MyBTYWx0ZWRfXzRzsSoIqnTw1
 saSVqWnNuVssET82oiZgcnuOuDIigABn+ew4ritzJtNz0nO4QYVZNSQ9FECaviABVM3EjcqLzbn
 L4uUfffXHRSMKye22L4cPw1uEtusBFvjNUDB7xF0HUM0OOWPJSYbgenh4Mxa591Runi0DYMhat6
 20RdDmUI2wto2wLIGVOuLfghe+NY+znbbxKELQz29JXWW9yutMwrKceqA9OzZBnJrkWr4jrBrZw
 zmB8Oow/W0ZVnJQEYWqkGhJA5Oar7taeEZO8E/rgHaWeZ+SyWejVvp9t67NWNEo3YK5Jyq1d2wQ
 R+LQJ6jRWxWdmiwJvCHylOZLcrk2kHG4ooHATnE0y2P+g07t43ShWQOoUZXM2GdkeLEQeW9yTpV
 Slv5Tl+pNcVh/oaILTGtEM7c8Be9M9+HI/T4MNUtRrcDqW+TiF2nhJdORgPGSD4lLKGmSnGu8cU
 b/npAxmVx4+HBmYgrcg==
X-Authority-Analysis: v=2.4 cv=avS/yCZV c=1 sm=1 tr=0 ts=69a46e07 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=CpXNCzN6O6rfykjMCtIA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: 8hRGwO94fgrL8xqRe_C5K8vkKpmoy7cz
X-Proofpoint-ORIG-GUID: 8hRGwO94fgrL8xqRe_C5K8vkKpmoy7cz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_084912_683774_56FD8608 
X-CRM114-Status: GOOD (  19.26  )
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

On Fri, Feb 27, 2026 at 08:20:10PM +0100, Nicolas Frattaroli wrote:
> drm_hdmi_connector_mode_valid assumes modes are only valid if they work
> with RGB. The reality is more complex however: YCbCr 4:2:0
> chroma-subsampled modes only require half the pixel clock that the same
> mode would require in RGB.
> 
> This leads to drm_hdmi_connector_mode_valid rejecting perfectly valid
> 420-only or 420-also modes.
> 
> Fix this by checking whether the mode is 420-capable first. If so, then
> proceed by checking it with DRM_OUTPUT_COLOR_FORMAT_YCBCR420 so long as
> the connector has legalized 420, otherwise error out. If the mode is not
> 420-capable, check with RGB as was previously always the case.
> 
> Fixes: 47368ab437fd ("drm/display: hdmi: add generic mode_valid helper")
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
