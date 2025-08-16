Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15ECCA0EE6
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 13:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIjZUZHX5GzTvAuhdZt199AEQn+5Zl4Ey5YBu0S24WU=; b=RIXRjtYhI0aIqo
	CyGBwRuZorImFQgp4Xuox97jXTKWqGTRaoe240H+dCoJULhLUmZp951ajU8eKEqiZsEZjhtRIqTFj
	+Nm+eqkxK2PPRJoi8+Za7xMrYj0JJb2fsXPEMvOvz4FuDuVYPb3PSG9wjBavJc6QfYZXPgpSmslUo
	YbBMk220SvOrzK0RMs12SZXudPD3KQFdV+iM9f6A118y8eVnhLPK7QEeeR1dDXYSfAIj3uwG5KwVi
	SHXXx4ouhMqHDU3Lc4+uTuuteZzgUDmCBhc/09MC8/oj32+OEuz+729vo5B3omE82XcbUYZgnyvVb
	uG6aDAM7CUTEH2eev+3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGZg-00000004fQK-0smA;
	Sat, 16 Aug 2025 13:03:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGDo-00000004cnH-3zvk
	for linux-rockchip@lists.infradead.org;
	Sat, 16 Aug 2025 12:41:22 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G8x2pF001735
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g+KCHHTqRR+QvQr7TO6S5/RPZnrNqLEy6fhDbfe+NhQ=; b=pgn1liOc6Kjt3D+7
	tK3LPtR0cFhpN/7UXzrPO256Xo+Iq6k0LLE03rje0GKKYeZBZKTxh2VG8xNXmaTy
	Sn6XScwZs6acyk1pWW/4zVXFg7zdAtJ5dEU37hrpZzIafYiunQNvSjgXkrkVR0JO
	eZwv7UYpWnkTTjrduGBf/1Ojg88LzHiOMisKsjjgNZDDoFulaDUm7BdzaQYF+EU5
	CT5DOv56rPRULdo8RuNx4I+p7pXc3RGffS8h0vgC+Hzh0JrcStyjuaY6kR7JubDY
	ExBTRhgfDiseTsXlx8X8n11pc5+A8GTh0u01mvJr9/k6xSwdd4jjxruWWUk4gGWX
	2tbqeA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxt8qy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a88de16c0so60428866d6.0
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 05:41:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348079; x=1755952879;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g+KCHHTqRR+QvQr7TO6S5/RPZnrNqLEy6fhDbfe+NhQ=;
        b=Uo0pi7iq3qv0nLkSRYbjCXcg2qtaVO/durWOKSfN++QOVuepuxAUdQa1UecWNdX5Yx
         1No9mTDlKYI+DwLVZ2qf1dD5yjYa0CP4kRb48/VqNhE0JzAbmAdXRP1kD6mdi/Ruvi9y
         iaFx2X3LXH0wRFxQSfM41s+XJrg7fyfm9xcK7ecCpLo+0l/PuF/ImB+SuqCsEwiLEVgr
         Uxwg1R86X4R/zn2Ri5FUTpNH3a0RQvyqpe0XvtSVThYeNknIWlxMwK4z7mkZA6j8MYS3
         B5IDBIdrOacskF56ATEHzTQ2bsx6JjFoa7xOxT7pZKD99a1n8ARSLciUxleo/ZZx7+6y
         iViA==
X-Forwarded-Encrypted: i=1; AJvYcCUXoVXyDgdFAoHWzKfBMktksNe2ILmw2ZPYNHKoPVpv9ECyPlNPSucaeHFS2dFCSJiI9hKdL5k4AB4bv9HYCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPv0kO/5qUA0wi9FZocDP+p/10405zK7NpyxysXQsFzTLsBwTn
	0zEuSK0MVM7v31QLu9UKT5SQ9McDGY5CO61iKN1eHvIH8kAcGxz4IjZAHNpWlrrbsp+MxQvpP7z
	k8z12TocbqUdhMnSYrwrmc5B023mxVRfgBDNV9x8KIX1w9ulOi/1ChUREwZhJIEqQnG4IXIEvI7
	4=
X-Gm-Gg: ASbGncsGFyvUJlC5yaqAgeNqIW1RkPZO8Ye7oSu2JswOeXVTrhKk8WGAeN1rzMlP+Gf
	k/i1RQv6CtH2f0Mn50UAdPXxNUQi7S+BDemE/dthquqdVim7B1TR9mOT8UXIhO4gIxj6uXytELI
	UbFjizESPKvosi7uAJK38gx3juTcSAzFbWCegNM6VMWch9foiUgYQrrDOHK4TMMAHw0XUgKQJT9
	Q4uh6HV9q9qRbb32HmfJsSkU6Z3qnfG1vx3D55KdLw/e+YQM4uMLBORrTDM5h4NsmZPhmNzXXKp
	5AkHVUyRdddE406KmvB5JapfXL9XAYRK6RRdFSjtxYpY8VFqlMnxEWxoVjiCjZ8g2uY9d45WAtP
	yliXZKeaANUoJpxvGE2UdPMEjYS/kQF9ugC+VG7XSLzgr1qfXS3cP
