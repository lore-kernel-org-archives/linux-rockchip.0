Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ECD8FD006D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 16:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mt1kmlsBYISNoCkvaeewyAp6MkYhRHyh+HhsbnB2qTs=; b=laZGV9bgFbMGiy
	tt5ckZ3NHkWPh9nHlDhFnG72DPa5HK2+avCHo4l4NiC67ItsCKlUSXaqdQLflXx8/oJJr9DKRyUzM
	G4d15HsUEdDBhsq8ZtERBx2LpjA3tiZibmE27hn8Cw9D5YAx40mZEubR40Xdgqz+saN3K+JjmwhUL
	TvLHR3icnbpXWHKqgKkh6tlIQlc70WGN3ymwBQZnaRWdML16TrwKnanThVu0uh5pZCxX5jr1o5Gt1
	ZDGxmhFly0QAJiFATWGv6+RCs41/OvhR5OXUsAGKlR1c1zr6U1Jni3PUq2ZWUEAkHFSej5yd/+sba
	yIPS7Tug/HtZIIfgN2+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwk64-0000000Bgst-04Ae;
	Sun, 01 Mar 2026 16:56:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwk61-0000000BgrE-1E9M
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Mar 2026 16:56:46 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6214lolK298796
	for <linux-rockchip@lists.infradead.org>; Sun, 1 Mar 2026 16:56:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eOVsPPjRSHguluqilN+Kykf3
	N9M3bR0DVUL4ZH0XYBg=; b=g7bYISNYlH4zm8Xc8NmJw+M0K5jMvJ5cjPbQXgbm
	bGMeZQy7zp6MKJDjrHG1fpDIjml8NhjImDmfW+kEkNkuk8P3xFLHN90IqHo373cM
	RW5Ndm3pzApXW5silQHbujFxwqjOsi7o42PFypVLnjOlH32AAIGkMYcU1z4FAhXh
	n9bbyOltX81FKyM+Ec7S4fznCBe/RqQqafp0KNFl6kNigll5bQBsL0XwZxmm1AH7
	5OYkZGlfPKuqgshdIAdW+rO0jDOUncXt3YNu1bSO5WZY4Kl1DWo/wmKwpwLodB6R
	uuIKygv9NTamdvEIi7PH5LbqSED44L5RgmBIIQyUW0La4A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksgq318q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 16:56:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ef98116so3603643185a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 08:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772384204; x=1772989004; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eOVsPPjRSHguluqilN+Kykf3N9M3bR0DVUL4ZH0XYBg=;
        b=IN/XpQgjDNBZe1Zfnsezh5GeJn7PY9fwiYraSIv+5GhcETK7r6yeMeJ1tbExi3pCLr
         YCLNXjsZDblq0a38vztj/TIDspKFFQRcvXQkSTBO1fBDKIcdHiNRshwaTT9NnXs/GKqa
         83FqjYlzgYrzQ+ek1kagm8hVvPM7sUiHtAxzInP9KEehH5hKZxDBrKofnnos5CGGJR4J
         brPWTRKQMwMPJMqG7sb2dqCuQzTAioRo6oJKkg6UOmq3EFw9xBj5CTAnx6dO3zn94jQI
         /s8L0igEZK/SuJKYIFyCCd87hCj/sj0j6nqxraQlp6lcV+49JsgnfiBLiiCrXyFATv2/
         iBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772384204; x=1772989004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eOVsPPjRSHguluqilN+Kykf3N9M3bR0DVUL4ZH0XYBg=;
        b=pL/0+CT9BYMk7sYmTiLLhfLzc7zyQEl4yqlUp+G2ucmO33eujLEw9+9gazPeZSh7OG
         /xYzRiCA7ieOtAdzC+vlvA8pVie5xos21+ThnCYnaPEWfvW0hbZIW3D8NZCGjzZZF9R9
         s/HQmkKoIzNZDOcRuKXAOti7sj2e4L4ZqLmtqNYKcruM9wCVhxQs+V+OqemZEjRnppqJ
         JU5hkU79pqELRFggOoNQ8sNrvh8EhBVJz6lt3xXfeBWeN3+4U9696+e2gA1XJjqptt71
         K34uWlrXhyNrdGIrr46EPZ2tvZHR57dNjxfdmXqwlQYVCebc6L+8//3umrQBOq863HIR
         a9bA==
X-Forwarded-Encrypted: i=1; AJvYcCUelvg4FZrYLLr16lDbvg3RWI9vDjoxGMjReEK+hovoIX1EqN2ZyxO9xyAxVYLzQ/hgwT40soKrK5mYHugk9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3yNWiK5jfYGIpSKP1QRLqk/GjvucKV0EfzmGERoXX9egn8GVJ
	4yHWl+YEQ6+l54WJFaaNVygdPtJ080W1Qfp4ZlW0/cxYSfO2nmqV1YJ0voVDonnsuU8D12vj+gP
	cynFNkHvCK2kcGWD+qGui5Q+txlXvnAC9y3c5yWQgGfKzLOrpbVuwvKAJnQ28ZOMPxRJVjwtb39
	k=
