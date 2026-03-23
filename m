Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA3B4D58CCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U06WLntjd7v6FePM8c30/pvv0rK4qEx7N6XK5gZkGgA=; b=hHLXvpUFQTEjIK
	vg49edaoMdx9GwknCuJh4x4XlL86yx9OqnnC7vbcTOKljiSIsOG0jDY43ij7+o799dOjGddTp/Dtg
	NdC1QvlTwTirzAKn2ej5pKAP7wQJa/WDgDIN1oGLnBnV7QRZ4PYt+RZEh3hsS2bpDcRJH7t3kxmTt
	X/OSd5N/FQMwnj7Il5HeA+dWa1/1DDRSFFcF4TpIhtp0kDvFUwEpf3mUGLhYkcWjcFBk+XQ/5b26Z
	ojECzgl4SUGHzJ/0SG68WTcWuhKmEdVJOA3W6HMNiWzU6sI2/dr79W4WsSwCWoVxF5CRHCi+qv2Qd
	A486LXcmgzIH3IgP4V7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WbG-0000000FzjY-2n9q;
	Mon, 23 Mar 2026 04:09:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Wb6-0000000Fzf2-3nb4
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:09:09 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MJFSif687241
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:09:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5mLU7+MItDUu5Kth0lmGo6bE
	IH05p2nnnuPD4hW7xVo=; b=PJM5pA+8Rt+CP033st/WkGLskaoVd4kJ2BweO5Sh
	6RXUql+pqIyx8wo7KPHvogwy6ApWsQP1j0BPMjHgC1FBuyJnWnDgW2r2qI7TsUqi
	lqzMi6Ml1Ye0E10VE5n9jF9747H3vVQdENdPz5e1lV/gR0rao9xzqK82jWN3s8zY
	C+68PvP7iz/GbY1epbq9ej2RUlYmh+SJRFqMpVgU56cyWBwYsxkWmqfOrwhwjY3i
	yPCb5/wgJW3JLgpswMvct5EcWgxjtBFZLI9fRkVcdwy034NKz7D/cgD+XC6BYRHz
	bujwB1nCbXbN7gV/TlGRRsS6Fwg4gNHT1Tg+H3k8z7G3yA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1j9rbp7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:09:00 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50b31cff27fso21970571cf.3
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238939; x=1774843739; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5mLU7+MItDUu5Kth0lmGo6bEIH05p2nnnuPD4hW7xVo=;
        b=acfbF4xk4N2ymXOGxHzpM80MC6hexBtGt4UL3ae6LzOUNXNeVNaOr8ZbieHeEAhFpr
         Wij3aCN+B8i3UCUgbYDgab7ZcncLGHPop2qgHdKBgRMy62vXShn1h26SCzUiBRnAQyvl
         d7j/hj4/Otv1NC64oIH6I9MickP5984SOFQrT2ka8vCQKkQsNWRoMaJSbTMn8VImQElA
         pUb9ZBmU9oV4Aq06Xk6FmUGsBOAqC+t0+ZAJchunvnyluUmOWCsdcc68CpaxC4sKDs/k
         aHaKKQCcqLfniy66JIGiDPFJVWGbtoq8vwrQuUYj0IgueR1k5eDIP5IR7Jt9LwIp79MW
         z9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238939; x=1774843739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5mLU7+MItDUu5Kth0lmGo6bEIH05p2nnnuPD4hW7xVo=;
        b=DsqKq3tbprL8E5A500h5/QmMacw/H9xlxe9kAV/fd9Si9QBi2tWMwYN8fJKeUYoLG6
         A9QHT0Z8zrw6L+7i0i1I9kiTLBUb+hx7qAbI8pHUrOT7kxxOZhi+5DhE+VDlhEDjKxvL
         7/qxnIRV3SiTjSt56dlqD7UF6kqhhoK/FEXiOn28ijZBex5ZqmlGO9agGtYwuGZ54Lh7
         O2hX+1TH7tEbYr0SEJJsQczhxCF0EI5e5CRSt0VwvbRIlr/DQrJdbQcSJuLCNE8P9kzg
         IpvFvIhP3O8mwiuWiNYczbCTcUlxVp6RrZNpoEzmD8E7bI6tTBXiLQp0Sc0JZcSkFXLn
         uVmw==
