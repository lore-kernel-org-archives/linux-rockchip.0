Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68302CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 03:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QK7G51FIok6I1yxIFU8VfKLoOu4ai1blYcZ7Q1LAM/w=; b=UsvnHIvRS+BquM
	BLtsAooDXpeM6Xiy/ifvl/QkMxEdXLrHKpY4kKRcHpux/ib+rZ6l8BVSEnKotg3chv4Bi0jQjepXU
	KT+gcwRFBLu4BUZqOm/H9MW40Cf6H8VAOoxK/zJ9cqkhlOM5bC3zexXRlmdq5F/VzeCe2BywM6rLH
	LODLqsXd4hWWECAabwy/gHxUoeg8H5hfKVHV0JPh5s6Dwx6HWTm3pv0AV26U9KsKRrtZbzTjTokYc
	S8rrK1NSWtKatyrTckvHZafgS5lxzIyFE43xwjcP4wPayt9aOZzBE8TBytSdG7Ay4lL7I4McMyfsg
	dTB4HA4QCo+FMy9rJRkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utI2q-0000000F6Bt-1wSy;
	Tue, 02 Sep 2025 03:50:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utHxu-0000000F5C9-2o4k
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Sep 2025 03:45:52 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822Rt3c015207
	for <linux-rockchip@lists.infradead.org>; Tue, 2 Sep 2025 03:45:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u6pXxYvTpFhxbjh80IOUWJOQ
	14f2Hl+NCOsXpDoJFW0=; b=Ev9pT7Vohd0UOB4LnTx/IZrhMtHulcxpfjHQMKUB
	5u/wMkziB4dzmBnAFLVx58QV1K8TDsrSiJfyBGOBWYiQCEKZkU6OUm0KbPHN4zlW
	ejptTarpiOyuDXmL03ukZbF4K1AfSDOP9b5cojzU7kGGn+BClV04TEWmHQeKybXe
	ds5k7eFix+bNnbuRSHptuH4a12WISUyNCf1IzRCib77WLOF7AjnR/HFg1ZO2y8zh
	HTnj8P/tr1VD6TDZIdCwA7tXAbgNG6NGr+0S9cAzaFa8+4JNa6K3med4PBeaeBLO
	aX+/UhkaHqV3kpC4Zc8Fud+ioRUwYoPqZlpIaooTP8WLUQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urvyxda0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 02 Sep 2025 03:45:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7188e3c2073so33249386d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Sep 2025 20:45:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756784749; x=1757389549;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6pXxYvTpFhxbjh80IOUWJOQ14f2Hl+NCOsXpDoJFW0=;
        b=xQV+SpFkqQ/wRmhoX8w60senEu7rbRXz2d8KpQWK5WPoCTblD1Baqk5iiKUh2KmPmY
         hS2Z9lSpBG33awQq+gmWYYUxQU4NeQjG8Fq+2uQUdg1ySVY7T3bytUQW4fJYYiIDiYyK
         eH2oNkAeLGwk8SpG+pzvM+cf0mf3C8DIpwWD9qHzM5zhiflmEul5MkH4zbK+ryvKC9+s
         6HzIpjW0w1UzFdmUPKpD4EO2RKMbvkzspfhbDXCnnGeX5Gbhw4crQva+KybU5iG0Czsz
         i4ztq9odT2wF2dp21fYyuyP75NLwTPxv0sQCAdEPxv8epIueBNVxbekJ0UcILuCOTGOU
         7+BQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRuPgI1EloOre1LTsAJYrWWI8hzQa2AcRE5PnVJFqfHQpCvVb8oguV/YV9h734tLrr5bISq3xEXgK6qc0vhw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqNzOrM2dk066r+yBafCGH8ma1aDY+UHS2f70rApys4f3GrDYR
	HWDfPpmsfusZKNcjaxD2Zt1hzzfnyrmrCky+fPzZZZgypvn/yGW5KEFUH4DqRfPJ3eOC8uLsyWL
	6IS6aXnZ2yMS2h2gKqd89AcfGm9XXkFCgO9z7yBwiZpbf4fbQAg96zPZ9vcCzQGnC1gxVV5yqcn
	M=
X-Gm-Gg: ASbGncvu1pzWX5RIlA5kA+e9F70fxQQ+GdHwTNuCsT/aVe201s9GGqoUzTIQNjyxyI+
	CxyhuWwlgAM7yVYoHjnUGjdXRTBWJ2abtTgfgbiWNeyxGJaK6RHLY8nN6GM1j0aHv4L77x1WRra
	c+8GJlfHl9xnEzgHv2daH18JE156NFtz9UnR2PNOcH2tvjdN/Dl7yT2sAJlfZ8jQiQjE8f3PbtV
	V4QH/eI3baIBDOwF1dkzMtVfO/AhAnoTmuEzyClFvQGMigj+kcEkSfsVJuf9TSpOWgAtwrojtFE
	Kg5J/g/erDYH8BauIs4xB+ztTlObRi+Yn6sLjoiCtpU2D9dpJE2VN/u/potRPdeJD7RajHWpxsS
	2ndRbJHbTzz5br/of2TUOIkKBO+P4hzMhq6nj9VbFHUV6fEh8E7/8
X-Received: by 2002:a05:6214:414:b0:70d:eb6d:b7f0 with SMTP id 6a1803df08f44-70fac700c86mr114372276d6.10.1756784748560;
        Mon, 01 Sep 2025 20:45:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHW9DgkBw+MvElYTBWkwujyNrejM+p6uDFpj7XgGpJNMn2Ua2wxQ/b8FTcUSXpCO+uXL3IIqQ==
