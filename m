Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A05A9FF8862
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 11:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tvwW0YYBwT76/1rmSRkE28hVJuLjI6dzBIIioRu5CMo=; b=hSbD2axW/qj+Gy
	t1lxCTDcGrdNcbZ4GX5YtlH+j+VONvyfxFg6k3Mvd0hqMddJdqMtzSW03wC6v5zbj3zMvlPuEOq1O
	jolDVUDMO4Tx1UN2qDc9LGsi7Q2O0zyL5LjWXlTG+g3HSeI9t4K+FEWDXDBcsGrMh7US/Th665c21
	UUVd8afa8RD1TIHuOSwkwZi252OBJsA8irjknlzgcrPHQHtGGH4rGRbFeLJ0ht62ceULqxq8Ji/m6
	myWe6nK8/XA7Gy6vnbnQhHwoE8cr8H4fQn4GefYzwSsei419WpqpR7Q8qiHgrusRkaa7zrcR6hzmF
	8Hfwq27uoX46TM65XZ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGamQ-0000000EN0o-24de;
	Sat, 25 Apr 2026 11:02:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGamN-0000000EN05-3xCK
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 11:02:33 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P3LXVR945643
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:02:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LuIbxZ4UGkr2MNHoHHNNbGJq
	U9tVlBHwrX/08rcaVp8=; b=HQaWP/zUUv16lKqJeof414zvjCEHqwtLTwHORYrc
	uuNXKoXfW5xGdbfm7Ul2EKQS01bgJCvGTn7tFrXPUj4NBCTi90rDrtl3v8QyNe50
	DtQQN7s1AB4G21yOz+YImxfApS9x3qvQrARYn096MMbdRHlaPG/xoinPcHGIKf1E
	tmgDhWBQPAxLVP1SypmeoVoGibGc1VCqey3Loy4wTxCvMMvPDs/U99gKAHIOz7Gr
	nZCj7rWqTMAhcuLCqlUsZzsm3E9TEDKRIyEkHrEZ51znwV/lYgZDnpM02rejVviM
	8MXPjmeovoPfg7Q6u7PSJEljEZglSRT34jMwkCOUNjnZEA==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnmr0s04-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:02:29 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-956a188d7baso12994128241.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 04:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777114949; x=1777719749; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LuIbxZ4UGkr2MNHoHHNNbGJqU9tVlBHwrX/08rcaVp8=;
        b=NV8h53JCG2AiYQEd6lNe+UiwAPkj9tAQ46m9qnz/+JBnFhweME+brvrhKTzYG9ZGIi
         g5DgttHkX9tHyu3YmD0SasN7T74GxjFlL+uD3BUV/RIvBEqYBlOVaqmq55oAWn0nJ8V9
         Cdbc4r/dVRU0ltCkplHJJTOH2EY1522QvqBL46a10D5JGIUBbWqrGsLm2xcSwgwgYZzf
         oIYROAtDP03I0to0NiHmr6GQcl9SkupiJWttXj8GEBHhFsIBPxdhq08/xbBJb8UhjWgN
         Ednj9jQSlbb+ViWCvTRi6/ahCU+eAVNqttgA1yl98MmJQEhL9Y3ldgQ2vfFF9ZgCN75V
         WKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777114949; x=1777719749;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LuIbxZ4UGkr2MNHoHHNNbGJqU9tVlBHwrX/08rcaVp8=;
        b=drRXBbLrCg00o/swYxCE76xkxt3Zgw3pu5H5vuRtKYsfD5u6N8PwZgIRC8Ud6I5wg2
         eaVEM26+kyJ9eB+0aiurt35pPNhl5ZPfwk8kXz1U0wwe9WAJyUZ87KJBDz3rrV1FFdgT
         axbuQBtKbCeKJ64QRsbY1JOdxsG0QvUmsf96gaf/FwU9NtpKH6Sm/my/uwLlp4X5ji0i
         ZCDAJhmRhERcQzBhB3+UXJ3SEBMrB4GRoLe7sHO0wrNzEPQfJQLmKFFb0eSVNYLPh4fu
         cIBGNrNwLYHWNydn27qTd0iUaNmvUafJ/OJ3OT0vU6EJ8MqQvrFFlJ0PHwNf8FnZmUi7
         Izgg==
X-Forwarded-Encrypted: i=1; AFNElJ/BRId05/f4vi5KWp7GrbSLpOfQcPYfMhouZuedvixM79BBJclfrewCZtFEt4W7RcX8G4TF/9c71/lAlc2bwA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwITQ/nHfVzW7F2nP/+4TiAvJLGWej8LG/pGn1dKTDg+YCuqLAt
	sgVD9nnFGdi9I93Cu45EhxhLtxEdd5hAMwBL/7cGe/KGSjs0hjwFQ4+71g/qznTQlXVauiQWpEz
	GsKTGi+5lBa5NEjQxoU+1awdDsEylS/raMOfu/5PEL1vz8aVM2xtquy0W6tV8rHnXzywJPRViY4
	I=
