Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93464CA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 15:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Fk5doniJQEeZEQVRbPlJUIb9kiu49SBd2scYW7mbsI=; b=voqDoDu7f1RpjH
	vWgrRD+4RbhWAVoXUZ+fEXn8N37K4xxEQZLBV71M0f5ihMcWU+nnfwizR0iXHUPxXexV8RfOGVokv
	k4MLExLLlI0fyuMCDxfhew1s2nMBY8x88CQFI1yDvcSYdq5jgzGfkks3Mh8wgnzcxFKAVO/1KXku/
	eISAEF1A21zqh9fOVYdMm4TgwQ2SPwuV4Ejh/U0q4Oveqg6D9l/ARQEKduDhOnIU/xYoOG2NpfQY+
	1qFQgo3D+7VUqGqz1Gn/UtPMxHGKzY5hX5A6u6kw/JV9qNWQ/M9nXzFeqERMvTCh/lOW4d0Oyyc/Q
	HZh9aFKOeiE9KAzdZw1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwMj1-0000000F6I9-0E5v;
	Wed, 10 Sep 2025 15:27:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwMiz-0000000F6FZ-1e9S
	for linux-rockchip@bombadil.infradead.org;
	Wed, 10 Sep 2025 15:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=puSANwQMuC3k5u9lWMb//CpMB7GZAwNZLvNRyhx2W3w=; b=hLVUV4BXkyLhAf8zOyE0ql0QDE
	cKkkqmWCyE8j9FvZj7Rg4rf0mdcBwUIlrwS1W8c40dt54ED6qh7uUEauB+guC5Dkvumuz/oyBAXQ3
	UDb2rQwnz6DdKKCQ8Sds+/RXeQUXGpCGEl8zUMTtUqzJH3z/7QyO30dKXAGrghbzWpj1WzYzHVI6T
	M4WptIBQWuJdCZnDFZdDmhOSIaJMf9laD7TxGXyeifF+9Wz4kgvBgaMazItA237voeKT+sqoMGBVa
	4oQWc1dxSfffP8LL75jks9HKGvW5LOhU6qAhVvHS9UjOItnYbJ/19VVE7xtkKrC+OzOlr/udm/aOf
	Hzyy2zsg==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwMiv-00000005tzh-3bnR
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 15:27:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACgD00029745
	for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 15:27:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=puSANwQMuC3k5u9lWMb//CpM
	B7GZAwNZLvNRyhx2W3w=; b=jnBs/seSfYzHK1BgVJGtb+niIIAFKhQTmCGWELls
	0vNK/c6eC9FjQD2y/BHG40XZutlLZni1IPrNgq2q++P8+77GYQvZ3ZzU//CRJVbw
	Vbf4JA6udDwpsjsRVWZYPeElIUdwJnJkxOIOBl+dgMEe02YseIY7dgqKYLTF4gvL
	+o9VtQoEDQmaavzLGESvWGoTi+YfG97Zj/qyd6ePc//7IAysNf9AKwgT1N+GllDk
	q87VUrxIEG61wur7PXKm6pnHFHSwFlcZwHpGQvfGDWOz9NLaY9Hk0kGkzw7cugH6
	Mjyb35NfPWbzU1AhBQ7eMG3YA9hRBM7AzZ/vOwVrzMBjYw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapmjgs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 15:27:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-71fe8dd89c6so159931346d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 08:27:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757518021; x=1758122821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=puSANwQMuC3k5u9lWMb//CpMB7GZAwNZLvNRyhx2W3w=;
        b=KlMrLrZ0oTNO9YLz/F/v1Y5aMaUHNBvrxRCkkWKX0Wcz+86ikD7s5unxZrfUIoSNyA
         wirjpP0xGUHEkZguUVPWqSmgKKnJsOf4apD/VKtUCaAya0ipYnRd/8qv0f4Nv9Fn4d+c
         EDzBM91HfV1GuVbwg0TgFDu6rStYRfsKicZJwHAuU4W5wzpGtYkooBf8Ls6rzD/V0y2W
         PhTNwuMgPJrpQQI+ItbwoN9Nm9yDEA9wInvobcCwHRhXEhh9wlb2f9muDoyTt9DCcpiQ
         wi/MqwDgSSL1IOACrn5DBAvWmfqpAtP6X0zTUztVmmOBBYleyhWI5XaauMWhnMoKm8XA
         6JRA==
