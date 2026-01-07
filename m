Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C441D0D15A
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 18:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Lzmvvl5WnqADi1DTeF5UlBZbL/DnlEHbJqb/6vVrpc=; b=wV25iNW0ZoWMs1
	nYdguyOCoNigMmpqpTiGhDYyIDoxMWTxqaXouxuZc8Co2kO4eWxxuUOxHDszO1lk/BYEShAKb3FPP
	PmVR7AH7vtukExRV1zeks9a5qFx4CiWMK2bGqc7++ECrId+gwNL1lSmaiHuoD/dksnRiyUArQKIsj
	sOjxSeBlojs04BVQqUz6GFxN836jWKPe4jj2Cplw+LF+M6aySZcxXIFZ3ILU3jdH61AmlvbSJoIFx
	mSfRx/QPyKBaRYPIU2mHlGgqJBfpc43/sHK/3rs0tFwHW9bAeNHTqGl8ota3wXCuuO+duYgP07phW
	c394zzK7FUZBazgFwfpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY4s-0000000FS5v-3sLh;
	Wed, 07 Jan 2026 18:16:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY47-0000000FRW9-1447
	for linux-rockchip@bombadil.infradead.org;
	Wed, 07 Jan 2026 18:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=JPs6IVrvHQYSHaamgUjrxzM3vyFi8BapYIQ1hzBD3c8=; b=JdJMM+h/9wSi/q3FfogJ+qc21S
	hd8LFsMRmyiAhBnlGothvGRpO9x17JTM4x/Dtmvf5subwS3N1sR2BzzXNDSD1VDHohlkG8OO/1NFv
	as1jIbX0w53o7HXTEnwAqDUdLTgLvNeXJuztyfb4lOkNhH2i4nlfQZPDiD7O9ISqRhQuDxvD/vHaP
	L2fjV0aoh+yHCJyXWa+wC4WYEyyI02G1RVmiJ0js5jEhxA2w6GI0/zDV0CgQjP2sMk9nUvrQ9NYTn
	J8N61cMsP5TZY72lbWl1WogPE7N8cblyhfLFVp+dYQ7fmD9moNl2z5REKx0NP8roU0o7+t8PB4/Iy
	bTAvdEgA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY42-0000000BtJ8-1Slc
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 18:15:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607BMPgf3152254
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 18:15:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JPs6IVrvHQYSHaamgUjrxzM3vyFi8BapYIQ1hzBD3c8=; b=OpUmQbYb1j/NSFYk
	Xft3zpHcpuFEAv3CwOsCEDm8TTZut6f7fktTiYhP1reTavXR/x0cZtP0e3AsQjk2
	Kd4d6fr83beQDg7xLfrwhBhAE1TfPfdQLKTzu0NA99ht3KT3l1jDTgchxxzV/8nA
	msygtyBCiUhJg4YwVhjC0/Yw4oEbkJVb5gT29FunL44ATkzFsPDvFDPjYgCoR5ls
	J6Ghe+PxRcaqeJPPU3PMEpgkcVIcCIzeIl2l+M80+JIOz89logld2RC4jfJ53ZQm
	YKlxv/l+pU+RIUbbZPSXmCUkNA3IpMNQ3klIl0c0i1wuE62sfSsCVDo1NuIrb25t
	HacGAg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhpjasaa8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 18:15:20 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b6963d163eso590597085a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 10:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767809720; x=1768414520; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JPs6IVrvHQYSHaamgUjrxzM3vyFi8BapYIQ1hzBD3c8=;
        b=JbysgJhF39is3Y1I8hL/2E1k6EWtrxrOl//tWJhS1Kx2lqyKeBDyUFWGsPM6lSUetG
         idLVqjNwS8HBYNh0U6ePZP5cC0ELRIlAyz3EY1PLMJjpCF7dqj3dmzV16HzCH9Lh0p7N
         JwXUuCk/16OaOS8OCUqasl406HmZwkznTZdDNAAEiW0Goxk8c/Q/8usgdUVJ+CDnJGzT
         YQU7mD8FoWOFp8TPbbnGjbtlshbDvd1YzpbbBl6wGkwJlvTZLmDRu/brMbVEoGhZ5Hk3
         t9Jujs/FiZhQ60EvD5WWTyeOqZLlvSugYy0Cz11qAkpC7Q6cRMOwNU4btxuSfg5zVARn
         Oo3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767809720; x=1768414520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JPs6IVrvHQYSHaamgUjrxzM3vyFi8BapYIQ1hzBD3c8=;
        b=IO4AO7EFNrF1N5JbDfSEI2Xl7vhuqtyqOLUs491vEthKjoTS6H3xAaDq5qUPfUsGRD
         pkBYMkGoFMVollmg8qANbbkI+jQAlsZk/NGAd1l3YRYxY9su0/CIku5F3/UjlfnlK/dx
         7+oESL1dzfee6m4Q7lrcLmWnDQJ95Dihug/81ydShwHPmv75bM4y+uMYYbJQnoUpQZxR
         UCCe6ReQwF8oRFktDduYq0dIeaYS4YQK5gFH32BE/5FI0MYWHeCw0XtTVi2xQiaBEvJi
         ysa1y/Sjvp0mUhLu0kf0hGQeOJaV2A5a9Jv4kmyZjgZwZJpJ41zfdW3dTNFVdg+z2osN
         E+iA==
