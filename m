Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDDBDC001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 21:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7IhCdanonOXXROwrqC9nsbTUMCsWWvp6PMRSGq1QWI=; b=nD+sXYxK5VD2EW
	yCmtDg7I9/wGYOvlSDbcbO13jbhRTHr3qakeHQgvjJjv3hVz2xfUyzNN4Bes1RslQMMA+8S2DuX9U
	R/Pns5dxrj9bo9arrSAbE74fwQdOT7FqZ5YXdLRW77ld9xpV7FtRJ1TqBeonz4AoWyuKLp5MnqLFR
	r9vS5NRlSI9nMxunIvpz8kwFZJoWEBqK3QcZzrefREUSfiN9Ypb5GEZ9t3g8qE25mKMfSDI0ncb7s
	qvisXDZEqjBoYl/x0Zl7UABB2Le8aKZcC5a8gBv6vnQzX4Pyh/0zqUhA+t9tC4Kx31Hd/vY5d/Fc+
	9BfEhfXKttWyfnZs3YiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUDDB-008lKl-0U;
	Thu, 10 Aug 2023 21:28:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUDD8-008lJd-26;
	Thu, 10 Aug 2023 21:28:51 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUDD7-0007gs-1M; Thu, 10 Aug 2023 23:28:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 00/14] drm: rockchip: Add RV1126 Display (MIPI DSI) support
Date: Thu, 10 Aug 2023 23:28:47 +0200
Message-Id: <169170291950.3456494.11268404792553621440.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_142850_692783_16711097 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
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

On Mon, 31 Jul 2023 16:29:58 +0530, Jagan Teki wrote:
> Rockchip RV1126 has VOP_LITE Display engine which can route
> RGB and MIPI DSI display interfaces.
> 
> This patchset adds MIPI-DSI pipeline support for RV1126.
> 
> Any inputs?
> Jagan.
> 
> [...]

Applied, thanks!

[02/14] clk: rockchip: rv1126: Add PD_VO clock tree
        commit: 5c7a71fd82350c2f5828a66a1f2f38306d61cbc7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
