Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0C16D19511
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 00:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTnbqTzTLCLaojJtKkATu+/++g8J5W3GtbZTzyITtVM=; b=EbIFNKFmrGlAzi
	wTepLOp6hW7FYWKIPWwK0FquItRcFTgrOptyrOpFdHZV7I4NuWSthwxXyUro0WCCno6NNfjyAO35m
	wc6a0i1mrNRZdBpNJlG90ooup/rgLCt97pH3K3fvTjyTDmRMeZ8CBa1kbACqD2+xECws+fYcHXVaT
	99LyesLzggozjsk/Dv4nRKBXbEV0K930FU7teCHzXisncp2VKSQG5wkIt/oJtg7SogbXcKYy9SQ3F
	HQYFlMIed1rb/Hges5ZRFZXbDwOjeVx48m3mr1qgM6QiGVkH95hcy2A8+rZ5Az/tTMohHGfuaCjAG
	yAwOVarwiLbJYAKyLaiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkX8v-0000000DOEc-11j8;
	Tue, 27 Jan 2026 00:41:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkX8l-0000000DO8v-2fpR;
	Tue, 27 Jan 2026 00:41:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ED48144158;
	Tue, 27 Jan 2026 00:41:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AEAAC116C6;
	Tue, 27 Jan 2026 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769474464;
	bh=nB6yjbNXx42GKTBaXT02ZrBwPDOQ+Wsz8KL8vGzVQaU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nCLiRYhXSjC0cyWgFzfpBfJz3GNGLNuwr8vZmbLNiPP0025V4EsEpQZ2mNpPf5yLV
	 S+N/f4ZgDlNfz6MiEJahyApVGOTfnTp3e/Dhyj39TDiQfKpKYyw6UsxbPCG4wiwQog
	 PDXoIrevY3UX/IqyOqJQpVLeSRwWcON7gX1EthcZZV9NqkeUMMpfICM7AnomZSpJKA
	 IS8yLo13jC5CYTQk39EdkZpsbmvdOyUgwkppwIHx3E/0anYLWw2rOIXPsJIobLh213
	 5CqFqOGb5/euCk663qw+qv+iYaPHWqs+DIEFRzsbCVhxJFHwSFBJnzsU8q+5kvtUxF
	 ArgQDm22sXoKQ==
From: Jakub Kicinski <kuba@kernel.org>
To: rmk+kernel@armlinux.org.uk
Cc: Jakub Kicinski <kuba@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	andrew+netdev@lunn.ch,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	pabeni@redhat.com,
	linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	alexandre.torgue@foss.st.com,
	andrew@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com
Subject: Re: [net-next,v2,22/22] net: stmmac: rk: rk3506, rk3528 and kk3588 have rmii_mode in clock register
Date: Mon, 26 Jan 2026 16:41:03 -0800
Message-ID: <20260127004103.3785897-1-kuba@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <E1vkL3S-00000005uuG-2qFN@rmk-PC.armlinux.org.uk>
References: <E1vkL3S-00000005uuG-2qFN@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_164107_698705_9F0BEC18 
X-CRM114-Status: UNSURE (   6.49  )
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

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
net: stmmac: rk: rk3506, rk3528 and kk3588 have rmii_mode in clock register

This patch moves the rmii_mode bit configuration for rk3506, rk3528 and
rk3588 from the SoC-specific set_to_rmii() functions to the common
rk_gmac_powerup() path, using the new rmii_mode_mask field in the clock
register configuration.

>     net: stmmac: rk: rk3506, rk3528 and kk3588 have rmii_mode in clock register
                                          ^^^^^^

This isn't a bug, but the subject line has a typo: "kk3588" should be
"rk3588". The commit body correctly refers to "rk3588" and the code
changes reference rk3588_ops, rk3588_init, and RK3588_* macros.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
