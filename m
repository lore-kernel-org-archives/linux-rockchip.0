Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4F54CCF2E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 11:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vmccoVHCTUsikXGnGyPwiauFhB4M30qcZrygIqr6Nw=; b=BwDbX4sVIG9a6b
	AXIUs6xlqpKMUFKpSoYzfN+eBQh2SpeU0ArbOhTbhFni+Z9IWb4iD7x3mEcUHPySUmqrRP6dwIquE
	xbnKAt8TnmJHnSatTsnSoorPx1XWrvPj24uVhgVFc2CdXVoguFiZqhokXKvFlDhjwGSKSCIL1eNjo
	rXcBupbmVViRrCjB/Y5DXI8WPRlIPGCkuIaZiV8b3FYH9M799yIq1mr35D/W2zjWN/JHjRo3uBdZD
	8otxWMfdOTHTXbXJ79s5/BfMqhcWW1hQRFZoL9IIdWtWVB6UDiEAsvq/Kf6H3Kv0xKsW7vRuWjpXG
	HY46oGpNAUwyr5iiJbww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnNC-00000001t6E-32U7;
	Mon, 19 Jan 2026 11:24:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnN5-00000001t3e-2qUh
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 11:24:41 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J90iwm227855
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 11:24:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TUNGnYuQvZC7DS92zYQiiN2dGMEBlKTwjdJdDY2hLoQ=; b=lP4RYpxktNZWtH0q
	cczG7KgpgT8mhMgot0FCfT/iPmEgjUJ8hI2Na734lgGTU16RJ42ob1StxS2t5JwI
	z5GjAZDFI31SC+APbxWAjKVWJ++/4tsROZ1Rdz+mJfTn2OBg3D/tOmBKNFAe5cqe
	GylGiQw3AYCDStqghOIBxXD/j3kxoDl3tbDQhl8b9nbKYbc8rJjKqtOiDHo/XwXA
	b0TGaefzFeBiUew/1zuFeSW4Q14XZsvIgqprTePPqTL+wWPnhOq9D7cKqpCLRzvS
	L6bD6KLXH7pDQRZYJ1s7FduXAHlQ/cKZTu+oS3N4VDKep4jMvpqbeberhWnoWCIc
	o1GfZg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsgfr8r98-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 11:24:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6a4c50fe5so206592185a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 03:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768821870; x=1769426670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TUNGnYuQvZC7DS92zYQiiN2dGMEBlKTwjdJdDY2hLoQ=;
        b=Hnl3s6VOOrNPQ5itlZFV9KnkasyoSfDM6MF3OIjUCbMxaRsK4Ve0WOAtLyNjftx3Dt
         P4bw+n8ZAwcFDRP9WFIKmGRMzZRMJZSf7FHAHY231yrQ4q70D9JGdRq6evpIJKTiHnFn
         jMw60Kk+esvfJyraXJfZ7mHFOEPxSiul4mC3UHmhcFlSXXuKbJljOm+7Xxkbgo3833iw
         VWY6xytLkjGm39UlOhs5xaAVc9o27/zbv4+l6lDCS8rSrAAgTY54aK1+0LKsTlXHOm+y
         KZtDIvFxDgOj0SzvRxCwk0QVz5/54YIhx3Apj9lpDPwo4+RpnhzmoaaTZgoDrKvprY0x
         KGhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768821870; x=1769426670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TUNGnYuQvZC7DS92zYQiiN2dGMEBlKTwjdJdDY2hLoQ=;
        b=n/QZ4A0PNIiZM5Su0LYA5eevDkZxGwAbQth3ijmz4ffEoGPSEnY+JvN2H40Kw22sQb
         GfGkVEGeuUBVb4DiuWQG0o7yU2ZKi9oDwLFeMykBE6BO96kv6PDr5FDdvqr1gTotW48o
         DNZvVZn44tqbBAj2H0E8+9DkzuKGGc4Y2VDi4gGs03Qb3SNyvsj+jM5bNODFEiCm+AFT
         traNUcpBrfma4OOPdgGcBHFEvKZE668qZoGUC60NbuRFbdKhA6wdKqMzPibmZaaa2aw1
         nZ63JDSkvhDh2hz9YlbKa8qtQwjkyWfCPnw9CZkPaDNMA6Zam4o1c6nkp54uPr2bGwiF
         Fi2g==
X-Forwarded-Encrypted: i=1; AJvYcCU0XbjRGD5erecoPtTLT361Q3Wnh6Qg/IukPRzzK7Gu9DhLwvbcVHQg0USGXP8fII8f3qk7ThDdY1IMKf39zw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxipMKKO0sq51i6zOvaPiFW0gs5LlTZZsr9Fz8gjErUj6ayc48z
	70O2d+BzxMWVJ9vCT+0G4XRh6x/3Ly9djTvBlrd0KQHVR4A82VpYHyODT2hSx/EOPXPjrLfEfR4
	8TG5yYlDSeGrlhf+oxoxy7ehzZppIohwRw8sJweReq235ZeBtNwVQJQzcgI6k8a1E7TToJofZG3
	w=
