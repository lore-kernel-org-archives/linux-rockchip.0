Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC21CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 12:06:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B303660F48
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 12:06:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B303660F48
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jK4rM3wUDqAwuHyIYjT6rGdM5FHbuZ5kWYekWMOjhgE=; b=d+MKH8IS9URfhv
	p43idg+S+bsf8imluvjqNpgwBjcxvkY1hh7SWEPfhUhyKJJosYeYdNZLbLKxcsRRpOqhQ6k4pVGUG
	+GPNhfYreO+/gwYj7VkrlVJr8e9HCC/cM6i22KGDWgTQvcQo5U4r+SzL7e11N+6aPZl7nT7x5qWIH
	/IA1xVVkePDGVCIb0eiXckhuFWjxj4ueJWc8E+ETUPBrTus+bfkHomrTw8kONFH+gV1PFUlmdLr17
	FzhLhYIy32Yyd9rLW2JN+Uw22HP1W0RwopxdmZRKMxl2SI1lqSzdR2+xkO3lODjvXKgQBkR6DJORe
	xD+rKro5JzTrq+TRzGAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbLyj-006pXk-Bj; Fri, 15 Oct 2021 12:06:25 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbLyW-006pVi-Of; Fri, 15 Oct 2021 12:06:14 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 a140-20020a1c7f92000000b0030d8315b593so2751470wmd.5; 
 Fri, 15 Oct 2021 05:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2pgx0g7Ab7G9I2hs6+wwaJaXi+B3ZQHmcz1sfiWia5A=;
 b=p9mF5RB3QcxoH1nzcEzae/jHbNvfWVcw7H7HO+Fj86UQt9K3rhLQuXfj1nb0qqvpIA
 Dg0olTtP9ma+CeksRGL56SJV1XVJB+azvRd3888/mR/zKtVXVF6x1qsUrKagFFmGbJvb
 qyS/D9YCldWULqp8R0thYoqPFz5iSr0Rjminq+iniEzE89oYXV8gfMn6kfuXTCPXTKFQ
 DsyhZl8cCqgCZyz6Do4vVqEONM7FHf23ZqIinSQ+ibZ83LAMahLC6OGiNN/GDYrQ1QlK
 hOvbSrw24A5rqZzRVQ0ZhJo4aIGjyLEFv+4iC4zKHXGtBo6EPMcqCyjG4HIOejbpXw6S
 5rBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2pgx0g7Ab7G9I2hs6+wwaJaXi+B3ZQHmcz1sfiWia5A=;
 b=uxxxLbiD3w3Wnkle6Jqq17rKMwYi0b53WURjBkNfJY6bYLfPC6p7Sy00ipZ05nq7lH
 /ByEOpg5XUkSs+0+EuCn6iWCuXiSQtXricoOKnraLND6uPof/Y/xCuU/lSnNkqBkbfm2
 RCWXOVDkQ8zATtX8vzv4e7sd6NELDFrK4DFqTU7BDuTZ7SUkELFBQ0K9o062cCXI5ag2
 jB+Tr5JEKzensEHNYcobeaezYNxUJfZmkzkpBKLIchqY1A4nM/RYxrLa7QsmUgKR55qj
 6ZAaC1tCKYEwbSZW9y7tOkf6yz04t7SNdJl2+t42KLmW0svgrjncQYzcrtY1tI/O5OH8
 hW6g==
X-Gm-Message-State: AOAM53047stR//EijG0pP+dnhCqpFxWpZKtVWkZwnYUwjqBiSOwu6L1I
 jL89f+7ADk6JA/5YdWYBu3c=
X-Google-Smtp-Source: ABdhPJwSdzurtgFgxXDGbUKhIi2uu02rWc1l+HCi+1IONPSJyiSZnabW2KnH8jXzGtkWKVBYzoIZHQ==
X-Received: by 2002:a05:600c:1c10:: with SMTP id
 j16mr26328587wms.12.1634299570676; 
 Fri, 15 Oct 2021 05:06:10 -0700 (PDT)