X-Forwarded-Encrypted: i=1; AJvYcCXy+Mn2n5FJm4n9B2K6s9POTf9JIa7CA8S2SNvncrVX7r9Z+FhaDVjxW3n7QY1qQ3WaehAX4MW9lNrhk07yLw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLSHr35OhpcRLuqGpeEoyK/2Nqy/9+PtyrMFS+PP841POZkrLF
	IuY+cZcTYiin7Zm9rJ3UGXVaUuZUsBoZ9rXgvlZCZ1c5eCQEvuwfKs0pWDhcUEsgexWGvYFBb/3
	iqas2yiDXGnBNJLaFYX6ymlNn9AdxkoAkZM03Wkc980imkLSZB7nhhX2wvKNGM1l5n+AcOFPhSM
	I=
X-Gm-Gg: ASbGncuK6rPBjsceouddL2LL+/+ygnXKXBCKekkv9fxkEOKcm2wg3cR7FTR6o/pnHxb
	GqhDJY5ftdWOW+9UooB5iWrTQFzSFCm0Xkzyq6nGHYgycZlqw89KfWk2vyUSpW8dLJVQzpq+qZO
	l+Rf1llCihD2O7LAfNWFY+bNwcgUB46vtQDmcjuPcabLhoAKXZE1s5TAbPwL+hPokCZemq32768
	yWvpm0g5an66BsSaJfnUT1ypkZd/f1q9BudqA4hl6FEXYj89IJWlWGnRqubvMsqiOJB/wV8C19I
	Ky3zqs9Upuuztwfk41mT2m1V7R4r53g9p5a+SrH2SBibLpdUp3qfYRdf3C+HIUc4YRqy+s5Ar8p
	TdRbMhD5+gHBos3Pj5gz9RCRGUFXVrirffNLlhwLTQB8juSbFdfEa
X-Received: by 2002:a05:6214:4011:b0:71b:9c1f:cf12 with SMTP id 6a1803df08f44-73945f32dc1mr174306156d6.58.1757518020644;
        Wed, 10 Sep 2025 08:27:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSqNO186cIoAHAKlnokZkMKBuXP5cQFNS2RrYtd4hs3FssG7kXyhj56TM6QwnKBI2jq/m+4A==
X-Received: by 2002:a05:6214:4011:b0:71b:9c1f:cf12 with SMTP id 6a1803df08f44-73945f32dc1mr174305236d6.58.1757518019762;
        Wed, 10 Sep 2025 08:26:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50a263esm43434641fa.55.2025.09.10.08.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 08:26:58 -0700 (PDT)
Date: Wed, 10 Sep 2025 18:26:56 +0300
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
Message-ID: <x562ueky2z5deqqmhl222moyrbylfwi35u4hb34dpl3z52ra4c@dyw4iayrewnz>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
 <57ekub6uba7iee34sviadareqxv234zbmkr7avqofxes4mqnru@vgkppexnj6cb>
 <20250901-voracious-classy-hedgehog-ee28ef@houat>
 <voknqdv3zte2jzue5yxmysdiixxkogvpblvrccp5gu55x5ycca@srrcscly4ch4>
 <st6wob5hden6ypxt2emzokfhl3ezpbuypv2kdtf5zdrdhlyjfw@l2neflb4uupo>
 <pe6g2fanw65p67kfy5blbtiytngxmr6nkbazymojs4a66yvpl3@7j4ccnsvc6az>
 <20250910-didactic-honored-chachalaca-f233b2@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250910-didactic-honored-chachalaca-f233b2@houat>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c198c5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CmvywbfrPJ7p_AD0WAgA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: D7ZcESV9XC2gDf04cLTLVyypzhmUhvXM
