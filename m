Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D176C44501
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXNxDsVY0vg+dAozEZGuRQ9sG6g/P85awMpfzXSVcgA=; b=yDtbaNFIca7nXm
	i6LJQpHqFepSl+XodL8UCUYXOx9KqGqVfaikOn+34hxurNefSxRXSPPlqUjW9RZBHPV+Gw0/+lnZq
	p99ONai45vqsR7sQbV2Lw6EJNCFIZpm0RebXfU9ckwDYUfhsEC0gOHmAl41ovAGmoIffAs4Rw5S3h
	l7SMPqoinXdWjoUZuIkv8Isl0KrRLFzIpOtyDP9aH91ByW4iOeQ4TUWB+4nGs06AM5gyuPnxVLUqg
	ZVW0EK2h11ueGM3QxUwYHuT8grWYwQP4sajdJTFzUXRAFV7lsV1s9Fcr7NRN9du+XOmVO2yMECdMO
	E3bmYDmLHHechkLp6cWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkRj-00000001XcU-3olV;
	Thu, 09 Jul 2026 08:49:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFtOA-0000000BdWb-0Qzh
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 12:42:46 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63N8u4lr3768991
	for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 12:42:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7qCN6fA46LhWWbVU/958hHw2
	V513lfnGpAmb4yh0Leg=; b=fFCmdbSfyR4XRLkYWI7N0Tk+PjH+OUN5AhQQ62C1
	NejbCSHDJFuHdR9JsGONxsS2qNPi8uecZxrL5IALiMQxx+wQiNuphOJcfp5E8q9S
	fF/a4MG4M0jRNGEiAR8yWqA+IK3BZ9XAnUM2O7nHmiHv67WIFxlWGCcNYdaR9JyG
	nzaSHAyLLVuyd7ErqfQPNLn5fcEU2pkJybXPxN1K1ekb8qm9/LfmyLhltoKVJKyb
	+4bnEIEu2cSE4RDXfCzHHo8BnEhXG7ue92bfANCDf7pki1CvO7/Q8Pqy8y7BYNfA
	8hk/fetWEbNmajZGVeNgXM/fIq48KlUrsYscWVnczkm09Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dq1hq3w6w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 12:42:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50eb8bad331so45783461cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2026 05:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776948156; x=1777552956; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7qCN6fA46LhWWbVU/958hHw2V513lfnGpAmb4yh0Leg=;
        b=defDidricISY+QMzlMF97jASt24zV/i5t5xOtmsO5jgBnbXtBkjr9cVChClXmsA169
         23GBEg2M1luSZso3l1bn4z8a0VqNBEhRiJWNVqHEfOiQcZ1b/HNuQJh7FkKecInHmJlB
         d/bFvOoKxvaAPckvmNZuy5Tg/AMDSOMhuhM/9gIiQXet5t01XfJaGKFVdqubO2g9/FI/
         k1vxpXxboI0qoWrZQextWMcRawNNL/46h/coD3yvAg1j6ZwPSM4L1doehgttJbYIQTC+
         O+RcTfc30EeJ//BNF8TzWgP+ZK9DXbd2O06KElrbz6HHdfLpjZRRZt5MvNdfJF8eK9X+
         3+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776948156; x=1777552956;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7qCN6fA46LhWWbVU/958hHw2V513lfnGpAmb4yh0Leg=;
        b=n13g8avav0uggAi7VxWwCHWpOdge7Bn2mTduKfyCXdCEu2O1vejIMmmDD99rh/tyTZ
         4OrRfYumsyqI0llOZDROBRA4POjt1290CVbgnnKknrXmBeGg7oEjNKMqSqLaf76Zi0dt
         Etpy9DVQS39/583QibAdQUWWhQCqrH9IVv60ulveez5j8hIKGKBy/791JRckcXOCEUBi
         buk8s9tSznAckRkv/CxL78guZ8IcF3dirvxD0XnqlK3JgBs9MU2qgo+6Mg25VrjAjfge
         k9twbzj5CwquKWCaaM39/NNABQAIp/TtFcqn6psY4Uvk7cEUQYXwEnmL6cTEh3i/hWFO
         V/+w==
X-Forwarded-Encrypted: i=1; AFNElJ9IpzB7IPmS9fXSQJ3taV0X55iYp94VvgPAIhODXoU2EkbZbP25ghbbN2y5Sx+wfN8RCbwjAHrJj/wuQCnSOg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEe1IHpwmFlgag45iFQrOU1F5rlQ+lICWNinIXmkS/Nqbldr6V
	nNe0CBRsLo3biTvB7lf1muYL4bROtZLHEX+61GAMCeIElSMPtfHyaijcUy+SvijzOW6/Z4q8zE/
	LQSbT4czsrmk7utZFrgJwxX2a4EqePFqt7iFCTfw+WkXDMth9aGOtMZ3w75xR7OIkMhUYS4h6uU
	g=