X-Forwarded-Encrypted: i=1; AJvYcCWaVyHSNpJRYLi8CjqUc6urPG8L9Qd7Bv4GsHDTa/v/fSVa0LH3gJED1+pr0baVBcAe+n1cwbD8xwKsNobHwg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNKXOTZHniwRTCMVtApkLlBjIdFaGT0o/C4As4hoIsIbSN8s5s
	vx7JE6udXp+Y+HmF6e1fVuv+jAm2AtOKUthqT0hA7yxIuXNrHi8myaa9AXKWwn9tWcKHKsvJ9iq
	bV5q1GU599NSyujMqE2S8HCXWbCfMcQ6SIL0UmCNzr6me4BC3/Z70EaeB94pIbW2em6Iiax09ye
	4=
X-Gm-Gg: AY/fxX6FTbB1aH3jXC/TRuxuooKSuSlKHRE0TAifmk409vbBPnWaruE3nRJMhGXGMFk
	00Iu1E9krymrhsqFQ+s+2iV2iAAc0ERLEsq7YOuWBdpmTo8Y1j3nXzCltCy6/pOK+8GSoFlhnZF
	JZ32RSslyeZxx9rls+0Tb7jLkgL6DBu6lixg1oZnEYe9sg2vEvnD0cNeBK/diwg9jFt81N43L5b
	8mpzbba6/7UM0wJM/uooCUcWWZk0wxD8T6Ztvvw7m8ZEYQWnew6As79ubpiccPrl5T0qEWF03YI
	xS5oV7HXC7fKPXfZ9q+0Ji5d/tE99bL05KBM3S17kjaaCSuaBA7TP+1fD8NWXa7CTWTLCmPgTxy
	A3skGQfaj0Ivajcwuh9nO9vUgLnlVGvCCfB7qweFXNYT7GeLT/bs+aqeY2lAgrIQtmquX5eYGGH
	N4AdrV0BS5+3DjwDW8ZSV6C+U=
X-Received: by 2002:a05:620a:2a0e:b0:8b2:f145:7f28 with SMTP id af79cd13be357-8c3893a26a4mr408414585a.33.1767809719408;
        Wed, 07 Jan 2026 10:15:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUjHXe7uuYeZEqUMuBR5K2kia77K+Kj14ZWPxBppIzS2JiKcdZruRDku2629OMG4LVhagWmw==
X-Received: by 2002:a05:620a:2a0e:b0:8b2:f145:7f28 with SMTP id af79cd13be357-8c3893a26a4mr408404785a.33.1767809718716;
        Wed, 07 Jan 2026 10:15:18 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d6988asm1436884e87.80.2026.01.07.10.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 10:15:17 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 20:15:06 +0200
Subject: [PATCH v4 09/10] drm/display: bridge_connector: dynamically
 generate HDMI callbacks
MIME-Version: 1.0
Message-Id: <20260107-limit-infoframes-2-v4-9-213d0d3bd490@oss.qualcomm.com>
References: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
In-Reply-To: <20260107-limit-infoframes-2-v4-0-213d0d3bd490@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
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
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6894;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=j/nplc82Uc8n6ck55GeREmF67vUj6ZFIListkklkuXo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXqKlQWZc4/P6jahK/bWP1w2B50/o9TLzfzbdf
 aaZXx2QNIaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaV6ipQAKCRCLPIo+Aiko
 1f1FCACoKLk12kYaWdypMvDCzHmH9N8HbMOWbXMZlbluaF79NkCtoNgDonKnKHxYLa9pjqgX17e
 Rvd8pmDpdv2MOg3WP/GMXH5pZGxRG01FGl7SBtEPw2/YXYEskTFSEq6fG4I+tv8X5Ly85MqO9Lj
 9cHsDJOJq0hBFlwxVPg4mvAka59hwWsW69lgA6euCJbibpFCioBMCghtCslqHcxkjZWM/PUGgNE
 Zgf3lcR3ZdkGqSnlQlrowNKspjiwnAe/Q7/uXCEP9N6R5jyGzXlQUqTGFKBPnuzMfXGuvLMm4dg
 RY6CU12eS8wodgZ5W3Ilm0fcBuf2GFwlR9F7fNEmqQh95vO+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=efMwvrEH c=1 sm=1 tr=0 ts=695ea2b8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SmQ2dRXw9u10PpR7_9MA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: VslgCLRhTLKzX6lr-7iC7xP0Ewd0A8kk
