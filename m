Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5971AC44539
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 07:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfkF10LKKPsc4+lFc3n7RCr9YIQr2hhSLaO+sursJuU=; b=Vm8WQMhCypZvXJ
	F/z9dwxyqL36ePnatdmy7RWUgfweDxM+sPe9v23KXrIXHyRT8k8GNG3G03wM4qZbJU26t6Q/Frj0q
	TO63uOAmRYK719t/lRh6l6m/a0PNE5EDbWzR7b0fBS8h/By18NGVKac+hG8aPC26AjFqQUnAwu/Ew
	Z9yV0OpiYi0+qJ9MKFIzo/F1XnhDjgHvFrWHU+iciDRoxgliuNrJHhZH2d6ZLI3ACE7TTfk/dvirf
	uahHGN76ceS6edNoiqzNm9PoCVWpgE+BIE0t6PBDo81Rc8giYSWyXaFWt8OnRcIhx/bOOsypqa9Un
	kmXacBc7HuRvZCD3Dw6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRZz-0000000B6OE-2mLP;
	Wed, 22 Jul 2026 07:41:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRZw-0000000B6Ml-3vNM
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 07:41:22 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M6fphi200365
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 07:41:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uLFbiiOA9hEJI7vkwFsRphph
	L8SnhgkIS0i8wm35ID4=; b=SOQpXtqwFMu5V9C3aTPrHdER1uzedC5+uDvQYAh4
	FxKZOkchklDcFHMhVpoi8FOwHXJGWIpxAwAHCPuTFU8QlGGaAyHZsjpJ+keJVK3T
	hU8FKCFRs7tGPeU4JzrSay36wf7VEfzCXZLXMCf9sWKZF/3h6wR7DWMVW/oY/Q6i
	DOQVOxVmTLvmncTVkrPao0YlX3InJJlzw0UJ3XJlas8YCCi5/E2uiWZnbPwymnnk
	xMJMKNpUviWzB2lVsWcNHI0Ygua2jbNK1B9KpDiD79jc3T1lwe6+x0QILYDmxU7Q
	JaYAc2cp7KdmQljaVy7uWqk6tbP+gVHlGtCqE4/430G9Zg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjrtt08cu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 07:41:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51a87ef9713so85027591cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 00:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784706079; x=1785310879; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=uLFbiiOA9hEJI7vkwFsRphphL8SnhgkIS0i8wm35ID4=;
        b=O1c7QH2y8TS61oGvAH4MJdbXhjN5R+R474fBfRQVGH4INx66tN0SkGsx94SIbqNhBP
         CeymJNhRNZOL+RUZfjSHSBdDwhN+4IOJyl1ySfTgrdOydQSOBjZnvNLI1OupPNh6LJHq
         lSumuIpvc4+a0Vm7s7OLqI8vGqLq2zyoOo25CiU/94LeWvzO7CB0DXuYHGB/7oGblE31
         /LNQTy3Qk8siJcGBG1jwRA4p5nmiCy/0C9R+OZJaob9HTsAJYYzY7x/H7WghqwAjIXpq
         iyXcIdQqW3l9YfHIGcWW+6CDxu7g7hPg2oUS0XUDsiC8uC0EVngCga570Zgi8YI0TkY7
         lBSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784706079; x=1785310879;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uLFbiiOA9hEJI7vkwFsRphphL8SnhgkIS0i8wm35ID4=;
        b=KElchdED/BgIRhL+fx141tub+46NJp3HKkcxkLcauY5sjMQ2t0bbZCGv07s+EnEB+j
         By/YYOX6O1iwTXOKKujG/R6yAZXv0m94YKCn0dSgIruJkxoDscCfE2scV9/Oi/VrA3fB
         KZZfi4m+cig1ddznPIU+SoQRGRDryf6XbN4wR5GQKtpmKbYbTQ9DMDFHudwtrtXdIE3m
         oiElnzXbmVdsOkGrpejFcm5owPs2CjDsjQf5Fi2BCNGw02iKXzQaXf1J+HTnOWT6VRSy
         62NiZXgM1FizXIUX4KRp53/q2W9ungCcv7Gy05KB3posZWOUDZJyB7s/YQT51wpawn3W
         HSDQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro5h5hIPdY4hS7pD9VimGNMBVJwuzoHDyTFvW+4J7gPHbx0RYCvXZ4Uk/2NGMSsopNwjnCuhzgsfUkQ0JjR2A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1sKlgTv7QLGckuge0pdiB1bp2ADxwCQqMDk0jFFyB7hpW0+wT
	PrznFUHB3Kxq5sE0rYtKMU0JhixB3ZZFLSDDsF+aW0+miYEV9rjwgH/t/IDzv5x/j2o7/GfDDYO
	xnITZA+rq/NELR9Sxs/+imSnqgUR0S3PhHa6MNnP8KYAzLZGYgoWue6SVesJDOrKIHoLEShD2H+
	E=
