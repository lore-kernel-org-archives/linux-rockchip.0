Return-Path: <SRS0=7a1M=JP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6507C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Apr 2021 10:37:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8ADB561090
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Apr 2021 10:37:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8ADB561090
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=posteo.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tSlDJrO6ZEePxiZYii4ERRlHhOoOMoGbxOHlPj8gYkM=; b=B1tmOh2zK/dEkJI2/yWwErM14a
	JZQfRGZCcUY/jeNEhY0ZIjLHyYlZWAuEb/KWIbGnqj6w9AkpzROU/6cr0FC2rkUy1G7LL8oxaXHO7
	oDjiueuz4bNF208eeMESi0BN+kyHDu16KIVtRiIfWp0xOW9ZPRu7WZlGm+JateNjdld6an5/GmvPO
	7o+sjCYrfs1NTTNC2X0TuYNO3zA/8LzqbwIjfKQtwdGpDL+WFjw1nTMq3QljBqSDQjHxTijrcI8BA
	zAkgi5NWBAJ8hAYywAsy1oeGLI1ec/LlgMHAkoNaAthDjPywlpOdffNuJoEi5U6KKRrEJBxshtxJ1
	6XYRG0Lg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lY4oF-007iou-T7; Sun, 18 Apr 2021 10:37:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lY4o4-007inu-Iv
 for linux-rockchip@desiato.infradead.org; Sun, 18 Apr 2021 10:37:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Ot8OPKAoQoIiEP0JuzXW49CCNqMseKfXE+omIfET6ig=; b=sUJzJU6JaLSXso9vmsT0TDtLKw
 4lsNPCGD1srszA4iSL8bPn1ozHGVTyjrhf6B5XnpmXhYPpACl2G9oCvMZbYO6z4jHlQ5vdMsONQML
 8BtGRL7Gg5jOTU4DNJBE/D7OBIOhy9sb8RdpuD6cAEHeq0LUiFAKaJJLrRAQpFn2EyxltGpwes9TI
 /xgumuBQfkJywHeZmRAN/K6BMyafIPXLZbf4SjaAKkpDrnVxOOALCugXw8Dpm2caFpHRVf+WMHm7H
 FnEEOARBHV91DWlv3521byzqc8V+HEZC42lAZEbKo9/4mXX+7OTd/8sMALGn+BjH1cMC4AoGj5+lh
 iN8U/kQQ==;
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lY4nz-00AODo-7z
 for linux-rockchip@lists.infradead.org; Sun, 18 Apr 2021 10:37:35 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 1607D240028
 for <linux-rockchip@lists.infradead.org>;
 Sun, 18 Apr 2021 12:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1618742235; bh=SAqTuehql45q0JuTWZy7CNkejtygzl6s6w7GoFO9cYk=;
 h=From:To:Cc:Subject:Date:From;
 b=RlMjRR7615JH/0ySZ0GRQG3PwnBHKDBHdXBuu3TjTg0TqkJOBGxBlN6Ma6CEUaCi/
 8FxVz+V64zEGXTwBOc04ViYe/K6d13yZ2g3RNBLL4hr79dxAnxYw7HnqId3MhaUv/Z
 KHnvuZ4T43oTjYtE8h9mcQC77hxnPN4jGzJ+isMEAOTjEnm14XbUYhnvNoxvoeHhGf
 5LPI1ebSycrK4edEY9qurHOuIllWgieiqSINVIzMcIGf7RDIBM1+S44M0RrVHfB1hp
 0+wiPjvOrsUsFrr1iNlhhEOouR0hX0VgeW3507eCA1fB5zIz2HQja6GCzgBwFlsT/T
 9t31xo3xwG0uw==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4FNRGH3q8yz6tmK;
 Sun, 18 Apr 2021 12:37:11 +0200 (CEST)
From: Sebastian Fricke <sebastian.fricke@posteo.net>
To: linux-media@vger.kernel.org
Cc: Sebastian Fricke <sebastian.fricke@posteo.net>,
 Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] media: rkisp1: rksip1-capture.c: Improve comments and fix
 typos
Date: Sun, 18 Apr 2021 10:34:25 +0000
Message-Id: <20210418103425.45525-1-sebastian.fricke@posteo.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210418_033731_587177_8ABE66BD 
X-CRM114-Status: GOOD (  13.42  )
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

Improve the wording of the function description to increase readability.

Fix three typos:
s/during processing a frame/while processing a frame/
s/it also update/it also updates/
s/there's not buf in shadow/there's no buffer in a shadow register/

Replace the abbreviation 'buf' with the full word buffer, the
abbreviation 'config' with the verb configure, and 'regs' with registers.
The goal of this change is to ease the reading flow of the comment.

Signed-off-by: Sebastian Fricke <sebastian.fricke@posteo.net>
---
Side-note:
I also believe there should be a description for the abbreviation FE, as
it is not described anywhere. I think it means frame end, right?.
---
 .../platform/rockchip/rkisp1/rkisp1-capture.c    | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 5f6c9d1623e4..9643bdd05b7b 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -830,8 +830,8 @@ static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
 }
 
 /*
- * Most of registers inside rockchip ISP1 have shadow register since
- * they must be not be changed during processing a frame.
+ * Most registers inside the rockchip ISP1 have shadow register since
+ * they must not be changed while processing a frame.
  * Usually, each sub-module updates its shadow register after
  * processing the last pixel of a frame.
  */
@@ -847,14 +847,14 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
 	spin_lock_irq(&cap->buf.lock);
 	rkisp1_set_next_buf(cap);
 	cap->ops->enable(cap);
-	/* It's safe to config ACTIVE and SHADOW regs for the
+	/* It's safe to configure ACTIVE and SHADOW registers for the
 	 * first stream. While when the second is starting, do NOT
-	 * force update because it also update the first one.
+	 * force update because it also updates the first one.
 	 *
-	 * The latter case would drop one more buf(that is 2) since
-	 * there's not buf in shadow when the second FE received. This's
-	 * also required because the second FE maybe corrupt especially
-	 * when run at 120fps.
+	 * The latter case would drop one more buffer(that is 2) since
+	 * there's no buffer in a shadow register when the second FE received.
+	 * This's also required because the second FE maybe corrupt
+	 * especially when run at 120fps.
 	 */
 	if (!other->is_streaming) {
 		/* force cfg update */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