X-Proofpoint-GUID: VslgCLRhTLKzX6lr-7iC7xP0Ewd0A8kk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE0NCBTYWx0ZWRfXwU5DTCWZTkPj
 sxnnKN+aw6STpjNBxD/QbePVGSx7WrbXePgejUAVfQAIM6f6X5m53EcqqQsLA+af6T/03tjT2wG
 cu9IlMH+TTUmtYJJdLMJ19SoGRJr2fN9JaOpkHn5fQ5G7V/zdgBdgOk0OY5MNufe/aqxK1VyBeT
 NzFs+HK9ewhRhGvIuORq0ZtiecYisyYbXAcmqXCYyjRWR6y4sn8ZIjPLrfbjYF5gtfca4/r9sQ5
 hMUArLjmWlQ8sHyosV6catyDdA3r1hO+lFipuUVnLQU7awAKu+4wWqIO5Ybe21dpV/50biKMbu9
 ttu8+6nHbZwrHlc1mnaI90LjzaaEJLTU/raz71zdBUXlXHXwKR3LWI17XQhrKHkbi4pBvLN3z4E
 eFgqI7VYBWHGWEVmzr+ioYR+AP+HjwMcLx/Q3jCBvlv9B2PxU9Hi3QPBWPp5wyI558AeEi8RqAq
 VxFFTKRxnN6pHeQt+DA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 priorityscore=1501
 adultscore=0 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_181522_695246_5E403DB0 
X-CRM114-Status: GOOD (  17.14  )
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

The rest of the DRM framework uses presence of the callbacks to check if
the particular infoframe is supported. Register HDMI callbacks
dynamically, basing on the corresponding drm_bridge ops.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c | 94 ++++++++++++--------------
 1 file changed, 45 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index ca6a72a4cf80..ba8ff113cff1 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -123,6 +123,14 @@ struct drm_bridge_connector {
 	 * DRM_BRIDGE_OP_HDMI_CEC_NOTIFIER).
 	 */
 	struct drm_bridge *bridge_hdmi_cec;
+
+	/**
+	 * @hdmi_funcs:
+	 *
+	 * The particular &drm_connector_hdmi_funcs implementation for this
+	 * bridge connector.
+	 */
+	struct drm_connector_hdmi_funcs hdmi_funcs;
 };
 
 #define to_drm_bridge_connector(x) \
@@ -465,12 +473,7 @@ static int drm_bridge_connector_clear_audio_infoframe(struct drm_connector *conn
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_AUDIO)
-		return bridge->funcs->hdmi_clear_audio_infoframe(bridge);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI Audio InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_clear_audio_infoframe(bridge);
 }
 
 static int drm_bridge_connector_write_audio_infoframe(struct drm_connector *connector,
@@ -484,12 +487,7 @@ static int drm_bridge_connector_write_audio_infoframe(struct drm_connector *conn
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_AUDIO)
-		return bridge->funcs->hdmi_write_audio_infoframe(bridge, buffer, len);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI Audio InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_write_audio_infoframe(bridge, buffer, len);
 }
 
 static int drm_bridge_connector_clear_hdr_drm_infoframe(struct drm_connector *connector)
@@ -502,12 +500,7 @@ static int drm_bridge_connector_clear_hdr_drm_infoframe(struct drm_connector *co
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_HDR_DRM_INFOFRAME)
-		return bridge->funcs->hdmi_clear_hdr_drm_infoframe(bridge);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI HDR DRM InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_clear_hdr_drm_infoframe(bridge);
 }
 
 static int drm_bridge_connector_write_hdr_drm_infoframe(struct drm_connector *connector,
@@ -521,12 +514,7 @@ static int drm_bridge_connector_write_hdr_drm_infoframe(struct drm_connector *co
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_HDR_DRM_INFOFRAME)
-		return bridge->funcs->hdmi_write_hdr_drm_infoframe(bridge, buffer, len);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI HDR DRM InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_write_hdr_drm_infoframe(bridge, buffer, len);
 }
 
 static int drm_bridge_connector_clear_spd_infoframe(struct drm_connector *connector)