X-Proofpoint-ORIG-GUID: D7ZcESV9XC2gDf04cLTLVyypzhmUhvXM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX+LOQTUyAx5EC
 LhhaFEB9TsayXtvOSbhscJwNJcsd2UTbbWfOMEbvF7h9zUFpUEHN4rYU7/OOi3qCSFJtPbwpilP
 p71rAsK6XqTwaW2gpMNhN8LHakH0rEly0M8GzNgqb37G7VuUS0erEtwobPqgbaM1FFvU3GNr9Xt
 1o3t/bAakkNDeTuV1eM9yZfeSTBte+TH3VCL93RQb0YHEYiXWYcsX3AAYJ5WwwsWHVjK8ajEuEJ
 ZWvtcA1an2GiCiIFg8ooom+UTtIpszKbvFbKhOh7qumAcm21QKnXDG631iNhxx0ChEnpDww9YmB
 te3uLt+dpdn6HGaTWgIh7pqRmDtxOaQRJ1S1fi39K8RuAn78KH/k9RrUQZxyCtI9eVTqP+iM7zp
 X2CrNOqu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_02,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_162706_317214_4705D087 
X-CRM114-Status: GOOD (  71.95  )
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

On Wed, Sep 10, 2025 at 09:30:19AM +0200, Maxime Ripard wrote:
> On Wed, Sep 03, 2025 at 03:03:43AM +0300, Dmitry Baryshkov wrote:
> > On Tue, Sep 02, 2025 at 08:06:54PM +0200, Maxime Ripard wrote:
> > > On Tue, Sep 02, 2025 at 06:45:44AM +0300, Dmitry Baryshkov wrote:
> > > > On Mon, Sep 01, 2025 at 09:07:02AM +0200, Maxime Ripard wrote:
> > > > > On Sun, Aug 31, 2025 at 01:29:13AM +0300, Dmitry Baryshkov wrote:
> > > > > > On Sat, Aug 30, 2025 at 09:30:01AM +0200, Daniel Stone wrote:
> > > > > > > Hi Dmitry,
> > > > > > > 
> > > > > > > On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
> > > > > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > > > > > It's not uncommon for the particular device to support only a subset of
> > > > > > > > HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
> > > > > > > > a model of ignoring the unsupported Infoframes, but it's a bigger
> > > > > > > > problem for the userspace: we end up having files in debugfs which do
> > > > > > > > mot match what is being sent on the wire.
> > > > > > > >
> > > > > > > > Sort that out, making sure that all interfaces are consistent.
> > > > > > > 
> > > > > > > Thanks for the series, it's a really good cleanup.
> > > > > > > 
> > > > > > > I know that dw-hdmi-qp can support _any_ infoframe, by manually
> > > > > > > packing it into the two GHDMI banks. So the supported set there is
> > > > > > > 'all of the currently well-known ones, plus any two others, but only
> > > > > > > two and not more'. I wonder if that has any effect on the interface
> > > > > > > you were thinking about for userspace?
> > > > > > 
> > > > > > I was mostly concerned with the existing debugfs interface (as it is
> > > > > > also used e.g. for edid-decode, etc).
> > > > > > 
> > > > > > It seems "everything + 2 spare" is more or less common (ADV7511, MSM
> > > > > > HDMI also have those. I don't have at hand the proper datasheet for
> > > > > > LT9611 (non-UXC one), but I think its InfoFrames are also more or less
> > > > > > generic).  Maybe we should change debugfs integration to register the
> > > > > > file when the frame is being enabled and removing it when it gets unset.
> > > > > 
> > > > > But, like, for what benefit?
> > > > > 
> > > > > It's a debugfs interface for userspace to consume. The current setup
> > > > > works fine with edid-decode already. Why should we complicate the design
> > > > > that much and create fun races like "I'm running edid-decode in parallel
> > > > > to a modeset that would remove the file I just opened, what is the file
> > > > > now?".
> > > > 
> > > > Aren't we trading that with the 'I'm running edid-decode in paralle with
> > > > to a modeset and the file suddenly becomes empty'?
> > > 
> > > In that case, you know what the file is going to be: empty. And you went
> > > from a racy, straightforward, design to a racy, complicated, design.
> > > 
> > > It was my question before, but I still don't really see what benefits it
> > > would have, and why we need to care about it in the core, when it could
> > > be dealt with in the drivers just fine on a case by case basis.
> > 
> > Actually it can not: debugfs files are registered from the core, not
> > from the drivers. That's why I needed all the supported_infoframes
> > (which later became software_infoframes).
> 
> That's one thing we can change then.
> 
> > Anyway, I'm fine with having empty files there.
> > 
> > > > > > Then in the long run we can add 'slots' and allocate some of the frames
> > > > > > to the slots. E.g. ADV7511 would get 'software AVI', 'software SPD',
> > > > > > 'auto AUDIO' + 2 generic slots (and MPEG InfoFrame which can probably be
> > > > > > salvaged as another generic one)). MSM HDMI would get 'software AVI',
> > > > > > 'software AUDIO' + 2 generic slots (+MPEG + obsucre HDMI which I don't
> > > > > > want to use). Then the framework might be able to prioritize whether to
> > > > > > use generic slots for important data (as DRM HDR, HDMI) or less important
> > > > > > (SPD).
> > > > > 
> > > > > Why is it something for the framework to deal with? If you want to have
> > > > > extra infoframes in there, just go ahead and create additional debugfs
> > > > > files in your driver.
> > > > > 
> > > > > If you want to have the slot mechanism, check in your atomic_check that
> > > > > only $NUM_SLOT at most infoframes are set.
> > > > 
> > > > The driver can only decide that 'we have VSI, SPD and DRM InfoFrames
> > > > which is -ETOOMUCH for 2 generic slots'. The framework should be able to
> > > > decide 'the device has 2 generic slots, we have HDR data, use VSI and
> > > > DRM InfoFrames and disable SPD for now'.
> > > 
> > > I mean... the spec does? The spec says when a particular feature
> > > requires to send a particular infoframe. If your device cannot support
> > > to have more than two "features" enabled at the same time, so be it. It
> > > something that should be checked in that driver atomic_check.
> > 
> > Sounds good to me. Let's have those checks in the drivers until we
> > actually have seveal drivers performing generic frame allocation.
> > 
> > > Or just don't register the SPD debugfs file, ignore it, put a comment
> > > there, and we're done too.
> > 
> > It's generic code.
> > 
> > > > But... We are not there yet and I don't have clear usecase (we support
> > > > HDR neither on ADV7511 nor on MSM HDMI, after carefully reading the
> > > > guide I realised that ADV7511 has normal audio infoframes). Maybe I
> > > > should drop all the 'auto' features, simplifying this series and land
> > > > [1] for LT9611UXC as I wanted origianlly.
> > > > 
> > > > [1] https://lore.kernel.org/dri-devel/20250803-lt9611uxc-hdmi-v1-2-cb9ce1793acf@oss.qualcomm.com/
> > > 
> > > Looking back at that series, I think it still has value to rely on the
> > > HDMI infrastructure at the very least for the atomic_check sanitization.
> > > 
> > > But since you wouldn't use the generated infoframes, just skip the
> > > debugfs files registration. You're not lying to userspace anymore, and
> > > you get the benefits of the HDMI framework.
> > 
> > We create all infoframe files for all HDMI connectors.
> 
> Then we can provide a debugfs_init helper to register all of them, or
> only some of them, and let the drivers figure it out.
> 
> Worst case scenario, debugfs files will not get created, which is a much
> better outcome than having to put boilerplate in every driver that will
> get inconsistent over time.

debugfs_init() for each infoframe or taking some kind of bitmask?

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
