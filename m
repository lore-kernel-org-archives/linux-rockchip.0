Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B73C4727D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E2112238A1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="v1VeOsSw";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OagBs5Mr"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E2112238A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nW+lZmLIWRUz1OH1K3PBzPu/GbDXecePDaDqukhiluk=; b=v1VeOsSwuzIcgglVajoN2cHOW
	MdMdfdLbS/jNHmpBtkiW/eCpfzioX0aP2iGFdsiWavuHpdakN57nbKePtONvPqU7CQdVvcQjMRUcU
	hoIJ1Dr+Np0ffzLl981YDflsWnmKFAkMuL07sXJJ5AfeHTfPq1VpVdJZ0pM3KHhQPRh4LqGV/I/xL
	Ckkun0cl8syecFDGGj87LN6Az0+wJBYLQX6lFNqHC1yDMK98zW4MgAqlp/WSg6oA7skzoKrhzjB7O
	MkAjU+SLkjAbaoH6qm8ug4R7AOLhmZn6ZqglhGQAItBzXUSN3gVRivqC/JcJATrpY3cz9uYJWg+xa
	QvtAGiI4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKowk-0003rm-DS; Tue, 22 Sep 2020 20:31:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKowf-0003px-Ia
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 20:31:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id a17so18496496wrn.6
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 13:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K7apNRD9MQ+dEbnQVbfSw0In2eqPMXGuCV372ylb3ZQ=;
 b=OagBs5Mr581914UQu8F6d9SAwSkG5/gcggEYnmLSooih5w9+pvahrzoIo2l+4uXwRw
 wjaY4E8zGIqTlotqJhMU8FHlmwguHxCbYQKhPJYXCRYfYeFeeUYVCGEbyRRAAeLMpDPJ
 HSe8JFQioKful9hDEQIeYIMkv2sUsxjDpYInrA9RfSc17XwQ3IUqXuHcX2s0v3dkg/2J
 nNijXALVdV8Jufj78uqr2Q2Jyh2HwnAaTdTSA5wJ958V4f6P3ovWd2t3URWp0bHmqw0E
 V5uRcAHj+NbxkdGvpdwu3JllgyS0RkuQpFv2URaWLwDYNTVlAaGuqW1ZTQUWip7PVARJ
 NlYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K7apNRD9MQ+dEbnQVbfSw0In2eqPMXGuCV372ylb3ZQ=;
 b=B5pI5UKUnTy3xEYyNG/+G0rhCvspy34XuJiiOBqIrJYJ+xeOhhtFdqxUhQw6pltGVf
 h70QUSf+Bv3HnjRXVU/3p+bduQqx/KQLRYe2Pu8AN1pmDdWUKFPBhrRZX4DfFbu4N+C6
 3SdSvplfH6DWd2X+wATYCcvHlKhziBdpVPNAe6AO7ORoj4LJf73oLU+nfQoFy+voeIPx
 3GIssFX8ObOYjXXNRHWda0CUaFj4LQW533v4QqYO2xsJqPo7SvChv+wsQXd44HNctY0T
 HvOrpY4Dy/yyrtZnvEW+8VZiVdY+q1/sjq3NVdaVAe2Shg4kZr4Ygj7eKRG1McGahYU3
 h1Zg==
X-Gm-Message-State: AOAM530S6Hv1bV9u+J3viU/S02MRaGl0rVLGWmWD2usLagtstNHaaQ1y
 yddbIgtSGA9IQptZ+pQow04=
X-Google-Smtp-Source: ABdhPJx50jBkOlmQ/FbMgVAs/A5mIKKUMOJHkjBKcDGQzYUJcDfEyFDWSptl/aeOyIz3/TeA/+7d7g==
X-Received: by 2002:adf:81c6:: with SMTP id 64mr7064800wra.176.1600806684782; 
 Tue, 22 Sep 2020 13:31:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id r14sm27256849wrn.56.2020.09.22.13.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 13:31:24 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Doug Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 2/3] drm: rockchip: hdmi: allow any clock that is within
 the range
Date: Tue, 22 Sep 2020 22:31:06 +0200
Message-Id: <20200922203107.2932-3-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200922203107.2932-1-vicencb@gmail.com>
References: <20200922203107.2932-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_163125_731651_6F61E61B 
X-CRM114-Status: GOOD (  14.45  )
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

For a video mode to work it suffices that the available bandwidth is
large enough. There is no need to have an exact match.

This greatly expands the list of supported monitors.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
Tested-by: Vicente Bergas <vicencb@gmail.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 23de359a1dec..87a9198f7494 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -230,7 +230,7 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
 	int i;
 
 	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
-		if (pclk == mpll_cfg[i].mpixelclock) {
+		if (pclk <= mpll_cfg[i].mpixelclock) {
 			valid = true;
 			break;
 		}
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
