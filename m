Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED03DCAC5A5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 03:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Enllp6RThLfl0yLUo041HeOCkTAXQHJDHRp82nf21/E=; b=lfkkXTe3t9FxQO
	ofHFAwqqnF9OuKar+2HmHYYXjaJJreF0DhpVvyB/kfZj8aEPBaQggcgGUZc/ONyfuDiEuPGKYWyYp
	OCZeJ0z5QgTxcM5r2o1quskEeJ9onOx1p6DXGOtHtn9PkhahdLJabRSZwKAtVzqUaykY7lP1AD0dN
	Sj8LzivoieCXRIYxXsBvLTbrNhqnmXGI1ebrkwlwrNlsrnYSf6QtT43iNey51mBLc82LEnhL/Rr9C
	mw9ZIdhMSlhBkTbd7fdAwifIrrvALqWynoNZoPxilyilRgjD5uQGG6yKNPQW+awSDzkC5zz8nJvrK
	4C7o0hZT+7nl5LBw319Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1cnq-00000005PzH-2I9n;
	Thu, 25 Sep 2025 03:37:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1cnn-00000005PyX-3vip
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 03:37:53 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1VDkN002776
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 03:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=n78nIIomQavWQosZYQPTeoTh
	4ytOcFS5L4hdEAU6XLI=; b=UgTSuc6KmCehqi8ARRkarzQ/yMYshdS5YZXikwc2
	7kEv0mWOqAoVbz2YicphPD1AnKPWlRK1yp+Fmhm3SFLF2E1yvaljAw4k8AtMELg6
	inG7Gz+JOnDV0mhleHIvoHBYxyJFyI7901v6BlbPPK5iouwon9LWTXsbaCKBEIOH
	eimYo1z8/aAmfxm60mIIoxRFz+QEjrkNqCiCRZ+GJ9ejdR8KsVANgS51pb2xPN7c
	PxENgsIhvFIwfVK0cSmGzFd+nlsjppggHlen3kj+tEcsjeH6bQCmWkOlOu5d61Zi
	ArtvXKWsEGrwwYRd1VJG9Jo9uQVCHTZDYJdJP3/srrRK0A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1585-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Sep 2025 03:37:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8589058c59bso175769585a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Sep 2025 20:37:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758771470; x=1759376270;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n78nIIomQavWQosZYQPTeoTh4ytOcFS5L4hdEAU6XLI=;
        b=Aw5UKXxOlv8M9LHESVXzFh8zFrZE0dHuM5XTAxdQ8Am2IXrIGR/aK9YWLwSvlFg+xC
         Sl2YTDJI0awgSDqje28E9OExl/4e7hZp6WYy7CWclcgXl4/L8ogMRlAc3lOwpr/CenjQ
         bMg3zWaUnAP9vjHQSVKZp0em5Q/lNPsPn4/8y6SQ3pnKQyy3T2xSezp0C65quToNci9p
         kOLUDyCDW9RPnyuWOmMgU/PMLJBDtmX6jT8XI/VunWjyOnogDJguMZxq0ocll/+uCFD0
         WQIOIkYIRcJuNTqw1xZEF/LAvYL5Dxnh6ef85jpP5j29PGGRggcUQRut68NbWcUiicz8
         t66Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYObXsVIy6EAXzO0fHxytrRlis/Nf7tqt2PAzo+piXm2Ttbj5scb7oRxJ1ZDGaLnWdlmh6doUQ49aSHtC40A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz77vI+i4gFKfDrUGn/b6z0kTzV9d0N60q1x22mxFKRn7ZNns/e
	U/0eBzCkhIvxGgE7DiB25EZQjT5JLUMk/ve65K19R497/ve6J+7RDLIQ7/Di3xLgszqEaPgz142
	x1naxsCszNLJsfEw6Uvi8HNuWW6Z6a9jAQtPbDLibgEVH3CYyCzNwVcCpBFxA0FS14LkMT65+0A
	E=
X-Gm-Gg: ASbGnctQdNz3a0pVyPt/sS/yHoJ8kgYP2lsZaqshBacuKmxty3jPQduut8vh7eT+oxE
	9zSje5nEhWBRyMYxbeIlHMt2PAiSOptEZjP2gKz6LmGtIHGgYId1Mqaw2PwTBztfM1oehNa02Id
	qM2XTOgRnRK6aqJnkrFB424uGkUZJRMA4ELlZaL83ac83RLCc6kHInndy12ZwItVIDVf3kHlf/R
	QMLjajwGqde2mkW7UFAuf0BJb9mBxOoKPgoUALZYu7j9+ifKecUPDnTKlaJQ3eHv9FiMV8tIOD0
	JWai3q57HuTVIuvWEZpfZQGlU94rFJo5uO3AgOzlu9252h1LIDHu6Z6y2TJkxeyx607zgFkiu6Q
	U7rtJyiK//AQSZR/lsxU1WrSM0XCUnO+rethfXrRn9rzsnx00MfCP
