Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B76CCAC582
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6G24koS1xq6ZXKmBEBHWmcKjGqH0ORf0xpKWMLxFHLE=; b=vjSlG2soDNbsxM
	bHpyMEb2aN2GK6ovuvx0tpD70zT1k2PdJgmtt981RxPyU6h1MQiTwPuQM90gNnI1XSgmGOjiqDpKK
	CxMtciFd3ZrpzkBkRza2HERWGx+qXfotm3uFdQ+lGOt19gow6d5jGjtY79FWxd/Oc/Q9SwaZhT+nS
	Du9jjFEkPlxwT88v4oV++4f53s66oFI816+8Khik/hY0CLuGyj3XjifmUDnfLLPAKbr0gGvFtrRTU
	z//Il5/PN2UwvHNa8hQ2LgA9KLOQ2mUAthNEboFiVbm0vp+1/S4oJh5PoOvPDpZE6ZUhEvuoYhUwl
	qxgNbIWZusW3OSNSBgDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw225-00000008y3d-40sD;
	Tue, 09 Sep 2025 17:21:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvzhg-00000007s8s-2UGC
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:52:18 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LSGG031513
	for <linux-rockchip@lists.infradead.org>; Tue, 9 Sep 2025 14:52:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=lIJ3FalsCPPP/wHEG7TnMj
	bzvp8BSmctHZt4cp5c59A=; b=p3l7oOO/WU8ooT4nBhprIqQTv6O9TEsT/mZrxo
	KAoKAbD3FT0H6Qvd0GhqDezoY08V6577RYxh+q8dRmL5KMSvj/ajB4QH42f6ZCXc
	gYId8N9+NZL5Scwru34MEniosgzGB2U5KWmUw+lUNf1LpA6UsT2Z61FQW4tmiLJT
	ZjEbHJG3EZzHx4Y7Jmb2LWT96J0NCy3P2+ClMyVhJYNK8c8g9RwDIeB9wCxG7cgr
	jQG6Er505OOa98du7/kCTHYEKSeL1+IH0wwrZ3O8fLnVCLuXDfNjHSHicnAPMuY4
	OtaMtnRt5Jonw6hzLIGjSNGObfCVQcwzzU6RpJgYi7xLPbWQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws8prm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 14:52:15 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b31bea5896so63712111cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Sep 2025 07:52:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757429534; x=1758034334;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lIJ3FalsCPPP/wHEG7TnMjbzvp8BSmctHZt4cp5c59A=;
        b=nsZPjvHMqmycyG3h8f0azDGC7Cgob7epop2CHHlewpjNpGB/Hq5/KhPzXZ5QiBOZgZ
         gGROA/Bmh00EBiQSG78d9hfNIcuEN9ueGyJXw/yNEpE4DXe67CaVO2Y1TgP4Zc6OG5Yc
         iFbFHLj8evvOsuKdvu8S50/vSgsmXFyFh5cpP95ueaTIwwq+q5pZ65DmyVw6aydDKSDf
         /o2/eQcbmXATQQJ6OIVkhUhczNVk7RCengLOZ/kXoiA0XK64H54ABP+79weot5rEt5mo
         aHMx3uB7vqDF2SngASsb9oabTCiyPXGqSqP9DuB6AvEeDyfna9KsnBD5catfz8LgVTGS
         zoiA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ202sPnZnJr2vO1p8wzdb5wdjiRkb5BS+BkHok/zgX47GJgWfWuanaF/KteutWACUWWFGILWAgnGGis621Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyvDZpCITuwOSMZ6BFr7l719P/oH4woviKKUaoOW+78wxhSNKoG
	qpLLngp9ht98ckHmkVuKF5cVW8r7RznP2JiHiH8r5MqNh08xNRlGg6NVXCP2BUQ8ABucUk+hJHZ
	Kc9QtrIw1LKHR6i94GAC2JLYxj5oKWR4q4XpSTcn/fVJZYeLTllIUPbQskFknuYxfVPKGp272BK
	I=
X-Gm-Gg: ASbGncu9gVGorExhyEhqnHa2o7eEEP69DM1eT760HQeWjhMxALVHdcD0lZW6dCLs5M7
	QA8eW6xP7YQmpxzcmIHAgYNErNVmQ+68nBJj3c188BrimaFvH/AEQ453AKYpCOQo1UjM2c/A6tS
	6vYvUwDk+xSTs0FrR2CkJEPmd5dRjjpomu7dvnISHanvspcuJmjc9RvzHpUECNs+IVAAxqx7ovX
	bIt8faNFIav1IjeOh/N5eR7JfZI+Sh2xq3F3P0hYdRTTWffO0J8Qo00+Pib3fPnjQL1qBEZNSGY
	yyXYSxs59zfltUmZGXTUzhxvQeRzSvQSefuMJOVAncZ9A4SyWS3zsU1Tzkbh/JFhv8pvv//w5ts
	iA0bovzLbbwx8SjdENxVehmfhFy90CUdnetNGFaVoqTwnEBlX/0Ml
