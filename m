Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B632AD2FEE1
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 20:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ7EycZtArVpTZr6kaVpvKHFYZrYSHMXPgtGD/ReXfs=; b=sbY/4cTzIoFHwR
	Nq42FGuLhoBlEHFaA6E1mmFHQrm9lvipa3tB/aHq8SuJdHueA/2Wb3mWi4YzqmBQOcsa4Kov9BOdC
	ZsE4rITPAvaMSW9UR88nftGPmz+2hNusEsPRIp+UKtw+sem4gprCqvdsED5ofUwT9PNlXhAawrScZ
	eAuEWCqYKDg1RVIXZ6unhCzn0t/5OOsXXZsaXmDsboQCKH8f/hwQ70B0w+09x8ujDSb4PYEgHvW9W
	hMKWptxyoD6y/MNz9/3WdgWj00T3El8Yzchqn02FvpELr8/wlM1EyzB6GlmQVUHWCLuSGTU4ruvkH
	POdYshFui2/2R1j5L1Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkpeT-0000000F06Z-15dT;
	Tue, 27 Jan 2026 20:27:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkpeR-0000000F05e-0OlO
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 20:27:04 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RH4qK11195358
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 20:27:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R7u/+GzEYAjioDYmkQxOY6xs
	Cw+YDBbFVfBMYmE+PTU=; b=OlEJLz9Jts4JCKDA2sUywDbOlEwV13u5StSD37uO
	3jZ2LqLmnkOlj3tENXxxrto0rqSvazhIxACvFa3vg9Lr0LTfmIGoBSKKWVw7oxiA
	Ygi6pAvHAHWzb6RO4xH6d0S62SdvBx5ZYlidlKngSSWsM9rethdRC2pSYUcDiBTF
	T5FQSQLRcDQhV7oEF8GYAH9Gbn9OVoQhUGC0n7DrBSDA+jXZdZ2uyp0KnpDgA8Sm
	dROwvv75q9PROWNOhczfWpFsK3gmh3eR87eCfuCL8Yc6qCOcag0QIWk8bnEMl7E3
	7ZVSIDQJjUzuMcn7KtzSEzu5NNF2rO7f5YkXeibASpI4Sw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1etgn72-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 20:27:00 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5f52b01cdc7so6458910137.0
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Jan 2026 12:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769545620; x=1770150420; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R7u/+GzEYAjioDYmkQxOY6xsCw+YDBbFVfBMYmE+PTU=;
        b=COyVm6HKJIkaRjXee/0oh/tc4FEoAaCSOVMYqqeR/Yd5EWj5E/VrYdRQlFKGUuuugq
         2ruty2XK4NWTHSz34LqeWDfN253JDx0N8GNwGEsJUHH8qU2BZePX17l0F8evr5j00qYy
         KZOCrovn6B7Zj3ZYQgdWoeE1NJAmERqlt1BrQaJrq/xyvHrQhqaUaF5/ToVoUs9eFuOG
         jCtvTVpedO1qDkWHyZYy/VUAqPKMBYDrxAQ+ievRAMidTK7UTaq1T1bLS3ekPxjByUTf
         ep2/c3D38LRbh8wvxMs5P/jn5cFrlQ+jV+Pj+VxRMK2H2FjxDH7hI3CQskB9KavkP5qH
         0Yxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769545620; x=1770150420;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R7u/+GzEYAjioDYmkQxOY6xsCw+YDBbFVfBMYmE+PTU=;
        b=W17PmO5qGXJJ9bwuR/nRJJqxevF9Mv5W/NeV2nNlpqhMyuCU6LLS2SUDspbhhp94vo
         8D7HBt9Zpy7K74CNIwfh+idJEVatXgaiCuTRxNfMQ7/UdLyrg3NyS3lbHxnA1Xbifh+L
         UYPt9bSZCZfMHs0A5Qv30RtC/nM/3cRm//BKuf3ZOxFD5I2ecNH1rGpC8lRWho4cF6Nn
         gc1S64NAk9BWBOuLAzZgSsxERg5of7hSPEmLwGUuHsqWtngSXxoPeLOjVyfGqyfTMDmC
         US04cu7y4RKH7D3G/XjMmo7qickxbhhR9kVRizxWAHBO7jz1Z90E37nFil/EpAHV0HuT
         7Z4Q==
X-Forwarded-Encrypted: i=1; AJvYcCX4enx8RfeOG2kyPGO3KjL1a3NDzEmdlyOJtaHh0KuOMovJ03/AFgFcwmzDeBc0nqHX3BodD3V8AbupzYXUqw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxpfRPre6ZL3E4HYIWlkK4qBCqHHQ3jz3q55WHyL6Fc/uXw03NX
	aT1Nvvwz3gpOI5HisyxohY+yWpv/qfQjx36pMxSN8bYAFNd6K8WyKQ3pB26orGcfGGdDGq6hfpb
	83a884IgwYKzEWNDwNZqmvB27k5mEh7lIThkumtNp1XJsnjnR08AQJZxI4MocxOwwOiEleqVYhj
	I=
