Return-Path: <SRS0=C56+=CD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEC6C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 13:22:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 356D620639
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 13:22:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rQ1tnK2d"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 356D620639
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=twX0oEe5PkRDyUJdxmnZxO1WH9bVdrNUypRP4bISLek=; b=rQ1tnK2d3Y1w4AWwTufSjZyx7k
	JLwS5YsNndijFnSmeTpzE2FhPll8KkUm30YXEPtOJ9gZPf5h6e5NWu1gi/vcdhLI6Zb9tUzMa7iN9
	cxu9g4ovhZLp+jr5vxhqzldJOHAmLw4egx9kSc3Os8DYLrVlTEr6lj0RfazfgbatIICRZLJ0OYNt0
	j28v+mmlxsVsi8NKnDYwaJANq6jcTxfmTGYXbwbtxUfrv+IAgzI6dOw6mZsnA+vHpj2FmYeFJrPpv
	kcH/RvvVNOxtjo/WdtqsbtTTDPIXT61mdV4bwL/1Wpa/ZuqxqG4USTeP5PY3Tkl2qmM9GyAslUT9W
	jkX29ixw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAYu6-0008V5-Mk; Tue, 25 Aug 2020 13:22:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAYu4-0008UU-HN
 for linux-rockchip@lists.infradead.org; Tue, 25 Aug 2020 13:22:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 6A71F2996D4
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] MAINTAINERS: add Dafna Hirschfeld for rkisp1
Date: Tue, 25 Aug 2020 10:22:09 -0300
Message-Id: <20200825132209.193435-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0.rc2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200825_092220_670678_12658FC8 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: hverkuil-cisco@xs4all.nl, kernel@collabora.com,
 dafna.hirschfeld@collabora.com, linux-kernel@vger.kernel.org,
 tfiga@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add Dafna Hirschfeld to rkisp1 maintainers list

Signed-off-by: Helen Koike <helen.koike@collabora.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index deaafb617361c..3deb954b2bb5d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14858,6 +14858,7 @@ F:	include/linux/hid-roccat*
 
 ROCKCHIP ISP V1 DRIVER
 M:	Helen Koike <helen.koike@collabora.com>
+M:	Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	drivers/staging/media/rkisp1/
-- 
2.28.0.rc2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
