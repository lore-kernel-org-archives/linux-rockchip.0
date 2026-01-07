Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C390DD0D15F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 18:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc1lx6BKmOFqvjDw9per0N0XUORPY/DCpLz64EZgh2g=; b=HwD0VpwPttmcav
	ICzelMBDRG/9/BlVaYjF3FpSt1S6P4Maa0TM89h4+3jYMUOVRajRPDPBtWf3AQ5/FRNSKhDoz+XV+
	6koYv4UYW4h0ta5b/Ntqlt57i2i/CvWearsVabamo/1/MqpTaz4ozbtsz0LEtFPGzsVMjHlFO8bPj
	Fh/9ufhLmRYGFhrDom5diRFXv+NcIlQiw7HChLdR+vMhl70djUbxnLEpTTxit8ohyeCHIKvgeiX6Y
	HaTamjEnts96DM1xqIcZ3RmyLTrZwaLaCOM1pVxDFaF84LrRa0Cj5gn3aIalXa0XU0D9RiqhrARQl
	RteBNKl8hW+wYeAu4+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY4a-0000000FRjo-0Wcz;
	Wed, 07 Jan 2026 18:15:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY42-0000000FRQd-2jal
	for linux-rockchip@bombadil.infradead.org;
	Wed, 07 Jan 2026 18:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=6ayeKTjgf6jc54pfgcQupo3DnEV3KmeCjaAg9qNbh2E=; b=pRzMnATyGE5jQivLXjhuG+SXC2
	5yNYy7zscBA+o8ZRtIm8AUpUogL2CWGzCA9FP7Iyx0Pts9v0WezWn9A7DuJcq+AsfAfrZb1GjUjcz
	RvGgNfZ81NsBqffw2OVnMO38bTiiH+DvkYkSfuaQmPDsrJajVoUUaS4LKf70SfGQXmVGRmmXEnV/z
	U90/otSlgMit36hjurVVFvJfJqThd7897e7YBCBYZFLCzVD0KkbyELRnHetefnIA5mz80aQiFOc+O
	hn1DOWGz0p1FFmH5qtdpTHpOPEmiop6q5DqvM/zZmN5BibXnXV4tCgOHXe68yHGzUZPXxKaRjp76S
	JDu9F/0w==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdY3z-0000000BtFd-0DOO
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 18:15:21 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 607HVIqK3890324
	for <linux-rockchip@lists.infradead.org>; Wed, 7 Jan 2026 18:15:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6ayeKTjgf6jc54pfgcQupo3DnEV3KmeCjaAg9qNbh2E=; b=YT98JyW5oGIce4yx
	t62vyUO8gfpzGSWjao8mBdPTYJjg9dpxi69OPT+flXHjY6zvvx9HgiN5VBgBBE3z
	aP7KS2Ai0vJ/lJpU1dpDd0Wxd3AfpuO+r5VqXRzqZpaUaKyoi0LPozqGRblpfFtK
	8FFeJxxsq+wpaKuwqGiSnUZWk/S1M+hmWmUCx+hBTMfSwr6J6aj2V5QFdUUVf0kj
	CHLH4uqz3dyg/R1Bh8EhaSUJI/DxjitNH/wMuHLMhRLagS+uW1jOa4CUCDBGeaVy
	RdCTC2bWeHtpXMzHIcJEE6pFwJOYIGnHu5DTmubFL5Kv1LjS0Qoq4BlhHH+zqmpU
	l0KWkw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhuy704se-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 18:15:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb6a7fea4dso572346485a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 10:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767809716; x=1768414516; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ayeKTjgf6jc54pfgcQupo3DnEV3KmeCjaAg9qNbh2E=;
        b=Bm+AGhp0FyVTY9SLIGbY2HFgB7mvxiYbOByqAW+6vFjFERRNlmKk1hXqr3Sm3jP7cj
         sRvaMnEjbBLeuMOBHvbyzYL6n+eeyS/VODEDS7E0d8NFihdIPr+Rd+tUYQXYwDwdHVwe
         0W9Ze8CMrQXf81bGlI6KL3ZWoe/HUt6vvg5TRbDJ2QxKSzl5509mHMfMAHH4/ZI9M99G
         0QuKTOnPADHUfpDtHTZg2HMAIK1rFdBnhUnuJB/IKTRZmDgAUX9+Eq6+D8hvdyNAzPM9
         oLvayMlxPzcFKlytGkVguvB+vlVgGFw2Z5OuI/WgT4MnuKxYL9finwWa6AANkCcYqoh+
         1vag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767809716; x=1768414516;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6ayeKTjgf6jc54pfgcQupo3DnEV3KmeCjaAg9qNbh2E=;
        b=RQ8hM0c5lR/QgZeyP1jmAy9njtPH1mcjC5he3naRJPzCMEPR7ImzY8We7cKOQMwRyC
         dZLcYTY6MKcdHjFXQSPpEogllNFjKAVivsPeT8hK36+oNhtlwjABhP1DKPXFN9xGSvyw
         OV3pVD5yYj2AUD+XCfHpn8wxprdno+ILyAKNFoorVrX66EqusSjG4aVyo6EUQIdWfWgG
         yoj/BjbEqW7WqjssF89OgvDI6STefdUINrOpDaVStjDaW7oe7+Rd4zwZPMtviwxwKSWp
         8Y1QhUuRxuVjc0sMmupxvF9jp4WT4R9P48JzCyM7ZfyoLzbHedclDxjGObOmxmTabAom
         pPGg==