Received: from localhost.localdomain
 (dynamic-2a01-0c23-c1f2-fb00-f22f-74ff-fe21-0725.c23.pool.telefonica.de.
 [2a01:c23:c1f2:fb00:f22f:74ff:fe21:725])
 by smtp.googlemail.com with ESMTPSA id j1sm4869155wrd.28.2021.10.15.05.06.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 05:06:10 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: sboyd@kernel.org
Cc: heiko@sntech.de, knaerzche@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, martin.blumenstingl@googlemail.com
Subject: [PATCH] clk: composite: Also consider .determine_rate for rate + mux
 composites
Date: Fri, 15 Oct 2021 14:05:59 +0200
Message-Id: <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_050612_842970_16915548 
X-CRM114-Status: GOOD (  19.21  )
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

Commit 69a00fb3d69706 ("clk: divider: Implement and wire up
.determine_rate by default") switches clk_divider_ops to implement
.determine_rate by default. This breaks composite clocks with multiple
parents because clk-composite.c does not use the special handling for
mux + divider combinations anymore (that was restricted to rate clocks
which only implement .round_rate, but not .determine_rate).

Alex reports:
  This breaks lot of clocks for Rockchip which intensively uses
  composites,  i.e. those clocks will always stay at the initial parent,
  which in some cases  is the XTAL clock and I strongly guess it is the
  same for other platforms,  which use composite clocks having more than
  one parent (e.g. mediatek, ti ...)

  Example (RK3399)
  clk_sdio is set (initialized) with XTAL (24 MHz) as parent in u-boot.
  It will always stay at this parent, even if the mmc driver sets a rate
  of  200 MHz (fails, as the nature of things), which should switch it
  to   any of its possible parent PLLs defined in
  mux_pll_src_cpll_gpll_npll_ppll_upll_24m_p (see clk-rk3399.c)  - which
  never happens.

Restore the original behavior by changing the priority of the conditions
inside clk-composite.c. Now the special rate + mux case (with rate_ops
having a .round_rate - which is still the case for the default
clk_divider_ops) is preferred over rate_ops which have .determine_rate
defined (and not further considering the mux).

Fixes: 69a00fb3d69706 ("clk: divider: Implement and wire up .determine_rate by default")
Reported-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
Re-sending this as inline patch instead of attaching it.

 drivers/clk/clk-composite.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
index 0506046a5f4b..510a9965633b 100644
--- a/drivers/clk/clk-composite.c
+++ b/drivers/clk/clk-composite.c
@@ -58,11 +58,8 @@ static int clk_composite_determine_rate(struct clk_hw *hw,
 	long rate;
 	int i;
 
-	if (rate_hw && rate_ops && rate_ops->determine_rate) {
-		__clk_hw_set_clk(rate_hw, hw);
-		return rate_ops->determine_rate(rate_hw, req);
-	} else if (rate_hw && rate_ops && rate_ops->round_rate &&
-		   mux_hw && mux_ops && mux_ops->set_parent) {
+	if (rate_hw && rate_ops && rate_ops->round_rate &&
+	    mux_hw && mux_ops && mux_ops->set_parent) {
 		req->best_parent_hw = NULL;
 
 		if (clk_hw_get_flags(hw) & CLK_SET_RATE_NO_REPARENT) {
@@ -107,6 +104,9 @@ static int clk_composite_determine_rate(struct clk_hw *hw,
 
 		req->rate = best_rate;
 		return 0;
+	} else if (rate_hw && rate_ops && rate_ops->determine_rate) {
+		__clk_hw_set_clk(rate_hw, hw);
+		return rate_ops->determine_rate(rate_hw, req);
 	} else if (mux_hw && mux_ops && mux_ops->determine_rate) {
 		__clk_hw_set_clk(mux_hw, hw);
 		return mux_ops->determine_rate(mux_hw, req);
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
