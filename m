Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AF17D58CBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFSCeI7FVubbHEOmpIpb3/Y3lgEPDZ7IWTL1vbXymzg=; b=SFLuBxyCekaiNK
	3zKVJ/8BCK3FfNoi8qoGPibn32JWPH7dom1DZUWNk6t3Dk5omW69IrTcUP6YKQwWTIHQA9iBCGF3H
	05FaKTEpjFeLt6pFZj95qVLa2MbyrOnZCJKTbgWxVqRcP0iJyirMsM2h9XR1PbHPgDpABY/UmbuWM
	VVPNWLfGzRzroAuhPZFEMx89LYOnb2mD2rG2fJGjljNNz4KT8VOOtZdB3nZ1FrwOC0rsOoYqCeaCa
	Vo8cQUdB9exypINfNuFYEoD44kPKRAHUe0L3Wk+JdoWmjowXxtzitUUkcWHF7WkgzO6LW2aVOgSzI
	k05ZF6tlQDnpYh9e2GMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WZV-0000000FynP-1pS7;
	Mon, 23 Mar 2026 04:07:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WZT-0000000FymO-2Sl1
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:07:20 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MJeKZQ1040726
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:07:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FkOlnsc0EKvOIhkAtLnyw5lm
	SHO8rtw4V09fAITZLBs=; b=mkB7ye1ABcjRkiyURKA6wmiG8gu2qAXGJgZYQfvJ
	ys04tLxs4TicdQbJAnSx1QrGvOI/bS2qSouJw9b59PiEeMYFbBx6awIaPGFioOKH
	D9Fm4SNw7zNoaoz8bw5lDksOz0792gDPV4/hn/T+vmnCG0D+bdzNAv6vuNTo3Gfy
	yXK5x0dNxWoEOd+3l/QpN5OURspZ4R4/RJ7PIwIANXfMBzg8WXBs2kgWI5kPb8Cu
	Vgfxb9to87kSFRUIRwSqEE0/abOf7aYutz0S3EmGAEXZcKD/vhcAdUqinQ6hvxZP
	vzfZgAMXEsfq/dl1rJPcbYykgUoGgjt7H6UH3mx6Aq2Trw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1mghbh4a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:07:19 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b4031b86dso231123201cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238838; x=1774843638; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FkOlnsc0EKvOIhkAtLnyw5lmSHO8rtw4V09fAITZLBs=;
        b=iNBjJR4Spo7roQX4gggRL+Mz1Tv1QnV+4g1SBr9ecYAxTzlmHOekhKYuiPFkI1eEhg
         9vyza/nzlm1kgDMV0kiGW5b5So1sCOWss5A9VNZHYMCy/TnY0FCs/ddWAzvj5D8ntwyl
         2HM3IQ9wo9j7wmNnK4P7dZFOrRMf0bCKqNTq2THNQhFo8BeR8J39Jy0HMf88buYktg28
         xk8Dz1/c4LLYt+YNhCsNYIe1Ela4Of6p6Ghz/rTvVfnClwEps1Hmaa2O2g4jEJ3mULpd
         n443Qp8yNKCZJJfJne89DrgXZFTBlb0/+4h5ki+0Nxah0u+1qix+b81qd/47+wlvBUr1
         NGSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238838; x=1774843638;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FkOlnsc0EKvOIhkAtLnyw5lmSHO8rtw4V09fAITZLBs=;
        b=VWr+RKoIZ9kGCVK5iGfi1Bf9WZ32q2k8E3oSEpjbhsQ5m7WyBMWIj8XUSnosI5jrIn
         Z7KhqUh69Taadr3k93hSX2futRz00cLYsKd+83aI0u6hBJnVlEbwLPd9VegqM5/VNvAC
         3cSd68VAcswV7vBrFK0lFcFfWU9+7puwSb61ASmievqxcZv/Q8vKsde+QiMIrshXOhS7
         AFwTvr/kfQyxXOnYbRBoFiySj+6q0meUazE0huudwzhcWDUKxWaXy1ffJUrFzWNK8pGT
         +GLC8aDZGidibDIQhFhZHOSON3OY7ARCxTGOTfQ+hMtXNzglSb7ILAN/ZCUO7jniY7zq
         D3sg==
X-Forwarded-Encrypted: i=1; AJvYcCU9z3jpytddLucALbee48k8pLSqu6q2Px91JyDt5JKk2dYRCVqSieOzRRkwwH8lkwHrUTHCwJfdRUNJ1V8BoQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxT7FUU8xUFhNRSlMwJG2HpHBPqeuizEQA3sYc09JXCfMML3a6t
	ribFGMo5/85j5jC87AD7KY6RARDl8kNwT/kUhRiMBAjshNSSW+X8EGC7menxpUCGF7qw8/Y53bn
	8bJ5RbLROFaKaLrBLw7sNvSxXXmwQGzT14FZlLXIHUWUGfw1lz8JKQ2dabNLpbJ/eIaKsZTsWD1
	s=
