Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F338BC4452D
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 07:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzgK2k/AZWJuXr8XYDJgMRN0tPoxAj3vvQzqvuooaGw=; b=E+kbNtOlWIhu9Q
	GDi8b3PuaBEbkcVPa5SYL/qO0Qds4qzFXw+25FEKxVQxLuCfSRCb6VI/DQid0J5vclLIogjjzUEsm
	1ydPevF5EpnUnaL/WA3aASQLsH/lzvFwhexg3g1WolAkbJL6h3/8JP2c8jkoMZ8fbzgGdKsaP1UT4
	z4wF32m6bb6+p57smwLhrGmDfSqB2vasNW9k0R0Gx2WtXo+PRGoZyYsxmSE5OLK+O3PBi4Z+6MnOh
	lLPDIBiWXLJc13gLA3PYOcvRuiI4SM+3e16+2csw1cdjd3S/iduTgL3Qo//4cT6H/8f+905On5S/8
	b59vDZbesyWosuXV2EcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRWY-0000000B5hy-1Zh2;
	Wed, 22 Jul 2026 07:37:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRWW-0000000B5h1-02g0
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 07:37:49 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M53Yqp3767512
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 07:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=G/KGU8fNwt5eqUcntt5ioXwy
	LtN7rhmlKxUZdtI6FmY=; b=IWwNTUUF1zOkH8ZIN1PZ+hrxfZLo9aSUIxaRmtpG
	7a9V1zq4cTM1dFpL9WAkGEolqGTmwbegUfGGfZM3zwe6sa9Jc1Slf+Nat2RgyxFT
	q18NNq4nYB1socfTFwz/DR8IySyIdeXYdGhMBtR76a1LO1WkugdIrP8HmPiyrAHB
	WWQU1QwBAL1PotDQgTwpApu7+xXuqN58EnOBSU80bhBhUD7lD0EDN7/LFBIpcZzt
	uhB/GWFqeosK2TKHto26FXHBn2HfDy3q/+oY2sA8HfCCuMNvsD4vRjptNLBneRZh
	9mTq3bwB/xzleQonNho4iJXQigcho9LJz3BDLocmjEroLQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjnu4rwjy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 07:37:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51bff5c7035so146803641cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 00:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784705866; x=1785310666; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=G/KGU8fNwt5eqUcntt5ioXwyLtN7rhmlKxUZdtI6FmY=;
        b=eAeruy6Aq13bGDbbY0bleEfm43naFXC5qKE9zebT/Jdk44vhpVrkN6Bpt5+9pUnXxY
         ZvyQd6bG7ghCSC1IiwW85FD43eTj5b3MxgmhcuTKUP10rJPr2kXm18MeWi3VMeqDoxUs
         hS9D10m8OWmDsy9Tz6S/KhzL5IJXPvd+o1m4vfpU+kBfiU+YO5eY+spB77raHW9TTSVF
         4ZxF9NlibVzeM1q/BP4CymdoxccSfNV94uuxyomzmbK2CjclVI36OXMVA7W3aAx7RUNU
         B37JTAeyR1VOY8fGMrIz8OfcP9fLrZWX/VQTdkwFMX4D82JK+1fE0XoJ6HQ9o9KD1t0u
         QDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784705866; x=1785310666;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G/KGU8fNwt5eqUcntt5ioXwyLtN7rhmlKxUZdtI6FmY=;
        b=N/zuok76MBhACouk/8npZvc7mAkxYhAm8VweTID2nAni9To6WGokan9ZH6bjgVyYIh
         i07SVinG2NYYUMAfYjIQGBGQJD1tIIcuUA5wO50EhQlrczDQAYPR7eeND8uJV6oQbVlp
         0hN4NRdReeUigfoAHoYtHN0utHM5M3z9U2E7Hl+XgH7KGiawDsDfL7rcwMPJkXocASHi
         OOo5yWFLFfJQ8nH78zEVutRmHi2SKNYVevXJRe5jU2nq3g+igLE3nM5rHhP1ZupEjUgo
         bvZzwqHQndZgSJq9NyGw4ueqhuOGXaiLhLSTWmp4QTtphRxWbt/ufUXzTkdAOOMU+7Lk
         /kEg==
X-Forwarded-Encrypted: i=1; AHgh+RqmguQAqvc8LDo8+LPypwLQuOX2UWZvIo+Ebnge6+lbLAxVPupPk/Xj5AxPgaX6yeV6ZHYbKTIQDoAUwrw8eQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAfy7XS81W0kObAcKO3sH4TeNjYzfk96T6csUlkLpJvSGBTlE0
	SRUDaSSMERbu3OyFm+V+ubqx7l7T6DUVE+cyVEegbarwFWm0dlO/muacLLH7bsO7/sxRU+j9UpX
	xaNFbWESsa7dyM7m9KJgoHHW7+L7+5TkqfH238fAnclKDIXkUhsoeMsSJZpfYk2Olr/czLOZMO/
	c=
