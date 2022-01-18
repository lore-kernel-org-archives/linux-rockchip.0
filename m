Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C18CEC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 02:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lrm/6tGcUryfRObs1d04AWXtvN/Ib/TJlJP8h+jMRu4=; b=W2q02VSLePQXQL
	nj8/lJFC/9cmF2nEr3TeTfvZkmoMZwW2S4ZZuDIpL+iOwZG3XYoCrEvnRUSbfwihE22vCYHVYthig
	l+9/MqhLaqaK6lDtfdkPEgTC0n4/RS7d1nQzGuiBCQcF5bu+sQtvPfjwKR+vVphqRn6+ba0JSkzP8
	/UsMU1yBA31KJAuz0SLFzRPSPQIIXv/8eaz97Ut8tIaHjl9AICWfOrqGPfS2siAq92NGnflkFyFf6
	aI0UpTUZLDfTGRF99gZv41m4JXpE9ilgXNcYsnJ9u13pyV03xhSQKqgV8LTQd2yo1uM2OYtIcJhur
	oYB0T85hwLH9HixBdzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9eJQ-00GzPg-Ae; Tue, 18 Jan 2022 02:33:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9eCi-00Gvha-1y; Tue, 18 Jan 2022 02:26:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5DE4461163;
 Tue, 18 Jan 2022 02:26:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA35C36AEF;
 Tue, 18 Jan 2022 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642472795;
 bh=s1+wA1K07F5Sne0E08ebjE9IXHWGC4ncgOKASX8xlfM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uHP7lZybTGN9ygG6xWy+Df3c6i686PG/BPlv5ppxOB28B3BN3CqBFGk3YsBP1Xqrc
 jg0Aw//CHR/x0eyVKh2yvyk9dpdFIa6cEOU5+LHtW/f36/FyRoFLz78lyC10CNdrCj
 kA4fl903hOHVkfav7EGrUaToxFY9wwZW7N24FA0Y0GIFkdwfrnU7bYLqLqkhDl5pHd
 lYQVHY8XTu0CJaT1nLQ8jK7Pfk1rBvbOqLxwzatO29GIh/VxMsX/YFNC9TY5J8oaT+
 HOo8TkcXtVJMH1B79NAz4ZaeyXRNIOLwSlbNLwHXMaH1vUCOVV97FT37urSjrw3Wn/
 xhBLNRkKbJ9ww==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Sasha Levin <sashal@kernel.org>, helen.koike@collabora.com,
 dafna.hirschfeld@collabora.com, mchehab@kernel.org, heiko@sntech.de,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 135/217] media: rockchip: rkisp1: use device name
 for debugfs subdir name
Date: Mon, 17 Jan 2022 21:18:18 -0500
Message-Id: <20220118021940.1942199-135-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220118021940.1942199-1-sashal@kernel.org>
References: <20220118021940.1942199-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_182636_209320_0429E861 
X-CRM114-Status: GOOD (  13.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Mikhail Rudenko <mike.rudenko@gmail.com>

[ Upstream commit c2611e479f5d9b05108270e1ab423955486b4457 ]

While testing Rockchip RK3399 with both ISPs enabled, a dmesg error
was observed:
```
[   15.559141] debugfs: Directory 'rkisp1' with parent '/' already present!
```

Fix it by using the device name for the debugfs subdirectory name
instead of the driver name, thus preventing name collision.

Link: https://lore.kernel.org/linux-media/20211010175457.438627-1-mike.rudenko@gmail.com
Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 50b166c49a03a..3f5cfa7eb9372 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -462,7 +462,7 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 {
 	struct rkisp1_debug *debug = &rkisp1->debug;
 
-	debug->debugfs_dir = debugfs_create_dir(RKISP1_DRIVER_NAME, NULL);
+	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
 	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
 			     &debug->data_loss);
 	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
