Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A005C44512
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 06:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWLYk+0hXo5NJran0DBAlcvNVV9nWrTAs7MqdcXJvkA=; b=0/QS38rXOI4P49
	ukxbkMxuaE5n0jlh+r2ZrEiXqpMBrS07cEAjdnbayMGnL6zReGxbcTPZ9aIyI0/mw2expohvFp0+r
	T4OzOhS0/OxUvqnhUcdmEWJiLbNpqnoxrVAX+B8LOv8bSIOIpMkRT+f4oiAl0PA2fD3hq0Pa5VCaA
	2Uh4rD/AoTCgpjbsDLmlWq/Tin9hQyCY1do3+H2Uly+fKTkAz7nsLtROsrfzgZao8nJJ1jOtVMMaB
	D/gL0GvTdTsQk0JarXCsTGucYUlaRB0K6J79WNrk2j0GaX7a/ZnK6+7UJTAHGmieCqvS6tsWapzoi
	919ns591dQuLkFs/NYOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQnn-0000000B0JJ-2U0p;
	Wed, 22 Jul 2026 06:51:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQnl-0000000B0IA-13CT
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 06:51:34 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M53pdc3787372
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/YHKBQCRpdF6ioKDZRp1kbK4
	J+GBA3HywUvyPdCcLww=; b=TbXG+6ospDyHRNKxSuOUqRRzVIszrahUng7O5E7z
	+lze8I1J1fpXiOrHDJvgwqX8aoQcXZZWJDC5aMV5fx5XrHt9ukn9miswexldl4Ia
	N8inbgJHWLRjuAceZWrbLvF9ZeFSU6n8IZPVwExcojK/cplsYA/z0j6g4ZwvBEKa
	AaelhbA7vF9XGAZZzY+2j/1ioE96NwmARPPNZG3zBfBLNA1nre+10hg6tGAjT2QO
	P6amxJ6wmCalzkZJZih6mwn/JnjwUVj9jpFrWA2DmhPm8PF0En1N/ebURZmtYZdh
	zE7MXoZXdontGzgL1QaCK7D9hyUYk4HCuM5j7qjFh0NIGw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fj9aec26s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:51:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51bec738909so144355961cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 23:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784703091; x=1785307891; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/YHKBQCRpdF6ioKDZRp1kbK4J+GBA3HywUvyPdCcLww=;
        b=X7odxdSKhq79D4rSF638YIQ5C0sdAX8l2hOwnIVnOaQjVHAXJppeLAumh465CoY5CR
         XnoVovHe/273SPoEDFIeNFfzKkXzV4ZtMM7gtheLYq1iTmGwj9yaIiQzYArJMOcI8+ma
         AEvfOH2eGj1U+e35WE+7LF0ZzAQ5xNXh5tBZgDdMcwPoPg47Ujc2fhOw98HZlrXuFqbs
         Fu3BWnGDvmcTmOzxd5Q/KtZKOmC2jLTxjjA5hkxKE5gf0X/+JFBW3xwonBCVcZjLtfcp
         Dm/H2Z1ta6YmCujcxSv+51osBg7p/HMyFQ6WbU/bK9U7yHtgdiBVfqjUn+MMG+At4CBQ
         GE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784703091; x=1785307891;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/YHKBQCRpdF6ioKDZRp1kbK4J+GBA3HywUvyPdCcLww=;
        b=Wi70tG/s7SIcdOCU49JqHDeDhTWK51wVTYUi/fy1dWyhZHuEYByUrTPzBFDJ32fz5g
         STOrxBDfRBPNyQ8DNcYy5oTyuknJ0ijpx60+39Jf0ziOZiZIkYIshiA39Si6Zoi76KT8
         lO5n9YawANxRs5Gpcpdk7WozeGNkyG7g1JeHFR0sroJW0uL2mD+hJihI8NLKWnbQYrj6
         63ZP41NHa++HTkdV8ROXjJ6UCqUX+8qEiEixTzARdCBSxvSiKrjxA8u6/afSlslEnsLK
         QSJG8wybS11TpkaEobzfEah5xN2a9gG6g0drKzRthgwjQJksmyguGQW2GTSuSQ1chShM
         sYuw==