X-Gm-Gg: AZuq6aK9tO86GZMC94PK4DMsoKvsUQ8tA/1l2HJjEWAc5cazyCW36IqsZ/xp5DNtrBt
	wwWWE1qovKV9w0gjTGLnRqryZui+ECtGG5K3GJkabFE5lQErRYLKj/p4NDfgpJXmUwFw5kmepoz
	Vpii3PRJvlE8ddn35uNmJJXtKG8+TVY9Z4bifK4G/4PmKoxwaxDN6yHe+RQNiezM9mTh16MPWz6
	FruOis76PgAN9HlnqghJ2R0MozMRf4TnbngmSXIhTn5EP3ROJkoaWXHJ/mSSmsHVl+onaItyK1V
	zow7TDbHmqZyAJc3UNrE0dSoMK2MdYxubPpzhu916n/lAiw4VfTEM81xkJP4vz1dkSlai/FduQe
	9otEBNv6ZlQSxAoT+6u/PxmmgKwbv8iTCv49W1JYNiOoCeJ42ORow16sZLQR3p6z0Zv1TieVXaB
	4++z2f9euC3QuXjddoMAeu4/4=
X-Received: by 2002:a05:6102:290e:b0:5ef:5387:ca85 with SMTP id ada2fe7eead31-5f7237d2386mr962084137.39.1769545619934;
        Tue, 27 Jan 2026 12:26:59 -0800 (PST)
X-Received: by 2002:a05:6102:290e:b0:5ef:5387:ca85 with SMTP id ada2fe7eead31-5f7237d2386mr962042137.39.1769545619368;
        Tue, 27 Jan 2026 12:26:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e07481b72sm147447e87.11.2026.01.27.12.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 12:26:58 -0800 (PST)
Date: Tue, 27 Jan 2026 22:26:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mark Brown <broonie@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, Aishwarya.TCV@arm.com
Subject: Re: [PATCH v4 05/10] drm/bridge: refactor HDMI InfoFrame callbacks
Message-ID: <6p52srrxddazxiwqfqmjpef7k4bbpzojxqiy57zmhqcpqa2bum@gv555pvqrige>
References: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
 <20260107-limit-infoframes-2-v4-5-213d0d3bd490@oss.qualcomm.com>
 <47619a02-c667-4fd0-afa9-f6cf7aba8dd4@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47619a02-c667-4fd0-afa9-f6cf7aba8dd4@sirena.org.uk>
X-Proofpoint-GUID: CMEhcS7Z10f-v4axPtTn46cgE02QQgCm
X-Proofpoint-ORIG-GUID: CMEhcS7Z10f-v4axPtTn46cgE02QQgCm
X-Authority-Analysis: v=2.4 cv=Tt7rRTXh c=1 sm=1 tr=0 ts=69791f94 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QCwxOkPKupwELJ-03vgA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE2NiBTYWx0ZWRfX2PNrfAul5swe
 VyyJxwkl2kNtOqtK+40k6uVYayXj4LCiWjNzJrSLHz3Oj9VWmHFF/EQ2k2J3cEYQJVGQoDGTN8/
 llT+oPlLnc7NIn8DsipdrnBC/U/mUXlQaDDiT8nmk9qFb1V+0qDzexzQHhsLFG5E9m32fqd6I7/
 QzDUdlDze5Q2MDEKUU2+3Ky5mgX9SLwvpG2IDPohKF6KzHrxfB34I0h/svoA1Wrl83DGSJ61a+L
 JziUVU+vK7O3qORqj1/wBVxENmzC1qJcGKpA4le1/PxovbuOVX52eLXSAUEBAtZ7SHpAH81MXoY
 WKeXK3fYu8k3b6kykluY/xUpU8P552nRoA51mah3PcfSdnt/FvrVvessbYshnC6XumltZzkPTE4
 M+JypI/PmyHEk5pix+I2TPcnDP+z2cux2Nf758eHtBH6CMmGIE3tBOH1FJsLU4tlCji00SylTVi
 qT+LqUNPF+mrq0PoZwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_122703_253364_529D56EC 
X-CRM114-Status: GOOD (  19.37  )
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

On Tue, Jan 27, 2026 at 07:50:25PM +0000, Mark Brown wrote:
> On Wed, Jan 07, 2026 at 08:15:02PM +0200, Dmitry Baryshkov wrote:
> > Having only a single set of callbacks, hdmi_clear_infoframe and
> > hdmi_write_infoframe, bridge drivers don't have an easy way to signal to
> > the DRM framework, which InfoFrames are actually supported by the
> > hardware and by the driver and which are not. Also, it makes it
> 
> We're seeing oopses on Qualcomm RB5 platforms in -next which bisect to
> this patch.  Looking at the patch I'm not immediately seeing what it
> might be getting wrong, though I do note that the board uses a LT9611

LT9611UXC, yes. Fixed with [1], fix committed to drm-misc-next-fixes.

[1] https://lore.kernel.org/dri-devel/176945413960.1492466.3261759749688865592.b4-ty@oss.qualcomm.com/T/#t

> which is updated by the patch.
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
