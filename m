Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AD31C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12ED22388B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="BwZXWP3E"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12ED22388B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yHHW+dgfCVVJHLDutn1nqcLSErsPbl+efihjWe6G0rQ=; b=BwZXWP3EEMJrWDxOJPnaj2EA3A
	mk6GhiBRMEG4/psEwLCllFNMSpxF7NhqRk9+wi+96dsGwIZnMPVqzPrsypwZ+etWnoQ0m9ZM/svvK
	IFD7lPmsbyzqU4+FR7vQzoM3A4jg3GWzx1syBEyy6AE8+DdpnNVVIt3hVvyuPHOgDTFeSII0CtF0z
	spKeI7evyUXk0q1pMj6CD/FKrH7C7yezNdqhdeNFhH9/dRp5HwW6LQEVEWpdfgWHh8baZ4uTXQWbE
	k40L7mPc67BWpQHsyfIqceuuN2phaF5e8ENONa9ifer9ptI7LdTTPzNKcBl8sEjxYJRl07pCMcgEK
	rTpGdLjw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZE-0006J4-VD; Tue, 22 Sep 2020 11:34:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYt-00066D-S2
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:24 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 90D2B29B4B3;
 Tue, 22 Sep 2020 12:34:11 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 05/12] media: staging: rkisp1: params: set vb.sequence to
 be the isp's frame_sequence + 1
Date: Tue, 22 Sep 2020 13:33:55 +0200
Message-Id: <20200922113402.12442-6-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073420_337032_1AF52B6E 
X-CRM114-Status: GOOD (  13.88  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The params isr is called when the ISP finishes processing a frame
(RKISP1_CIF_ISP_FRAME). Configurations performed in the params isr
will be applied on the next frame. Since frame_sequence is updated
on the vertical sync signal, we should use frame_sequence + 1 as
the vb.sequence of the params buffer to indicate to userspace on
which frame these parameters are being applied.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
changes since v2:
rephrase commit message and inline doc as suggested by Helen.
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index e8049a50575f..24a49368df22 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1213,7 +1213,14 @@ static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
 
 void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 {
-	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
+	/*
+	 * This isr is called when the ISR finishes processing a frame (RKISP1_CIF_ISP_FRAME).
+	 * Configurations performed here will be applied on the next frame.
+	 * Since frame_sequence is updated on the vertical sync signal, we should use
+	 * frame_sequence + 1 here to indicate to userspace on which frame these parameters
+	 * are being applied.
+	 */
+	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence) + 1;
 	struct rkisp1_params *params = &rkisp1->params;
 
 	spin_lock(&params->config_lock);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
