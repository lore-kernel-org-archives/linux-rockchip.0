Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44D69D0D15E
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 18:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B97qjs/nFcOA+kj1AQ7VEocIAiY4KPeCawFwKtyls6U=; b=C+Gga5Tc/6oFVO
	Wrt0t0zDa0wef856J31H7gru/0J1f+UTGrYPOq6icaeo9hjgZ6kRIn/1ia8xPhw1AiFtEG+XmioY4
	hbsF5BDM9WL4qjoLXIIQDDLR1WrAxdlThaCbsZ/+7v6V0JLrrOXemMZqbixM9lvm1F3nuNbHdvCgF
	yLN5YzwqP0eUwM6oVHH9wXLhG+y+81Zk2MKYNmWyG3rxew84GgSouCe+N9pzbwEPkU605k7gnmAbp
	2ctlfFDLscPBPus9l+UA8PBZbjYJXAo8dxcC1jsni7UL2H/WnG3G9m5v8vqtfWsT47j8Brn4hN9Ai
	M3DJEsc8yIS/8yTYBfwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY4Z-0000000FRjJ-3Se8;
	Wed, 07 Jan 2026 18:15:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY40-0000000FRQR-33Xi
	for linux-rockchip@bombadil.infradead.org;
	Wed, 07 Jan 2026 18:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=; b=EXl4Mo4hXYT9jDXesVUUHEr2n/
	HL1faev0ns5wYb4Y0nq0WZbYvJIC6yHObNiMPdS13M/Pu1oAsW8NxRkOfGAhEtvcyE+8RyKV+2M0O
	TdLfZuGLxUkkSt6K1VPiGgLceR9K9g3W3QWJBKYK+D3KtA57qyJNs6g+CKSP4Qw2TW9+zgguJninR
	BPXP/tO0/dcskF7+6r+rlu7Bc2GZkAsj2yS8Wsdr6iSL4m7x1m7FG8+30+GemP1gNj1zu4OC4RDbk
	pTPUmfqNKmPWlijRfpXLi3DI2TMLz2ysHDOPerW/SLhms/iE6mJk/yvqicWRpVjjFZQKeHQPQk8dy
	WIA1K2Gg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY3x-0000000BtFF-2wTn
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 18:15:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607H93RN2593276
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 18:15:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=; b=KyrngcOKBiSTWSSY
	izNCCazNvrE8uikK72XmK+Vv0T/Usx1TJnGEi7FoeFr+BCAWxFn5GM7sB7rkw2+R
	xnkxDU2giwWfYxFgRXZm77sSilAwW+XQfLEnbHeNL5YkgC2bF8pOS/2zY6D1p8zU
	ibMfQnY8buGFHBKi37HBa7fzog69JpxFX/4NuXpuhM5+I5jdzJdUKlQP3QuW94x3
	bA1Uys7tKjWqj4sgvnKSkAfyCHp53cZhkuDxbTa5PCwLUHtNBOuNyxLNwnzd34Ed
	j7PZBZxB2W5SxkdUVH/o8ptaf5HAjEgqZZJHE5EDaujMhMdI9SLzwqRb2mU52Aea
	CfoW6A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn291n49-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 18:15:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bb9f029f31so632005085a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 10:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767809715; x=1768414515; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=;
        b=RxYzEtFPfKExQ5qCq2cMptgBbD+9Dc7L7VwdM+6WbABmpjXvlQvkbRX29Q6mn4QNug
         DFk7AKRp54SYREqcv14J5Mf+M6zmf5APPi+nv4UmbOZmqVV09q+m/FpHebR6crJ+F6uG
         VorezakvTl/jaQBoU66ee4cGWMW/hsr5hEOQmTVtIo52PssNZRsRkZ0xsDRY7HLv0/b9
         AlZfE7OSzFAFL3XbZ1vPMM+hfWgrkYc5o00Xfmhw+JWkjzfhuFfiwy6+osv/xMFXuuWL
         rYZB8vuyV9dCosSxaomxAP9VvtMPEm3V1NcHKcQ6PWfBfgAnXKj7YZcqTBRmDnX53d7S
         uj1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767809715; x=1768414515;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ecVHGdcKUGcf1BVa43vSmPZjJ3ubI7MYeuQBBNyE8CA=;
        b=UdNLRW5gscSvLqz8R18PL0tPcCH5eQUZFlQCzOdcd+1Zm3Qff/1kDmkVpxomAU/0KE
         r0jIry2yt25/6HhAo/kDicZP4rsO1yJnTCslC5Tbi8U6JldmR7AX7nohnQ1wvABizPHa
         HF1wNG17EI4Szb2U5UOXte6js+P5bypjTz1TVMkJJU+zQOAaXCbzMLHow/J9NV+xB695
         N08u6lRDlu+bSsCMYkgRMnCZZRC1al0BHQyHjni3npPrl8exmnmk8J2qKFUaFiea8uzD
         P0r0CkG33ramCV1WAigSnaMzt+CDKhYMVKKJQTcqX98FzqaYUHsyddN6TIESoABZAO8p
         PIYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTRG8OIzzE8o0+rcPFiNSnXGpjt3xM5aq4uqte9Y1JecElZ61FualMK1/SdwDPp0uztiOVXXNw7RUBKAljYA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUppMNxfkZVPiQkadZaUOU3eBn3e3rOaOB3aNrvpFoAD8taFTi
	2xX4d8Ix9mdVFla/Pj6RzTO83PnB4IMdC2BhiCiQDdaaq0i8LlV6RQJ16I1DheWlTjxJc/UDWo6
	AP6uakD+WJqtfSyge2KXk2WMl0KavPUATcFLS2PP850s6a8JXdTNCTQqjvNAyh231dA9aacxdgr
	I=
