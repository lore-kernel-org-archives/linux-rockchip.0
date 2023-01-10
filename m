Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89665C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNUEPd7fhW/oW3t8uPvty6xSmGJcqHyG/8MPAndorh4=; b=1W03LTG83Ms7L3
	hTzNTRVdFk20FLjFfBlmIF4I0yAgJYX9MePZQY9j5Mt7aziVHu5/tZIRa95BI1iTwXUUIeVQ8kl3F
	GLl/xKGKrrXnSegE0IGdWge07bPaHtgPlJRFFpLA2CIC8jkEzCzhjLgbUcgSukvpTRxbTcvRj3zsn
	gfA/yg08qtTtSRSJyaZMrAG4dgJVEdcAlqiEDTdbqUAC7entC7bHu4VOccCoangeKzExHK49+HIEJ
	GLoaaOOlot9cHCT9G/VI2fH+TiwygjMA2xInF2YBfUZ9LMSbFymVkT/WZmaBdqYnScOoN05U1Gy8O
	r/OEcX/PZLdb6upcIz8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGVl-007Zpx-Np; Tue, 10 Jan 2023 15:26:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGVZ-007Zm1-M6; Tue, 10 Jan 2023 15:25:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFGVO-0005YW-Jl; Tue, 10 Jan 2023 16:25:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Xing Zheng <zhengxing@rock-chips.com>,
	Quentin Schulz <foss+kernel@0leil.net>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	stable@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] clk: rockchip: rk3399: allow clk_cifout to force clk_cifout_src to reparent
Date: Tue, 10 Jan 2023 16:25:37 +0100
Message-Id: <167336433299.2636594.362082360376536202.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221117-rk3399-cifout-set-rate-parent-v1-0-432548d04081@theobroma-systems.com>
References: <20221117-rk3399-cifout-set-rate-parent-v1-0-432548d04081@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_072549_735631_1753725A 
X-CRM114-Status: UNSURE (   9.34  )
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

On Thu, 17 Nov 2022 13:04:31 +0100, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> clk_cifout is derived from clk_cifout_src through an integer divider
> limited to 32. clk_cifout_src is a child of either cpll, gpll or npll
> without any possibility of a divider of any sort. The default clock
> parent is cpll.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3399: allow clk_cifout to force clk_cifout_src to reparent
      commit: 3ad07d73ae650057fe64b2d85721c644a30428c1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
