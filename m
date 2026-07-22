Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 322D4C4451C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 06:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OX8suBvH0kNFKDTdK4Rkoi9DY6wNAyT0zjkBoxB+s8=; b=OSGixIV88zeoVU
	PTiHqC2D70Dm1rWV5GmPakIA0q2HK6a2S2GDr3uBbbF4dRA/bLxUo4S8BYLzT1Njgf0+y60LF6m07
	XxXMAfqtsZLbFaX+6D15eMCsPyw7k4i4xan3ynFkw+agTyn/MJ/7zhGCjxtaSv0NztfhsTo4/4g/9
	hdyEwJwyZjvUFOhrTICP/APLwJx8skiBHObAQG0g+6KE1PvFmMGZkdHKJ6Mozyda55rsD6jTPPMWx
	w5Fz8kke0NzV2OuOUKcPIraNskySq3f2RnsFT9voir0TRs5Pvsc1Nl2xLct4JJdysRRTbzhO2Cbrz
	vMztANrK3hY73YnKccjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQib-0000000Azcn-16RO;
	Wed, 22 Jul 2026 06:46:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQiV-0000000AzbW-0wnf
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 06:46:09 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M545Ln3663354
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:46:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2pVGt7IjXnn3ZfLcIQiSgDsN
	CKR3N4V2SknmN7EXEzE=; b=L83U3PKmLvgX3hsJ3k4qNf22c+2q44xkiEt/+AnD
	slZZhTJTFgQLQh4aCPYmqMJNkzVY3eyScylLAwGjKBbLu/1Gc0OWJ1SaxFUE+BBi
	EzTcy1D4QQPaJY13tI8crOcOBk7vXciwb7Ozgd0WDqnEsJ3RrAeW9pvWgFnEY6et
	Yide1HfRCT6TkCdVgDXJlza1+qqSrZ3UWOgplAh4XrWzmZ9bOD8ipuxvn5MEwOHT
	iDY/uhl0g5VNX5Cl2XYt32gVBq/2XMYB5Sg54djjnS2pDRavRHVX5oKMHEjd6JWb
	SYy4GZMKHe1F4cghI4KP++YmyjSl23sbigJ/czg15Z7GkQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd5e2kvr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:46:06 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-526da7e3c9dso24165311cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 23:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784702765; x=1785307565; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2pVGt7IjXnn3ZfLcIQiSgDsNCKR3N4V2SknmN7EXEzE=;
        b=QonVHzhFDpbTI9t+uQkxqKACc2uq3IKunollTIm7CA9cYsOTWLIijgF3S8eOs9UfQO
         ZIrXdxwXn8xqeuhmHSibhLhOlgZLweXNPMfWFvzLRxRdLKjJ+OrAde+++x+mYk776maF
         wKXn7h0bL4WNQVs9td+L54VsaXc85Bds/v3huwZi86tCzIAjNECuGDNn1VSt9RTGg+mU
         +x+9xW+OmuhMZfBTIyVOYtrv/wNCm2sSMpncwb059dwvCWs+qfuUoZGkn+IOEV6Cz3B5
         dqI3ayI9vbOILfNfLBrt9g8CI5EY57ajMng/PiuyKyT2j27kmPvzCmrnTbaXKZ/A3kfm
         IHOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784702765; x=1785307565;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2pVGt7IjXnn3ZfLcIQiSgDsNCKR3N4V2SknmN7EXEzE=;
        b=TboIdLQyf43MoSU9avmr6GHNJNx+Le1W+3o9JoPHJqNhfyOWFM7+Wt00FJdZDfXBc+
         J6R8C9Yc7I56K/Y1bz9kjbnawwpBzAVDFngBTpgLtN93w70Pvvu6HGVkhF8h4zAgITeC
         4qJAdDKoz74vTW5PYrOpJqodsZMMN/AAvV9mcSJEYtqfTePwOm0uZb74+oOBo7IxoRjU
         57C5BSslsmqiNuiGfw9FOufqzvhlsqlbeUuN5DM5S9vOzsKW1B84u4vuu9MmnDBrKiBp
         WsXDsdt/AKG4U4S7j5DMqEjYDmX8d0OOxdt8hlHE9TAuvXlkYKejCSAYEJJ1vJi3g4XX
         6VSw==
