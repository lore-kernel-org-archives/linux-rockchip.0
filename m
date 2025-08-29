Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19996CA0FF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 09:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAIBh0grUnQSqjfu898xrhatwLPZn3w1yLYgexQyz+I=; b=frTbXd/PQT7G0M
	HKu3m4hPydFVQRL6ZLRcTxJa2PcNa7oTrcHGOeKZ1+3zD2ZExEiSyPfo0m2/2OElqucTWepon91fo
	vx1VtgGFV5vjzywyM9cSwg5KdyI10qf4Zu/CcNlorG+ngJN0SYXeW2AoIOcdLhRBjt0Axkpsk1YcA
	6GHbfjJ5UeKm3UmhS6ufm/x69W4/6RQGnzFSU3dkXjl1hZ0vYI/2aBKuhP7XOkN2rwG95n+N9CpN6
	ye6ZhDyC7acH/AOeC1mPpz7HH7dHJqROoSqVX9jhCMK56PiiF3s9rPgyXymTHL5nV8RBMeGlrKsOh
	V21mQ/WZfhyXKH4n+kEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urvL8-000000058cP-19gI;
	Fri, 29 Aug 2025 09:24:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urumq-000000051am-1JOG
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 08:48:45 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57T85s1X030156
	for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:48:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/5pBODwspf82fhKHX/+Qq3M8
	oCn/6yRZrJbLU7BeMOU=; b=O171H4Aal17R09DovZSV+f7s9mAfCdAdtrQVTFsl
	GQlxb/LkQrUq/6+/W0kU6lq/0pofV7O7pLQhM+o1+aXy9r4fAPkuYL2MXiD4siQs
	g1Na+02TxmDq29fo1qK8CUsEFolUHv7Tc/CfS4QJaFJpsGjh9LlP/jSUXO0lRmWZ
	/CEbX8JaAtsj2hyphwKEMHu9i/NeKTePzqcndXiJ2Ty5Bd2R0/1PdwworLi+vW8J
	VU+zqzS11JwUSpjblFP44O2dPwkJuocpegRv6CbYE+UMyxnMNW1agMiKOmNwftF9
	j6bgIpa5uAUClt6tHX6mVrzhmjzjmE3cf5qsJHFYQFAZGQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5web24h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 08:48:43 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70dccf2f31fso58529566d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Aug 2025 01:48:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756457322; x=1757062122;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5pBODwspf82fhKHX/+Qq3M8oCn/6yRZrJbLU7BeMOU=;
        b=tOPMg4Ud7qzw0niQyHXsp4w4GOkQRGOYp5UHeRgy6IGmQD2cwHr9x/py2j6IjKovaK
         0trrKENHz4l+IOhwXMG3nQZgm8lNvDcs3UfRH7ySMXhFhRPpqnyuUHxIEwpgaIth3fRI
         2kBAyT7acUazkLslEhAAOVhqrVQmRnWB+q4JOWsvO0kTOqfqzd6KXinuwZ/k1Zm8GJ3o
         gNEg/TBYlm6HUilz0g+MR4vtsdAyXcgD1axQySexkM0KWFNJig5Ev/QbaSadhe6RVmL2
         +f5ufJhNdyx0U4vnZF4GcqTyGn66UG85TBbBZFPKy+TTwuEnfPLFHVaochw8LwcuocaF
         5WBQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0e7enjDf39BrshdbcmJ3/SVCewh6D3SXIe/mTJwsW0OZkqvIB9jbC+1eQiDjkMnOiPjt1fQt10tvt5DaYzA==@lists.infradead.org
X-Gm-Message-State: AOJu0YywakBsOwFNjQFUbfYdfk5hk31JO/dXd7d6R+HoT6wRZTG7/kt7
	7uptt4+o1J9NUEF2dy+hWAunlgYfvKJexuSpb7iM5gpgCuF/D5Ho3V7If/kvdKzjPUNSmhpz9Ku
	lXHB9ZKGYpjAee68H/9SAZyQoMac2MeUzt8tKX7hdAuJsLufv2qF8/oBhJo+ZfMt9MWgJ8pc2Ii
	I=
