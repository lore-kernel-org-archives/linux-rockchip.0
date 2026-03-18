Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F387107760D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 19:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W1MdzHHtvcJHeldwQjyuWPXBEOB0aC+XRsRcm2riw6E=; b=w1u/2OMw+qby7q
	kUwB6CLn5tWytV0+QFTxhQuJOF56zAo4TF6dtH5La8cjD3ya+GMHv32x9RUNxPBI2lxfZtPuGQuSS
	LrN8eAC1+VEiPFTHHVUkTdW8wS1dX4i2ZYurrceYgGF0H0ISNR8SskbZmFXLVmnhYp8u1fLoeAyc1
	BANk4DgTGazPJPC/LkJgU0tz9GNxujrU8nZj2dvZ7cSerwFHGqTQSIgPjFdMmGe9wQgBuAFHL+s14
	Lg/faDlZwzT3JHdeLk0S566/DoqPjINkoD+bWXS2s+R5PIqenTXEztqZEQ4dWdPcKWFmWjxa28niX
	PeVk2hh612oebhkk/VhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2wYT-00000009EXb-1Dhy;
	Wed, 18 Mar 2026 19:27:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2wYQ-00000009EWa-2OSd
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 19:27:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1773862053; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=iWK+i0c17wLCOKhHxbI2RyYm/jaxXIP40XRUvxVREGb2MIpYbzUeX3si69kTlyqdmkWuc6/5IyTHe4fhGAGpavtxVaaIdpuEpLce2D/x1SniFki3SHMbqpLLozbNQDyZxCWb8qFRD5oSrhWlGGvKKSMPnzSOgGGIDKf1HS8hOhA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773862053; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4kzMTYxGhMKT838ZBrXjecyIPcUoh9EELyeEubeom1A=; 
	b=J7lJcO2NJEGWaQO+HxpgcGkNrCt6paSmqb7OcL2CoxszKs1bg+LYr3Ksp2X0Fql45tbiSCk6wDAszKXQ0/6VOjzxgGtDhL+OlMc+H4kpV9gcgOim1mNVUuAV6LjcXx0Graso0nacIJYE/knbrThpUDTSpb7x2B7FiTeWo37g1b8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773862053;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4kzMTYxGhMKT838ZBrXjecyIPcUoh9EELyeEubeom1A=;
	b=kvs9wvrWtwMePB5FLrs7sDGk2mJh72KBRJoUAEcRgP8hMlhMx6eQjkWUoKE3Fivr
	1OP7gTtTptfMqEYzaPsD9t12AF6zLmMLDNd9vItvG9r840yu0eeaY9dlonxnOrrUm27
	RRFgUpbZ6/KaRcQ+JQXRCDoihmjRICRUDs3ZitxE=
Received: by mx.zohomail.com with SMTPS id 1773862051538654.731684847297;
	Wed, 18 Mar 2026 12:27:31 -0700 (PDT)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Ross Cawston <ross@r-sc.ca>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1] media: hdmirx: snps, rk: Fix HPD hold time
Date: Wed, 18 Mar 2026 22:26:19 +0300
Message-ID: <20260318192619.3910060-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_122742_933362_253F7D9A 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

Increase time of holding HPD pin low by 50ms. This fixes EDID change not
detected by sink/display side.

Fixes: 7b59b132ad43 ("media: platform: synopsys: Add support for HDMI input driver")
Reported-by: Ross Cawston <ross@r-sc.ca>
Closes: https://lore.kernel.org/linux-rockchip/20260209061654.54757-1-ross@r-sc.ca/
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index 61ad20b18b8d..4c8957505a50 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
@@ -506,9 +506,9 @@ static void hdmirx_hpd_ctrl(struct snps_hdmirx_dev *hdmirx_dev, bool en)
 	hdmirx_writel(hdmirx_dev, CORE_CONFIG,
 		      hdmirx_dev->hpd_trigger_level_high ? en : !en);
 
-	/* 100ms delay as per HDMI spec */
+	/* 100ms delay as per HDMI spec + extra 50ms to cover internal delay */
 	if (!en)
-		msleep(100);
+		msleep(100 + 50);
 }
 
 static void hdmirx_write_edid_data(struct snps_hdmirx_dev *hdmirx_dev,
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