X-Forwarded-Encrypted: i=1; AHgh+RqlOCDWRPdlyaASm9IOhzNoiZYXvHs68Mnd+YBy+0VmfkPgGgsK3WUT2m9uvlr3n1u62vmXyR6OSE1aOHKihA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwHHmYL+iIfb/oTxAQKWKD75Nk8cpVDI1HSFBEzg0XgzX5rx0qu
	HEb7E5ijh6tAh/hTUsh62o/ybA6jA2IRV/GEhavgv2Jyv3cdyoML9Rrxd6+0kjpjuMf5L+ep4Q6
	bsXVE9SSqZTL4LY3Nb9L8nufNGa61fuOhgjPqlnaXdKXq+Xewr0WgUgYBGhY02Rix2tLaNcckP/
	s=
X-Gm-Gg: AR+sD12rUxLWzqDN69pPu5Q+vobbMmyUVZnmiVka35oMhIYmInPlql1xGXEFlV5+Kes
	9DGRJtbOYUgqkj5KMQoP1mq17K3rGFDe8uS0aUYdBg0Va1T3AElpVXlLfBHnL5xc6l8apAuUhMJ
	N1Sh7L9gDdr+7HROjAsqePMP5qnMzZKiicAgeSPOUJZEXF4rnvwgLjCh2GgmwtAx1WvEe/4PV42
	zB5BYRR/oexZC0uy6AKpSAulG5awRolJLxPvciDQ7Rs18TvvA0JjPZDUiZ5fL3l3vjqY3etnK0+
	91juf4R2NoGkGrMG5YTRAn4NbmsoZKQ7ai4V76apX6VX8659BKSaa5POTwYrb9J1jdIeNoAqJHp
	dLx1eYnJdEyiKesPyqkmLp6XdM8+k4u6KDJbTN3VgEUWloY37oscy8skDDJ9AR7fXYuDAFmagUG
	u0eCLOsNej8vIQFg==
X-Received: by 2002:a05:622a:e186:20b0:521:987f:bf34 with SMTP id d75a77b69052e-521987fc2ecmr132874371cf.61.1784703091408;
        Tue, 21 Jul 2026 23:51:31 -0700 (PDT)
X-Received: by 2002:a05:622a:e186:20b0:521:987f:bf34 with SMTP id d75a77b69052e-521987fc2ecmr132874061cf.61.1784703090691;
        Tue, 21 Jul 2026 23:51:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9bae7d0sm316678e87.34.2026.07.21.23.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 23:51:28 -0700 (PDT)
Date: Wed, 22 Jul 2026 09:51:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v8 04/39] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
Message-ID: <62b3bsa7ucgo2g7w75wudt3aundl3hv57qgjr6kqfteve56rf7@w42tah2fnvml>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-4-d79890d00b6a@collabora.com>
 <tjsidlnvswo2rdhqa6jybxrnb47lxgmxdlfrfbasuh67wjbqoy@3a45n3zawvnf>
 <17753a1c-824a-4835-ac2d-8b2796bba1eb@collabora.com>
 <534b921c-638c-4fc3-b89e-5dfc1f269f96@collabora.com>
 <20260713-statuesque-nonchalant-seagull-b9c39d@houat>
 <91c3a825-3344-4ff5-8ea0-f8f057665b3f@collabora.com>
 <20260715-ancient-zealous-eagle-b13e94@houat>
 <dfca9032-98ca-4c61-b1b1-85fd05283d77@collabora.com>
 <20260716-astute-nippy-moose-bd22b5@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260716-astute-nippy-moose-bd22b5@houat>