X-Gm-Gg: AR+sD11//bEp1//IGuuC/aIEpyYj+K4FlGnMaWULpyjRTIAYOrddrnPOYOhxEwoWqBl
	g2ck3GNSlXaZkA67mRbzbYwMD8X7SIopFPtIhf+Qgqfby9l2ZseWPTVzkvMRn9Q1fsWXHjjvA9D
	8CeM0Pxgt2QJO/v1nYMr+pEPguK1hpytp+vVAyyT0E5ESh+qNhWj6Z6vqnmDNWt4hnBKQ9tdQZc
	C3yA/FsEey7+rZweNMqqmlJwr6fcLR9Mcv0RMVkMEFXKz04HnRHzN9R6iQ2UD5iYjHJKmRo7h6/
	vlY7Sp15/a7fjz62wez3xlKIDZZK0QjE0iJBR8GI/LeH/E+FGZPgXvRtak1ulpxK2M119Sstuw0
	9t2h13rJ8XdmUZoZnuDrjmfZd6tpGNrXSaEqJOjmuWWiosbTdVxnWsIGyGGzV97p99t8YphGHjw
	Ro0Mg3l3zxx+slqw==
X-Received: by 2002:a05:622a:1c05:b0:51c:d1c:10e2 with SMTP id d75a77b69052e-527a660bb36mr30505871cf.12.1784706079318;
        Wed, 22 Jul 2026 00:41:19 -0700 (PDT)
X-Received: by 2002:a05:622a:1c05:b0:51c:d1c:10e2 with SMTP id d75a77b69052e-527a660bb36mr30505661cf.12.1784706078842;
        Wed, 22 Jul 2026 00:41:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9b8c0a9sm339473e87.17.2026.07.22.00.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 00:41:17 -0700 (PDT)
Date: Wed, 22 Jul 2026 10:41:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v7 11/30] drm/display: bridge_connector: Wire up HDMI 2.0
 scrambler callbacks
Message-ID: <qi6aoyz262qog65qq6vj4jgnidp7bbx3x3w5f6v2ibq4a4i7xp@n3cepguql4k6>
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
 <20260602-dw-hdmi-qp-scramb-v7-11-445eb54ee1ed@collabora.com>
 <20260612-attractive-dashing-mule-309598@houat>
 <b14af457-0799-43cc-80b5-7ffff5901f24@collabora.com>
 <20260619-rough-jolly-poodle-bb7aed@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260619-rough-jolly-poodle-bb7aed@houat>
X-Proofpoint-ORIG-GUID: CLjPB55jz2uP2PW7cVJZnLE0bdESpP5-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA3MCBTYWx0ZWRfX0Bg1zdfpqj7e
 rlBKrQiGo68029EhpGR5VR0kOgRwnIPqcJo03oJr4ySxHvE048jB1THpbufdUd4A7HRNuwlUrhQ
 OqLaGttHKtT1VXs8Moca8LV2c20yj3xuvodtWOYeHU68uA2wpQsuGhedZJMyWnKIp5ZHhoSGk8r
 BmQCYwkuvTnIX7BlLyaViIIMF8ktgpKE1fIBUZa8OojXVQlS25QH9Yd5KAPd54FVPFP6xlwjYN6
 Ezs9JuLNzOF0+2G08KloNiqeRDNO3Pq8D6d33kMkqGM25tnEhKwPIq9CqsQ+on5pzS+k3hRbRIi
 pvMpPLf/14kQGK+aCMWFJ1nwEiMn/9KDkOjzrSeL35J0++Cy596opu92JaEVtTCuFKU1aFTUfqE
 hRa9WKKAecWLzMnRoaW6aKqbc4EvoIQ+dKSgk2jNZ0BeJbJOZJrELAc/IQFJO7Dlw8S8puOF/RA
 Tu3IeO/4ss9GWbxPe3A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA3MCBTYWx0ZWRfX5us0+EKnH7yu
 wjBFyPA666y7ukoLcuUIRMwa0+ZrQltJE6nTPH9nB6WYYbGBktEO3PMJFw7tTbUlhA5TePdn4mw
 ONRaMneCgv9MXQZBS/7fMPMh8+DD434=
