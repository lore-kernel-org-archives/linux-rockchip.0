Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5ED4CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 12:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwgvOy2jmKYiSFgg0IigIGYJJmLAHfBD5nY17xCR4xQ=; b=d8R+Scg0w6jM3G
	mFkEk9h9fLVCeqspsmfvUbnAqLeYt23OfP5Q14G7RizDDCLUzYTOm0gks+R4an1YVnx+ds/av6wEx
	G0zOQWlr4dJ+QR/8oeU9SHCgFnUgqS5bBLSxnsE4Q0QZWj32qI4YIMD3WUNbnk93w3Gk4ej6YqCLc
	NDEburXXYr4TIW99EOT6YsS1chssnrUNOLMQBuwkgrax/do9cjCqO/3FzAKcPttqXdN/xW5c7b03+
	n/1/f6AlHVafDm8WP6USkbUAkuGpl9AsckvATrsm4cNR6bj+Ca46+H2hFG/3+1khh7ccNQ9EBliDd
	aTyVOZ/Jhelibt16++rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGOi-00000004dju-2KJz;
	Sat, 16 Aug 2025 12:52:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unGDi-00000004chk-2eWf
	for linux-rockchip@lists.infradead.org;
	Sat, 16 Aug 2025 12:41:16 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G3lFEm011348
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	g+DN1RQ5iWFy37PJYH5vMr1yt3EhNBuEfrKEgtBjJ44=; b=XmaFgEnygI3wpB6k
	X8YbBP1SJiQ/xkDQkntP14wZ+7biVKQCkNA8IH0We4vdv2/GfwwPzIpsz6fz6ETB
	+O03PMpJ1aMKPGxyCwCW0rd2V5VSoh0mwxrMU3Es4j/hVkSdmoA6JKzq5akntWR0
	OHQUWL6c6JJDrO0EpkdWcViUAgSfX8seGvV9ymg6B0IsCAPDZPMS8/HMkeIxX4zE
	B/LUL6hW/Axr6Dpc6aVb82/4eDVSEICbiyQYqXw6l1H357E/zV6Z4kX+sCeDg98i
	NNSLf1TCdsLsPVHC0lBmMHrHgpSt0GZFhsy7Ingh/1DSQ2zj/TkAHK5Cp6cwyhbU
	8sgcpg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jjc7rm1m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 12:41:13 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-70ba7aa13dbso29677876d6.1
        for <linux-rockchip@lists.infradead.org>; Sat, 16 Aug 2025 05:41:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755348073; x=1755952873;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g+DN1RQ5iWFy37PJYH5vMr1yt3EhNBuEfrKEgtBjJ44=;
        b=ClXb3UvR/5mMoLjpFEW9ZP7IPcdWPwCPSKOb4wcxn1Ir58LH6OuG2bChMxbNejEyQj
         O9Z0xzG5qcsgdtzWc+v0GkBn4kzY5TgEkpMa0qX+qkfxheQUhTd96mguQcj5NwcOonQg
         2pJgqTpwSiIreB6tOdqYuaLXaQPYVuh3UOwN/cmz/ieOGwru+7VDUxrg9C6JvqoJICi9
         mchykzOqpxcJQV8BoRGDTq7bjzUIFocd3ESE2gm3WkA3r94ICoiMRCjBhZ/Rt/i4fp9u
         iQBP2b9HaXxL1pE0xXQRTgfHHWwRUoUlChceIY17feXOgR8An9guAa0jtEFXEJGyfVQg
         kHRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUM9yTvRjF3LMFLbq9TrrD3MWfK2YXUMvaKdV97OWV8eo10+BdiYrpCz18zk8ceYEF6oo+sL6uvIwyzBYx5cQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwMp99d68wLhHKGGQgqd0joOFo7XSHhedJjtYJWLYMyyBFnbqRy
	tMnsvyoI9JB7QPXYZQcQfXavwK7igXHvplR8kzsEnVC7YB6WB4RBpJFoK7b1OHl233TSp/Nxd+G
	6Um1B8C7BjeZ4XXtsc+v8cDmsdonYiTIw/8STHXidiUFTK6TC7H6LqfowM4+eP3hkPM9MgXsjZM
	M=
X-Gm-Gg: ASbGnctD9WlAKM6sO++s8v8YSUSz9w/Z+58oINS7yLxvTe4Y1dM1cZJcxqTRVNLe/qr
	eIKNfXM1fBlrvS5qTsrDWxQ4OPsINoMcUmFzJX7jCyaq1ocTq8PDKSvQ4WohkoYYG6FlYVaCDEh
	1cd+lg88HaEUSvnsntHA920gcOwo/BVqwUzrueDNmbKygyrt5BHwLTKwo8T269gB8V0Bn602rHq
	noba5q7uPpMiEvYhlKne2S2LI+bM5tMJuxR8J1UbD/4EdVd4bMkZLCH8um9Qd8c3kt/B0v+/2wm
	UmWuEYABbtA6uArVr6vVgRWk0iDSG9CST6hd5SbG8BS0999ROTAUqnx8Fz/RfS/yersd1pLJfLN
	ni0QpAEXn6uAU8BXQsouzUl5p7SBOxrrUPjq3ZB2t5Gh4wvlticAa