X-Proofpoint-ORIG-GUID: 7zDxWdgwd-XG9mUqbbZDn4aWUvLPMGcX
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA2MSBTYWx0ZWRfX6qrPAVfc1Rbs
 T6/tJu13m+GZHfc4ch8doK+KEkkLywugsR1NSY1rQ9u67Q6u0mkOUD57nTjKHvW8zZJgadlVpsr
 sT2NzXWUa2M2OJptwKqW34/ZQxWvEN0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA2MSBTYWx0ZWRfX/f6R9uPMhebp
 Zzs7AaxnB8UZBxXNB3L6EkkV35QHJNNf98BrtfgHn29M/1ATCcK3APsqkQ1FBN+Hi+I2DBvd58O
 loFKRNaFSk50d8n345ZLJ2pKYj8Rn+8qYoa4KxGWo/I9F+6QdUxrK/03dBKys0u2rrAtSRRZYhT
 NkhjrdHLNdKzWpJPGDFX1m2XGwYQzzau/kDds6eAVHlUDZjxGAL+yQ1+qqgai0dB6TUECGS5ri8
 04iM3KWSnxETIGYVdGw5n3gW0lz6/RMU0iv6R/feHM2e5IMOdpace3zQfVp/7KYJa15Of/Ft7MS
 F1zIPBg3Eyoxya8CmSwT3TYXdflqO1KOrE7asoghC6SSHpHWokRfz2RP4/LCDOX4jTCyPVrWHt7
 spHsUChpG1iM4cXdQoE19bXu8XzaaIHOL7HCeED/mEhj89T3jUq/ROhhFbLOZ/ZJvRT0WplaZLN
 Jmfnu3zK9AsGTSkaa+g==
X-Proofpoint-GUID: 7zDxWdgwd-XG9mUqbbZDn4aWUvLPMGcX
X-Authority-Analysis: v=2.4 cv=Cr6PtH4D c=1 sm=1 tr=0 ts=6a606874 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=T-56vAx3aY-Q7tpFFuUA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607220061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_235133_399533_36D1A363 
X-CRM114-Status: GOOD (  45.11  )
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

