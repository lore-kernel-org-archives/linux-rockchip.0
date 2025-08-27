Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5885CA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 19:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZceJ8tTWYRu32irekYAOdXOVk0Ciwl+5snIjJvUNpNg=; b=oEUiBN1G0LoUjN
	pSBPVviQ11w3JPXLDhEza4+7wzU5mbKf33Ygmg7Mcy/ZKp4B5Ta9OYOiSFrMxDjP4bGjyvZR1/0Pd
	P5WiBwaMsHT8rkSkfHQVAt8MVU1SSm3oCawgMvjCFQlacuzGPZLKFSxu+AT1BF369YY9voMUf69TW
	ZrVyMFkqxDXCmzLIQ1Vr52EJ6qOckA7JaqLA6uZeqOmfFz3M4AZvaaJMFlyF+28anJVx8mwY3ixaq
	0BBqj9AJm3T8BSO31yM8evLqgbYlp05/eUlGujrIX7OzblUKOeuSlhQXR7OCAkiAg7geVKbQz+Y6q
	7YTZgIhnazGpAymA02zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urLxn-0000000GdDQ-1HbD;
	Wed, 27 Aug 2025 19:37:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urK8l-0000000GLFN-3gs4
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Aug 2025 17:40:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RGfnbr022886
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Aug 2025 17:40:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9pryiKbesf4KLCmykOzJgOnqNMnr4CU7A7f1EXmgKk4=; b=aYQoa5Tqtc2tN8AL
	iq3IQTavdCc6+N80wDp9/1ryQ6rtURE8hJYJ1JEf8GeMDt8Z57Ye+hrSjWGiS71g
	dhTRly7ADDiCbZ+3yuhupKzFgyym6AZwAcOPdPXs4ELX8pirZMJET9j7BYqPdz6F
	ZDY3xCJRWorp+AKCGAuCK09e4laJy4I4REdEF1KxFyiaKUObIG+jnZSoOJ8hsS/P
	20/Lf4vNVU0EKTh1RpsR1NuG7UbcbDM0y4LlPFN3ItahZrHzGcEe80H5Dqu1duk/
	fYwIxae0xwk6pCPszhHTrzdgVA9KKBlKZFlMQ3qfiDI1b8OwiDD7D9G8+1hGmZRi
	jBWi7Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5n8t3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Aug 2025 17:40:54 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70ba7aa13c3so5414506d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Aug 2025 10:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756316454; x=1756921254;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9pryiKbesf4KLCmykOzJgOnqNMnr4CU7A7f1EXmgKk4=;
        b=SyHjuMdxs846flCNBqBaV1yiEmW4/kNJR3oY4c/zsIWTxa47ZYcp3nrX4/7wKd09E/
         WKUKNO2Dq/plNDoNnF4Q2ebTwEWHtTQcWI2lntpX4MQBQ5liR7Et80UFj18qw4JTHDN5
         oAzdVjDsplJg/49e133V2Qax1N+QkU6lxgFq26AwCsZ4P0hbXWoDkHf4UQdx3S4BdSMy
         5dCT0jZvNcwNyK7IoVlQEnIw+w2AUaq7YCq9ivPs//miNxtqOMq+C4ECJ2GkWrQuXGdN
         lZQaAIspjamdEzVizrB+YoGaC/bhf+pYw4QmO+MfKICcySzrTSujJJsC7+mmsBY4I7hE
         VcpA==
X-Forwarded-Encrypted: i=1; AJvYcCXdJZ56zlbq2D6a8IUuM9MmyAlLOgI1DjcC4ySOtXE9r1VxqRlPj+QyckelW6dzs/u2OmbUkwaDJDZkXXTqGw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQTJgnORQFy1CNpuITrUQnihz0BT6PcqqJ07AC/jdyJcRzgesB
	HlL0ZX95KE2smur69q1UdlJZYFtm6v51UTy8x7MrwwWS1rNvE9F+/8L1R67ez2nfkqdGsvjKtef
	s5hhzu3jHynYd1U6TAvdaowPVHW2InAt99GMH814vb9jhvKFFBVNLznY0YQHSXuXPFrSHDRJZ94
	8=
X-Gm-Gg: ASbGnct7OuwoyDG1a4UQZf7vpUCu9ZSN/iaa3uzcnL0JB0gDxctNVkDJZzABp3NjQ6m
	TiQy77lEHH04AeY5il07ljzd9+V+Y1aZzxjHSiNlG24mr9hBm+RBjz0tOUsowhDsoBl54Z+CEmf
	tuPErOLxE8lnBUtEASnMahFkcPjKSje4NFeDiK9Uw+SO4R67VLCXtqWW5SRiULYZwS4d3tsKthS
	TAWQvN7cSFsPWaWeE2A3FgKUgAie+fGCgBfl+Eihn05XcsnpM6W03JxEoeAi1v/KM88CXL04o6p
	0q1w603qlhx8sbIXlLn3AQyspa2wt8AVGLFdxd6Kog3uoY6GRyGQEiY17mB3ViTteW6K3A+HQvV
	PVH1xhwrofh7G06BYur4vmA==
X-Received: by 2002:a05:6214:27c1:b0:70b:5320:d416 with SMTP id 6a1803df08f44-70d970cd29fmr238271926d6.14.1756316453959;
        Wed, 27 Aug 2025 10:40:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhCi0u3Z5H0bwldj3p8+1IvfpKHSh571vUpFu3K1OKrspl//SOwGcmP4Yk4ANptZX5dCndsg==