@@ -539,12 +527,7 @@ static int drm_bridge_connector_clear_spd_infoframe(struct drm_connector *connec
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME)
-		return bridge->funcs->hdmi_clear_spd_infoframe(bridge);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI SPD InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_clear_spd_infoframe(bridge);
 }
 
 static int drm_bridge_connector_write_spd_infoframe(struct drm_connector *connector,
@@ -558,12 +541,7 @@ static int drm_bridge_connector_write_spd_infoframe(struct drm_connector *connec
 	if (!bridge)
 		return -EINVAL;
 
-	if (bridge->ops & DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME)
-		return bridge->funcs->hdmi_write_spd_infoframe(bridge, buffer, len);
-
-	drm_dbg_driver(connector->dev, "Unsupported HDMI SPD InfoFrame\n");
-
-	return 0;
+	return bridge->funcs->hdmi_write_spd_infoframe(bridge, buffer, len);
 }
 
 static const struct drm_edid *
@@ -591,18 +569,22 @@ static const struct drm_connector_hdmi_funcs drm_bridge_connector_hdmi_funcs = {
 		.clear_infoframe = drm_bridge_connector_clear_hdmi_infoframe,
 		.write_infoframe = drm_bridge_connector_write_hdmi_infoframe,
 	},
-	.audio = {
-		.clear_infoframe = drm_bridge_connector_clear_audio_infoframe,
-		.write_infoframe = drm_bridge_connector_write_audio_infoframe,
-	},
-	.hdr_drm = {
-		.clear_infoframe = drm_bridge_connector_clear_hdr_drm_infoframe,
-		.write_infoframe = drm_bridge_connector_write_hdr_drm_infoframe,
-	},
-	.spd = {
-		.clear_infoframe = drm_bridge_connector_clear_spd_infoframe,
-		.write_infoframe = drm_bridge_connector_write_spd_infoframe,
-	},
+	/* audio, hdr_drm and spd are set dynamically during init */
+};
+
+static const struct drm_connector_infoframe_funcs drm_bridge_connector_hdmi_audio_infoframe = {
+	.clear_infoframe = drm_bridge_connector_clear_audio_infoframe,
+	.write_infoframe = drm_bridge_connector_write_audio_infoframe,
+};
+
+static const struct drm_connector_infoframe_funcs drm_bridge_connector_hdmi_hdr_drm_infoframe = {
+	.clear_infoframe = drm_bridge_connector_clear_hdr_drm_infoframe,
+	.write_infoframe = drm_bridge_connector_write_hdr_drm_infoframe,
+};
+
+static const struct drm_connector_infoframe_funcs drm_bridge_connector_hdmi_spd_infoframe = {
+	.clear_infoframe = drm_bridge_connector_clear_spd_infoframe,
+	.write_infoframe = drm_bridge_connector_write_spd_infoframe,
 };
 
 static int drm_bridge_connector_audio_startup(struct drm_connector *connector)
@@ -971,11 +953,25 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
 		if (!connector->ycbcr_420_allowed)
 			supported_formats &= ~BIT(HDMI_COLORSPACE_YUV420);
 
+		bridge_connector->hdmi_funcs = drm_bridge_connector_hdmi_funcs;
+
+		if (bridge_connector->bridge_hdmi->ops & DRM_BRIDGE_OP_HDMI_AUDIO)
+			bridge_connector->hdmi_funcs.audio =
+				drm_bridge_connector_hdmi_audio_infoframe;
+
+		if (bridge_connector->bridge_hdmi->ops & DRM_BRIDGE_OP_HDMI_HDR_DRM_INFOFRAME)
+			bridge_connector->hdmi_funcs.hdr_drm =
+				drm_bridge_connector_hdmi_hdr_drm_infoframe;
+
+		if (bridge_connector->bridge_hdmi->ops & DRM_BRIDGE_OP_HDMI_SPD_INFOFRAME)
+			bridge_connector->hdmi_funcs.spd =
+				drm_bridge_connector_hdmi_spd_infoframe;
+
 		ret = drmm_connector_hdmi_init(drm, connector,
 					       bridge_connector->bridge_hdmi->vendor,
 					       bridge_connector->bridge_hdmi->product,
 					       &drm_bridge_connector_funcs,
-					       &drm_bridge_connector_hdmi_funcs,
+					       &bridge_connector->hdmi_funcs,
 					       connector_type, ddc,
 					       supported_formats,
 					       max_bpc);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
