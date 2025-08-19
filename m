Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB55CA0EF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 20:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eF6+y5IMznuhhwgFvi9+tMbxSljuc+wXZNAvSS9HWI0=; b=Xp2gGajuh/+jIi
	cZRtupt3vGe+4lePubtMRcx9BuwuHKmlyMWUY4TnZnLSH58vYzftAzx0EU7AcVBGb6biYyDc8ooDD
	ca6h9fvzVc/PRZolCPBIze3XemdFQLQVmI24snc7rZZCb4iDvtBcOcWjMmniXxf8sDOpcENh5nm2g
	GvqaW0g2d5H/2BlUAbRUgLIe0RpLlU4mkL3XkZgvuC4hItv966QBfhyr9V+2orqMOlmr5P6ppsNig
	Qjl0ln+xT7osYDGMQ1n1NVsolwdJ1C8pCm0l4Ebj+fRvFU5erPAs899bUCHwKJEZI4Mqt3H21sPsZ
	Nxhl+PtrnrIgsKFxtfmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoTAs-0000000BZY3-4354;
	Tue, 19 Aug 2025 20:43:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRWj-0000000BM3Z-3QNV
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 18:57:47 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JGhmlQ030348
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bZCDNxT84H8d3+/4n1AbLc028ffeXusnvwh4O3/fxcY=; b=ktGvIxX3+a+kMRf3
	gz/jHRN9U197zjqXpZZ7YZ8G+x/JlXuA2fiSGoRmVgL7WZb6sYQpsm+zrEXvx+hy
	mnspKlHaAJSf+g1dWF3F5cooM9VxiR5yIhQQKfiShIkwmbwV+P0wkbhOPTE3U/Rv
	chQFJUKlx64hG3evIoUM7dFV2TUcd4oW3K7W65bIcDh8yc8dWRW64TgMfRCs1d1x
	DHzm9L3VH+uZzolr8RvK7qsjGhLQPkMbQrIs9r44Ne6FsvkyN8R6YWcLskzKIhGQ
	6dwqZ5RIt41yeqgg+vrBAOTJmkAasRsoJPMBue8blwIb28pTz4uGPnemmA6YF1zR
	Kf0+jQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48kyunwwdd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 18:57:44 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a92827a70so126188686d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 19 Aug 2025 11:57:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755629864; x=1756234664;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZCDNxT84H8d3+/4n1AbLc028ffeXusnvwh4O3/fxcY=;
        b=R5dkM+SjhqZzRhWKMrTtaouzUaDHfZFhiZ+y5Tm1YdehDEFkg4gv9zES7Gp22PlnKp
         f98HXtLEMiqsV31PfO8XCrt8153xda+AfiyuOb+jUuWAapglENBJU5Tv9bNb11vcIKwl
         d0vpmE4/2CCvHGsj9a2X8D67lW2wBF/HZ6d2VxxVmp7XxzUb+vqcfjmx3lXqdz7olsVK
         vXBOhVyVzqM+j1aP7Tnf7mkmWYKO8LUEa69jklh88KTpgzYpEx+ZdJX2CsGDVcRZvAz4
         PSfuet3RiDw99+9kDm2QP1HjQqHULCiAjzkD+rMvdZYEEum1OsonCLszZ+O993/gGfo7
         3qKw==
X-Forwarded-Encrypted: i=1; AJvYcCUptcm3qIudlScWO+jqASdghDQHPUbKPpx/Ei0v/Bo7U+rJnWm1+htgubD4rjaYu6v1mp6+mmXHr13/qHPneg==@lists.infradead.org
X-Gm-Message-State: AOJu0YycCl9+CUqFj8BnnqdpqEjJw5PG5ZxY9iuWDzoqqBw6dsnS9525
	yhbGWw/aRERCfrTOjZFtbf2k7LKD7Sl5jKipKLLrA74OjH4D6VwAd73ffAf+SEY0eqfIQ1oX4XX
	44Q5wmp3e5GBbljD60hHa7V+E/PC25lCtlCp7vQYOF21H60mZRHkuI7MeYzs6xCEBu0q57Crqej
	c=
X-Gm-Gg: ASbGncuJ6Zeklh90rOZHxBnxDYY9QnupM9xLlQUXnnVRS5y5qBQvb2eZKNEcbjfce/f
	OdJcKkz76bBZ3StClUfdw+sk2OL+GuhRrnLGjNL0q1Si1k2MhFSL/+ITPfyYV4dsDJbQNTs3tuj
	B45T3s1Tsw2o1vf69btBGQx7a/Xu3GrIz3v55JA6LJFBtpJV4+Nhr6dMI3NfkDH9fKq5oCakcAd
	KhfTIL7rhz3ckn0plShS1GAbJE3jXKS8dWz7/V4htgx9g4J8H6XrsndI2sn0zdDlhj6tDi3GiPo
	4RsNVU0jNLCT3MsTfa3DoWAY0xU8mPS3Qn/Yr8DekNE7eIv4yMkog6/P74rn1Vu4YTVUscDFGWd
	NZTnrhWuMQ6GvT19Ch/ZoeIVP2R8d1sWyvGaj733fgz5bxYGezSe7