X-Received: by 2002:a05:620a:2907:b0:80a:72d7:f0cd with SMTP id af79cd13be357-85aed8cbc11mr225515885a.56.1758771469835;
        Wed, 24 Sep 2025 20:37:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/Mkya6v8AWWGYf6q1L7jR77pkQxfEZnuvWyLMjPjoG8YIV9rwp0IrPi1ugpz+EuhpXNM8VQ==
X-Received: by 2002:a05:620a:2907:b0:80a:72d7:f0cd with SMTP id af79cd13be357-85aed8cbc11mr225513785a.56.1758771469267;
        Wed, 24 Sep 2025 20:37:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7bfb413sm2245821fa.56.2025.09.24.20.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 20:37:47 -0700 (PDT)
Date: Thu, 25 Sep 2025 06:37:44 +0300
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
Subject: Re: [PATCH v5 10/17] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
Message-ID: <ykj7xrnpagbtftr7wt2vkyc4d4u4k5nmxsir433jzz7lhc3oq3@gaq4kicsrlpr>
References: <20250912085846.7349-1-damon.ding@rock-chips.com>
 <20250912085846.7349-11-damon.ding@rock-chips.com>
 <tsgfxlkxty653crmzmwsr7p6slf27pxf6n6to5p7zvi6wsl444@525tz5uhbj44>
 <2870c278-3c65-4d8f-ace3-1fd5b03af2b4@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2870c278-3c65-4d8f-ace3-1fd5b03af2b4@rock-chips.com>
X-Proofpoint-GUID: 4W56Cw3C85NGK7CUaUkNkeJ0_2hCf68a
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4b90f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=e-wIutcIwHs2mBw2ZVAA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4lJk/XUCXhSO
 B3tsQvlUGviqFxX36tQfKvuaRmD8+iyjzOOzZIVaRIRLp6+0WpGuDt7lIpq9eQdlsHYPVMSSUTv
 RGB8EyQe0wUqJlklrQ6W4DKx5HnSXtPhwzCcaoLnkONj24hL49aZKte/Idm8pZafh5RHg7TO6oE
 4FH33Y8D7pLV1dXO5txN1B32UIIBDQTviybefAnOTNl4Um7JpycIQOUsPIJmNiBWkF9K8VHRULs
 gRpz+xuuWQx381ICqH97zd3At+4A9QyDVAQFgSZb7ClM/001O2Ov8d/5at2zDomn5A7MuXo83g+
 8g1jEuUQSHNWv11/FFHkqn/Udy3wKSIRlpCTpUDYtiFWPoKcOg8HMZx5oFEjrkoVKvJCwJsr2PY
 J0jqsbj9
X-Proofpoint-ORIG-GUID: 4W56Cw3C85NGK7CUaUkNkeJ0_2hCf68a
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_203751_989350_8CF1A654 
X-CRM114-Status: GOOD (  39.82  )
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