X-Received: by 2002:a05:6214:2623:b0:743:d48b:1520 with SMTP id 6a1803df08f44-743d48b1ab8mr82526486d6.9.1757429534119;
        Tue, 09 Sep 2025 07:52:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEo+iOfvjcgOTY/sSIw9LkaUSKJ3I2ARy89UHXaxaN7mcgdn0WwePfog4hFkU0PG3BnDx7HcQ==
X-Received: by 2002:a05:6214:2623:b0:743:d48b:1520 with SMTP id 6a1803df08f44-743d48b1ab8mr82526076d6.9.1757429533363;
        Tue, 09 Sep 2025 07:52:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c90eb9sm38735781fa.22.2025.09.09.07.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 07:52:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 00/10] drm/connector: hdmi: limit infoframes per driver
 capabilities
Date: Tue, 09 Sep 2025 17:51:58 +0300
Message-Id: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA4/wGgC/3XQwY7CIBAG4FdpOC8uhVKsp32PzR4oDOskUpTBx
 o3x3ZdqTDzYC+EnzDfJf2UEGYHYrrmyDDMSpqmG7qNhbm+nX+Doa2ZSSC22reY+R37AiIXjFFL
 INgJxMFsZrAlK9YLV0WOGgJc7+/1T8x6ppPx33zK3y+sT7N+Dc8sF771rjddBGBi+EtHmdLYHl
 2Lc1IMt7ixfrWHFktUyetDeW9mF0a9Y6sVSYsVS1VIyuBFc16sO3li3RwEZTudaZ3m0wEZLwJd
 PWHbNYkck9/m88AkupY7e/gG5YhL7kQEAAA==
X-Change-ID: 20250815-drm-limit-infoframes-e782fa7f3360
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
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        Daniel Stone <daniels@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4359;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=3c8NVkwVRlapMH0v8aRj8kfJ5eVQ+onRAjXCH8YoVds=;
 b=kA0DAAoBizyKPgIpKNUByyZiAGjAPxqiOIvnrnKUyJWbNyvn5mjVjswC7KJTilJjppXDi3V1h
 YkBMwQAAQoAHRYhBExwhJVcsmNW8LiVf4s8ij4CKSjVBQJowD8aAAoJEIs8ij4CKSjVfYkH/0+3
 dGXIjakbBGP0zqW2Uarx+0fm31r76/TERcjrTY99UWODgm2krrTSDdOlHEsyUsdEzDEssWTLiy5
 y6hLAHGPWz4WzH53oJ5b8tZCfV7KTyjtpBvml5Hk+NXk6FdvApSQEPtjQE/2ZsnRjL7D59FZF0+
 KjQfwrENNhGuuVTQcOeBw8+nM6YIc+zUeEERBusURRrATcDBvsHSt7l2cXD0m4/tlyzjB5VH+HP
 2tfMvYLf7WMl+zTwQAJLBRpHuXtd6gBlXi5MQ2kGXj2urVrRXGl1R8PCbNp1tuTXBtXC1yh3TzF
 QALj6sDLYdSoHiE1M3bGLbEg9BTdxSzwhrR0NtU=
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: wYv3v5L--X2QRnxvgFD3MUdQK51O-b3B
X-Proofpoint-GUID: wYv3v5L--X2QRnxvgFD3MUdQK51O-b3B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX2T8cSgi/iOxP
 kMSE1IS0FsI0/XiOIO2OAujXfzK6ekJmcsTMm1cLScAHCqS4nLBz8whEK3RN4t5Zd6QDZ/hg09p
 sKbcedEJLV+Y4R6nogejG/2+LFfbS739wvls+KP5FjXJddX64WGe1uDXfNnGIpJR3kKj2HDUQE5
 eBs2ZTTFVxH+zSGwEpmUK8M4a4Funj8vcKM7m0g5h6Ht3YjzKqHXzUC2b52C08Kx03tr195tQU6
 hl3Kj47niI+M0PdPAGbmKGULXmyV+LyFXNBC32n+MRPHHNxODn21KwvukxfuC5niKnfEZNPf8uR
 mN6obHGk3IZR6F4Xd58dkzCPQpCNqZKrHSOsqFa6C5PYIhmZSMjaaLc+qZDFoqthIqzvnuUsA47
 bX/9w+9A
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c03f1f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ABcA9MO_GZ1r9rVPDG8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_075216_655542_6E55B443 
X-CRM114-Status: GOOD (  20.95  )
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

