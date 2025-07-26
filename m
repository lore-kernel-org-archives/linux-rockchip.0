Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3033DC87FCF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 00:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+aZAaSmYO9DKgwWg2ehC6xiN6PsRCX2zDgT6kYbka8=; b=a5nVbU+JSp3GFA
	asAx5vUtoDckik2Vf4jyLAsgALO4WZsjKMeRxF6nDoK5YrDEU6+kttxHSF3kDgfy7LWIAeDDQEVjQ
	46fmf16oN3AAfvg0W4vVF4K9qFPpr0YWKjNjt8/h5tL7UzgqcGm9Yt2o0oNm1C3DVfScG47M+CUuz
	1IVtZn+B+kN4rMY4y+PjlqfPeC1gbjyZZDgHlnwx9Ud4wVgIh887uiJJp9U0TAOjorJxpzKy4oCYU
	QDniKYsWp0PTg0JMN9J+5qdZD5g2E7RcoO/BZT7bl/X2udJWfpQ4ZjyEbUOaspErRO+rma0VFzPdY
	f1ugKCuaAqSqlrTyyOEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSbA-0000000Awgf-2pLG;
	Sat, 26 Jul 2025 00:17:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufSX2-0000000AwGq-1kpb
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 00:12:58 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PJHItw018080
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DoBs6OVTwFF+JmRKLxgaU515
	KdcbQmUXJDbYvNv8Tsk=; b=AkcdKEWch4hN0ZdD5TgDOmbaOcmN27fIS/ZlHbWe
	3ULXqdAcgmVi41jdu/XZjfaiA3D7okA2KiiMsqLdEVWadDDOTywEvW0cb9vaNYcH
	BZte5R7/RAjP9G30k/XrAEZQoSPGAzuoI1m7cBtt+qwTY0JWPGJSJOIr6Cq+GyFo
	NFbF/T6c/D7WKznCMg8bU3AWiToqyIHXEdleQLztsN9ljT5ZMoeIebuFk4agoqoI
	cSCm9nKK3HTqFL/9Vh/zr3Th+7Z94MSdGtRntAg4M8H66eC/jQzOk0nZrKgO6EOP
	wXNcFxn88yKgJLj8/B3MvF9G6u1enWDcHWWnp4BGwfzSeg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2s3rbn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 00:12:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab844acca0so60695281cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 17:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753488774; x=1754093574;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DoBs6OVTwFF+JmRKLxgaU515KdcbQmUXJDbYvNv8Tsk=;
        b=fNZdV3+EcMuVYYJNL6dfmLF75kPBRb4duBd0FdioITXAreRiD+w2+8VnEQCbO8Nbh5
         NaD1tkOoVhM5n3eyC46ip5Z37oyuaubkfFGnz+9+mvEEh91DHudqu/199qc79UmFfhjn
         riRtIn3bvZHOsiW29mzHD5ip9kn7kNZ00Vd2LB6F25D1nVIKH0k+p+T8pZnSnmFVfpvj
         9/CXsxW9VECkTOANmX6fgzN9Gu6Sc9mGxyCVAOclIl0CGS7F/QYOKLaiOfX7ruTnNHFq
         +CuB+YuzaMpHr/kV71cXyKpG7iFJR9WZXOKdFqK0nH6+OF+tPduLXXuXEfqhqlFV7S+x
         gp6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWhuydyMT407oopc7s24HGEL8fSASoYl51XyJsvQZxqt5fnwzUUnEyt4gFMza98RP0DB1/qvgxepCpEM1kCUA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZjWgMIgM+y8VuSU0k54gSmMYBfz6rBqwUoP+FrMPz3XzXTp1s
	ZwZbRjV1Gr/dmny/5jAZo+gZvAVJoIEogxV4VSjv4tdd0IyACf7I6XWEqdic0nyfgtfSU6jomxU
	AJneIyxszw4kW0UCA4S5fsOIAvcvNb5jvs2jyJ6vyrMCrxxzJO54Daxp9Wz0QSVAn0PT6x/u0x+
	g=
X-Gm-Gg: ASbGncv62pWd0nUO57fEJBm5PQhtYfLUukYNv1NihlSG6cYsukkOx94TTiBzA1kWpa4
	X9JUWimD7eALeS01dwP9ng+/cTVcEqJYsEhf1KgW5ZJJHmptTjtPevhA+x0v7NO3vqZE8uY2let
	2SdGOoa3/dzdVlFN6E64Z2m4w835t0jItz9Y2DOm4PrxqRxi6l7TIJn0lfpu4PPIr3jvVU5f3Lc
	NtXLpMQCyOt1/Rj+HfaPV46uip7hFeEx9VHde8djtJCp0OptprGpza4V3uZoVjhiXYnWzvwh2wc
	XVSTHNrw4ZORYk7qzeLZzpsRVCJkLFx8NWeuvPRsrf7RLfJ5J0zbpz0XbaXQpALTbvpdICUHFXQ
	3vCnPt5KCU5M7bRndjBv5OCIt/KNMbGvy8HvI7SnBGDEKBV/6LSAZ