On Wed, Sep 24, 2025 at 05:14:57PM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 9/12/2025 7:03 PM, Dmitry Baryshkov wrote:
> > On Fri, Sep 12, 2025 at 04:58:39PM +0800, Damon Ding wrote:
> > > Apply drm_bridge_connector helper for Analogix DP driver.
> > > 
> > > The following changes have been made:
> > > - Apply drm_bridge_connector helper to get rid of &drm_connector_funcs
> > >    and &drm_connector_helper_funcs.
> > > - Remove unnecessary parameter struct drm_connector* for callback
> > >    &analogix_dp_plat_data.attach.
> > > - Remove &analogix_dp_device.connector.
> > > - Convert analogix_dp_atomic_check()/analogix_dp_detect() to
> > >    &drm_bridge_funcs.atomic_check()/&drm_bridge_funcs.detect().
> > > - Split analogix_dp_get_modes() into &drm_bridge_funcs.get_modes() and
> > >    &drm_bridge_funcs.edid_read().
> > > 
> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > 
> > > ------
> > > 
> > > Changes in v2:
> > > - For &drm_bridge.ops, remove DRM_BRIDGE_OP_HPD and add
> > >    DRM_BRIDGE_OP_EDID.
> > > - Add analogix_dp_bridge_edid_read().
> > > - Move &analogix_dp_plat_data.skip_connector deletion to the previous
> > >    patches.
> > > 
> > > Changes in v3:
> > > - Rebase with the new devm_drm_bridge_alloc() related commit
> > >    48f05c3b4b70 ("drm/bridge: analogix_dp: Use devm_drm_bridge_alloc()
> > >    API").
> > > - Expand the commit message.
> > > - Call drm_bridge_get_modes() in analogix_dp_bridge_get_modes() if the
> > >    bridge is available.
> > > - Remove unnecessary parameter struct drm_connector* for callback
> > >    &analogix_dp_plat_data.attach.
> > > - In order to decouple the connector driver and the bridge driver, move
> > >    the bridge connector initilization to the Rockchip and Exynos sides.
> > > 
> > > Changes in v4:
> > > - Expand analogix_dp_bridge_detect() parameters to &drm_bridge and
> > >    &drm_connector.
> > > - Rename the &analogix_dp_plat_data.bridge to
> > >    &analogix_dp_plat_data.next_bridge.
> > > 
> > > Changes in v5:
> > > - Set the flag fo drm_bridge_attach() to DRM_BRIDGE_ATTACH_NO_CONNECTOR
> > >    for next bridge attachment of Exynos side.
> > > - Distinguish the &drm_bridge->ops of Analogix bridge based on whether
> > >    the downstream device is a panel, a bridge or neither.
> > > - Remove the calls to &analogix_dp_plat_data.get_modes().
> > > ---
> > >   .../drm/bridge/analogix/analogix_dp_core.c    | 151 ++++++++----------
> > >   .../drm/bridge/analogix/analogix_dp_core.h    |   1 -
> > >   drivers/gpu/drm/exynos/exynos_dp.c            |  25 +--
> > >   .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  11 +-
> > >   include/drm/bridge/analogix_dp.h              |   3 +-
> > >   5 files changed, 95 insertions(+), 96 deletions(-)
> > > 
> > > @@ -1532,6 +1487,7 @@ EXPORT_SYMBOL_GPL(analogix_dp_resume);
> > >   int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
> > >   {
> > > +	struct drm_bridge *bridge = &dp->bridge;
> > >   	int ret;
> > >   	dp->drm_dev = drm_dev;
> > > @@ -1545,7 +1501,23 @@ int analogix_dp_bind(struct analogix_dp_device *dp, struct drm_device *drm_dev)
> > >   		return ret;
> > >   	}
> > > -	ret = drm_bridge_attach(dp->encoder, &dp->bridge, NULL, 0);
> > > +	if (dp->plat_data->panel)
> > > +		/* If the next is a panel, the EDID parsing is checked by the panel driver */
> > > +		bridge->ops = DRM_BRIDGE_OP_MODES | DRM_BRIDGE_OP_DETECT;
> > > +	else if (dp->plat_data->next_bridge)
> > > +		/* If the next is a bridge, the supported operations depend on the next bridge */
> > > +		bridge->ops = 0;
> > 
> > And what if the next bridge is dp_connector without a separate HPD pin?
> 
> This case was indeed not taken into account.
> 
> If the next is a bridge, it should be better to set DRM_BRIDGE_OP_DETECT and
> return connector_status_connected in analogix_dp_bridge_detect(). This
> ensures the connection status remains connected for both the dp-connector
> and the bridges without DRM_BRIDGE_OP_DETECT.

Maybe OP_EDID | OP_DETECT? I think, we need to fix drm_bridge_connector
to stop preferring OP_EDID bridges over OP_MODES if the latter one is
enountered later in the chain. In other words inside
drm_bridge_connector_init() clear bridge_edid if OP_MODES is encountered
and vice versa. This way you can always declare OP_EDID here (after
converting to panel bridge) and then letting panel's OP_MODES take over
mode declaration. Would you please include such a patch in the next
iteration?

> 
> > 
> > > +	else
> > > +		/* In DP mode, the EDID parsing and HPD detection should be supported */
> > > +		bridge->ops = DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_DETECT;
> > > +
> > > +	bridge->of_node = dp->dev->of_node;
> > > +	bridge->type = DRM_MODE_CONNECTOR_eDP;
> > > +	ret = devm_drm_bridge_add(dp->dev, &dp->bridge);
> > > +	if (ret)
> > > +		goto err_unregister_aux;
> > > +
> > > +	ret = drm_bridge_attach(dp->encoder, bridge, NULL, 0);
> > >   	if (ret) {
> > >   		DRM_ERROR("failed to create bridge (%d)\n", ret);
> > >   		goto err_unregister_aux;
> > 
> 
> Best regards,
> Damon
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
