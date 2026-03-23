Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B55A4D58CD0
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1JLwHco2CDE24GPX4JLQBhu6zRXBHZymeJiAcNFG8M=; b=1OXRc9cJRerzo/
	UumGUD+crFXYy/O1x63Pt9b0TNqH8wyMsVZWLcvFKU24J/jRGlElZZSGyap53d3+ubJVFl+oS7xHV
	Dcuy8UOURQHPsYKWGY41eOW0/Mo3H+NKpy/iA03qR4epL7EyjenKyPxBcIbNFGLIC7mDLK7mrzsdC
	ruyzMYx112cdeuGvo5+1gonn2rkAQmO6bYmL4YjOzjP6cBn9Ck0UNRfsuBtxv09yVgD+GPnmsfWFt
	RbcUvTX5BjFKWJQPD3TPaEOprjWjYVYd313vfChbZ71Is3pHHmGgtKTGL3djThzPDbc1BvfRM+QmF
	iIXug8ehuArUOtShM8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WZp-0000000Fyva-48VJ;
	Mon, 23 Mar 2026 04:07:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WZg-0000000FyrD-2HHD
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:07:34 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MJeChh1674413
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:07:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=W5rwiOXF2FFDG/kdjyCGCZaP
	JLF8PoP6ImoKwsa95hs=; b=Zw5SVhqkPq2/cw3ADnBJ5wgBRbhd6YTXpPGmORtK
	L+Tm1dVCL2518ekIBX8K7LtOeS4wZS9pEig/W4AJFNe3Imk0sxFuh6st7w+CKMK9
	AWI7rERcfwXLEQMjLCzdN9cNk5WWl8SvuE4pgOyb5YQ0AjsxQlWyZQaFFoEKfHSa
	YSt6n+fVlQsmvAisWict0zJSnVNwpn5puup+flKkn7Y0GoOKdLjxqwv1lb0o5TV9
	YNyCil28mxaA798c2WvD6qRBObe8+XRZgFlKBNFRS4Y1QDhxC4+0Ps9QhnrdihZU
	m1tnxlVkDv5GVI+IyRuavtp5B2C8JIubTyevpXEnYAIf/A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1kdubnau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:07:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50917996cfaso36587571cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238851; x=1774843651; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W5rwiOXF2FFDG/kdjyCGCZaPJLF8PoP6ImoKwsa95hs=;
        b=OmhiChWm6sqYv4Iq6Xix8ygIIqqZGUakE62ky5Z5fVPkpMvssFrkW8XFI1L+YQgnEV
         1HBTE+2UJXQrcPY8irlncqaqCMonjb7q9//SrezTPlsXKv/+niznqnCVyE0vfVLfjZJo
         4vE+L8KbEl8mb6x4X5Xuz4EsI84kyyHfIGy78fZdaKuuu8Zkj3rQfBfogiV0bb5Mb61j
         6k5e8nG/nzOKq3HfOIZQ56sPlfuF9mVbil+Mz50tKBx2FPqCpta1JeWzm/ITj00pUVsQ
         AJywMFdmjMFOFsu5YL4dk2eslR4m9VBACnHS677Vw4kjvc+904/yh/9L8dVwQAwXKqP2
         1ogA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238851; x=1774843651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W5rwiOXF2FFDG/kdjyCGCZaPJLF8PoP6ImoKwsa95hs=;
        b=V/+yPXI84qwAyjXwTVOwVH5wvdJcmDkBOE5qMbPTR3Rx75ZfksmB4sYP4vtqvsMPgw
         f8yokB74pocVtJmcTJ2Reh+UBI9yM7cDLeGiGpqmTMTHetBPuk52neYl1T/m65Cx2P9u
         yl6uPjvx0kbhkWBOmoRc4qyAI135JNpIc7YLjXsYIsnDtl4mgE0soGBvQ6QgREFkj202
         WNDmTFDUmsfnpIAqGi7J1tQMZSpwlHNGyQgCqO7aFbg+HAeIlhWC9HgF9ABERwNiSE7j
         Cwkgn3vBtc7fIyTLHmYZAsxydxIpg9G46diFHDAzLq/FPKwUn3W0dTDXULz8/u3VNOmd
         NjiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbdDfqVRUEAwz9vT9jS1tyVv5ahb5zLJ1dijUoiCKwr2lK9ss0JhwmYEntKZ1TvpdIdB8eyXtrztd2aD3sDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZLhYg13VRCMf965ihYyBjr4r80vbgXqT78aWn/SAfiGyYcVns
	cbv73RlpbxwFXeavUNLfW0K3RcX7WnNvSQY1l/It29g39ZUHReR8ir9e4lX66ZndiLSbq/CZ31Q
	jZK7xybFc0D6qvLNHvt+Jk7nu7rDAOhymh5IN83uIEhIqSQj+aEpYT91Z/34HGGIbs6biBiN97b
	U=