X-Gm-Gg: ATEYQzzojqXOF167GsU0gMNkesFbW+Ma8ukhAAV5MAMvGRuVpqoFsVroNkmjy4g+1wC
	ItOJ2rqHHTOODqMskjPEjhGcZf0XJo516f8OLJ0uRkfC3z5XTyMuJL2Q5jgSk4B2R0qYM6xFi7h
	GbI1Z7ZOoqx9Xo4nC/naDOW0S6bjoD77zIzaMr7GRcakwi6snECDO2yjsCvu0VvgiQLprJZLJKm
	rwI52QCSzRhEaDbnVzbEPDDu/xgCcK6OoiIxvuax4mRBVwTNcCRm2pDBsQrGyEMRt4fToRextiF
	zjq184FYpj/xRtgT8C19bdZ/EYwdPNr9IS32DUHdaCLRzrx0OcxeM5uerCNU/p2unYwFKP9uykN
	WkkjC6eOQENfJ7HLI2MR9TEY9yj4jzTqFzdXBbn9+p+ipsw15kxtErJBXYdryXhl8BgL/5njFdF
	/uc1wwllQhTFd5LBcTl4ASOsmXxUNThxVNPWM=
X-Received: by 2002:a05:622a:2611:b0:50b:4e65:95dd with SMTP id d75a77b69052e-50b4e6598dcmr84026661cf.62.1774238838061;
        Sun, 22 Mar 2026 21:07:18 -0700 (PDT)
X-Received: by 2002:a05:622a:2611:b0:50b:4e65:95dd with SMTP id d75a77b69052e-50b4e6598dcmr84026151cf.62.1774238837540;
        Sun, 22 Mar 2026 21:07:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf9ac2661sm22658351fa.39.2026.03.22.21.07.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:07:16 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:07:13 +0200
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
Subject: Re: [PATCH v3 01/14] drm/connector: Introduce
 drm_output_color_format enum
Message-ID: <mvur5pb6jjbvssdhvbzoekfy7hq4h5vketlzembwb2l6fgt63i@a5f43tecwecr>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-1-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-1-f3935f6db579@kernel.org>
X-Authority-Analysis: v=2.4 cv=HI7O14tv c=1 sm=1 tr=0 ts=69c0bc77 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=QyXUC8HyAAAA:8
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Myhj0e63kkGcRKXW9oMA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: UVg3NSZtlImoIQipD7R3X0eGV1AjBf3-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfX//CB3unlEP0o
 Za7itP4FbniR9Rb87DQX0ScSk0yGBRPRqQleKFjf2y61p31ciBL/1pi20MemgpN3HmGXUHhAiYp
 G0xe0gvGu9EiAzf8qvExECfwQXJoT/zMo8p4YuqTGy6ZqhFHO6HX05NBBPnLrRS3Z0yTrAsce2Q
 VbwxLVTxGpnCqnZt8mfBbrkHEFLsM264yanhsJBMz3gBj9x/ETCjcRqS0X5ZaRFgBVrARafJZ9Q
 fMNu3tSfN5yWnR8s72FUfx2FSGlbZ3Sx6FNDVDJN2x0sztrxFsbKCuNuhnFCknJlxqRXIzX1zgn
 4pdshUNuro0dzEsJ8dPNG5v9o8N4EmU7I9D6fB9cvDfecxhTdnsFOq/EM5OrfbVRAGnpYyf6hE/
 Id0YOwsEyvFoKEgCMUQduOvfv9+gj1v4uXdJJmBMh0KL5dxL5srjVrdyaxSVFrq+olaTzcxjJKv
 jSsnzmUi3K7iRtDLGZQ==
X-Proofpoint-GUID: UVg3NSZtlImoIQipD7R3X0eGV1AjBf3-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210719_629368_2ACE248F 
X-CRM114-Status: GOOD (  18.95  )
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

On Thu, Mar 05, 2026 at 10:04:53AM +0100, Maxime Ripard wrote:
> The EDID parsing code initially introduced the DRM_COLOR_FORMAT_*
> defines to represent the sink capabilities. Since a given sink could
> support multiple formats, it was first defined as a bitmask.
> 
> However, the core and drivers have since leveraged those defines to
> represent both the supported formats but also the current format being
> used.
> 
> Considering the latter case, the more natural, and consistent, thing to
> do would be to create an enum of all the possible formats, and then list
> the supported formats using a bitmask of the individual enum values.
> 
> Let's create a new enum following that pattern, drm_output_color_format,
> while maintaining the DRM_COLOR_FORMAT_* compatibility to make the
> transition easier.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  include/drm/drm_connector.h | 42 ++++++++++++++++++++++++++++++++++--------
>  1 file changed, 34 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
