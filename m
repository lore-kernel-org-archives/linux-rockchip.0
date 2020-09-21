Return-Path: <SRS0=Rf1F=C6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D23C4363D
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E37120888
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2020 18:18:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="kBcnLzzb";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="rOyh0tsG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E37120888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gz7vSY1j1JemrhGA5MmXoNSLfar46qxWcuuQn6etEIU=; b=kBcnLzzbEAm4+TuSn9YAKPpgy
	o26Q1cEFrYOEYLgDQbXxn9NoIIBa2O64a/vavMAofliioKBuoCyx37Iy5UPNMIrNYxIBzx4zYtN+Q
	cQ0lWoRYmChPQmyip1Gi52mHQclN/45Q22hPCKgnU6ZfNLHpU6uhBs8OeqndBA4eTsiEoygwgwK/R
	1YKVxAlpSRdjMTCpcmZ9uiP8485CZ3yURWO8wnzmf99Hi2E+HyABzJ/AAJdDxsdc3E8rrv76PuQz3
	gWMrLQeQ1V3ld2H+YmH92ems8GyqdtJMygmFiTBjmdVQ9tE9fhgRe2OiCOHGkgcyjB/4F6ShpV4ES
	TZ3a51rSg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKQOY-00005E-Rv; Mon, 21 Sep 2020 18:18:34 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKQOW-0008Vj-2o
 for linux-rockchip@lists.infradead.org; Mon, 21 Sep 2020 18:18:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id k18so413613wmj.5
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Sep 2020 11:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/ACUgjSRhezgf6ut/YNpIRBfmecqG58PBv3yXYOEimo=;
 b=rOyh0tsGdC5eXyfXNGw8vKDDW1D7tCG6J839j2K+XF9e1oYJY4lY3mbOWagHTBY7B9
 SPxh0PM4E3mLuc+cEt+JK/TRETWvWQVADSQ78Uz3xEqW1dgfSjUfRUwVQYseAITKxeFm
 3FCxo94NNT8JGS8poXdR977OcNMrasJFq6ee3EisL6YDzJVdtbOKU9Cq+hv4Pvvs9aZB
 vplCp9xJe0XnMdjtFFD5c33cwRoitl3oLZ58VRtGZE7PyeVTtWqRUzWfbub06eLv0Hf2
 BPMtlsx2l3DWldlqpic/uodyriud1ogIebmoBgVGe7ZUP0YLU8Da+ip6MQKuPJT4DcK1
 ziTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/ACUgjSRhezgf6ut/YNpIRBfmecqG58PBv3yXYOEimo=;
 b=WjeRgfjUz84BNfL+tiQA2tBNwq9AqzPX7FA0ZK8cA855MwcbkRQ3F21GckgWbHVRtv
 SgxC8iqvaWoCAYU/JQzXFwn8hxpsRLJayeWOZhoklbJ9eqWp5SihTC7bzj7eLcXRZcuz
 oUftl96zNaRkpGqXd8NfIFo083oozuRUoXPwtbJOEiogKsWaWux0cjiPlR3cYzmwO3m4
 sIlllWZwg1BUqeeyPHISe6RWNbmMft4XVZQBsIIxlJllw3Vqxh1j3jpk2hXzpz2fAaQK
 NB7VLuju+wJb3DTBgh/ls/HM5xOKd7b90e153rkLRQMAzVMqzoakX2yvQWvT2KoKJ8GG
 vCjw==
X-Gm-Message-State: AOAM532Pa7R1E8b0fQ1HqSubGEyMb06n5Z9oMYNnXW/HpWPJ1ZRM2wlo
 op3O7lS1JvBqTV9t3pA7faQ=
X-Google-Smtp-Source: ABdhPJzABOL3ze5hfsEgGMTL3C0J67cqKBFDasWXFalipx7AIUjHU7f201Up1gS1hCfK8KEYj/oYIw==
X-Received: by 2002:a7b:c0ca:: with SMTP id s10mr591087wmh.103.1600712311303; 
 Mon, 21 Sep 2020 11:18:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id h16sm23523249wre.87.2020.09.21.11.18.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 11:18:30 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] drm: rockchip: hdmi: add higher pixel clock frequencies
Date: Mon, 21 Sep 2020 20:18:03 +0200
Message-Id: <20200921181803.1160-4-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921181803.1160-1-vicencb@gmail.com>
References: <20200921181803.1160-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200921_141832_148800_EBAF7BD6 
X-CRM114-Status: GOOD (  12.85  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In order to support video resolutions beyond FHD more bandwidth is needed.
The new entry values have been taken from u-boot:
https://gitlab.denx.de/u-boot/u-boot/-/blob/ba2a0cbb053951ed6d36161989d38da724696b4d/drivers/video/rockchip/rk_hdmi.c#L63

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 87a9198f7494..db4a946f92aa 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -148,6 +148,10 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x214c, 0x0003},
 			{ 0x4064, 0x0003}
 		},
+	}, {
+		272000000, {
+			{ 0x0040, 0x0003},
+		},
 	}, {
 		~0UL, {
 			{ 0x00a0, 0x000a },
@@ -173,6 +177,8 @@ static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
 		146250000, { 0x0038, 0x0038, 0x0038 },
 	}, {
 		148500000, { 0x0000, 0x0038, 0x0038 },
+	}, {
+		272000000, { 0x0000,                },
 	}, {
 		~0UL,      { 0x0000, 0x0000, 0x0000},
 	}
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