X-Gm-Gg: ATEYQzyX2jBXIMfck1nJh3gxRvf5/rvetXMsb3Ew7jPvBOiBC1uWIds/wG5vsVZykEv
	DJfW/a0s1+YXIf270U+EUR8B++zDvEK1kV/izXCvr22M/W38zll6mTqWvCSQ46rcir7cPEGHrMg
	dDUC+tdtSApheS3hiJrbvz/NP0alglvFGIxZ4U/VsYuew9/AyzZ94rgDTVlXEGa51hvCar0+ni5
	c2N+29wrXD2WT+0z0Og/UQSHafUJve8rInNyR17YYQ0MujsNXyrR0ygX1fFh/T5KM3XL4pROi2t
	z79B4YSCqmV0rH/7ZLEwY8gemdecYXuINASqQvPRvbzyXeStX1IwTjiwZxoMENTtYdSRWYksoVA
	wXj5JtkjibOZIwYX/epgL+yhLJ6nfehnSruRMCd+UpSfy9RiBS3Nw2IslK6SWDv4UbDNqdeC7y9
	uJgj2Fd9H4i6LDbZZ/ewTfppPscaJ4Hoy1ldE=
X-Received: by 2002:a05:620a:40c5:b0:8cb:1c3a:90d6 with SMTP id af79cd13be357-8cbc8d6719cmr1207726885a.7.1772384203884;
        Sun, 01 Mar 2026 08:56:43 -0800 (PST)
X-Received: by 2002:a05:620a:40c5:b0:8cb:1c3a:90d6 with SMTP id af79cd13be357-8cbc8d6719cmr1207721785a.7.1772384203394;
        Sun, 01 Mar 2026 08:56:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd9996sm1161185e87.2.2026.03.01.08.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 08:56:42 -0800 (PST)
Date: Sun, 1 Mar 2026 18:56:41 +0200
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
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v9 04/19] drm/display: hdmi-state-helper: Act on color
 format DRM property
Message-ID: <ylcczadyx5ovc7lbb57ehux62x6zbawf2k2pd23ymkp2meaqci@fvrf5gserw7j>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-4-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-4-658c3b9db7ef@collabora.com>
X-Proofpoint-GUID: M0J7qdvqEvIX3rLeMmq9jFOwwtI4DRr4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1NSBTYWx0ZWRfXxyvP661EJ6Nu
 AEAfVZJOVGHSiIdO8dBF/OhkmD38q8SEoPksEUB+8CAAtsm56ZD/ptCjpq4NrNfwrMFVmvpgd+F
 jMgtGFpSokE2xetPFSO7XXbhaXysP9y5CuqEiGPPcuJ/4juXkbHoBZiTobjoXJR98OjsTXi7WoO
 XpcbTvet4st2w6mciwpyoFjSbZqI/AxADFI0TQFMQxAMgJUiIZGbn43e+YzQKaQNqSbvJOSbdMR
 Itc46HIuByUCaCK1uonctQ7X1EHycQLiJnGY5Z0LaEbJmidzvq2h0NvSSqbKx0/0UGlIHx14DmY
 HN8VOO9duVZQSx+MS1fGs/q2MM2OdBF8Xdg45WBmWgOYD5nDRsjIL+5ilsGql762/VG2t+t14ix
 QMcvYqFeY1ROsDUtqW8nk5dGskxe51wazm1jynPwuxYg6/3a1EgQOjFeDBoV/MvC2I3eNYoEGfx
 SNUTboTWrez4ujiB/6g==
X-Authority-Analysis: v=2.4 cv=bdRmkePB c=1 sm=1 tr=0 ts=69a46fcc cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=RMrH-QTV4azj2PXgkmEA:9 a=CjuIK1q_8ugA:10 a=ZXulRonScM0A:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: M0J7qdvqEvIX3rLeMmq9jFOwwtI4DRr4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603010155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_085645_366299_0BBA3AB7 
X-CRM114-Status: GOOD (  17.59  )
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

On Fri, Feb 27, 2026 at 08:20:09PM +0100, Nicolas Frattaroli wrote:
> With the introduction of the "color format" DRM property, which allows
> userspace to request a specific color format, the HDMI state helper
> should implement this.
> 
> Implement it by translating the requested drm_connector_color_format to
> a drm_output_color_format enum value as per the logic HDMI should use
> for this: Auto is translated to RGB, and a fallback to YUV420 is only
> performed if the original color format was auto.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 28 +++++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