X-Proofpoint-GUID: CLjPB55jz2uP2PW7cVJZnLE0bdESpP5-
X-Authority-Analysis: v=2.4 cv=V8lNF+ni c=1 sm=1 tr=0 ts=6a607420 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QX4gbG5DAAAA:8
 a=hD-RnQd9uO-P1XsdC_MA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_004120_993846_6CDFC21A 
X-CRM114-Status: GOOD (  40.21  )
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, Daniel Stone <daniels@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 19, 2026 at 03:58:43PM +0200, Maxime Ripard wrote:
> On Fri, Jun 12, 2026 at 11:42:06PM +0300, Cristian Ciocaltea wrote:
> > On 6/12/26 11:52 AM, Maxime Ripard wrote:
> > > On Tue, Jun 02, 2026 at 01:44:11AM +0300, Cristian Ciocaltea wrote:
> > >> Connect the bridge connector's .scrambler_{enable|disable} callbacks to
> > >> the underlying bridge's .hdmi_scrambler_{enable|disable} funcs when
> > >> DRM_BRIDGE_OP_HDMI_SCRAMBLER is advertised.
> > >>
> > >> This completes the bridge connector plumbing so that the SCDC
> > >> scrambling helpers can control source-side scrambling through the
> > >> bridge chain.
> > >>
> > >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > >> ---
> > >>  drivers/gpu/drm/display/drm_bridge_connector.c | 41 +++++++++++++++++++++++++-
> > >>  1 file changed, 40 insertions(+), 1 deletion(-)
> > >>
> > > 
> > > I think we're taking this backwards. The scrambler support isn't
> > > optional: either the controller supports HDMI < 2.0, and then it doesn't
> > > exist, or it supports >= 2.0 and then it's mandatory.
> > > 
> > > You're considering it optional here, when it's never actually optional
> > > (unlike YUV420 for example)
> > > 
> > > I still think we should list, somehow, the capabilities of the
> > > controller to the helpers, like max tmds rate supported, formats, etc.
> > > We've so far put everything as an argument to drmm_connector_hdmi_init
> > > but it becomes a bit overloaded, and I wonder if introducing a callback
> > > wouldn't solve this, kind of like what we have for planes and formats.
> > 
> > 
> > What about introducing something like:
> > 
> > struct drm_connector_hdmi_caps {
> >     ...
> >     unsigned int supported_formats;
> >     enum hdmi_version supported_hdmi_ver;
> > };
> > 
> > struct drm_connector_hdmi_funcs {
> >     ...
> >     int (*get_caps)(struct drm_connector *connector,
> >                     struct drm_connector_hdmi_caps *caps);
> >     ...
> > };
> > 
> > int drmm_connector_hdmi_init(struct drm_device *dev, ...)
> > {
> >     ...
> >     if (hdmi_funcs->get_caps) {
> >         struct drm_connector_hdmi_caps caps = { };
> > 
> >         ret = hdmi_funcs->get_caps(connector, &caps);
> >         if (ret)
> >             return ret;
> > 
> >         connector->hdmi.supported_formats  = caps.supported_formats;
> >         ...
> >         if (caps.supported_hdmi_ver > HDMI_2_0)
> >             connector->hdmi.frl_supported = true;
> >         else if (caps.supported_hdmi_ver == HDMI_2_0)
> >             connector->hdmi.scrambler_supported = true;
> >     }
> >     ...
> > }
> 
> That's what I initially had in mind, but it feels a bit over-the-top
> when looking at it. I think I'd really like something that drivers
> cannot forget about, screw up and/or mess with, so for example report
> HDMI 2.1 but force disable FRL support, or report HDMI 1.4 but support
> YUV420.
> 
> Adding more arguments to drm_connector_hdmi_init could work I guess, but
> it won't scale to everything we need. Expecting the callers to fill
> drm_connector_hdmi won't work either. So I somewhat think a get_caps
> like we discussed is the less bad solution, but I'm definitely open to
> suggestions.

Works for me. Then we can migrate some of the drm_connector_hdmi_init
args to the caps too.

> 
> > Not sure if max_tmds_char_rate should be listed as a capability, as we already
> > have the .tmds_char_rate_valid() callback.
> 
> I guess it would make sense to move it there and consolidate
> atomic_check / mode_valid checks, but I don't think it should be a
> prerequisite for this patch either.
> 
> Maxime



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
