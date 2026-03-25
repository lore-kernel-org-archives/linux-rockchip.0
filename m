Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF1DF103A9A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 10:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5AnJ20lZjeiAlamy4E6fuVVt9VyHQP9gTVZAMf+JpY0=; b=vMUaQzwM5omOgV
	5NsIlyF/6ALaJXmkUHcime/DiiRpkn2MLWEgtbFvmVxkr6YL4Y+rAp1UEcjcxF3pSSsBAL0CiDJ74
	KzFQwxg0Fj+PdAInRkDmKNELyWyoPq1yP7c05XF/gmB6JKs9LpF8W5TIbBVrLTRHGw9NI20usUCLw
	MXH18ti765nQwiPbZviWqbtVeZxKTGlk3qzKn8nsUWOORGyMtguJIgU5THFwPuzC1u4PC1WukUUhk
	BfdKnDgh8T3LIOQb9DStqpYNLJu3ps6xX4RJNZmSBXN/e8aNhHKWUwI/ord8LUof9BANZbLGdVL3V
	dJbwMS6bJ5hJJ9fnhUfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Lw7-00000003ByU-2xqt;
	Wed, 25 Mar 2026 10:58:07 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Lw5-00000003BxZ-1oZz
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 10:58:06 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774436278; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y7YCwHKzH8hiDAmnV1KUrd+IVN07UtPzFkqbD9FwE9D5lEDFGtb0pzQuy6wIWTTiyRrQA+9boVCvdlYQwC8J118KESfTl03jOaKpBWCAMObuNBdsqoQtNFWEwB8bM+nQuHNPleBHD9g3FEiVJwvp3MKB1+rFx5OWkQJVODGtVD4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774436278; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=LZX8KGo4PZ6B753XIW7wXx0NwuBo24mvyseB5KdfeiA=; 
	b=CSLvxmGzf4i89ZEayN2s55qxcZIMlJhv2q1BTjRTfONKLbEW6Qrh/dyGxrlawwXo4KZz82vY+FMhWmK0XWpilb8+NLTmajP2yZ6zBspNjaf8DI5twM7KLFkLZviuq9kbvHmXPhXeX+vzEEoNk1Tmwiqn3KOnsPkDLaPj9GXGzbU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774436277;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=LZX8KGo4PZ6B753XIW7wXx0NwuBo24mvyseB5KdfeiA=;
	b=C3xDVnHmMoUC+rQxmG9E1JQGdTZt5KBGSMQtDER/26nRZ60Ab2ZVKuGGoUUlngr3
	x0GgV++pKowKdzTmJZAgMWAJgRt4YkB8ukFwD6DHLEzDXJmuE74FaxMLTC37YmifT19
	bwy5QQJ78qoC3xTCMy58YLRQGVaSW/k49DFv4cfg=
Received: by mx.zohomail.com with SMTPS id 1774436275676558.7550111861934;
	Wed, 25 Mar 2026 03:57:55 -0700 (PDT)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Ross Cawston <ross@r-sc.ca>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] media: synopsys: hdmirx: Fix HPD lane hold time
Date: Wed, 25 Mar 2026 13:57:42 +0300
Message-ID: <20260325105742.63236-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_035805_519868_C3F077BD 
X-CRM114-Status: GOOD (  10.04  )
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

Increase time of holding HPD lane low by 50ms. This fixes EDID change not
detected by source/display side.

Fixes: 7b59b132ad43 ("media: platform: synopsys: Add support for HDMI input driver")
Reported-by: Ross Cawston <ross@r-sc.ca>
Closes: https://lore.kernel.org/linux-rockchip/20260209061654.54757-1-ross@r-sc.ca/
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---

Changelog:

v2: - Corrected commit title prefix as was suggested by Sebastian Reichel
    - Corrected mixed up s/sink/source/ in the commit message.

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
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