X-Received: by 2002:a05:6214:e4a:b0:706:ffcd:d3ef with SMTP id 6a1803df08f44-707204d91f1mr65699936d6.11.1753488774230;
        Fri, 25 Jul 2025 17:12:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGbddedN9+X5RQ+51/olzP++4eSaSJsPJ6FulQapEa8W/10AV19KAs7kk0J58zSr+jFJwBgmQ==
X-Received: by 2002:a05:6214:e4a:b0:706:ffcd:d3ef with SMTP id 6a1803df08f44-707204d91f1mr65699336d6.11.1753488773736;
        Fri, 25 Jul 2025 17:12:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b633760e6sm186357e87.160.2025.07.25.17.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 17:12:51 -0700 (PDT)
Date: Sat, 26 Jul 2025 03:12:48 +0300
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
Subject: Re: [PATCH v3 03/14] drm/rockchip: analogix_dp: Apply
 drmm_encoder_init() instead of drm_simple_encoder_init()
Message-ID: <6psjcrhbnk7czdrdtxh65kr6qvygkwogvert75dg2svbm2cqd3@uhffyfdxqpec>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-4-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-4-damon.ding@rock-chips.com>
X-Proofpoint-ORIG-GUID: t1jGNQ60GF_c4qB_4uYMjJjQPRMmYu_P
X-Authority-Analysis: v=2.4 cv=IZyHWXqa c=1 sm=1 tr=0 ts=68841d87 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=HslhmZ87janovOCoqE8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: t1jGNQ60GF_c4qB_4uYMjJjQPRMmYu_P
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDIwOCBTYWx0ZWRfX73nVDVZkwJtY
 VuX4pphCN2YkjgShFyC+xB7nG3IDwtlzHV1bXhEOxlA1hBiZkAVvCJSf+6ME9uyEjo0+8JSFjvB
 EqhUAx4E4Q4tYix3G4a0onQayUks3Ij9aN+rt/0LidTyo0TDVJiWCMGi2e5LOBm+Wiw1OXbvMAC
 dnLxx3DkAF/2v+jRjZLRxojSowfFn3/Pi/q7pAqt7Y7NiKcPp413yoe4ZrMo8OGbhA793VFdi8y
 +divp/H53F42C9A+U3T2Wf4JA+y8XG/jcqtmk9j7M1pbaXKya9KN+jsVM72XACf8Zo+x+MW3ubv
 oluwoj5ycCegyj0iU5gcyTR5EQKftKzp/zMGs9lXRre+lYZ15elbUT7fXMo5Ab+roPm8V9Vlg8x
 4dcl7kodcGn0xiVOQ87ckRzJooaZK8SkbPTu4SOIzeShoXIWvUf0LdVVayM1zZsZ4GCo9F1e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_07,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 mlxlogscore=745 mlxscore=0 adultscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_171256_599681_B86A0078 
X-CRM114-Status: GOOD (  19.93  )
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

On Thu, Jul 24, 2025 at 04:02:53PM +0800, Damon Ding wrote:
> Compared with drm_simple_encoder_init(), drmm_encoder_init() can handle
> the cleanup automatically through registering drm_encoder_cleanup() with
> drmm_add_action().
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index d30f0983a53a..4ed6bf9e5377 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -29,7 +29,6 @@
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  #include <drm/drm_probe_helper.h>
> -#include <drm/drm_simple_kms_helper.h>
>  
>  #include "rockchip_drm_drv.h"
>  
> @@ -377,8 +376,7 @@ static int rockchip_dp_drm_create_encoder(struct rockchip_dp_device *dp)
>  							     dev->of_node);
>  	DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);
>  
> -	ret = drm_simple_encoder_init(drm_dev, encoder,
> -				      DRM_MODE_ENCODER_TMDS);
> +	ret = drmm_encoder_init(drm_dev, encoder, NULL, DRM_MODE_ENCODER_TMDS, NULL);

It's not possible to use drmm_encoder_init() here. Per the documentation
the encoder data structure should be allocated by drmm_kzalloc().
However this drm_encoder is a part of struct rockchip_dp_device. It's
allocated by rockchip_dp_probe() via devm_kzalloc(). This means that it
can potentially be freed before the drm device is completely released,
creating a use-after-free error.

>  	if (ret) {
>  		DRM_ERROR("failed to initialize encoder with drm\n");
>  		return ret;
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
