Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D776CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 11:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Z17aQgRxce918o9eNC9U1dlVWD08xOH1YBvNpxBXhk=; b=cDLM2u0NmVaqyl
	RLrk4DLgD5/VDP649qzr4tO5PGIqGnmr4jGmdnMfGdK+QvuRqriSZegnT8bZbsCyCTWaLM1YNT77q
	fk6/d9uBXXVUy84Sno9e4HE9Vkwu+AR0IBd/otPNNcwjPyAsX3RkX4Z34fn931DiUyA+p/7hwOxgM
	pO19ABs9zryOUesExWNUnRWhLMOX7+nmna/7AbuxmPg3NHSDa3Hzt27YAsBIfcH9HGW2Avlelk05S
	bUpFOrHnvIKpDXLLrCQVmmU54Z8QWPUQAMkyK+pX6XHlCRQaqGRc0crpDPbD2wYwIVE7/Jh7e6ENE
	h9+nbdXxrY4xPQu+VzrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1ec-00000008n7L-2A35;
	Fri, 12 Sep 2025 11:09:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1eZ-00000008n6L-3KDU
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 11:09:20 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9flZs002431
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:09:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RXs862lHntqXQwNUIePs3juX
	TkdDKRSL4lc3ieGUpc4=; b=bl+MZNeRJm2odMXHbz5MBmppwbDpNzrIZUDhXYto
	oiHlHMedpKDBvrKEV9cQVUoTs3htou36PF/hMhh2kQ2OWZjice3mAmYehnUKCDxw
	9Qk5tAJ7EuA/S1VSGHIbv0dBNL3Qa8P2zzCd1xPRK9J9l0OIJBUiBQGgJUNxURtl
	54AzGO30qSd1N1QJtKRnyLUIMsuYPa2tuwlZ00w8d1/bxQcz27udyvhOciGRVu3Q
	fa+OYXWq3b/k1YX/UvASSsDig9EMaLum0zGnMGFbAoBDVOw21J+YsVeb/zdZuSzP
	JKUUO3z+3kf8nud9zavD8wMGa61CFYaEHfrHXPyn5gRx7w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493f6h6e5b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:09:18 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-724ee8d2a33so31903846d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 04:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757675357; x=1758280157;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RXs862lHntqXQwNUIePs3juXTkdDKRSL4lc3ieGUpc4=;
        b=EtB2R55R6RVoAa6yxI7oH0i/wDijkviQdo7yM1iu557Kxv5ipiBxTu9mZcsCVXqwV9
         9OuZl82MfEvOjAOWUbDsZ7o7riTJAhz1KqRB4ToeoDLZPTW/R6sKexUXlMLoS36smZc6
         GKiYMF1ywK6vO8GxJ+PFqrk9ZjljOKfvuaP6NGtonRz3S+s8VVRPA1tQHNDRIE0SWWSA
         jJvgUZz3knuBAeKxoYteEPo4RPlus7cwJEF6ciTmLZWyQsvjvMZjROqYaqHClnwzL+yZ
         gctlMaGgiDikK7yurGvSVnZFxLEbM7mNdvnQun84iPXUDtjTIyT9CDC1NdQG/TNMRqlE
         XzXA==
X-Forwarded-Encrypted: i=1; AJvYcCVxgeEprppVGd6STIjtm3YoRtjGKsyLz4Tfn1MxLO0LY+sQQ6y7HCcNnTraJm+DO+FAJMY/0pwbfM6gmg3jqQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdxKvpCB8pCFvlWxevQQHwMxpG0eSOqBArdLBvBZIamakwOM//
	t2QH+H1fR+WKdLb6j/uH/oriU8jInzD2lhdtQx8Ul43bjl4qO663i784yRor3oyBMJqBPSNHRbO
	06BjblhvevQFFtQAdVH3BhYBnBK2tTazCpPtOR9UzntyltiFkR9ZSe58KCqyvdhREaiFUJQZu3a
	0=
X-Gm-Gg: ASbGncv32Hhb/+e2hfW2J6JcVNW12D5pG7wNOJbemoHwCDnAkOIodTrGsmkCrZicQkx
	3NgcBLGeUNqvhWIaPUFNuIwT5p9cRkj9sO+scfbRdyVjUh8gVtyyvaLDgWzgcULteR4uwRwjdYZ
	SOPGlgCk+ZQxy0dQcWUmGp28fqZtPpKIRlfPGkOlDoPRyoX9asFi64OEuMz28Z+uLhq8jd/R93o
	P9CRJ0EpgP4URcw1EAoMJstjvdS7tzPUP+G2uhf4LKH49xgchV4STEssk//G1HKvfu+IJzx3mAV
	icgii41bggmo9inbZ5q/REfR97DCjIORv6P+7O1VBtz/oWKLD2fIn7567ahRFMXRB8V1TgT4a73
	5W///mWy1yHtVncgYK9fQLkNMNFB1vPWGis8rg9FyKKX+ebB072ML