X-Forwarded-Encrypted: i=1; AHgh+RotDKWHWoGMk1sU8VVeG1EDI61WzUuYkkvlMtShU0l5aPoIzeLBVevhHwiO0KuWdcuMvg/AaqPN2iHxEqTTww==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBdRUm1BXDO42IMB5Hdd1xD4AtzFxfNPTiomon352vGA9+avlN
	uToso5JvUn6ehZWomVs9vNL6GAPkWggHVRsxE01u0nA34wy4vu5yxGZhBYGlQe9gc8KDRIknBCN
	50fxJiJYHfuJ5Kw5xCicpiYektFjUnBHtW/oSoAm9P2nicsEeGQgxc9SxqO6/w63m6ekp8bcoMv
	M=
X-Gm-Gg: AR+sD10Tb0W9uiqhAxBqGsAlWI1Yq4qoBO3gtot0efycR7NWzgBQOrGRsKfjzA7j5Ex
	QUtmMbWeNbuhqMAVKOGPyO1dQnkNE9vBdF+vutDWaxAvIW0mjlnkvatGFAJH9IHCu09lwTD2yBA
	DPBayTY6lnLLYWmiGL/FILJ9kvLXbABawpgpHjGM915xa9lCQZ6UHetWuwoiVdeEtX4t57EE140
	aVMgpfBdE5p3iVgIY3hb30+fQ8csmef/A5H1vUEgs5bULgUeCAkVZUaxdAGGiFd6MBztAHvSelt
	5qhQf5Sg7rWm2EtEI8kE0q8dvvaSgq/7mauDiuYQut7EvNY+d6LDbuhBAUFi3lbASl0TVrFGD1E
	2cHGhLxFlYCh1VF7Psrke4NciELttxIwFfZHt8FRzBgTEKxRWi0pW/y7WSZFbg4ZSlrLxk7DpLo
	WplJ6Rd7p98ASf9Q==
X-Received: by 2002:ac8:5a12:0:b0:528:2c84:eab0 with SMTP id d75a77b69052e-5282c84fcbfmr8325321cf.33.1784702765292;
        Tue, 21 Jul 2026 23:46:05 -0700 (PDT)
X-Received: by 2002:ac8:5a12:0:b0:528:2c84:eab0 with SMTP id d75a77b69052e-5282c84fcbfmr8324961cf.33.1784702764683;
        Tue, 21 Jul 2026 23:46:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9f4a728sm295475e87.75.2026.07.21.23.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 23:46:02 -0700 (PDT)
Date: Wed, 22 Jul 2026 09:46:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        kernel@collabora.com, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 02/39] drm/connector: Add caps-based HDMI connector
 init helper
Message-ID: <hbnni3gonklcmfmsgsup7lcusvnqcu5jivq7hhzrus2el5c55i@kvm75nfqyntf>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-2-d79890d00b6a@collabora.com>
 <i4tjtsf5rsckfcayo5nuhlger5wqxn3ujeaubm4g2fgrwvhzb2@hf4uhgq3ja5p>
 <ad75cf26-9437-47d0-864d-d71263401615@collabora.com>
 <20260707-illegal-tuna-of-force-1c06e3@houat>
 <737678ab-f082-4a0e-b453-f403ba141437@collabora.com>
 <80374deb-3246-413f-a043-66bcdb438ab1@collabora.com>
 <20260715-fair-opalescent-rhino-c6407b@houat>
 <45113534-94ad-4a0f-8014-c04e9ab67a26@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45113534-94ad-4a0f-8014-c04e9ab67a26@collabora.com>