X-Received: by 2002:a05:6214:1d22:b0:709:3d8d:5c2c with SMTP id 6a1803df08f44-70bb0618468mr24914796d6.32.1755348079185;
        Sat, 16 Aug 2025 05:41:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOQL6onlKjHcTQTSZYwcPj2qboHayn8rKRBdtJHr/kNyKMVVa+u6QH81eKHnsSjAYM+ZfZeA==
X-Received: by 2002:a05:6214:1d22:b0:709:3d8d:5c2c with SMTP id 6a1803df08f44-70bb0618468mr24914666d6.32.1755348078746;
        Sat, 16 Aug 2025 05:41:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cca21sm856554e87.104.2025.08.16.05.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:41:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 16 Aug 2025 15:41:07 +0300
Subject: [PATCH 7/7] drm/rockchip: rk3066: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250816-drm-limit-infoframes-v1-7-6dc17d5f07e9@oss.qualcomm.com>
References: <20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com>
In-Reply-To: <20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=916;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7eaknZdIIVgkzyGpeqyWY92kXnNZwGkNmo13tFbwgVk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBooHxgMHi4qTkGU45yB+UntdRBVmKZr+x/UsM25
 LEGEgGfYbmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKB8YAAKCRCLPIo+Aiko
 1djgB/4wOmA1OtnxVdCPZ8Z4di39PIjrPkMG0uQmJI/t0Zc1l8LN6lav06X+zI2KDVDqJtxF2NO
 g8QqOU8UNZeo/kURELWxqyJZzOrWgG4qXXEA/4nBe57GtgK/uBOASm5cvxECJmXXrAsl4xFlcdr
 84IRMNS5lpy+y6HeswpNMDsppcEqals/0nvB0xhbIFKM0VHF2eqBD3sWZiaR0h84BPiU6vcvvbD
 lBsE0lzCSfEp0EC2XQvwDi2OJBLUdr6oBSvcad90o7e6CMWks5r49JFQ3pSoeHlLXx9875g9neu
 Me/+6Idd77ROmdlT+vKnBkOG3AAYvWoynfGMjwl6WnS6TzXc
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: DUIh-vucjRSAw-DYfiKP6kEG6SHfMImP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfXxuL7PGC+4SWX
 MqYTTOSR8bnoXS//r9OeysNjdLz9ZP67sBtiW6b5HHJph7KmSsgn3mgit/aF2HZOVhsBn43CpHI
 ElYur0E4/IsZ95/Xfb6B13v8x1myOnquyysvjqdkTv5TrNuePn+YO05T1EemJW/pJWWS1k75pEE
 ukxTqrWe1dhshp+7PDEhjfQzcnPaZpAC3l/LcqMFfb6FxXSq79Bj7W1OmENcFrZOuXCdajqp1Kl
 pJQQeXhmyu5cX9hEZtdNYUBCaylz5HURhJbDsXATdhJr3XgSFq55/fOkDwJ8KKM5FS/joKM0uui
 yV3DzTtjPKpPzUzN74z8t6DeJO5wBKzvUTvr1IAes/HKYgnofKV+M55mMGJPhUWsVuBX4/auGL4
 SniFHs6t
X-Proofpoint-GUID: DUIh-vucjRSAw-DYfiKP6kEG6SHfMImP
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a07c70 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=iNCKscWTIkh_2y45CzQA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_054121_075211_2CF69B47 
X-CRM114-Status: GOOD (  10.96  )
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

Declare which infoframes are supported via the .hdmi_write_infoframe()
interface.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index ae4a5ac2299a93a49f87df7604752f6b651c839c..75bf9a13d8cde1471e8b7e8a8f5f4c0457dd0a14 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -696,6 +696,7 @@ rk3066_hdmi_register(struct drm_device *drm, struct rk3066_hdmi *hdmi)
 	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	hdmi->bridge.vendor = "Rockchip";
 	hdmi->bridge.product = "RK3066 HDMI";
+	hdmi->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
 
 	hdmi->bridge.ddc = rk3066_hdmi_i2c_adapter(hdmi);
 	if (IS_ERR(hdmi->bridge.ddc))

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