X-Forwarded-Encrypted: i=1; AJvYcCWL373Iob7lu35vv5L0XFOhG5+MokROZGkLheruteqK2pJBw6gSHyLC0kiBy8rx/ZgbLvy+Nc/Si8sCCaFhuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyE3t2EywR8rkzIE6i+GdS7tLBK5Nzuh6Fw4qAhiXfDUQfkZfxJ
	IQPXqNeq/psE55aFNtQZunmU2Gulx9f7v6sSk1i3O6GGO8oCD1rCYLRqrpW9Uux4Es/rQQkWKkt
	xX94rEMcRIV8rQiTl9hI+58tuh3KKXUqIng/9yMQlOEypgqSZgLeiKSu/neqYFvPRZwSODQ1vP+
	g=
X-Gm-Gg: ATEYQzwGLObHG2r46oOt7IOT+7KKmPlKRS0AbbpRp7HLPc/HHk55BLB8kNflCpVqIvL
	99YNk2F0utlwf0FCWKI9427QOGArf9WKcTf5EXwxNfqdVeuNrORN0ocRewHef8rXRootDmYwVw9
	qaCI31rIb3Km43GF+UyBZSx67y09ZltUX7gsxBB05DgbeH3nN2wc8+rhCb8VGN7jNZonD3vvSYy
	X7+ZuCzpW4UbpxQrIG8nwdF8AQGUGb7PYtjq+ze/fVs2w1g44dfoztn4tlSlWTTJaKe7RKGlmFL
	0ZeM0YrZOBSB2EaSFwT+U87V3jSIvlifPGPLPf3LQ9T2f61FjMlNuZnp2owQLUl4m18X5Z9hxnh
	kE/gx7ylg/SqTHI3OkFTSr16gfv3BfieVNG56USTKj8JKDCiSI2ToAIR/CQ5TnIrkDWKQYTZ2uh
	1KJ5bhwfGLydLTCivJwIQNXSme9X0ADsurPtk=
X-Received: by 2002:a05:622a:2288:b0:50b:55fb:1c87 with SMTP id d75a77b69052e-50b55fb20admr59359021cf.5.1774238939269;
        Sun, 22 Mar 2026 21:08:59 -0700 (PDT)
X-Received: by 2002:a05:622a:2288:b0:50b:55fb:1c87 with SMTP id d75a77b69052e-50b55fb20admr59358441cf.5.1774238938791;
        Sun, 22 Mar 2026 21:08:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a288268a0bsm1994449e87.14.2026.03.22.21.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:08:57 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:08:55 +0200
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
Subject: Re: [PATCH v3 13/14] drm/connector: Remove DRM_COLOR_FORMAT defines
Message-ID: <lfq2myl6gnzog33md2madm3qky2x4sasbrqkthhvdvgtfigrjf@dc5ccj7iq444>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-13-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-13-f3935f6db579@kernel.org>
X-Proofpoint-ORIG-GUID: _VFoIeSafI9MPnGMkOsvN6_uRTHMzG9s
X-Authority-Analysis: v=2.4 cv=ZPDaWH7b c=1 sm=1 tr=0 ts=69c0bcdc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=z8SGupnk27XsGNPOeu8A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfX1vYtPhrC2cjt
 7U4MoEdJd8Ubs1NxKD/XacsaiJvFcXuwkodJztGIMhGcqoC7AJQJxsva4etVno0VMkv/sxLBaFL
 2XYlxPTJHC3jPjKHk/VQ25qZ6sA25Cnp9KY1eSVDYzmt97JBM/9vT+jlA/yIXKO4RdhbgPn/7GX
 /R3b18TwRI3Ht3tz2YKZ/do75qM6Vc7FLpga9B9bF/F9NWwMf+J7NromTvZf0h4RzYXxV11euun
 xU5I7utVEwiWjS4Y6WE+O4+jr7S/tEs9evO+W84KukMZf9ZSRYy1c10j0xL1EBzRXPxJayvrfiU
 KVU2cfUonBSrMFNHHxmcBUIafkDCB+bBrjgZKXAJ7TvtE8TaRHOGU2zDovXYzK/6dQK5ky2smBm
 b+NNqQEO0bYnfmrwqGFfamk44gfCT6t9GD5IreCtRswxmiwFiWJ0wFY6+cy0pcZUw3lLuIad4uZ
 nifkWw6vm1KOL5LQO2g==
X-Proofpoint-GUID: _VFoIeSafI9MPnGMkOsvN6_uRTHMzG9s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210908_063521_2F349232 
X-CRM114-Status: GOOD (  14.14  )
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

On Thu, Mar 05, 2026 at 10:05:05AM +0100, Maxime Ripard wrote:
> Now that all users of DRM_COLOR_FORMAT_* defines have been converted to
> the new enum, we can get rid of those defines.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  include/drm/drm_connector.h | 5 -----
>  1 file changed, 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
