Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF8CC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0E29221EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DnqoAuap"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0E29221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tY250PQo73taNREhpw98nY6KZbiwMxTlHhy4ihL9890=; b=DnqoAuapt6P6hqRSX2tcJS5PV6
	EG9xWQU8J5Eh14Pxkt2TV910Wt23HH8erCmxAhclfdY5lGTVVZooxb5fr4kT4zhXeVm6C9zwA8E3J
	Q9Mx+niQn9iJPOyd5wM/o4epnph2aLuxzVo3+CbFbL9rxccEfQ10BnF3Tvi2eimqdMdRnr+Ghwc13
	PzU3gVJPnySzxFhVlv8XDErwgJuTb4oU26ToE7NXCsD9lfbnevRDk1O6FnL3ay0j5GLUQbcOZ+Bsq
	UYfXTEnwVKjuNDcgCdFr5stXlXAD0O1vl4u2SG66n3sC80dh8672aWwCCya5+pmxY5oQniR/KSLQr
	ALFe5zpw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgYr-00066h-Uw; Tue, 22 Sep 2020 11:34:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYm-00064h-Nt
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:15 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B5CB029B49E;
 Tue, 22 Sep 2020 12:34:10 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 03/12] media: staging: rkisp1: params: use the new effect
 value in cproc config
Date: Tue, 22 Sep 2020 13:33:53 +0200
Message-Id: <20200922113402.12442-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073412_914555_702294B3 
X-CRM114-Status: GOOD (  13.87  )
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

The cproc (color processing) configuration needs to know if
an image effect is configured. The code uses the image effect
in 'cur_params' which is the first params buffer queued in the stream.
This is the wrong place to read the value. The value should be
taken from the current params buffer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 8bd7cc622e4f..ab2deb57b1eb 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -552,7 +552,7 @@ static void rkisp1_cproc_config(struct rkisp1_params *params,
 				const struct rkisp1_cif_isp_cproc_config *arg)
 {
 	struct rkisp1_cif_isp_isp_other_cfg *cur_other_cfg =
-						&params->cur_params.others;
+		container_of(arg, struct rkisp1_cif_isp_isp_other_cfg, cproc_config);
 	struct rkisp1_cif_isp_ie_config *cur_ie_config =
 						&cur_other_cfg->ie_config;
 	u32 effect = cur_ie_config->effect;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
