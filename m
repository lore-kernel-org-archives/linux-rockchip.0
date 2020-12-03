Return-Path: <SRS0=q1ZK=FH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A73C63777
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Dec 2020 12:57:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7502C21D91
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Dec 2020 12:57:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7502C21D91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7ikc+f6/AVZFokUPYxLhjAKCwLcGQaNZnRgobvpl5QI=; b=QQgZL+gyyKzLOx5vypwQcGNTKW
	LgP9uvaC6vvevvY4I2p4EHwUjHVFfRt5UILyOpA8PrFajWOgux9x9tapeFh6SgFwv4IuDzwzFKmtY
	iaH/G3tvTNvxx9oBDZnArZn3oYxzMsBBNnNMfraDBPEp9OImIcpVNnrGZWd4R8xLCWVsUmj0tPUZR
	jY7idqieCUgOLRttxDBYtyanLQ8xI5tzoYX3+0ECZIlHKKWENLsq3lhJzGU9tIFM3sNfpzE9uJpG/
	UxT4T5Tl7dXWbjUnoRCBI/yEY494E3hbWr3f3akZSx4lWEqhQ+rBO81OjqmubrxS7Qh7WShUGWazg
	d4FIgqBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kkoAR-0006iK-3Y; Thu, 03 Dec 2020 12:57:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkoAP-0006h2-9U
 for linux-rockchip@lists.infradead.org; Thu, 03 Dec 2020 12:57:02 +0000
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Authentication-Results: mail.kernel.org;
 dkim=permerror (bad message/signature format)
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH] media: pixfmt-meta-rkisp1.rst: fix two build warnings
Date: Thu,  3 Dec 2020 13:56:55 +0100
Message-Id: <38d8dfe0a9e16c2260d1325afd7465215e4fd278.1607000212.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201203_075701_419064_F8818A75 
X-CRM114-Status: UNSURE (   9.33  )
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Helen Koike <helen.koike@collabora.com>, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With Sphinx 2.x: those two warnings are produced:

/devel/v4l/docs/sphinx2/Documentation/output/videodev2.h.rst:6: WARNING: undefined label: v4l2-meta-fmt-rk-isp1-params (if the link has no caption the label must precede a section header)
/devel/v4l/docs/sphinx2/Documentation/output/videodev2.h.rst:6: WARNING: undefined label: v4l2-meta-fmt-rk-isp1-stat-3a (if the link has no caption the label must precede a section header)

The reason is that there's no blank line between the two
identifiers.

Fixes: 3f46cac6787f ("media: admin-guide/pixfmt-meta-rkisp1.rst: pixfmt reference conforming with macro")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst b/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
index 922fa1d59898..fa04f00bcd2e 100644
--- a/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
+++ b/Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
@@ -1,6 +1,7 @@
 .. SPDX-License-Identifier: GPL-2.0
 
 .. _v4l2-meta-fmt-rk-isp1-params:
+
 .. _v4l2-meta-fmt-rk-isp1-stat-3a:
 
 *****************************************************************************
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