X-Proofpoint-GUID: BS76a_ibEbQz7Eun5RJJPkti0e20L7zs
X-Authority-Analysis: v=2.4 cv=CbE4Irrl c=1 sm=1 tr=0 ts=6a60672e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=zWnJzIVKQ1Due3HqBpYA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: BS76a_ibEbQz7Eun5RJJPkti0e20L7zs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA2MCBTYWx0ZWRfX9K++lhxreCXV
 qWQPMQMihTttZRZ6gm/dNbTT3JfVlid4pdV574Wq4C9c2wy3XGcX0B7mGv1C4rgbiaDLlT+HBQF
 hq97/exQW1dgG48775VwKX05K5cVVXypPeKW/prYlIHUMBGjqLg0PCgiHzS+ZxziKlAP+yvQeMw
 wegJxY/BC/eEWD1J/6Nq78e9tTywus5G3H0jm3qD6K/AZgfC6twUCWG2CiIuPDZY0GqM8YRGxyv
 6mdXH1EyvwqTjy+fEH06NwUG0Drg6BVMm2ikBsOyxnyxkpHJwaqqj2kpWB6+tbm9SVRRQxh2NJe
 M20oCx51aVpgQeIDW5gHjSGtHortckSzzGhjU12rwoepglDwu36LLZ4dmmod9uY/2/T5nOZTL8J
 EZspTsHL6ItDTD/saiMhc397KZHjgRLag/cWcXfzmkYGSlXzxFOoh7Y3V6fCe4khaod0lDG4erw
 A9rcP9bPXDF5ykLqO/w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA2MCBTYWx0ZWRfX+lIQBIWf6hju
 LKBvLkP3XnFRVt+TYyEVSX6zAgTGQTO39GlWy0C7Ve1XnYZe3qfBHXa/UClva97A9RXIKXHN06D
 h4dVIvM6CeUXJXpW05gar0V75XU43k8=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607220060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_234607_390523_4B5DB4DA 
X-CRM114-Status: GOOD (  39.20  )
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