It's not uncommon for the particular device to support only a subset of
HDMI InfoFrames. Currently it's mostly ignored by the framework: it
calls write_infoframe() / clear_infoframe() callbacks for all frames and
expects them to return success even if the InfoFrame is not supported.
Likewise debugfs lists all InfoFrames with some contents even if it the
particular type is not being supported by the hardware.

Sort that out, making sure that all interfaces are consistent:
- Add a way for the driver to define which InfoFrames it supports
- Don't call callbacks for unsupported InfoFrames
- Don't register debugfs files for unsupported InfoFrame types

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v4:
- Dropped software / autogenerated distinction, revert back to
  software_infoframes
- Dropped LT9611UXC patch, it doesn't fit anymore
- Don't warn in HDMI Audio helpers if the device doesn't support
  InfoFrames at all (this is useful for DP controllers).
- Rebased on a fresh drm-misc-next, picking up ADV7511 and IT6263
  InfoFrames changes.
- Link to v3: https://lore.kernel.org/r/20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com

Changes in v3:
- Fixed supported infoframes initialization (Liu Ying)
- Implemented separate flags for DRM-generated InfoFrames and
  hardware-generated ones
- Warn if required InfoFrames are not supported by the driver (Maxime)
- Changed drivers to error out if the DRM framework requires the
  unsupported InfoFrame (Maxime)
- Implemented DRM_BRIDGE_OP_HDMI and DRM_BRIDGE_OP_HDMI_AUDIO for
  Lontium lt9611uxc bridge.
- Link to v2: https://lore.kernel.org/r/20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com

Changes in v2:
- Corrected whitespace / newline issues & other small syntax fixes (Liu
  Ying)
- Added audio to the list of InfoFrames supported by the VC4 driver (Liu
  Ying)
- Changed drm_dbg_kms() to drm_warn_once() in the Audio InfoFrame update
  code (Liu Ying)
- Corrected subject for ITE IT6263 patch (Liu Ying)
- Added patch, dropping default list of InfoFrames in
  drm_bridge_connector.
- Link to v1: https://lore.kernel.org/r/20250816-drm-limit-infoframes-v1-0-6dc17d5f07e9@oss.qualcomm.com

---
Dmitry Baryshkov (10):
      drm/connector: let drivers declare infoframes as unsupported
      drm/bridge: adv7511: declare supported infoframes
      drm/bridge: ite-it6263: declare supported infoframes
      drm/bridge: lontium-lt9611: declare supported infoframes
      drm/bridge: synopsys/dw-hdmi-qp: declare supported infoframes
      drm/msm: hdmi: declare supported infoframes
      drm/rockchip: rk3066: declare supported infoframes
      drm/display: bridge_connector: drop default list for HDMI Infoframes
      drm/connector: verify that HDMI connectors support necessary InfoFrames
      drm/display: hdmi-audio: warn if HDMI connector doesn't support Audio IF

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c       |  9 ++++-
 drivers/gpu/drm/bridge/ite-it6263.c                |  5 +++
 drivers/gpu/drm/bridge/lontium-lt9611.c            | 11 ++++--
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       |  7 +++-
 drivers/gpu/drm/display/drm_bridge_connector.c     |  1 +
 drivers/gpu/drm/display/drm_hdmi_audio_helper.c    | 12 ++++++
 drivers/gpu/drm/display/drm_hdmi_state_helper.c    | 43 +++++++++++++++++++---
 drivers/gpu/drm/drm_connector.c                    | 11 ++++++
 drivers/gpu/drm/drm_debugfs.c                      | 16 +++++---
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c             |  8 +++-
 drivers/gpu/drm/rockchip/inno_hdmi.c               |  5 ++-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             |  6 ++-
 drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |  3 +-
 drivers/gpu/drm/tests/drm_connector_test.c         | 28 ++++++++++++++
 drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c |  8 ++++
 drivers/gpu/drm/vc4/vc4_hdmi.c                     |  5 +++
 include/drm/drm_bridge.h                           | 12 +++++-
 include/drm/drm_connector.h                        | 30 ++++++++++++++-
 18 files changed, 193 insertions(+), 27 deletions(-)
---
base-commit: f50b969bafafb2810a07f376387350c4c0d72a21
change-id: 20250815-drm-limit-infoframes-e782fa7f3360

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
