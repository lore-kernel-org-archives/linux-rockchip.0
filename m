Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B1C5C67861
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Apr 2024 09:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9QU/I9V91tlGut7JAF3T5rN4+FbkQWHfCAmbYOfYZU=; b=qaJ9UMrlnHCQIZ
	4mCpuW3sGHYr9J8oLp04tXPsQxrNP14hTzXyr1pu7b3OW1ZC+PrQ9UHpylD+hN17GblCPY9yMaThi
	m+HyVyjFKJ68dnJWYvq42WT0Ux4nvXRQXy6WRUYKU3ZAb0goGyWfYiRfLIvSmhoplA1aVecxbXulJ
	15uVt+By0B6GIE+7HS9uSJsen5q5Jvm15a6DbermyKyzCv+CNhcLmbsLjQ/MDCW8/eZowsVhAyJAw
	baiuJQJXPRXJ+nqBQkWJCWv9tF26WzjsTL2N0DPoaANUtFBvDL338Uk/wVTToXprC7zk2XTflPF13
	+uS/mylI+pKSM+EbI+mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CQ-0000000A1WV-36je;
	Sat, 06 Apr 2024 09:18:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CM-0000000A1TJ-3Hmg;
	Sat, 06 Apr 2024 09:18:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 45EAC6027F;
	Sat,  6 Apr 2024 09:18:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 268DBC433A6;
	Sat,  6 Apr 2024 09:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395134;
	bh=Er4JcBK8oVKacOWZrB83ZPrQHBqLGkadS25ZLuXo7u8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ur8iN5Y+2bsn0Dok/kMeBopZHu03jO0v1a45izq2LsCQ9mLIV9kIil4hK633s8pwA
	 XrQKrnENnQkSjb9beUqVtXoRjRCTh36v8N3rCMlRWon7S488/6R71PyQlPMFLtZhp2
	 ef35ScHjZxTw6bAtjWE985GAo6it3vw+7bv5uwDbG8ADEauIuz5AjQ8aedM28FNGyP
	 ixc56niq0UFZ35gRSqeFJSzbIt5VkTL71VUQ0apq0fFTig7HqE0Md3/MSi2T0Hwx8o
	 +p3r6pMeJOZwJ1z04FeE3GWZkZsyEC7nENVoL9ljECI+ZGLmpvNorIuzU+Y3CI6vwy
	 YWXurXoRsvgeg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sre@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Michal Tomek <mtdev79b@gmail.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
In-Reply-To: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
References: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
Subject: Re: [PATCH 0/3] RK3588 PCIe bifurcation fixes
Message-Id: <171239513079.352254.15391125336022363426.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:48:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021854_914696_BF0F59A5 
X-CRM114-Status: UNSURE (   6.48  )
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


On Thu, 04 Apr 2024 19:11:25 +0200, Sebastian Reichel wrote:
> So far the RK3588 boards supported upstream do not make use of
> bifurcation, so it went unnoticed that this feature is broken.
> Michal Tomek tried getting a CM3588 running and noticed some
> problems. These patches fix the bifurcation problems on CM3588
> and also work fine on Rock 5B and EVB1.
> 

Applied, thanks!

[1/3] phy: rockchip-snps-pcie3: fix bifurcation on rk3588
      commit: f8020dfb311d2b6cf657668792aaa5fa8863a7dd
[2/3] phy: rockchip-snps-pcie3: fix clearing PHP_GRF_PCIESEL_CON bits
      commit: 55491a5fa163bf15158f34f3650b3985f25622b9
[3/3] phy: rockchip: naneng-combphy: Fix mux on rk3588
      commit: d16d4002fea69b6609b852dd8db1f5844c02fbe4

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