X-Gm-Gg: ATEYQzwzYm1ZJs8uNf7GZJ+sXnE5ZZvcObHvbfaKzhYaSNCAB46qgwtq9wyPkPR01EW
	9XAmc3oGvUka8L2H+QmIUBRhKnGvTSpRZFcsIjjdxzNiVlCIHSs2EzSI7EX3PP/qyZ6fAezvgOg
	IVH2qNesBhGupLCPn62htAcSvKIJOaxGTyeLen7ZWFWonwWw2izMlSmRk+FhzD0e0SpuRQmC45q
	VD1hO9ba7oFk8LHIFPipT7qiKwokSLXo0tP7cnBdV447eyCwnKNfldapogiR95nXMQouPj7j+jA
	xNi2PGeOzUWMqvibG9CsX5cXo4+DJkKEUZrYwjqpM/zeFUVgyxVWdoaRKpiFj6Y+ySnL1K6Geg+
	ziZJcI8DVkXhBRUTC7609T5NBWoXcthVIeAaq/f9ws/lfbihyhq3oTdHzIBqN/oVngtRr+GEU98
	C/wtSx2st41kg9qhULhNkQzYNa9NLurpONNSo=
X-Received: by 2002:ac8:59cf:0:b0:50b:2f1f:ffd3 with SMTP id d75a77b69052e-50b375682d1mr166637661cf.59.1774238850828;
        Sun, 22 Mar 2026 21:07:30 -0700 (PDT)
X-Received: by 2002:ac8:59cf:0:b0:50b:2f1f:ffd3 with SMTP id d75a77b69052e-50b375682d1mr166637111cf.59.1774238850280;
        Sun, 22 Mar 2026 21:07:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf9981ecasm24919121fa.24.2026.03.22.21.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:07:29 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:07:26 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Andy Yan <andy.yan@rock-chips.com>, Liviu Dudau <liviu.dudau@arm.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Liu Ying <victor.liu@nxp.com>, Chen-Yu Tsai <wens@kernel.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        amd-gfx@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 02/14] drm/edid: Convert to drm_output_color_format
 enum
Message-ID: <xip6aoymudbdakietc6qrt43irdajp46jrsdi27m36dfqfzqnz@y4stxqdxdjix>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-2-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-2-f3935f6db579@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfX65mXZM63mTuD
 sjA//remsJbQwJBONFZDALwoepeFiHn4O0bC0r0KLG1CtK/R9aJS/0d61hIEClVBaWlCPbMg2RN
 6AZMyHux7wuyZSJRV+wsy4qEYVUZihtYsz5hT1N7+s03O8eN2Bvey+3mjz8uqmwdKAXxwtR3n9o
 AcGrtaFr86NvXgUwwPCclqKaB3fs7blErzq2Zf3xtpNEWONP6n6S7rv38FEFpLl36xgl1vM7IJ8
 v/pB07rQhcPKSdYaYx0wr5eI8Lq8J01F8XCfOgVDjATwwxTKbs09MnvJOqg33XOcgJdGz1uzyOh
 tUg9o1wMWKwdTJMxZFDllFgoGVC1Jky0/bqjUe7BfZ8nsyAILPZGN9oNLDsSREwIsDUsKjaGiVf
 Nmw0Rc9AhntS/GBCxZXaCJkJi/6/dtrqxDs20lOzIo/9Zvg9Duxsdr/dVs8ARTBmoZmvBpFX6lV
 andtUSQz/LEMh4WsW1A==
X-Proofpoint-ORIG-GUID: tkcR8JBxpetn7r87tAdlmKu-BkUoHHTd
X-Authority-Analysis: v=2.4 cv=Q4DfIo2a c=1 sm=1 tr=0 ts=69c0bc83 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=_wym5JX8MKgHMASIHSEA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: tkcR8JBxpetn7r87tAdlmKu-BkUoHHTd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 impostorscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210732_699135_BA35E792 
X-CRM114-Status: GOOD (  19.29  )
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

On Thu, Mar 05, 2026 at 10:04:54AM +0100, Maxime Ripard wrote:
> Now that we introduced a new drm_output_color_format enum to represent
> what DRM_COLOR_FORMAT_* bits were representing, we can switch to the new
> enum.
> 
> The main difference is that while DRM_COLOR_FORMAT_ was a bitmask,
> drm_output_color_format is a proper enum. However, the enum was done is
> such a way than DRM_COLOR_FORMAT_X = BIT(DRM_OUTPUT_COLOR_FORMAT_X) so
> the transitition is easier.
> 
> The only thing we need to consider is if the original code meant to use
> that value as a bitmask, in which case we do need to keep the bit shift,
> or as a discriminant in which case we don't.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_edid.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
