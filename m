Return-Path: <SRS0=NLp6=JV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40C24C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:59:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F02D56054E
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Apr 2021 06:59:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F02D56054E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b1punkdGVwwMMkKLaugUpiO93/83xk8TfJR6dvbE4qk=; b=WsRxkWu/crg2hDoY/Bu2Vh6cW
	WXw+dpDDBQ0q9wXLEKPkn3em+r3yprLHYh3JV3QTWo+L2gRNvOtQqg8S1Z7iY3oGnJ86UGx+2BJ6+
	qzQfpxvD85Q6xar0MK0RmCL/tf5hiVOMYe326Lcj3u5CBKukMqNaaxVEUOlgURQ6lD/sGxq5/Hdbo
	QZAEAF/rfcEjowLHjbc1qbDl+ct4wnOEnW4aXx3u6FU+VECmcoJpd0GZ0DEiYDNxEhoWZX+KIHiHy
	+VGcsGYLcr0ZDwjZ/jbp1srFYdGtuJ00Tr8SBwZwzCp4BTF4btospdiCsLEiBvb1Km5/rHIBTp7BB
	j/Dnii6EQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laCGH-003CPS-HL; Sat, 24 Apr 2021 06:59:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC3a-003B3u-Lv; Sat, 24 Apr 2021 06:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Sender:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Reply-To:Content-Type:Content-ID:Content-Description;
 bh=31lQ9Q0q3z8nrhZvnV4h0miuLmDMFUTT13BiN8z3rQ4=; b=bm0vAlXJ6yuCNr9Oh9bu+dHzu6
 wqg9bbFowNwRcF4HZcEpiFFdIHVpjpr7YIMDlMGu8JYLe7FyoEGEeOFEmwDd45A43ytvGlBz4DOni
 ebgNjDTHvNkvShJH3rX39SgHwXFUtmUEcamU8ryWq5ROJEN+OX//wd6Gi8OLXu1xtyTXe17C8Cp/3
 rDHHAVHCIJ4Pl4m4MqaDHxg2wczn1wRd8AVSoEOnYnYhqu2HgV9ObaoxYqwTzB4OonJwPuzNl77xA
 tmcCbeMVnKyUKB3QeWp2RRp8kyML9KC1tJNCGMYKrj9Dxrne1yKAjuyrWd/+txhdvcBaHBu66madP
 dE2Vf9Ig==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laC38-002ong-Mb; Sat, 24 Apr 2021 06:46:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DAA3661947;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246734;
 bh=Luw8i8Wcr7RDhUVQIyKtJIy/TBYgdc1v0nBhRGIz5pw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JJ/17EXdIaQo4vBdqcn8JHsGJHsoMw5jkwHxTd8RLhlkeCZAVlDKL4jNlzaLs6zMk
 cj0bG8LnkmhW8S5GC1ZZuqLIUmdSxJX9He/1gjHyQRPUVhn+Kra6G0EBaKWOhGhzle
 Yt+PQvyv8jUgLE+29ufR1Oj0O1C5zJP31ty8iLLdn3Y6Og3qVG6+uusqBuZ0G71rCq
 qUlN1tmG/hoaAGBgaAkvRuXVEUvwk2fhX/enlHxkU/Imxl2NrlxGmrEWhx3NkiN+j+
 d17kifflA8o2KmO0/Ki7VtRHwTKYRVvCc5pdLFCJ9MuB99GYHxTWWmCX+fCd8UzFVk
 l60IDpBEO1rEg==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2m-004Jh6-U4; Sat, 24 Apr 2021 08:45:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 70/78] media: rga-buf: use pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:45:20 +0200
Message-Id: <d81e6df2d1a77dc70a4172b77fc15576010e05b3.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210424_074600_335254_FD5E5092 
X-CRM114-Status: GOOD (  11.09  )
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

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index bf9a75b75083..81508ed5abf3 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -79,9 +79,8 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
 	struct rockchip_rga *rga = ctx->rga;
 	int ret;
 
-	ret = pm_runtime_get_sync(rga->dev);
+	ret = pm_runtime_resume_and_get(rga->dev);
 	if (ret < 0) {
-		pm_runtime_put_noidle(rga->dev);
 		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
 		return ret;
 	}
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
