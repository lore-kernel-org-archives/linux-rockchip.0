Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9546ED1950B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 17:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dnd5Mj3nBS9doYjM5wNi+y08W/uxRs4A71hDmzDByB8=; b=k6PYtpqeZmcncx
	aH8JayIMZ+EpX/hmKh7xSJ4NIJJXvYnLsQL7R0OaNdRuOtHuVMwWaSIIGXLHQg+B/FfP6yH+CR4sY
	CcBuqv2TJnWoPeQaPdTBHrSmicI2wzAGsAOxQRBpweHdMnk1xRqK1z1D4Gn/GQUoWtVihyRnu2qAZ
	7G8shw7YfaRWzMnnM/RO7ImM/yW6goDYqi4xWUoelBkJZiG6iIt8ejlR7m+zY4WZ6pt+NKcOTqmKN
	8cNUtcSa5RNZuj99FONjAzohwLFZXBsiatcqpNC/97NAuUHF6RAfv/+Jc/Ld28ZEtYdiuUo4+3Cj1
	9/ltJybY6+zn0YFiT65g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkQFI-0000000Cx76-0Uk7;
	Mon, 26 Jan 2026 17:19:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkQFG-0000000Cx6Y-1Z09
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jan 2026 17:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=koghH/SniiQSDSU30WJkK9pvALB/u5D7ZgRPTcePyXQ=; b=RRg2jnm3qQB3aMasEsRDk7yfnW
	xUKv4mLw0TbQ8lKMqdQhG2Pu/Tl1m79oy41ILTvvTijOfuGLM4iTQeRd7jcwOGaaN15dlNJl6Ts7w
	H6U7lNRgXA+KoTpQoc5ugW2iMsrggDQEN7fF521Mhs8m/RRQsM0NYv+b2jeXGtjEZ+/GkoSha5xgT
	IZTuE9K/Kqc5S/0l8PD3s0FNB6V6LlqjtJ1V7DDPAJBx/fUNw4qoywxS65D6J98+3D96UOo+RV32k
	i+7aFDsQPOqnMpqjbsNgf5Wi20g1jcAhRrzrON+I20XIanbp8lYIABi6+YZLTaLTbwSg4yWbV4A1b
	N6WaD64g==;
Received: from i53875a0f.versanet.de ([83.135.90.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vkQFA-004eYX-MK; Mon, 26 Jan 2026 18:19:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.20 #1
Date: Mon, 26 Jan 2026 18:19:16 +0100
Message-ID: <5742396.ejJDZkT8p0@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_091922_415312_F5536DFE 
X-CRM114-Status: UNSURE (   9.65  )
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

Hi Mike, Stephen,

please find below a pull-request with a Rockchip clock change for 6.20

Please pull.

Thanks
Heiko


The following changes since commit 8f0b4cce4481fb22653697cced8d0d04027cb1e8:

  Linux 6.19-rc1 (2025-12-14 16:05:07 +1200)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.20-rockchip-clk-1

for you to fetch changes up to a8d722f03923b1c6166d39482c6df8f017e185d9:

  clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link() (2026-01-09 21:16:20 +0100)

----------------------------------------------------------------
Additional check for an error pointer and not only for NULL when a
gatelink is added.

----------------------------------------------------------------
Miaoqian Lin (1):
      clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link()

 drivers/clk/rockchip/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
