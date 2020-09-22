Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21D2DC4727E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8834E235FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 20:31:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="lqwuqh0c";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="tt/TTqjB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8834E235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8Sr+3t209IuUS+Mk3EEGaiG7l9D3EGyGaIVlQK/rvK0=; b=lqwuqh0crXDs/yo+vR1X7s762n
	F1st9lIgLRLtCI+T2xinNv+gc3VSMSAaMzjhWjPR5q1Z1Q1pqFrT/Y70loSS9XwMyzJ1hF/AsX2ff
	swC6nbni0vzlx6fSXySscT4usOlZppsQkBsln0H3qx8y8yEPZ0jLkt7ZkcmNRgFnvAVYI75YaKCsq
	zU3K3IWrK8eibjmGUFF3sUaQSVlDKITbSm6pIXj+kqiRIASLvRDBCIQJLNpxjMRURDsSV3AKb03dF
	8KNaJ90zp5zW90AM+3R266dN0L15Q1b8CTqJjSp3b1aMdvrNdRfkY0M4vnlcRZJgM0ivFB7AEruqo
	rhx5YpZg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKowg-0003qd-W7; Tue, 22 Sep 2020 20:31:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKowc-0003pC-Tc
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 20:31:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so18530781wrt.3
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2020 13:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gX9IO5DpX0Oyo76FoBWgDaUccVLtvB5CmzQwxpomYMM=;
 b=tt/TTqjBTAhlSNEh4MlThxkbFeRZUCiSrVESk7ywxFuTyDJlPV+VVfUAOQ5TxQ4geg
 8DfNWex5LRrLWnOtib/RrzFLWhC6o3xrfK+CagvnIV775bH8fbId27Gwxfnuql9ZGZJC
 X6TmSBmIrMXZ+oyJOSagw5XlubJRQyelk+afU9dTrVq0jZAP0n4kyU63cutP5JZ+WWBC
 PNeLyQGQOkRgh97g6CkFyyV4gGc2FZ45niJgVXVvK74UjZ5qWSdq5Y4IErcLzZv7Shnc
 G1/36aV1B7DfTlEWdXRYrrwUNt45+4M7Ya1LxkJZKRnG58OFucQQQGMvqI6yPXDK7d9H
 UwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gX9IO5DpX0Oyo76FoBWgDaUccVLtvB5CmzQwxpomYMM=;
 b=EUdhUtKO+xvsptbj7SfHwkBCEgYodJ3qIZQEjNov0C2OYDkzxcsi1/a1UHcGdVvXGu
 Nt7eyRnCMyyPCJiRpQyyc3lq4PaD+/uVpvYgrqlLcmlEcuC/H2XIA8cZ1ZojN8MSINQX
 ROXF1fJI+v/FsgkG/fNMtx4vOsAM+ljf00fsUQNhXxyNJVfmZzn86xtvQJ/tqGj+9f7Z
 ZAGSFeSiJILeUtyDSjhACFHOAYTbP/g6sXNXm0uToPv0DAZ6sJK8S7J+JIDwbVg8QfqR
 DEprSvhr0py5XNxiqvkljV0ONjASh2pb3zv8H5BVkI6839o9h4Gh20Hcf/lleHcGCjTN
 dubQ==
X-Gm-Message-State: AOAM532uTbNC9kypJzv9CcMVzyLZ7w9SPN+dK35s3Z34MukSvCYB/WBz
 J/50r2TRdNjlH3bUXqsM7Ck=
X-Google-Smtp-Source: ABdhPJxF/lNJUJgqdUMQqKW7wBh4mAI8AHazZHk84HLlPru3YnyKcMGQb3qKQu8Jti8TIFS4nnVxDg==
X-Received: by 2002:adf:ec92:: with SMTP id z18mr7741204wrn.53.1600806681913; 
 Tue, 22 Sep 2020 13:31:21 -0700 (PDT)
Received: from localhost.localdomain ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id r14sm27256849wrn.56.2020.09.22.13.31.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 13:31:20 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Doug Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/3] drm: rockchip: hdmi: enable higher resolutions than FHD
Date: Tue, 22 Sep 2020 22:31:04 +0200
Message-Id: <20200922203107.2932-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_163124_192529_AD32313D 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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

This patch series enable a QHD HDMI monitor to work at native resolution.
Tested on a Sapphire board with RK3399 connected to a Q27q-10 monitor at 2560x1440@60

Changes since v1:
Use alternative clock rounding code proposed by Doug Anderson

Vicente Bergas (3):
  drm: rockchip: hdmi: fix clock rounding code
  drm: rockchip: hdmi: allow any clock that is within the range
  drm: rockchip: hdmi: add higher pixel clock frequencies

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 8 +++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 7 ++-----
 2 files changed, 9 insertions(+), 6 deletions(-)

-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
