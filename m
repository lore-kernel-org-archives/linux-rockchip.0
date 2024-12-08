Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9765BE77173
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Dec 2024 17:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYuAyFdeel67PrbAbI+cuhLxGQRogFiQRxQBT8l2EV8=; b=mIcKo5tB4+nvwO
	kukRRWiObSj1UP6F61zKdc6qgs2boyA8hCHsMBC7zFX6PgF8US3e1nek54ClEbs+2xpC0tTNVFwXK
	EvYwh1vIexdhPm6gEGudsbSncm8XNIHy9WH8W1BFwCwFur1cJh9e5xTUN8XaiHd3rv5ueqzEeZOif
	69VxSc9WIR2OnKk1yUcBuPJWiBqeYOPl5Ajz7EGszROzsb7s0omP/JkZNvqcNa0xgUJB97XZwWUZz
	9mUM3nRZYTzbuGOH5MRGmSaqVBvRQk53NztXQnMxGUxO/R46U1J03pb7t8b8+RYRb5i+XeFuy9qEo
	Am6Fujt9M8O69t8Gn/9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKhB-00000005c1b-0rdg;
	Sun, 08 Dec 2024 17:03:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKg8-00000005bkN-1PVt;
	Sun, 08 Dec 2024 17:02:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 36C815C31BC;
	Sun,  8 Dec 2024 17:02:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B46F1C4CED2;
	Sun,  8 Dec 2024 17:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677363;
	bh=IQCzJX9mzqFx0k8wCqsYT0do0fUE/zPwysTrpnz5vb0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=iJAKPGEbZzt4UwPydnM0avSvGXaRy6T1hLicejUhXPu3YuBoPGosCRX2Ad1RH0y+5
	 8AzrKuD7p5StOgU2d6lfkcXv90XQjaSUAHnakt85jEy4DC6qPlHiykaMK7YxplNJF1
	 ETWQAp/OK5umo+T+z4ChoRCKg/5PzDwdmQ6uR4noIlpYBKzUgpkAK34SCo7iL22HIv
	 ndJWgudL2sEQfEXeGGW+4ktgRDpgK8TI00cUPO4oAKYSwt+6DK+VVN6oPUTYhyW6vR
	 YhpfA5AVnaEwkpGhskVrQDt568Iiqm57U2VBGJu9ZQnVkdkdo+kvRDrEBO4NtLbted
	 jVWPc52Lc6VZg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Anand Moon <linux.amoon@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
Subject: Re: [PATCH v3 0/6] RK3399: PCie Phy using new helper function
Message-Id: <173367736033.1042266.11057456243557400488.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:32:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090244_426132_FC178257 
X-CRM114-Status: UNSURE (   6.62  )
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


On Sat, 12 Oct 2024 12:49:02 +0530, Anand Moon wrote:
> Few clean of the phy change and Using guard notation makes the code
> more compact and error handling for mutex_lock/mutex_unlock.
> 
> Plz review te code changes, I tend to do silly mistake.
> 
> v1:
> [1] https://lore.kernel.org/all/20240901183221.240361-5-linux.amoon@gmail.com/
> v2: Fix some typo in the subjects.
> [2] https://lore.kernel.org/all/20241006182445.3713-1-linux.amoon@gmail.com/
> 
> [...]

Applied, thanks!

[1/6] phy: rockchip-pcie: Simplify error handling with dev_err_probe()
      commit: 84de918083d09500d93d991d8989addfaae1611e
[2/6] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
      commit: e96397db55e5fbe290ff1462ddf6c24ed94eb7df
[3/6] phy: rockchip-pcie: Use regmap_read_poll_timeout() for PCIe reference clk PLL status
      commit: cb0ba26ad09398d3d0d10f518af4ccae69c8b64e
[4/6] phy: rockchip-pcie: Refactor mutex handling in rockchip_pcie_phy_power_off()
      commit: bb70d1aae565fd52e6a50e643d1ad6e7d419c2a5
[5/6] phy: rockchip-pcie: Refactor mutex handling in rockchip_pcie_phy_power_on()
      commit: 96522eeb8735449957272e9c6f8ea3b72dcbdeb8
[6/6] phy: rockchip-pcie: Use guard notation when acquiring mutex
      commit: c90a7a685a5d90228cedf7a5068f50b3da23ddfc

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