X-Gm-Gg: AR+sD12Eiy4hj7FzugxKA0/hY4suGdXINQ9tZdH1PFINQ56w37C94O8t/WG8kUlRC+p
	gvppbfZ0RBkNBOQEaZe63XXuWeLukEuo3yXQmO+RVc6JrDvrb10cseRsjEMUnReEe26uST+Hk+h
	pgyUFjVQ5ZbMX3FOpBfscos55iouoI8/9hPWU88nDWUs4u6Cco4TCmpUss7fthMo/+bvFC0Uv79
	Xmb1MuAy5wx6D17c2mwaZKhCbr5Bq3qSMjX1R+ukhzZlT23qQChx+5FIvjBa62AoFaord00Zf4U
	R0k568mfLy7DEwN8yva9qKJ6itwCJa3ZXsmnY/A8ARRd84azDsfxmd0REctfk8hYbTKLbp7BeaM
	l6RvZl89EaAIldm43tpFywrJdMIu+pRAx+v00LupXw6zey9kYWYw2YrnoQMJCNvd9CmA4M9ih7L
	LpqWbl9RSzutWKWQ==
X-Received: by 2002:a05:622a:1a9f:b0:51c:a70:5ed with SMTP id d75a77b69052e-5213ad60752mr206410791cf.30.1784705866406;
        Wed, 22 Jul 2026 00:37:46 -0700 (PDT)
X-Received: by 2002:a05:622a:1a9f:b0:51c:a70:5ed with SMTP id d75a77b69052e-5213ad60752mr206410531cf.30.1784705865990;
        Wed, 22 Jul 2026 00:37:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ef6d8bd17sm2985771fa.38.2026.07.22.00.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 00:37:45 -0700 (PDT)
Date: Wed, 22 Jul 2026 10:37:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
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
Subject: Re: [PATCH v7 06/30] drm/display: hdmi_state_helper: Plumb HDMI 2.0
 source scrambling capability
Message-ID: <xcnre3jnz2xshjvf76tzms72sk5w7koa4lz7rcqizmcysu3dtu@u2rptephae7s>
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
 <20260602-dw-hdmi-qp-scramb-v7-6-445eb54ee1ed@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-6-445eb54ee1ed@collabora.com>
X-Proofpoint-GUID: qssf_oFqn78aKhW0w2gtkkEH239rvQRY
X-Authority-Analysis: v=2.4 cv=KLhqylFo c=1 sm=1 tr=0 ts=6a60734b cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=oequfIBpm4CPOrf6xoIA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA3MCBTYWx0ZWRfX7ElT8EVGkXXU
 s9OGwjeFDOfJEBjx72YV03brNIE0gH6n3wsN5GajrI5FM6ayKVX3pOMurpgyA8PZ6pXABnz4GGk
 G7gIHTfi+FJRdb2k2S5uPqxcsu2qFlREHlFuyYaAQgjDfxjvE93CO6OfJwx12UVLLQh+XaeLwDC
 qWNKQUGT2PM/BOYu77pqaCpNL5i9SRaqm+orsY7l5t5zKqGONMRD59iiylM9EqdXzlSeK4RT28F
 sgJ8PPBiELCEuB5v+jbu3nrQfr4i3KDryo4oiP8967fJfTOz+xXJdYyamoky88R34w27+g9wlFL
 qUjNHTXLweVHs+g24K0Fhrm50WKgGgiK3Gn/8bCUROaHxV6ZJalUUlNveB+DxWHvKI2RzF1tie3
 7okZ0sl9DT2FtkaVWk1LomoTvOruMysTEtu/0f8vrRP1tF5d2qQdKYaAlm9PMGJ928IsiYSDexM
 rK+OlI9hyiYgsyt6Fzg==
X-Proofpoint-ORIG-GUID: qssf_oFqn78aKhW0w2gtkkEH239rvQRY
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA3MCBTYWx0ZWRfX6cbBRd1xurO3
 ConH1tgg8YGVGSpQWq7C2KdBoUQrrcX/0GV11sfDc8dsZiYZA4a8Nu4IISzOIVBP7sQzzEZ73Os
 SixVO1FRakw2dYYZ9WeFnqUQoHJaEMA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_003748_130073_834CA347 
X-CRM114-Status: GOOD (  15.98  )
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

On Tue, Jun 02, 2026 at 01:44:06AM +0300, Cristian Ciocaltea wrote:
> Toggle drm_connector_hdmi_state.scrambler_needed flag when the TMDS
> character rate exceeds 340 MHz and both the source and the sink advertise
> SCDC scrambling capability.  Drivers no longer need to open-code this
> check.
> 
> According to HDMI 2.0 spec, scrambling is only mandatory above 340 MHz;
> the optional sub-340 MHz scrambling path is intentionally not requested.
> 
> Once all drivers are converted to advertise the scrambler support, the
> unsupported HDMI 2.0 modes could be simply rejected.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