On Wed, Jul 15, 2026 at 01:34:19PM +0300, Cristian Ciocaltea wrote:
> On 7/15/26 11:50 AM, Maxime Ripard wrote:
> > On Fri, Jul 10, 2026 at 01:27:37PM +0300, Cristian Ciocaltea wrote:
> >> On 7/8/26 1:11 PM, Cristian Ciocaltea wrote:
> >>> Hi Maxime,
> >>>
> >>> On 7/7/26 7:10 PM, Maxime Ripard wrote:
> >>>> On Fri, Jul 03, 2026 at 10:31:55PM +0300, Cristian Ciocaltea wrote:
> >>>>> Hi Dmitry,
> >>>>>
> >>>>> Thanks for your quick review!
> >>>>>
> >>>>> On 7/3/26 5:05 PM, Dmitry Baryshkov wrote:
> >>>>>> On Thu, Jul 02, 2026 at 05:46:15PM +0300, Cristian Ciocaltea wrote:
> >>>>>>> In preparation for adding HDMI 2.x source capabilities, introduce struct
> >>>>>>> drm_connector_hdmi_caps and a new drmm_connector_hdmi_init_with_caps()
> >>>>>>> helper.
> >>>>>>>
> >>>>>>> The existing drmm_connector_hdmi_init() helper currently takes
> >>>>>>> individual capability arguments such as supported_formats and max_bpc.
> >>>>>>> Adding more HDMI-specific arguments to that function would not scale
> >>>>>>> well, so move those values into a dedicated capabilities structure and
> >>>>>>> implement the existing helper as a wrapper around the new caps-based
> >>>>>>> interface.
> >>>>>>
> >>>>>> I think, it was an intention of Maxime: make sure that every driver is
> >>>>>> forced to provide some values here. With the struct-based init it is
> >>>>>> easy to overlook or to ommit a value.
> >>>>>
> >>>>> Agreed that the struct-based init loses the compile-time guarantee that every
> >>>>> argument is explicitly provided - that's a real downside.  
> >>>>>
> >>>>> I'd argue it's recoverable, though: the init helper validates the mandatory
> >>>>> fields, so a driver that omits a required value gets rejected at init time
> >>>>> rather than silently misconfigured.  The "you must provide sane values" property
> >>>>> is expected to be preserved, just enforced at runtime instead of by the
> >>>>> compiler. 
> >>>>
> >>>> Yeah, I don't think we can win with C here. Rust might, but we're
> >>>> probably a long way from that.
> >>>>
> >>>>> The main motivation for the struct is scalability/maintainability as we add HDMI
> >>>>> 2.x capabilities: new fields go into the struct rather than growing the helper's
> >>>>> argument list, so existing callers don't need churny signature updates on every
> >>>>> extension.
> >>>>>
> >>>>> FWIW, in the previous revision we discussed addressing the concern with a
> >>>>> callback instead.  Sadly, I had to discard that approach, as it proved not
> >>>>> flexible enough, e.g. drm_bridge_connector_init() computes caps dynamically, and
> >>>>> would have required either stateful callbacks, or storing redundant/temporary
> >>>>> cap data in driver-private structures just to satisfy the callback.
> >>>>
> >>>> I just realized something reviewing your patch: we don't necessarily
> >>>> need an extra argument or a callback, we can just put these fields into
> >>>> drm_hdmi_connector_funcs directly, and then validate them in init.
> >>>
> >>> If I understand correctly, we should drop the drm_connector_hdmi_caps struct
> >>> introduced by this patch and move all its fields into drm_hdmi_connector_funcs.
> >>>
> >>> In that case, how should we proceed with drmm_connector_hdmi_init()? 
> >>
> >> Actually, this brings us to the callback issue: we cannot compute caps
> >> dynamically, as it only works with static data, since funcs is supposed to be
> >> immutable.
> > 
> > Does it? The core and helpers must consider it immutable but it doesn't
> > have to. drm_bridge_connector for example could totally allocate it and
> > dynamically create it based on the bridge capabilities.
> 
> If we take the VC4 case, is it fine to drop the const from the static
> drm_connector_hdmi_funcs to allow dynamically setting up supported_hdmi_ver and
> max_bpc in vc4_hdmi_connector_init()?
> 
> static struct drm_connector_hdmi_funcs vc4_hdmi_hdmi_connector_funcs = {
> 	.tmds_char_rate_valid	 = vc4_hdmi_connector_clock_valid,
> 	...
> }
> 
> static int vc4_hdmi_connector_init() 
> {
> 	...
>     
> 	if (vc4_hdmi->variant->supports_hdr)
> 		vc4_hdmi_hdmi_connector_funcs.max_bpc = 12;
> 
> 	if (vc4_hdmi->variant->max_pixel_clock >= HDMI_2_0_TMDS_CHAR_RATE_MAX_HZ)
> 		vc4_hdmi_hdmi_connector_funcs.supported_hdmi_ver = HDMI_VERSION_2_0;
> 	else if (vc4_hdmi->variant->max_pixel_clock >= HDMI_1_3_TMDS_CHAR_RATE_MAX_HZ)
> 		vc4_hdmi_hdmi_connector_funcs.supported_hdmi_ver = HDMI_VERSION_1_3;
> 	...
> }

I'm sorry for the late response, I was OoO. Why do we want to put data
into the funcs part? My suggestion would be to put the data into the
drm_connector_hdmi itself.


Setting connector->hdmi.supported_hdmi_ver = HDMI_VERSION_1_4; is more
idiomatic than passing it through the funcs.

> 
> >> Moreover, we would end up with some redundancy, as most of these input fields,
> >> after validation, would be stored (altered or not) directly in
> >> drm_connector/drm_connector_hdmi structs.
> > 
> > I mean, part of the conversion would obviously be to remove the
> > redundant fields.
> 
> Ack.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