X-Gm-Gg: AY/fxX6lv5NnY2+wA/T5N5h/aBSX6f/Fog5F6NPdW41ctnouArH9q+QAqD+dIo3OJUn
	rgn+gAH0FnNHPZdHtstt2xjGAt0v2n8DNl1bp7ZBvbGRBlPYcR+OLiVQ4xUZC99iQhgCRZeC1Ww
	duNomBJN8zFD826wgYutPrn03XPC+cJ2tfswXI623T6CqA0/ihgBnrTQDYqENzhrPh8kQU3bvQq
	8x/EekhCQIr6gUiIKnlPM/Hs401a+UXk1rZVaU7l/NEfV6MLKN4JEMPUtnGg00o9CZOfRyyFZnT
	pbyDdZH+Abkv2+mRcVuJ2CjbrsHTqVmNCQ5AvZxuVwVNUH6UvrhjLeVV8q/yGAjGg+yrrTN4lre
	3MvWNBz6safW1jmZ7Y04S4tbjgINb3b2W2CjuIJNrcvDUN1AF6EhOZ6nf6vnDqmWIc14TT2SMGG
	ZRKAgsEOL0C+oV+U6VRJGR+RE=
X-Received: by 2002:a05:620a:3941:b0:8b2:ed01:b65b with SMTP id af79cd13be357-8c38940dd0dmr456873085a.83.1767809714601;
        Wed, 07 Jan 2026 10:15:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE+D5mrG5EJMb00tLGXnGg/5a3iMwygbvY5+APGv4MWQpPpWnlnvrx9Hf8phdL6F9vP8GwsHw==
X-Received: by 2002:a05:620a:3941:b0:8b2:ed01:b65b with SMTP id af79cd13be357-8c38940dd0dmr456865885a.83.1767809713987;
        Wed, 07 Jan 2026 10:15:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d6988asm1436884e87.80.2026.01.07.10.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 10:15:13 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 20:15:04 +0200
Subject: [PATCH v4 07/10] drm/display: hdmi_state_helper: reject Audio IF
 updates if it's not supported
