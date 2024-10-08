Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA21FCEFC3F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 18:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YHVPXZ6RstddVkqYNhzTqRmGHVy/ewsVhC4oGaZuOKA=; b=C9QEeaKR4fzexJ
	dDHE8LCnhy4rwXWrJkcB3/lnpGynVwu3vaKirLHao4k37grAcH6sTpdb57opsvyQEIBH7bz1bib9M
	LTV+1HvjiX+Yg1QmjrTIjNVPmGrayEZHWm2Tf+XbBSOJFSPyQawvHY0MSPTWfb/PR1ESu1g0YQvMw
	GRw+AdAEPEl5L8l6JR53svOcNkUUYVk/ili32cQQftAB4XpjHXYebJb6g2l4mByO+g1uuAQ95gmQw
	U5tyuTj8vKClUW6DIO1lDchDkwFgCKwH0JOfvct1ZxaVeT2vHilmCPX2z8R2QS4dIHbFAe3gc9sKM
	FrlA9VbBbU3JbJIeioDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syFDI-00000006qmh-46C6;
	Tue, 08 Oct 2024 18:45:40 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syE1u-00000006eKi-0nO3;
	Tue, 08 Oct 2024 17:31:50 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728408587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AYFhlZBQl30d0/K1Ing+FBJNjRss/IOlkrpTJ/fuidg=;
	b=gxtcQKzqZ9QlhTpiLrVhbI4Fha7eEuCxXuwfs3nFN9/ZRd8prRv7u2vdu5q7GiXCJEWq+y
	S1+x/Ob1GMDG2iys2rcwz9yQvespzkA/0Vzc+CmAJUDYFf1wcVsbOpCjFgsLYQ7FFnvxqg
	XLDBSxPkfunmx2tjgwMgyJau/gQPXWj6yejkBsKaLv6K80KmcoGKrSD+nJCyJSsxZWL3jY
	ogzSDmTWwDsRTb8SvcrF5+a0ZOfPV0Wy+nz/NV7F1YYQxTY5Wai8i1CcRc6zJRLv24SHk2
	HwrAqY2jnk038aQXfIAFDp3/5U6hDzMBaEHOA0j8MaEZEQxaos5+ACsZugMxPQ==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	gregkh@linuxfoundation.org,
	rafael@kernel.org,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] driver core: Fix a typo in __dev_probe_failed() comments
Date: Tue,  8 Oct 2024 19:29:41 +0200
Message-Id: <cec37f5568afaef8fca2d35bb01c90556ccbb4f4.1728408464.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_102950_652463_61A5357F 
X-CRM114-Status: GOOD (  12.69  )
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

Fix a small typo in one of the variable names found in the comment block
inside the __dev_probe_failed() function.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    This is an incremental patch for the patch series [1] that's been already
    merged, so it should be applied on top of the series.
    
    [1] https://lore.kernel.org/linux-rockchip/cover.1727601608.git.dsimic@manjaro.org/T/#u

 drivers/base/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 5f156a9a10a4..a84a7b952cfd 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -4989,7 +4989,7 @@ static void __dev_probe_failed(const struct device *dev, int err, bool fatal,
 	/*
 	 * On x86_64 and possibly on other architectures, va_list is actually a
 	 * size-1 array containing a structure.  As a result, function parameter
-	 * vargps decays from T[1] to T*, and &vargsp has type T** rather than
+	 * vargsp decays from T[1] to T*, and &vargsp has type T** rather than
 	 * T(*)[1], which is expected by its assignment to vaf.va below.
 	 *
 	 * One standard way to solve this mess is by creating a copy in a local

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