X-Gm-Gg: AY/fxX4fheUaq/M5Cm/gmtUv6+WrOCueAQ0LW8AwJxFav2+O8Bt9TC+OryxgT9oi3/s
	1Q8qPpwKWumy9HhyGCQHJapvpIDo8hLchvLfwVh/s2z77lqfq74i+Kp0lcrNXrKMYI64SJD68wL
	hUDkPIXBLPNTO27czw17p+oS/Bczt6De59n+4lQo29BdnwfrewGlAb6JNZfY2wTPw1+Fcc8vlLL
	wumMh0Pq5RdABnJ+M/dNIFwYYLfhVI5plr509GOvaLxf2WkJRx1i/+0ilMS6/0CRzaIvnSmFub4
	44TkXycYAB8tR02a7/rPilYzON2apJ/hz0Ha0XRenRE1Cn9ss7DYS9hswDReoqjgZi3wxb+hKKN
	8SfVe5SGY06/odoR0TnI3N4nGxP32DR5jspVUahFaqTYwJBXqMVPfgXw8lGb2TTIH6yqSzT9opa
	veSYJbkIxwo+UZh+0tgeWvqUA=
X-Received: by 2002:a05:620a:40d3:b0:8c3:528b:1b10 with SMTP id af79cd13be357-8c6a696323bmr1545282285a.90.1768821870223;
        Mon, 19 Jan 2026 03:24:30 -0800 (PST)
X-Received: by 2002:a05:620a:40d3:b0:8c3:528b:1b10 with SMTP id af79cd13be357-8c6a696323bmr1545277285a.90.1768821869747;
        Mon, 19 Jan 2026 03:24:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384fb9ab8sm32747931fa.48.2026.01.19.03.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 03:24:29 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?UTF-8?q?Ma=C3=ADra=20Canal?= <mcanal@igalia.com>,
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
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 00/10] drm/connector: hdmi: limit infoframes per driver capabilities, second approach
Date: Mon, 19 Jan 2026 13:24:27 +0200
Message-ID: <176882185857.86521.18172781461760523152.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
References: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: 9moojuvw8RpBwvFWtPk6xzVwx95f02fK
X-Proofpoint-GUID: 9moojuvw8RpBwvFWtPk6xzVwx95f02fK
X-Authority-Analysis: v=2.4 cv=c4OmgB9l c=1 sm=1 tr=0 ts=696e1472 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=dLs8YEEMlrLrhmPZdm0A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA5NCBTYWx0ZWRfX/uzWfEJNJO3/
 Kgkw2es+12NCnfrrUcMIF+4ysyu/LLALjEhdv6ROD2CgLJWT/kLVoShofKe2m3OFiCgQSEqtE3j
 LOfXuEC/5yGFNhbZACIKAr6xpFZy1xqSRZ2aTHBMnIY1CknwW+IRFfHFwX1rzlJE9huS0SSX1Me
 PBOBhlvnoeL9wYU7aRwIgx0ldxWWG86i+ej0IvbsPsvGV3qnN2BHBb4Ao5utaNpheW4mYdaeFqa
 qXt5LPLSl46GRPSq6Kv6tnEJmLOsCq3s/1yJ4dXPwo7K3MqgrLWgVH/0epI5+AYmClTB7T5wQdD
 L8ZmiV21Sm5IPL5/sF89KvSE0UV5Z+cow1I4Ot+aV58Z7qvnBCuMNSc7ve8PP+fWxdk3nqHxPrf
 2oLJ+OfUCK5dhDL2j8JhYU8fCJgT16P4DTXezg2GtTKWr6znglKsFzZlNNQzzr/06mZsPBF9DcI
 S3AnFMh9cBi0X5OKLOg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_032436_583109_BE4EDFD0 
X-CRM114-Status: GOOD (  15.58  )
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

On Wed, 07 Jan 2026 20:14:57 +0200, Dmitry Baryshkov wrote:
> It's not uncommon for the particular device to support only a subset of
> HDMI InfoFrames. Currently it's mostly ignored by the framework: it
> calls write_infoframe() / clear_infoframe() callbacks for all frames and
> expects them to return success even if the InfoFrame is not supported.
> 
> Sort that out, making sure that all interfaces are consistent:
> - split function interfaces, having a pair of callbacks per each
>   InfoFrame type.
> - write_infoframe() / clear_infoframe() functions return -EOPNOTSUPP
>   for unsupported InfoFrames.
> - don't create and enable unsupported InfoFrames.
> - limit debugfs to provide supported InfoFrames only.
> 
> [...]

Applied to drm-misc-next, thanks!

[01/10] drm/tests: hdmi: check the infoframes behaviour
        commit: 7436a87db99d57196c49d10de35f41531993d5f1
[02/10] drm/vc4: hdmi: implement clear_infoframe
        commit: 3a4ceb89a9723088615ea1c960fc589f87caddb7
[03/10] drm/sun4i: hdmi_enc: implement clear_infoframe stub
        commit: 638409979c5f7d3155afcded67532003e07a7d0e
[04/10] drm/connector: make clear_infoframe callback mandatory for HDMI connectors
        commit: afc399f7a5ea7bf405b2ef85c7470529b1a9e47c
[05/10] drm/bridge: refactor HDMI InfoFrame callbacks
        commit: b626b1a1c9ccadd8861870a2a450f02e0c61ab88
[06/10] drm/display: hdmi_state_helper: split InfoFrame functions per type
        commit: e802c783be94bf71541a7e2ac8b1b5486aad10db
[07/10] drm/display: hdmi_state_helper: reject Audio IF updates if it's not supported
        commit: 1d8847f457648ed4932019dcd3081bc27bcea936
[08/10] drm/display: hdmi_state_helper: don't generate unsupported InfoFrames
        commit: 4fc30c2c5c61db88e3d6644bd3dd2032ec4bee06
[09/10] drm/display: bridge_connector: dynamically generate HDMI callbacks
        commit: ae219fdc952c315182b471f5aa71b379584b70ca
[10/10] drm/debug: don't register files for unsupported HDMI InfoFrames
        commit: 5a4e4e30f6dc4d2a68eec08257128906572f3346

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