X-Gm-Gg: AeBDietDVkIaZDrat0DML4ZahiZAOtmk6XDGPI+tfuQ4QFR3DtsosQZ+aC+No3wp7H/
	iwFxPkwbZQVCmqK5jWQXVqHJYGi4AtUG27wi7+X882HO3EqtP0+mM5eW/Y9mtQ3WrMhvFIHbOtM
	xT8sq5jchZREbMaPOc0+n/0fgyl7w8eXU0aPKQJ2mbQm64oRoPcxiU+JasB2pBwcGXbwnimNYx4
	zJdichTPl7pXtXR4uUhh0Fcuni8YqBebRMDJ0oaHknxgz84oqbhjtFlIP5aTY0o9ft8hF2inMLM
	UaBBn98D3JnEhYS+xG2wBmCs/yfPrKlSAxBBtsX21JWAbfWjr15WjyrhR+w9Q0JrscMdEUkMhbX
	TrXmC3vNnHUnzb1qlWgZNJlt3xvblM3mgQvAfXsfCXFiHga3fe0vc5/XxDp4dlsR+Vrp8DpcoaX
	RacggqY3Tq6owwT0IXQi48z6cznA1WjiSHRHvy5JFuFgHKfw==
X-Received: by 2002:a05:6102:6a85:b0:607:ccde:5c00 with SMTP id ada2fe7eead31-616feb7be9cmr12845703137.21.1777114949274;
        Sat, 25 Apr 2026 04:02:29 -0700 (PDT)
X-Received: by 2002:a05:6102:6a85:b0:607:ccde:5c00 with SMTP id ada2fe7eead31-616feb7be9cmr12845654137.21.1777114948825;
        Sat, 25 Apr 2026 04:02:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4187ebfd6sm6609501e87.78.2026.04.25.04.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 04:02:26 -0700 (PDT)
Date: Sat, 25 Apr 2026 14:02:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
        amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
        wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v14 05/28] drm/display: bridge_connector: Use HDMI color
 format for HDMI conns
Message-ID: <uwmhvmgnhge2vez5yussn3swgkqb4scfir7ls7iy35v4ewifmp@br3ynryrptzb>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-5-449a419ccbd4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260423-color-format-v14-5-449a419ccbd4@collabora.com>
X-Authority-Analysis: v=2.4 cv=aqCCzyZV c=1 sm=1 tr=0 ts=69ec9f45 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=gN0RDaQLg4mAccs6Ca8A:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: tEKTNoFQgWg1CrFJ3xbFGnfR3JnFRvOI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDExMCBTYWx0ZWRfX4fFXbSek4VAN
 8LHF7T7bWtiTGuaUkaxRxT6Ub+cqlQ7KzGnFZqEn0v3ZV7MJ0aIcEXj7lc2PBTX92SnWjtvdW+x
 1WV3xqZCjxTf0JRA/OL2qefCg4BA6Z5DRDzx/K8/DfmIkkFslKDCwHfxAFSr+aUqXn8sPVpqPkg
 QJn2Z8tWizItGMGonU2Ku94l5p6b/8XaH9BQSIBjjRAcQPv7O0jh1AjjyfgZjD8bP1Jvy5viwk5
 a5x6fVfu/xMJx7GXhX/+vgsQCcr7KGkCbXIK4admgTAiG971He+2hYcq11ZTQlLZLObUDWMI0j3
 zo54QhyTdYk0io7rbDiWZWCPxD1cj6AKXxCdFwQhe19OHPYQ/s/UC4Fx1sK1jqWA+s93vZaZ9lc
 bvz0mhIfhG9+XWS4VlJ9EjTj/1aQ3GyTXhCbQp4u8Jdf60cEy7oS5P7xvg++XO7yvpalZb3WXzr
 Z/GHraQP3E693Y+Lc1A==
X-Proofpoint-ORIG-GUID: tEKTNoFQgWg1CrFJ3xbFGnfR3JnFRvOI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_040232_146761_5FC6F33E 
X-CRM114-Status: GOOD (  14.48  )
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

On Thu, Apr 23, 2026 at 09:03:28PM +0200, Nicolas Frattaroli wrote:
> For bridge connectors which contain an HDMI bridge at some stage, the
> HDMI state helpers' format selection logic should be involved.
> 
> Add an implementation for the drm_bridge_funcs color_format function,
> which translates from the HDMI state's output format to a connector
> format for bridge connectors involving an HDMI bridge, but return the
> connector state's color_format member unchanged otherwise.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_bridge_connector.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Thanks! I like how it ended up looking.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