On Thu, Jul 16, 2026 at 03:50:29PM +0200, Maxime Ripard wrote:
> On Wed, Jul 15, 2026 at 01:46:12PM +0300, Cristian Ciocaltea wrote:
> > On 7/15/26 11:55 AM, Maxime Ripard wrote:
> > > On Mon, Jul 13, 2026 at 01:23:00PM +0300, Cristian Ciocaltea wrote:
> > >> On 7/13/26 11:50 AM, Maxime Ripard wrote:
> > >>> On Thu, Jul 09, 2026 at 10:25:54PM +0300, Cristian Ciocaltea wrote:
> > >>>> On 7/3/26 11:54 PM, Cristian Ciocaltea wrote:
> > >>>>> On 7/3/26 5:34 PM, Dmitry Baryshkov wrote:
> > >>>>>> On Thu, Jul 02, 2026 at 05:46:17PM +0300, Cristian Ciocaltea wrote:
> > >>>>>>> Add the connector-level infrastructure to support HDMI 2.0 scrambling:
> > >>>>>>>
> > >>>>>>> - A scrambler_supported flag to indicate whether the source supports the
> > >>>>>>>   scrambling capability, in which case the newly introduced
> > >>>>>>>   .scrambler_{enable|disable}() callbacks in drm_connector_hdmi_funcs
> > >>>>>>>   are mandatory
> > >>>>>>
> > >>>>>> Do we need a flag? What would it mean if the flag is set, but the
> > >>>>>> callbacks are not? Can we drop the flag and use the presence of the
> > >>>>>> callbacks as a way to identify that scrambler is enabled?
> > >>>>>
> > >>>>> The flag is intended to be set only within drmm_connector_hdmi_init_with_caps()
> > >>>>> when drivers advertise HDMI 2.x capability, in which case it also ensures the
> > >>>>> callbacks are provided.  
> > >>>>>
> > >>>>> We could drop the flag and instead have the init helper clear the callbacks if
> > >>>>> they were provided for HDMI 1.x.  This might slightly reduce code readability,
> > >>>>> as it relies on checking the presence of individual callbacks - especially since
> > >>>>> we plan to extend this further with HDMI 2.1 support, providing four or five
> > >>>>> additional FRL-specific callbacks.
> > >>>>
> > >>>> I tried to replace the flag with a helper that checks the presence of (one of)
> > >>>> the callbacks, but it's not straightforward to unset those for non-HDMI 2.x
> > >>>> cases since the hdmi_funcs argument is immutable.
> > >>>
> > >>> I'm not sure why we would need to unset them. If the driver states that
> > >>> it support HDMI 2.0, then it needs to be there, if it doesn't, then who
> > >>> cares? it's not going to be used. We can log a warning that it's
> > >>> inconsistent I guess, but there's no need to actively remove it.
> > >>
> > >> I was trying to address the use case where drivers provide the scrambler
> > >> callbacks despite not supporting HDMI 2.0.
> > > 
> > > Scrambling got introduced with HDMI 2.0. That doesn't make sense, but
> > > it's not a total deal breaker, it's just going to be here unused. Hence
> > > why I was suggesting to put a warning there if you wanted to.
> > > 
> > >> If we replace the scrambler_supported flag with a helper checking the
> > >> presence of the scrambler callbacks, then we would need to ensure the
> > >> callbacks do not exist in this case.
> > > 
> > > Keep it simple:
> > > 
> > > if (hdmi_version >= HDMI_VERSION_2_0)
> > >    if (funcs->scrambler_enable)
> > >       hdmi->scramblers_supported = true
> > >    else
> > >       return -EINVAL
> > > else
> > >     drm_warn(warn, "Inconsistent HDMI version");
> > > 
> > > We don't need anything more than that.
> > 
> > I dropped the scrambler_supported flag and introduced a helper:
> > 
> > static inline bool
> > drm_connector_hdmi_scrambler_supported(struct drm_connector *connector)
> > {
> > 	return connector->hdmi.funcs && connector->hdmi.funcs->scrambler_enable;
> 
> I'd add disable to that test

I'd make it an error, if there is only scrambler_enable without
scrambler_disable (or vice versa).

> 
> > }
> > 
> > Therefore we need to ensure the callbacks are not set in the HDMI 1.x cases:
> > 
> > int drmm_connector_hdmi_init_with_caps()
> > {
> > 	...
> > 	if (caps->supported_hdmi_ver >= HDMI_VERSION_2_0) {
> > 		if (!hdmi_funcs->scrambler_enable ||
> > 		    !hdmi_funcs->scrambler_disable)
> > 			return -EINVAL;
> > 
> > 		connector->hdmi.max_tmds_char_rate = HDMI_2_0_TMDS_CHAR_RATE_MAX_HZ;
> > 	} else {
> > 		/*
> > 		 * Scrambler callbacks are only valid for connectors advertising
> > 		 * HDMI 2.0 capability. drm_connector_hdmi_scrambler_supported()
> > 		 * relies on their presence to report scrambling support.
> > 		 */
> > 		if (hdmi_funcs->scrambler_enable ||
> > 		    hdmi_funcs->scrambler_disable)
> > 			return -EINVAL;
> > 
> > 		if (caps->supported_hdmi_ver >= HDMI_VERSION_1_3) {
> > 			connector->hdmi.max_tmds_char_rate = HDMI_1_3_TMDS_CHAR_RATE_MAX_HZ;
> > 		} else if (caps->supported_hdmi_ver >= HDMI_VERSION_1_0) {
> > 			connector->hdmi.max_tmds_char_rate = HDMI_1_0_TMDS_CHAR_RATE_MAX_HZ;
> > 		}
> > 	}
> 
> Drivers might have a lower limit than the max allowed by the spec. It
> should be provided by the driver, possibly optionally with a fallback to
> what the spec states?

Yes, likely it can be handled with the if !connector->hdmi.max_tmds_char_rate.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
