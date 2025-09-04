Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E05D5CA1002
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 02:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJbQK4oKM586+tVzEKdJ1ilf5Svnn6Up5HB7UXxSVsU=; b=Dg2ijOZPm0xNsS
	cPQq0MBki5oI1hD4HqGFyRZUnDsS93XhNlciPDA9juHqGfxzbuFFyZscAjeOLylwg0IAMpfZmuYmk
	j1VQWVkaCUWXwyrKucrvkwcSIVpGKHthBOUFAwMWET+llHcJOM2P6AHwr0+tJd9fD4wFXvVngzPAF
	h32uNd1+mlMWrKYcFP/Z5b13seENe8OsLd5WcpNt0evFKOF6T9T1J2X45RoiQtsb+57ftv3KHl73C
	ouGdTOaI+u99KPWV4uMqGzxjD1g/ATghc60zRSdkJlC+gCsAbn7Zild0Vu45ziGLLOfMF2d56wYe3
	25yNTUHEVotKz+gHmlvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuM6h-0000000G5wD-0Oju;
	Fri, 05 Sep 2025 02:23:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuJgt-0000000FDct-36TS
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Sep 2025 23:48:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584Hr2l4013476
	for <linux-rockchip@lists.infradead.org>; Thu, 4 Sep 2025 23:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1hFrW2tCyaPS8qm9cBW3XS4K
	eJB96G/QpNSDirWrlko=; b=Qmme+sIohc8NdQu3MsiTwf41dHFazz/ksTqlhs07
	XAvg6aBe++8kBcViHxKjklyyuwVpi0vbnSsr1ZdGSPhegx/pgNOgRBRF45DQgjHv
	ytjELEWpLLoaKKSJMsWAzsPP38HO4Y+bJ9Tc8s1v9OD/SzJ+kFQV9YiA0b4z8Y3Q
	FHCqdIQ5UyrJy2ZaN3oWZ0Ygsxxss+31jZcymMiEortEsFvfEteRGtJ38syXW0Yu
	QPwqgpB13RMbrXnMN/UShR5yng6/xWgrpZrg2nXo5vjCHJs8FAcZHff1CN6/MxWr
	mqLd7A5MJ+n4CIBHA2+L3OWGQriinekWjMA0i9fW8Oh+ug==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wyd51k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 23:48:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-72048b6e864so15285176d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 16:48:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757029709; x=1757634509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1hFrW2tCyaPS8qm9cBW3XS4KeJB96G/QpNSDirWrlko=;
        b=INkoe8le8w9FPUEo6So7WZc7xve9MtPgUi1wQcCkKAhG4VKprMp6c0rEAXIyB4JXTe
         /z1WZ9bMzJDSliT2iehBGiITeiGoKOA+z26gnyJOEzKzKw8KRvcdxp++4fBoIKnORrVm
         QziwIjolNM0LeZ9/KJqITC++cqVkgMvps55xlaFFvmhx0YKzSZnB2VXY1/KkHjPt2g8V
         MwPgHX2HGcB0f7XpxggEZGFciim2gwBRjQBN0jPOL+1C5mKI7tLULtbH4Vdv304AADSm
         SylkGsZwmynhAziJyvESpN7oXFZ0EM7nIriMgMgqXFX1UprOjmgNRP/GygnmIAIi4Q24
         R0ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWs1k14plIFKgur3HsSJwzuehV6W5kfkyO80fqDjIWoAfVkFCuKHJlM4InNYPQrgCbmRzAZueULfhC0i41UVA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5IFnwe8bcvNC3FFDiZirAzEZCXd+KDDW3z13y+pKA0ZlFbnun
	z9zuK5LKkjLO4d4Zwb0N1xbBpQimlkTFCWS5hQ8uq/RH9CvnSxvedne5V/XNbEa6CMYDS3FaPiB
	iPOQhIg8hBjOFAsEBhbhzH62/cwoKObUIxzf1QPLfO99s8x0bq0lf6Bm6JgE78XMcNNq9tVS+b2
	Q=