MIME-Version: 1.0
Message-Id: <20260107-limit-infoframes-2-v4-7-213d0d3bd490@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1357;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=oV58YVZ6PqGUocr9XjdKTVXla4jnp1WcJhUj/fGMzJo=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ2bcoqVOypf3nnz7ysbV1SEu2HFL4awvN5mTrKSPbj51+
 +HNQtvQTkZjFgZGLgZZMUUWn4KWqTGbksM+7JhaDzOIlQlkCgMXpwBMZFMHB8MEnRhDz5j7S+s7
 33/wuCq3e4f0x0ZX/s8/n15gMap103T9tH1VXsdtoTyjK0HrN38MWXF5zjXm73UHjVK8GY/M2v3
 SSqTuxuMI+9iXSq+6WG7sOSCfWmNi1tjVpBC7Sa7Atcb1jx7rMa1jP9dN6+f1uO6p0F7NLHKs7X
 vYqkff23seqZc1hh1t9rINOs58UiHnRuAviVCTrfz7b1QtiT5vyfh3Et+uU3On8c8PKMyJ6V1Wl
 Mzvy3zdzdrznXCNGIfM95Jm3xs73nrUaDuLFp77wabg8FSVhyN77+u9LzM4bD6zrSxoyyi2in6V
 c7dLMv/d453GTG+Kbj738GAInXdKPufnrbyYBYbuh6TUAQ==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: jSbmXhtdbMmjP-Jb6d7mI8x50FN1-vnW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE0NCBTYWx0ZWRfXyeKEl9G2sgtv
 5mc2VY8IrDpwlYsHHevjKmx6esJ1fGw3S77Hee2tqwZUe/HY7GhKI3KykzMf3/Jfe0mknWGXDat
 7H65bquiVjYHH6+CQWkURtPuydSMOb/Dlz2LC5L/Yj7a0fQ5LbkRZ3EWIuWhybRN+WJOvmUdDQQ
 Loi0jop4cRTsv7HYyxznQF/wBgz24Zjcc5ZRGtrRZ0TBXeg6Ge/ItIpGAdFJMbdW3BxK7wMx1r8
 tCGRWoDmqsP0OLa4fviK9Vx5RiLnRZPbsqyKy+7x+dXUX47d6S2mmlv9zV51UNidbgDt1ilXIHd
 W1uWpgcW61+m8b9QQ342hn9wBCrQmryf3zMPNtVh5cgv9GPwzbNC/9IH63R1LyrATyUHjyHOa2J
 fsVF6jXYAnIu5O/ntxt/5YNqF05lZG08Ibx/luM4kg/qVvSrpzPXUbdM8C97SxpiqvAXe/IITlz
 k0XN1szWAdEwpnFmJzQ==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695ea2b4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FWtRXCEnrA9oX9MUO7wA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: jSbmXhtdbMmjP-Jb6d7mI8x50FN1-vnW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_181518_166708_559EAD79 
X-CRM114-Status: GOOD (  15.33  )
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

Updating the InfoFrame if it can not be sent over the wire makes no
sense. Change drm_atomic_helper_connector_hdmi_update_audio_infoframe()
and drm_atomic_helper_connector_hdmi_clear_audio_infoframe() to return
an error if Audio InfoFrame callbacks are not implemented.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index 5a3817271d91..e8556bf9e1da 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -1061,7 +1061,7 @@ drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector *co
 	if (!info->is_hdmi)
 		return 0;
 
-	if (!funcs) {
+	if (!funcs || !funcs->audio.write_infoframe) {
 		drm_dbg_kms(connector->dev, "Function not implemented, bailing.\n");
 		return -EINVAL;
 	}
@@ -1102,7 +1102,7 @@ drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *con
 	if (!info->is_hdmi)
 		return 0;
 
-	if (!funcs) {
+	if (!funcs || !funcs->audio.write_infoframe) {
 		drm_dbg_kms(connector->dev, "Function not implemented, bailing.\n");
 		return -EINVAL;
 	}

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