X-Received: by 2002:a05:6214:5292:b0:729:3942:651e with SMTP id 6a1803df08f44-767c46ccbd0mr29918146d6.48.1757675357039;
        Fri, 12 Sep 2025 04:09:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwpwkiF7tmyFiOg9b2iM6+kt1wZ6fedFzLrjDmSArDmyBGneXRRy71xO9JbYjDDc2/GjMUTg==
X-Received: by 2002:a05:6214:5292:b0:729:3942:651e with SMTP id 6a1803df08f44-767c46ccbd0mr29917766d6.48.1757675356530;
        Fri, 12 Sep 2025 04:09:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a8212e3sm7522231fa.41.2025.09.12.04.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:09:14 -0700 (PDT)
Date: Fri, 12 Sep 2025 14:09:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, dianders@chromium.org,
        m.szyprowski@samsung.com, luca.ceresoli@bootlin.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 15/17] drm/bridge: analogix_dp: Remove panel disabling
 and enabling in analogix_dp_set_bridge()
Message-ID: <tywxkfjhulxsgdphngtfs24whslbkmnza7yx2sb7c4ulea6val@46pi6e2sjs6c>
References: <20250912085846.7349-1-damon.ding@rock-chips.com>
 <20250912085846.7349-16-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250912085846.7349-16-damon.ding@rock-chips.com>
X-Proofpoint-ORIG-GUID: 24wUVUry87zXYocvTPFtNyKsHy5mgSgT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEwMDE3NyBTYWx0ZWRfXwCYU1G6RmDn8
 GEOriSMppuuAeOtoRPLJc0ldAUXy007nFHN6AwAQv5hOWYJYX6bqZsUFhqsNNF2VfAUGni/mh8e
 +WMWq5liCKuuWPfnjzWoUkQXv065RMHdYVv9W6ooMTJRpv1q2KpKDQ9X/1yEc9zZsNqC0fdhVF8
 jIbVjwezCE5+tP7sMEYUfC5EaMb3zXplXSLDwMtFdqZHxToCIzS/ILVIrEbC5WsTr8RAqUsa+f/
 OnXm0riwRZrmJv7JNKlaXgsrhRY8bvK9gTpr1ssgpEvauke6nJBIEoLL4wztgGNHGivNqGh9y0h
 EgPS0D9itvjsEqPUd/Xi4rOyvP2AB5XPZbqGNmXS5oE/dLWkcDq8SVFwnP7dYm0TWRIx8osVJpA
 L6FOJWXH
X-Authority-Analysis: v=2.4 cv=WPB/XmsR c=1 sm=1 tr=0 ts=68c3ff5e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=xk9nQhndt_Gh6lZpDTgA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: 24wUVUry87zXYocvTPFtNyKsHy5mgSgT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509100177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_040919_830834_DD6BEAC7 
X-CRM114-Status: GOOD (  23.89  )
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

On Fri, Sep 12, 2025 at 04:58:44PM +0800, Damon Ding wrote:
> The &drm_panel_funcs.enable() and &drm_panel_funcs.disable() mainly
> help turn on/off the backlight to make the image visible, and the
> backlight operations are even needless if drm_panel_of_backlight() or
> drm_panel_dp_aux_backlight() is applied, in which case the enabling
> and disabling process just add necessary delays.

Not necessary, it can actually be turning the panel off and on. Maybe
it's worth squashing this patch into the panel_bridge conversion as it
will point out that these functions are still being called at a correct
times by the DRM bridge framework.

> 
> Therefore, it should make sense to remove panel disabling and move
> panel enabling after analogix_dp_set_bridge() finished.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 66d0cca1f268..c98058e9c917 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -749,9 +749,6 @@ static int analogix_dp_commit(struct analogix_dp_device *dp)
>  {
>  	int ret;
>  
> -	/* Keep the panel disabled while we configure video */
> -	drm_panel_disable(dp->plat_data->panel);
> -
>  	ret = analogix_dp_train_link(dp);
>  	if (ret) {
>  		dev_err(dp->dev, "unable to do link train, ret=%d\n", ret);
> @@ -771,9 +768,6 @@ static int analogix_dp_commit(struct analogix_dp_device *dp)
>  		return ret;
>  	}
>  
> -	/* Safe to enable the panel now */
> -	drm_panel_enable(dp->plat_data->panel);
> -
>  	/* Check whether panel supports fast training */
>  	ret = analogix_dp_fast_link_train_detection(dp);
>  	if (ret)
> @@ -1156,6 +1150,7 @@ static void analogix_dp_bridge_atomic_enable(struct drm_bridge *bridge,
>  	while (timeout_loop < MAX_PLL_LOCK_LOOP) {
>  		if (analogix_dp_set_bridge(dp) == 0) {
>  			dp->dpms_mode = DRM_MODE_DPMS_ON;
> +			drm_panel_enable(dp->plat_data->panel);
>  			return;
>  		}
>  		dev_err(dp->dev, "failed to set bridge, retry: %d\n",
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