X-Received: by 2002:ad4:5945:0:b0:707:77be:fc76 with SMTP id 6a1803df08f44-70ba7cae369mr76312446d6.51.1755348072715;
        Sat, 16 Aug 2025 05:41:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAdZSpkUqvcLouYBz/hMv6ITX2aCNjDHlkgL/LzL/FzF+yIDQWC2R9yzAGQtiDF+Yu7M/Svg==
X-Received: by 2002:ad4:5945:0:b0:707:77be:fc76 with SMTP id 6a1803df08f44-70ba7cae369mr76311876d6.51.1755348072153;
        Sat, 16 Aug 2025 05:41:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cca21sm856554e87.104.2025.08.16.05.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 05:41:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 16 Aug 2025 15:41:03 +0300
Subject: [PATCH 3/7] drm/bridge: ite-it6232: declare supported infoframes
MIME-Version: 1.0
Message-Id: <20250816-drm-limit-infoframes-v1-3-6dc17d5f07e9@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=830;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=DmbRKJHk5oRAB/lPzIwmmFkOQ5dwAtGETzJHeLHHKjI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBooHxfulVQQEIFrGQv7TVF5i0bGwohs7DjMO5Bi
 27ClR21i3OJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaKB8XwAKCRCLPIo+Aiko
 1XCZB/4qvtEP/SQNDva3+3vq4krCw9kSzxLGdjGdVw/tgMeW5/3T6SWI0ZXg5Kzt/5ni4P7yvSm
 EDPaT/urG5eS2xX8/WOivyKKxBeSYQv3VWhHqlDBqoOQJW5OkQLPfMBQbHZtIgKoQ7aJCHwTn9d
 HWLCGARgFjYGvtmShrBjydeV4yWinl2EO2WNM0jpELO52mnDHDl/KzegdqSjmhF3DRoNQy600wy
 5K0K6W6ZUvgE865jSkXskg/ayPbsbVVzkYfiqktz3u+K+JXAD4Xf46u7sWS0OI7QNuwI3m5tySd
 nDDSA+Hy4cpHKnNMgVm/ZTHa+IeV4jqqUxQWFvasdgj3YQju
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMyBTYWx0ZWRfX+1zT0Ljp4sNC
 /yjiNjTnlNWbhkIhnIVLvZoI82sgqLZnyc8XMS9hu2//9UVl/jPNvcZYVfk2kWkTlsV9DhTBeLZ
 /euRHabHJJx4oRuZ69/Dhnavhf3JRiG1TfICtJSc93bPU2rDICVZFN757B2rXgDF1i4v2u2+Y3r
 mrRPcse7L4bNlad1btb6Icsexgz/oVrtIVR1SMABgVpm6u71nbImey+evhGmClbc3e7hPgA6H0W
 m//qWhFKT+dUGLViJbiHI4YfyKv1FHQQAZGJh5f5FggT5DjbAWffCiiDakgmq7hrRgu5+8Mu9jx
 PumwqIx32iQrtLcZAt0qj02R1J6RD87FWnVPPuwEU1q1MMzDR69NIWIEVv6nFvfNeMf+ND8Ypdi
 pglN8tF1
X-Authority-Analysis: v=2.4 cv=c4mrQQ9l c=1 sm=1 tr=0 ts=68a07c69 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=0nAs0j3DZZh6uBALfPUA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: jbKWQOYg9QXQRmK8tTLk1IiaXHrQhOwu
X-Proofpoint-ORIG-GUID: jbKWQOYg9QXQRmK8tTLk1IiaXHrQhOwu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 bulkscore=0 phishscore=0 malwarescore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_054114_798918_6545DF5A 
X-CRM114-Status: GOOD (  10.93  )
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
 drivers/gpu/drm/bridge/ite-it6263.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/bridge/ite-it6263.c b/drivers/gpu/drm/bridge/ite-it6263.c
index cf813672b4ffb8ab5c524c6414ee7b414cebc018..b1956891a8388401c13cd2fc5c78f0779063adf4 100644
--- a/drivers/gpu/drm/bridge/ite-it6263.c
+++ b/drivers/gpu/drm/bridge/ite-it6263.c
@@ -875,6 +875,7 @@ static int it6263_probe(struct i2c_client *client)
 	it->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	it->bridge.vendor = "ITE";
 	it->bridge.product = "IT6263";
+	it->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AVI;
 
 	return devm_drm_bridge_add(dev, &it->bridge);
 }

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