X-Received: by 2002:a05:6214:414:b0:70d:eb6d:b7f0 with SMTP id 6a1803df08f44-70fac700c86mr114371806d6.10.1756784747861;
        Mon, 01 Sep 2025 20:45:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560827900absm337975e87.66.2025.09.01.20.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 20:45:46 -0700 (PDT)
Date: Tue, 2 Sep 2025 06:45:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Daniel Stone <daniel@fooishbar.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 00/11] drm/connector: hdmi: limit infoframes per
 driver capabilities
Message-ID: <voknqdv3zte2jzue5yxmysdiixxkogvpblvrccp5gu55x5ycca@srrcscly4ch4>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
 <57ekub6uba7iee34sviadareqxv234zbmkr7avqofxes4mqnru@vgkppexnj6cb>
 <20250901-voracious-classy-hedgehog-ee28ef@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250901-voracious-classy-hedgehog-ee28ef@houat>
X-Proofpoint-GUID: q2Cn5Yk7p7ZuOFZJUCJJj09lLy_Q26sG
X-Proofpoint-ORIG-GUID: q2Cn5Yk7p7ZuOFZJUCJJj09lLy_Q26sG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX+0722SkOzU65
 rP7GisuCis2amGrB+W0A8134LBez0/C2UpsOPZvyhyWACYWahOOsI/vYr7+Qcdf0CMloMWTUt4m
 Zu+oNgfRFSF9khm4EZGzNWNK6V279Db5hO2VrMSgWXoxbVlsEBJWiuvOp15yiMfP867t1Gy/e6b
 uznYDkkMlGJxsk1wXpRfa+7g9sfpVzTcIItdMvbs6+6WVYtBM5mGHMgBgPFFNi7DyA4SeMc1RNd
 yJAX/0IYGqYTlNndbm0lnP2OBb4+6eCmtmkPrw8r+4hh5bxIEkx6gAsYCqRkol6JpO96eaqlzXS
 fUMTPDONPMrhcwmofMvlFb2A3khq41zHmnDDh4a/sv3hjNsmbv069ItmUWrTCPmkQwSvf5/+YA0
 9ir392oc
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b6686d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=pHNJB9hyKJ2XXRMnjhQA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_204550_823853_6430EA9E 
X-CRM114-Status: GOOD (  49.90  )
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

On Mon, Sep 01, 2025 at 09:07:02AM +0200, Maxime Ripard wrote:
> On Sun, Aug 31, 2025 at 01:29:13AM +0300, Dmitry Baryshkov wrote:
> > On Sat, Aug 30, 2025 at 09:30:01AM +0200, Daniel Stone wrote:
> > > Hi Dmitry,
> > > 
> > > On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
> > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > It's not uncommon for the particular device to support only a subset of
> > > > HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
> > > > a model of ignoring the unsupported Infoframes, but it's a bigger
> > > > problem for the userspace: we end up having files in debugfs which do
> > > > mot match what is being sent on the wire.
> > > >
> > > > Sort that out, making sure that all interfaces are consistent.
> > > 
> > > Thanks for the series, it's a really good cleanup.
> > > 
> > > I know that dw-hdmi-qp can support _any_ infoframe, by manually
> > > packing it into the two GHDMI banks. So the supported set there is
> > > 'all of the currently well-known ones, plus any two others, but only
> > > two and not more'. I wonder if that has any effect on the interface
> > > you were thinking about for userspace?
> > 
> > I was mostly concerned with the existing debugfs interface (as it is
> > also used e.g. for edid-decode, etc).
> > 
> > It seems "everything + 2 spare" is more or less common (ADV7511, MSM
> > HDMI also have those. I don't have at hand the proper datasheet for
> > LT9611 (non-UXC one), but I think its InfoFrames are also more or less
> > generic).  Maybe we should change debugfs integration to register the
> > file when the frame is being enabled and removing it when it gets unset.
> 
> But, like, for what benefit?
> 
> It's a debugfs interface for userspace to consume. The current setup
> works fine with edid-decode already. Why should we complicate the design
> that much and create fun races like "I'm running edid-decode in parallel
> to a modeset that would remove the file I just opened, what is the file
> now?".

Aren't we trading that with the 'I'm running edid-decode in paralle with
to a modeset and the file suddenly becomes empty'?

> > Then in the long run we can add 'slots' and allocate some of the frames
> > to the slots. E.g. ADV7511 would get 'software AVI', 'software SPD',
> > 'auto AUDIO' + 2 generic slots (and MPEG InfoFrame which can probably be
> > salvaged as another generic one)). MSM HDMI would get 'software AVI',
> > 'software AUDIO' + 2 generic slots (+MPEG + obsucre HDMI which I don't
> > want to use). Then the framework might be able to prioritize whether to
> > use generic slots for important data (as DRM HDR, HDMI) or less important
> > (SPD).
> 
> Why is it something for the framework to deal with? If you want to have
> extra infoframes in there, just go ahead and create additional debugfs
> files in your driver.
> 
> If you want to have the slot mechanism, check in your atomic_check that
> only $NUM_SLOT at most infoframes are set.

The driver can only decide that 'we have VSI, SPD and DRM InfoFrames
which is -ETOOMUCH for 2 generic slots'. The framework should be able to
decide 'the device has 2 generic slots, we have HDR data, use VSI and
DRM InfoFrames and disable SPD for now'.

But... We are not there yet and I don't have clear usecase (we support
HDR neither on ADV7511 nor on MSM HDMI, after carefully reading the
guide I realised that ADV7511 has normal audio infoframes). Maybe I
should drop all the 'auto' features, simplifying this series and land
[1] for LT9611UXC as I wanted origianlly.

[1] https://lore.kernel.org/dri-devel/20250803-lt9611uxc-hdmi-v1-2-cb9ce1793acf@oss.qualcomm.com/

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