X-Gm-Gg: AeBDievi8KdR9TNGepSA3TpUvYqfjXYuJpL5GhCMVF/oSUUwpUg/R1+yxJEiWOQGkGy
	/vUT0M5nVltrHFclGc4wSVyFzFI4fCpO/thUo7EgCor8o1YiMq3pmx7HAWNf/uKU8d72UO4pKjv
	OeKQy/lCCgtL7wROqwAX7wwwYVRLUBLMQebIgn/m5dNSA7GS4AXy2smAbPpCPLhAhUg28on1gps
	0i7y2XasB8XsZClikqksPIr/W6vMZHba3B/dvzqbjxua+IZ2Z91OjkY5FXvXZO+nwFaedoxMz/W
	rlCZ7U6AfFbQD8LIfz8CHdEXo++fkwVDIDnFz6j2pkuVw7i5l6Ppc3BZ0toB9XslSjIxtFy9h3F
	ebQLkYMlvji76x4HwSYI1GW67AVzMKhdqehF4mB9NG8tnJR08WmYdN9enZNZ80C+3qLnEoWQ/dD
	MTQUmNvJcFq/bsAy3uLvp48oMyoD8UWWsVQW6YVmpL+jAWxg==
X-Received: by 2002:a05:622a:1496:b0:50f:c2f8:406e with SMTP id d75a77b69052e-50fc2f8479dmr91073341cf.48.1776948156439;
        Thu, 23 Apr 2026 05:42:36 -0700 (PDT)
X-Received: by 2002:a05:622a:1496:b0:50f:c2f8:406e with SMTP id d75a77b69052e-50fc2f8479dmr91072081cf.48.1776948155831;
        Thu, 23 Apr 2026 05:42:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4187e147bsm5123482e87.52.2026.04.23.05.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2026 05:42:34 -0700 (PDT)
Date: Thu, 23 Apr 2026 15:42:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sasha Finkelstein <fnkl.kernel@gmail.com>, Janne Grunau <j@jannau.net>,
        Liu Ying <victor.liu@nxp.com>,
        Douglas Anderson <dianders@chromium.org>,
        Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Paul Cercueil <paul@crapouillou.net>,
        Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mikko Perttunen <mperttunen@nvidia.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Icenowy Zheng <zhengxingda@iscas.ac.cn>,
        Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>, Marek Vasut <marex@denx.de>,
        Stefan Agner <stefan@agner.ch>, Jyri Sarha <jyri.sarha@iki.fi>,
        Michal Simek <michal.simek@amd.com>, Hui Pu <Hui.Pu@gehealthcare.com>,
        Ian Ray <ian.ray@gehealthcare.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        asahi@lists.linux.dev, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 35/41] drm/rockchip: lvds: remove now-redundant call to
 drm_connector_attach_encoder()
Message-ID: <wapbiwxou64emxlt6oz5slst3nvcgvs35hvhpz7v3wmwp33bzc@mvdog4t7un6m>
References: <20260423-drm-bridge-connector-attach_encoder-v2-0-2ae6ca69b390@bootlin.com>
 <20260423115334.444750-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260423115334.444750-1-luca.ceresoli@bootlin.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIzMDEyNiBTYWx0ZWRfX0SkP/+/LBmmH
 ekcFH3FB5WCXPshnRx90knpO10IMjZuZlNRi70RG7vMLeotyvjGW4mDQjGBiRhGC+D6HHx3i1y0
 w8qx6g2QuzbgesT2TauKFUPBkal0R8WjI2XQhfZMBoyobpHj/9E/jncn64FBU8kiSB94AHww3RN
 tICAycRNX1ciHcbgpGsjlwIlulONaPCbxdF3D/s3enHyQT2OoAmEFyoChIMV/ag1Tu7LongvUTR
 DsvMpy5ZPMt2uT4syO5m9isThHDxfgvIYdYmqAqSVfk9ju7kkwBVxBT3hX08cRT6YfuSddqvnRA
 bnzD7ETSU1QCdQ3aWWtKomsSA4IdFBhD3W5J2RxAETK9f9u2LXWbbvb+963TsreTu8xhshr2rtX
 4eS+ohUHeIFZCy6LII06YCB6EZZUe6eSOnHYaowpHd6OxHU4t1rsSzLITMIqehulqa0DXXcWdKE
 K7Mz+GIi+Tca5QiGy+A==
X-Proofpoint-ORIG-GUID: yxQm4Evf5K-yXpbXV_UEbgB-5NwOTHaO
X-Proofpoint-GUID: yxQm4Evf5K-yXpbXV_UEbgB-5NwOTHaO
X-Authority-Analysis: v=2.4 cv=TJt1jVla c=1 sm=1 tr=0 ts=69ea13bd cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=P-IC7800AAAA:8
 a=Gxjqsh2QC4DOxsvvGYoA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604230126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260423_054238_277231_F2D8ABB1 
X-CRM114-Status: GOOD (  13.30  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

On Thu, Apr 23, 2026 at 01:53:28PM +0200, Luca Ceresoli wrote:
> drm_connector_attach_encoder() is now called by
> drm_bridge_connector_init().
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_lvds.c | 6 ------
>  1 file changed, 6 deletions(-)
> 

stray duplicate

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