X-Forwarded-Encrypted: i=1; AJvYcCURPTnwDuwAC1LAaOn+S9H/+9WwIPs/jDGKzmfmSbxHadoBYwEjeRBy3HMJ8h44YsraTvv9ghgklygdmYL13Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YziucRx8TsXZVgaKYVuG1I9XrHPMJcY+ZEsFvK6QHN3+DLcKrYe
	cwQfGLczt/89jLxYCY43VE3wuFvA2cqZ9k8WpPkjaOp67wpwEAUt6NWQM184qrqQQxGDvLgfWDK
	PG86PC05HWBF0/NaB7GJc8pW1w4+bnhpv2Tge5NqrHCezUXlypxWfjU2hteL/YsSD748WipZmhZ
	A=
X-Gm-Gg: AY/fxX5VTAIsq3f1fJC7aYm5UdH/xJPV+ptUN7eknqBJinuG1DeRoyuiBh0zcsSuSkP
	kTdSxBl2yJdCnWuMmkwSBs42kZeMLeG7OWrOuI7ni7Pj0dCK06qwYjl+FEqZ9o8uyHf5xm+I89B
	a96e8q7vj3sDxrXYQSoskjawEa8XKoh6IGpZOqjoDD+JlSa0R6Qf0imoNIH4MpuaFJ8JV+bU7N2
	VUrjjtc4eV0jFLdQMHXhhPLmNfs5hXhPRzU6nwQ53PA/pli5D0BXR6fAuYVPLhOj5TmHYXxVYks
	wjdJ/VG6YK9Udh2T0DJxsA6SIs0Wf1BztoswD8h7512WZmEqGM9UOGwld/dJYlqkjXO5fWDS3zq
	SKeALuo/wNFbxrO097uPCwFaOezY239r7GzGTboMwId1YHC833Vw+iuEP5X9G0Wd9YTOk5A3L89
	ftuMt95VElhFA+i1XzOV2VKn8=
X-Received: by 2002:a05:620a:2952:b0:89f:5a59:bf30 with SMTP id af79cd13be357-8c38940cc79mr440814585a.78.1767809716498;
        Wed, 07 Jan 2026 10:15:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFzR6/I/M+rb+0CfWg9B2pwtmy0BCZ0528ZAW/PtSMTyk3JvUKmiud8K1hEOQV156GKBDOZmQ==
X-Received: by 2002:a05:620a:2952:b0:89f:5a59:bf30 with SMTP id af79cd13be357-8c38940cc79mr440807085a.78.1767809715974;
        Wed, 07 Jan 2026 10:15:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d6988asm1436884e87.80.2026.01.07.10.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 10:15:14 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 07 Jan 2026 20:15:05 +0200
Subject: [PATCH v4 08/10] drm/display: hdmi_state_helper: don't generate
 unsupported InfoFrames