X-Gm-Gg: ASbGncu6U/6Sd4qR+VbFcluTl0mXIDVaPnrODHdU85NHbWJrlM5nuEevUiHmJ3GQxQO
	p4d/McjcblECht8wUF4Ja2t6jWrv+RJzMb/UCqmRCS9NeT+FpBuArdWQfwU0sOzIvAEvX91glca
	y2o5tJt70i2UcmEPzpsES1KiCMbQhuqTatkg5A8lFzjlz+6gwZR9rqOzi8rmTodSMciv3t698Or
	LJIHVZrxsX53zD5dDgZfaBECvvzXjpCBH3eV2Jd60FgTMHaO4y7DNbaXpNOEXDLMEPqPvgJIX5+
	5OPdmPZKDfzBaScOiKSQRpJ1AxOu3FfxUIPamSsKg+42TLCSxLudy2f0I/aXFLoaKNuceWWJkWm
	o6/y22ZB2P9F9u2uQofaKgyu7H+p5VJ4V4a/F/M5JCV72+dijFkXH
X-Received: by 2002:a05:6214:d89:b0:71d:9d4c:192a with SMTP id 6a1803df08f44-71d9d4c3057mr102311026d6.36.1757029708970;
        Thu, 04 Sep 2025 16:48:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGyjZe+NSX9mpYQeP9HfjJmgNoHuKa4eYSD2icUNBITBoWtqUVLeB7F2OOeEL/Zt7cpc6XQw==
X-Received: by 2002:a05:6214:d89:b0:71d:9d4c:192a with SMTP id 6a1803df08f44-71d9d4c3057mr102310786d6.36.1757029708573;
        Thu, 04 Sep 2025 16:48:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab5c151sm1515072e87.2.2025.09.04.16.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 16:48:26 -0700 (PDT)
Date: Fri, 5 Sep 2025 02:48:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Algea Cao <algea.cao@rock-chips.com>,
        Derek Foreman <derek.foreman@collabora.com>,
        Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCH v4 0/6] Add HDMI CEC support to Rockchip RK3588/RK3576
 SoCs
Message-ID: <ncmsmxdcvhj4jec6wmqf5abrb7nijx7ac2i33tvvcc2prljez3@uks2cb6aunnx>
References: <20250903-rk3588-hdmi-cec-v4-0-fa25163c4b08@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250903-rk3588-hdmi-cec-v4-0-fa25163c4b08@collabora.com>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68ba254d cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=QX4gbG5DAAAA:8 a=Q_aPI2XdcSPthaebfpMA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: r30HZ_8o_53T5X3yanyBgydn6ZjeRXzC
X-Proofpoint-ORIG-GUID: r30HZ_8o_53T5X3yanyBgydn6ZjeRXzC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX8lMysxFQFy3a
 lHgukgj+XDHs6Bm/EllfG66MgkRjfURaqS24yFyF+sLE7tm3oqrC55s3nmaWc3jN/BWuQFfJmxh
 4TjrBAYwVKFRDI9KVP3fM98mjlPkU2WodXPp37w9iOvZL2GbLiYuWYfZy2Dsq0zBzXK8uliki0G
 nXXfDqxIfMBmFgOLjS6mouf/eYlYZgPmn12WnyB4qCLhFkcmrR6/npzOJqvzLTeXrHmYdsSe0ab
 ThZHVhP3NlMZKVBhjra2z1zl51FodI0/mGJRnTbTWZyQ0iRCtg+mmDVj4NEVIN9lFynUwaS2TPq
 OTBZaH9ajgxyD5KOnY9BveuP0wUviO+O66Q+xAV4BEcP3TQl82KPtsONEDMqZJMYRz4d23oxh2W
 6LvkJc1y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_164831_888154_A480C462 
X-CRM114-Status: GOOD (  21.60  )
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

On Wed, Sep 03, 2025 at 09:50:58PM +0300, Cristian Ciocaltea wrote:
> The first patch in the series implements the CEC capability of the
> Synopsys DesignWare HDMI QP TX controller found in RK3588 & RK3576 Socs.
> This is based on the downstream code, but rewritten on top of the CEC
> helpers added recently to the DRM HDMI connector framework.
> 
> The second patch is needed for RK3576 in order to fixup the timer base
> setup according to the actual reference clock rate, which differs
> slightly from RK3588.
> 
> The following three patches setup platform data with the new information
> expected by the HDMI QP transmitter library, while improving the error
> handling in the probe path.
> 
> Please note the CEC helpers were affected by a resource deallocation
> issue which could crash the kernel and freeze the system under certain
> test conditions.  This has been already fixed in v6.17-rc1 via commit
> 19920ab98e17 ("drm/display: hdmi-cec-helper: Fix adapter
> unregistration").
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Cristian, I'm sorry for almost off-topic, but as you are working on this
driver: would it be possible to support HDMI (vendor-specific) and SPD
InfoFrames in the dw-hdmi-qp driver?

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