X-Received: by 2002:ad4:5bea:0:b0:70d:47a1:cae1 with SMTP id 6a1803df08f44-70d76fe9438mr1113306d6.23.1755629864148;
        Tue, 19 Aug 2025 11:57:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF43ghZ/MIpeDfbreZXCz6hnP/OCelyHPwjCR6LgbsWovNptiXgvN36/qqCklN5CrzagAqqhg==
X-Received: by 2002:ad4:5bea:0:b0:70d:47a1:cae1 with SMTP id 6a1803df08f44-70d76fe9438mr1113056d6.23.1755629863654;
        Tue, 19 Aug 2025 11:57:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2207314e87.51.2025.08.19.11.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:57:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 21:57:33 +0300
Subject: [PATCH v2 4/8] drm/bridge: lontium-lt9611: declare supported
 infoframes
MIME-Version: 1.0
Message-Id: <20250819-drm-limit-infoframes-v2-4-7595dda24fbd@oss.qualcomm.com>
References: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
In-Reply-To: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1071;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=6MDUGd2gCI/EsaEXrxZU0j17Xf9/Klm/EGghvRMYY3A=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ8aSkzITQ1nce89WS/Y9MI2V1Mk0SPCPC++fUsMYqvw4v
 GepeXYnozELAyMXg6yYIotPQcvUmE3JYR92TK2HGcTKBDKFgYtTACbCHcv+vyLZxnbB1wsbO+xv
 1qo28ix0zo++mb8okuswxyWh/3xVotMKTuYf8z6zjeV1Np8N32v/V9PcMgrOatTnvj/sF8jVbyC
 Yr+dwTFb+3N/bp7jfW6xT/Sq3c0/Xse5fX0qs6ndclFiw9+RtNYmksPWLl/2TX9K2SqclvU/h5q
 FNtS8jTszyL7rlUr/ZNVNMfe4piQT7Lk8uji3H5Xs4V9XPbn94lYfr90v5rEIHdZEvxRlrNsyUs
 nzwwyrYPkkwaZtNT8UT/lMG3vWeEwJDzCw/zJjlUHmoanVT76fl6Q9eXp6kVZ1ff/FOuXldRolj
 qEGp1ane8pidVfIbmfb733k6bVb4ivd9bkcK8/Te1x0HAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: v-JRynapKpXfZgsIYHlSum7fzhYBgdKc
X-Authority-Analysis: v=2.4 cv=N6UpF39B c=1 sm=1 tr=0 ts=68a4c928 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=AMvF8s34Jxw15HKoVo4A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDA3MSBTYWx0ZWRfX38FHrkOJr7aA
 QHZbPv+GFWBKtHx/FEa9VXrpPj8KYTX/5unl6+mmOMISivZiH+aEewCNA+yTocwnYiUo9t2VZ5G
 mf7ZsdWp9DseCV5Vx4KZ679JBFeZw7/xE4+2+H6ykK7I7/CM9Auilucfc3FQG9iE3yiOxdsKm06
 +Xscmh/yn128HoxTfKtiLqJ9GMXXzvtNEYWcSIQcHIpmNttvKSpvyAjPX0UQbfDKj82dC5ECqn5
 54D7VIeXn8A9uOJfV3aGai7KnruN+yZxaBQq0eLGzGOjOz2MyplB4OI/fgPT/qBLcgsogh4IXjE
 f+6X1nT0nmKqkIEcvQIoXn542tY2rF7+ItFFb7kt0e7nuigxSeY1g1YQvJLAG80WWMVwMqTAwei
 4Ws5XZe2
X-Proofpoint-ORIG-GUID: v-JRynapKpXfZgsIYHlSum7fzhYBgdKc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508180071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_115745_996141_890C9A0D 
X-CRM114-Status: GOOD (  12.33  )
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
 drivers/gpu/drm/bridge/lontium-lt9611.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/lontium-lt9611.c b/drivers/gpu/drm/bridge/lontium-lt9611.c
index a2d032ee4744715b88eb66883edf69bab4c274b0..08cb6958b9154dbc516aeb0623a8fb5e4af1df92 100644
--- a/drivers/gpu/drm/bridge/lontium-lt9611.c
+++ b/drivers/gpu/drm/bridge/lontium-lt9611.c
@@ -1136,6 +1136,10 @@ static int lt9611_probe(struct i2c_client *client)
 	lt9611->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
 	lt9611->bridge.vendor = "Lontium";
 	lt9611->bridge.product = "LT9611";
+	lt9611->bridge.supported_infoframes = DRM_CONNECTOR_INFOFRAME_AUDIO |
+		DRM_CONNECTOR_INFOFRAME_AVI |
+		DRM_CONNECTOR_INFOFRAME_SPD |
+		DRM_CONNECTOR_INFOFRAME_VENDOR,
 	lt9611->bridge.hdmi_audio_dev = dev;
 	lt9611->bridge.hdmi_audio_max_i2s_playback_channels = 8;
 	lt9611->bridge.hdmi_audio_dai_port = 2;

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