X-Gm-Gg: ASbGncuQoruaVtObKRika3/T1gfAwYi4R/UQf8snlZtgwP6w9myZoy2Sjv/jZbCSzWe
	Dz5EIupeQjV6yQtAl5YhrMRyEP8NYYpn5TEVX/x+VcqigQrKCaejI08f8eH65NyShhjp3hN/J4G
	y/BfLCQumaBnI3dmfGWEQkT71WH6Fw+Jrc3Jf1yQ5yI0Ll1kRC2kBzl8ijR6rEJoChrwflc1Gdv
	Hl1ULnZiezCb2msYrKr4n93W9BexKUUpzEQbHezpeqXDNlkO5wl89sUiUDpk+7bKWVYK+Yhzvpr
	Csv5O/HsBtqeyNGH9gRJRHOpvuLDH6sytKggQ/Euf0KH+8TIm4gHZW64dDaP6ABJK/VfxOeMr8z
	6Ru9rWNZ0WT1ULOvoay5vMxScD7y0Mdl2HTLSGRh4HdD4RSmG91sw
X-Received: by 2002:a05:6214:5186:b0:70d:b3de:cec9 with SMTP id 6a1803df08f44-70dd59c1196mr125891276d6.22.1756457322435;
        Fri, 29 Aug 2025 01:48:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHq1ezFqcENyB1YLJXTV7TThom8X2IGaTOdTprgqE2iRpU+3lXQDMjeVPvPOaC+kNzjQAaeVA==
X-Received: by 2002:a05:6214:5186:b0:70d:b3de:cec9 with SMTP id 6a1803df08f44-70dd59c1196mr125890886d6.22.1756457321839;
        Fri, 29 Aug 2025 01:48:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f6784526csm461424e87.84.2025.08.29.01.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 01:48:39 -0700 (PDT)
Date: Fri, 29 Aug 2025 11:48:37 +0300
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
Subject: Re: [PATCH v4 07/13] drm/bridge: analogix_dp: Apply
 drm_bridge_connector helper
Message-ID: <ghp33yxo24gaubn6pijks3wnuch3fpbmi5z27cq7pk3siffiox@jb2zw3lt35hk>
References: <20250814104753.195255-1-damon.ding@rock-chips.com>
 <20250814104753.195255-8-damon.ding@rock-chips.com>
 <incxmqneeurgli5h6p3hn3bgztxrzyk5eq2h5nq4lgzalohslq@mvehvr4cgyim>
 <62dfbe1d-3e36-4bc5-9b25-a465e710f23b@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62dfbe1d-3e36-4bc5-9b25-a465e710f23b@rock-chips.com>
X-Proofpoint-GUID: MvcT8KcKhrpK8odnwifkhoPVeb3MiDgM
X-Proofpoint-ORIG-GUID: MvcT8KcKhrpK8odnwifkhoPVeb3MiDgM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX0P39ahd/yWCD
 C4IwP/za8xzzyKXbL9+RpOEPF0S3ydkxXp1oB5R18Z27gWsMl/e2t44j7xapMHf86QiCuo9G6Ny
 Z0anlH8HMj+zNyFYvRN03C6rPZqHFL1DoXy52oxdekFMpnpHM4NwFp3mp1zBfOW12cpuquIAyNL
 l+zmU6tRi1LfKjpoww9x+NSuHGGAFm+Lsuda8JmkFoYWsMI91pj2rRjT0y5RGUxSQo7RmGJBlDC
 ur9VrcuKI7bcmHRmXWHUYd7SzrX/bFoWkPQM2xxeJBWDVvews+hCXDSoc6sXTW8B2KuR8tdXAqk
 TFKuqOWVJ/uUg21isY82aMKjD78LleNSK8GXA5M7Pp2PiKG3NVKXt89DQWIvRytmJIQNzPoLb1q
 vTJzxV/g
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68b1696b cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=g_3uhpjf_u-dzjrkN2gA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_014844_463958_2C9FD84E 
X-CRM114-Status: GOOD (  44.23  )
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