MIME-Version: 1.0
Message-Id: <20260107-limit-infoframes-2-v4-8-213d0d3bd490@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2066;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/ZrVCxC2ORTh/25tcpqTF3QUmYMkLYWP2fYAuUO25LA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpXqKlLQRVN1fiNfBhJSnlQQ8yf8TEYh+A8edCs
 YWTlH3Bcj+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaV6ipQAKCRCLPIo+Aiko
 1QOVB/oDjydk2pqigYtLHtwvNWcAKXJbbdPGQ26WTURthKMHJhz9rPZZV04J2QY5hTtypEXd//d
 nw5Vbwc0So6ysL8Tv/jIxpWqiL+ciHmVHitK6qOCEBS+i8W0MtTLVx1YAdnQ2gp8v5gmqGooPIj
 URRZkW/XopRmGOqd8hftr59SVEpUvh5HH5NGGNoX/Wx2rngOV+KmUfwE0HXApJlGUvk5kZ/fwRb
 bGSKspZn9xiu+96xWnVTNQqum/Ct/2q61VCFkl/XqCm0lDpae50DBapNsWOPBMIWt03yTjsHslN
 UvAY1W9Roxw/F/vls4Ff8wqqmvewupBjJYfykiyeu5Y2vHLK
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: UlDY8lNYbJTgF_a-AMJ1A_8enK-oRFwo
X-Proofpoint-GUID: UlDY8lNYbJTgF_a-AMJ1A_8enK-oRFwo
X-Authority-Analysis: v=2.4 cv=DZEaa/tW c=1 sm=1 tr=0 ts=695ea2b5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=58UsvUJqJn8fpqk6aeUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDE0NCBTYWx0ZWRfX5GjIeZ17yACj
 6ny5QL8awYuCrGmYzcqkhCyYJK2p7BE6YVApbXcES+k9JnZy8+8UbS9k+xFaL0rW5tAR8Be1por
 KcpbzmVMHu6mOC6nWg7jyqMySf3m9ZmMuQQ/In0d15nugfuNMp0Dxs+k/QwSnTs38kT3XDEgCwo
 7bKFh5ntbeJ0tsnANsy2UY33cFv9eFFssGkYzatPLRNA6ixME/MQU8jedKd8QpFGvtwQi2hsW1w
 6+5byWbf+l35u+EUaoVS4DcypF7Cw9DYcoopIOGo+qM2rQlfw4f0MT6NxaQDAcyUPPwgcp+3ul3
 jL5IsPa2eIJzMPohuZSsuXoTbQ3kCO7N0kG20ne1IWEXyiHSlD4secN5GbyvstGI2UP6S1HiW8z
 9paOMZh4emBcutC6aa/nHcp4jVgaesyoJCNBwz9gnwXF7ujbC8zidDbm7OzFK0Zb55hVoN9/s0n
 vwWsmP5dpTEPwTpXSvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 adultscore=0
 spamscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070144
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_181519_425317_5C04E5BF 
X-CRM114-Status: GOOD (  17.67  )
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

There is little point in generating InfoFrames which are not supported
by the driver. Skip generating the unsupported InfoFrames, making sure
that the kernel never tries to write the unsupported frame. As there are
no remaining usecases, change write_infoframe / clear_infoframe helpers
return an error if the corresponding callback is NULL.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index e8556bf9e1da..a1d16762ac7a 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -718,6 +718,9 @@ static int hdmi_generate_spd_infoframe(const struct drm_connector *connector,
 
 	infoframe->set = false;
 
+	if (!connector->hdmi.funcs->spd.write_infoframe)
+		return 0;
+
 	ret = hdmi_spd_infoframe_init(frame,
 				      connector->hdmi.vendor,
 				      connector->hdmi.product);
@@ -742,6 +745,9 @@ static int hdmi_generate_hdr_infoframe(const struct drm_connector *connector,
 
 	infoframe->set = false;
 
+	if (!connector->hdmi.funcs->hdr_drm.write_infoframe)
+		return 0;
+
 	if (connector->max_bpc < 10)
 		return 0;
 
@@ -902,7 +908,7 @@ static int clear_infoframe(struct drm_connector *connector,
 
 	if (!funcs->clear_infoframe) {
 		drm_dbg_kms(dev, "Function not implemented, bailing.\n");
-		return 0;
+		return -EOPNOTSUPP;
 	}
 
 	ret = funcs->clear_infoframe(connector);
@@ -928,7 +934,7 @@ static int write_infoframe(struct drm_connector *connector,
 
 	if (!funcs->write_infoframe) {
 		drm_dbg_kms(dev, "Function not implemented, bailing.\n");
-		return 0; /* XXX: temporal until we stop generating unsupported frames */
+		return -EOPNOTSUPP;
 	}
 
 	len = hdmi_infoframe_pack(&new_frame->data, buffer, sizeof(buffer));

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