X-Received: by 2002:a05:6214:27c1:b0:70b:5320:d416 with SMTP id 6a1803df08f44-70d970cd29fmr238270536d6.14.1756316452731;
        Wed, 27 Aug 2025 10:40:52 -0700 (PDT)
Received: from ehlo.thunderbird.net (85-76-46-56-nat.elisa-mobile.fi. [85.76.46.56])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5aa917sm28124531fa.41.2025.08.27.10.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 10:40:50 -0700 (PDT)
Date: Wed, 27 Aug 2025 20:40:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Louis Chauvet <louis.chauvet@bootlin.com>,
        Haneen Mohammed <hamohammed.sa@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>, Jyri Sarha <jyri.sarha@iki.fi>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Russell King <linux@armlinux.org.uk>,
        Manikandan Muralidharan <manikandan.m@microchip.com>,
        Dharma Balasubiramani <dharma.b@microchip.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>, Liu Ying <victor.liu@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        Edmund Dea <edmund.j.dea@intel.com>,
        Paul Kocialkowski <paulk@sys-base.io>,
        Sui Jingfeng <suijingfeng@loongson.cn>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        =?ISO-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mikko Perttunen <mperttunen@nvidia.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Hans de Goede <hansg@kernel.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?ISO-8859-1?Q?Ma=EDra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_01/39=5D_drm/atomic=3A_Make_drm=5Fatomic?=
 =?US-ASCII?Q?=5Fget=5Fconnector=5Fstate=28=29_early_return_consistent?=
User-Agent: Thunderbird for Android
In-Reply-To: <20250825-drm-no-more-existing-state-v1-1-f08ccd9f85c9@kernel.org>
References: <20250825-drm-no-more-existing-state-v1-0-f08ccd9f85c9@kernel.org> <20250825-drm-no-more-existing-state-v1-1-f08ccd9f85c9@kernel.org>
Message-ID: <BBD9E72B-B1B6-4072-A465-68204879684C@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXwPuiUTMN2rq7
 qdHhUFGrpT54h0Wm9e7qIt0ujlrmMg/dEghuVdbveD+6otyY4x0Sj8IjBQuTlEVwNpdFH34NiAI
 VAVmZn4AhKyFNARUlXM534ee2fH2a2O6hK2xEus0YzHSWQoXJEdds+2Mrnzg1xPAcLpDJy1+Ev4
 7RE0XRRbXK/8bibDBBXiMV3tzBMloNdoJwwS8uF4ZJrdaQbZZbvMFUysc03uhYzwfNqZt0iOzJt
 1HUNK/lMd5QhJIXJON4PW5Bazy5whpW0DM6D0mPtC/MylOQZUzNpObRdpUVp7Bvp7EfqrUrgflS
 NZ/wkxOoQuH+/n5rSySmFa2qSf+cU53ay7M7YUdAiF88C6xDTyMzWdl1uigxx8cAMXU3zZTikSa
 EwGvf/QH
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68af4326 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=ntis2/2Y3p1p47GkerkPQg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=puQWGBksFvoA:10 a=VwQbUJbxAAAA:8
 a=V78A4Cvkybgf4icwE48A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: F4JZcYnpxRRT8k5S7XhSZ7S1pR-8IjFI
X-Proofpoint-ORIG-GUID: F4JZcYnpxRRT8k5S7XhSZ7S1pR-8IjFI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_104056_034349_23F1C3F2 
X-CRM114-Status: GOOD (  15.81  )
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

On 25 August 2025 16.43.06 EEST, Maxime Ripard <mripard@kernel.org> wrote:
>The drm_atomic_get_connector_state() tries to lookup if a connector
>state was already allocated in the global state to return early if it
>was the case. drm_atomic_get_plane_state() and
>drm_atomic_get_crtc_state() behave similarly.
>
>However, and unlike the other two, drm_atomic_get_connector_state() will
>do that lookup after having called drm_modeset_lock(), when the others
>will do it before.
>
>Let's move the early return before the lock to make it consistent.
>
>Signed-off-by: Maxime Ripard <mripard@kernel.org>
>---
> drivers/gpu/drm/drm_atomic.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>index cd15cf52f0c9144711da5879da57884674aea9e4..fe21f154e0fa030f85fb3d6d35e2684adcf36e26 100644
>--- a/drivers/gpu/drm/drm_atomic.c
>+++ b/drivers/gpu/drm/drm_atomic.c
>@@ -1128,10 +1128,13 @@ drm_atomic_get_connector_state(struct drm_atomic_state *state,
> 	struct drm_mode_config *config = &connector->dev->mode_config;
> 	struct drm_connector_state *connector_state;
> 
> 	WARN_ON(!state->acquire_ctx);
> 
>+	if (state->connectors[index].state)
>+		return state->connectors[index].state;

Unlike other DRM objects, connectors are dynamic. There is no guarantee that at this point this array entry exists and it's valid. You might be tampering with the unallocated memory.

>+
> 	ret = drm_modeset_lock(&config->connection_mutex, state->acquire_ctx);
> 	if (ret)
> 		return ERR_PTR(ret);
> 
> 	index = drm_connector_index(connector);
>@@ -1150,13 +1153,10 @@ drm_atomic_get_connector_state(struct drm_atomic_state *state,
> 		       sizeof(*state->connectors) * (alloc - state->num_connector));
> 
> 		state->num_connector = alloc;
> 	}
> 
>-	if (state->connectors[index].state)
>-		return state->connectors[index].state;
>-
> 	connector_state = connector->funcs->atomic_duplicate_state(connector);
> 	if (!connector_state)
> 		return ERR_PTR(-ENOMEM);
> 
> 	drm_connector_get(connector);
>


With best wishes 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