On Wed, Aug 20, 2025 at 05:18:13PM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 8/17/2025 12:43 AM, Dmitry Baryshkov wrote:
> > On Thu, Aug 14, 2025 at 06:47:47PM +0800, Damon Ding wrote:
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
> > > ---
> > >   .../drm/bridge/analogix/analogix_dp_core.c    | 145 ++++++++----------
> > >   .../drm/bridge/analogix/analogix_dp_core.h    |   1 -
> > >   drivers/gpu/drm/exynos/exynos_dp.c            |  18 ++-
> > >   .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  11 +-
> > >   include/drm/bridge/analogix_dp.h              |   3 +-
> > >   5 files changed, 88 insertions(+), 90 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > index 7876b310aaed..a8ed44ec8ef5 100644
> > > --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > > @@ -947,24 +947,16 @@ static int analogix_dp_disable_psr(struct analogix_dp_device *dp)
> > >   	return analogix_dp_send_psr_spd(dp, &psr_vsc, true);
> > >   }
> > > -static int analogix_dp_get_modes(struct drm_connector *connector)
> > > +static int analogix_dp_bridge_get_modes(struct drm_bridge *bridge, struct drm_connector *connector)
> > >   {
> > > -	struct analogix_dp_device *dp = to_dp(connector);
> > > -	const struct drm_edid *drm_edid;
> > > +	struct analogix_dp_device *dp = to_dp(bridge);
> > >   	int num_modes = 0;
> > > -	if (dp->plat_data->panel) {
> > > +	if (dp->plat_data->panel)
> > >   		num_modes += drm_panel_get_modes(dp->plat_data->panel, connector);
> > > -	} else {
> > > -		drm_edid = drm_edid_read_ddc(connector, &dp->aux.ddc);
> > > -		drm_edid_connector_update(&dp->connector, drm_edid);
> > > -
> > > -		if (drm_edid) {
> > > -			num_modes += drm_edid_connector_add_modes(&dp->connector);
> > > -			drm_edid_free(drm_edid);
> > > -		}
> > > -	}
> > > +	if (dp->plat_data->next_bridge)
> > > +		num_modes += drm_bridge_get_modes(dp->plat_data->next_bridge, connector);
> > 
> > If there is a next bridge which provides OP_MODES, then
> > drm_bridge_connector will use it for get_modes() and skip this one
> > completely. I'm not sure what's the value of this call.
> 
> Following your advice, it is really a good idea to distinguish the
> drm_bridge_ops between the panel and the bridge. Will add it in v5.
> 
> > 
> > >   	if (dp->plat_data->get_modes)
> > >   		num_modes += dp->plat_data->get_modes(dp->plat_data, connector);
> > > @@ -972,51 +964,39 @@ static int analogix_dp_get_modes(struct drm_connector *connector)
> > >   	return num_modes;
> > >   }
> > > -static struct drm_encoder *
> > > -analogix_dp_best_encoder(struct drm_connector *connector)
> > > +static const struct drm_edid *analogix_dp_bridge_edid_read(struct drm_bridge *bridge,
> > > +							   struct drm_connector *connector)
> > >   {
> > > -	struct analogix_dp_device *dp = to_dp(connector);
> > > +	struct analogix_dp_device *dp = to_dp(bridge);
> > > +	const struct drm_edid *drm_edid = NULL;
> > > -	return dp->encoder;
> > > -}
> > > +	drm_edid = drm_edid_read_ddc(connector, &dp->aux.ddc);
> > > +	if (dp->plat_data->get_modes)
> > > +		dp->plat_data->get_modes(dp->plat_data, connector);
> > 
> > 
> > So, we have DDC, but we still want to return platform modes? What is the
> > usecase for that?
> > 
> > There might be some, but I think it deserves a comment in the source
> > file.
> > 
> 
> For Rockchip side, since RK3588 and RK3576 can support YUV formats while the
> other can not, the &analogix_dp_plat_data.get_modes() help filter out YUV
> formats for some platforms(The YUV feature support may not be fit for this
> patch series and will come later).

Note, get_modes() here adds modes rather than filtering them. You can
use .mode_valid in order to filter out YUV modes.

> 
> For Exynos side, I think &analogix_dp_plat_data.get_modes() can help
> parse the video mode set in the eDP DT node when there is no available panel
> or bridge.

I think this should be handled by a separate bridge. E.g. see how the
imx-legacy-bridge is implemented.

> 
> I will add some comments about it in the next version.
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
