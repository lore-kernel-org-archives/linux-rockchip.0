Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3615DFA373D
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 11:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hEPomqnFWVVuz+bXd5UWjm8owiIDEHNu3ArAt1Bdc0=; b=B3HJOj7wPaWUNM
	r4fg/K0jL7yyvvVwd2evxyLYPoyUx189UJH0hIgyhJizqVKYW0TCeO1vSpnn9k7vUTKBppiZg0rJ+
	FTKWlkb0kALPWdsWL03R3XY0TOrr1iJ5F3AXZNRH4xgIJ72qcJzrgjwibMuDO3UaFg1uqfKBf0ker
	w35cHG/3bN0NjfKVH87871LugXCOZ7fOEnJaWntiN0ZUfyB2Zg+ghj2Qse2fH+rPNhuIQf4F1+HuO
	QPSJBGV7PCpWUkwsxuLnbUioaLLcED7haHo3CuH5zUonsbga89VK49r0RLc45TvEA8kyXoc55TPUg
	xstDNIw1zUsG/bGOWc6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppVd-004dop-54; Tue, 01 Nov 2022 11:32:45 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oppST-004boj-Kt; Tue, 01 Nov 2022 11:29:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 31F5CB81C9C;
	Tue,  1 Nov 2022 11:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5AEAC433D6;
	Tue,  1 Nov 2022 11:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667302166;
	bh=CmSRNfBV86EsQV9BETmdAkbeneeSLp94EZfRDV42lKU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F1D5z5E8G7SSrzEFyWUloZ81k+SODXUKWJT+vxSetplN1MCsEosI1eG716Skw4dv+
	 PYGeD/JDbqKtKSSpSPQ4Wrr3RzRjVzYzoZdWZMRIqeS+lX9oMcoRnhioeWAsooPqkt
	 cNdf2toDnPMWZTRW15qNymMsl07KvgbrcpvBYSMEhYPFDAzhpP91cEIB9saVPfLh33
	 Zk9bvfbdxwt138ZVnahy13HNPoX8FdEOTnGhDEl2qzJRmlwJTquAUgmOtQHOJnnxtg
	 ze1NbJBsxc41iCkm9D7hck7BOeZMpQSOHDEN4AYNEaqbUSdgl9PDklpCKAXM0qaoDg
	 1XhP8rNEZRolQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 04/19] media: rkisp1: Zero v4l2_subdev_format fields in when validating links
Date: Tue,  1 Nov 2022 07:29:04 -0400
Message-Id: <20221101112919.799868-4-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221101112919.799868-1-sashal@kernel.org>
References: <20221101112919.799868-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_042929_873254_BB04FB35 
X-CRM114-Status: GOOD (  12.68  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

[ Upstream commit c53e3a049f35978a150526671587fd46b1ae7ca1 ]

The local sd_fmt variable in rkisp1_capture_link_validate() has
uninitialized fields, which causes random failures when calling the
subdev .get_fmt() operation. Fix it by initializing the variable when
declaring it, which zeros all other fields.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 41988eb0ec0a..0f980f68058c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1270,11 +1270,12 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 	struct rkisp1_capture *cap = video_get_drvdata(vdev);
 	const struct rkisp1_capture_fmt_cfg *fmt =
 		rkisp1_find_fmt_cfg(cap, cap->pix.fmt.pixelformat);
-	struct v4l2_subdev_format sd_fmt;
+	struct v4l2_subdev_format sd_fmt = {
+		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
+		.pad = link->source->index,
+	};
 	int ret;
 
-	sd_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
-	sd_fmt.pad = link->source->index;
 	ret = v4l2_subdev_call(sd, pad, get_fmt, NULL, &sd_fmt);
 	if (ret)
 		return ret;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
