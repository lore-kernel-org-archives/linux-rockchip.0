Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C88EC4363A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 15:47:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D06022247
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 15:47:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Bh9EuC5l"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D06022247
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6R74AaJ8/Qr+zgy8W6gyR2XTroyLW2qCIySK1JxD0Gc=; b=Bh9EuC5lsyuLApAuVXBKvj7yfb
	RDzibOD0dvmVK0ZUgr9bwRb2n7KQpCLt4Rwu8uunqM4j7Q4pXORkpfPm+mY1JYTU7FjLuG4kSBlyo
	3ONWnPLUKbZxj17djAsBwSwZlce+x9V/oGwYB9ZQ+4niR1l6CwFoN24VlFafhJt2lKWwEiNB5+76c
	vTo9NaE8PAJTdTLbg3OjZsL/x2d1UuVkIv0K7cpzTdzMR8C1y5NlIvykEQO/yfykHUSwL2L3NrfsV
	36gXEpXCOHSEU/67yc33pMuYTn7Wap+Fx0wiRvgVX6QJz1Wk3bRDxrPSlSTPWIPxVwHZeQ6yHveWl
	TJzoaF6Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUtqi-0001CT-Ka; Tue, 20 Oct 2020 15:46:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUtqg-0001BY-Ju
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 15:46:55 +0000
Received: from guri.fritz.box
 (p200300c7cf435b0028a32f4e277d2227.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6A55E1F44EC1;
 Tue, 20 Oct 2020 16:46:52 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 1/2] media: uapi: add MEDIA_BUS_FMT_METADATA_FIXED media
 bus format.
Date: Tue, 20 Oct 2020 17:45:21 +0200
Message-Id: <20201020154522.654-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_114654_802615_9550FB8E 
X-CRM114-Status: GOOD (  12.31  )
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

MEDIA_BUS_FMT_METADATA_FIXED should be used when
the same driver handles both sides of the link and
the bus format is a fixed metadata format that is
not configurable from userspace.
The width and height will be set to 0 for this format.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
changes since v1:
1. replace "This format may have 0 height and width."
with "Width and height will be set to 0 for this format."
and add it also to the commit log
2. s/meida:/media:/ in the patch subject line

 include/uapi/linux/media-bus-format.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
index 84fa53ffb13f..2ce3d891d344 100644
--- a/include/uapi/linux/media-bus-format.h
+++ b/include/uapi/linux/media-bus-format.h
@@ -156,4 +156,12 @@
 /* HSV - next is	0x6002 */
 #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
 
+/*
+ * This format should be used when the same driver handles
+ * both sides of the link and the bus format is a fixed
+ * metadata format that is not configurable from userspace.
+ * Width and height will be set to 0 for this format.
+ */
+#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
+
 #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
