Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A55F7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYUn5uYjTGNtfbD8AvsJUykzKyJzzTWIi/Bex4YP1sY=; b=qS4Eaa+qm/KVI5
	XOilqkRsx/Fs7+vpn9VYP4yivA9WLAheakPUofSVVd6YnqooDQfKqtbMghG/P/zmGbqjD6gmFmOQ5
	XyZo73J3lK545xfyS7fPlwSAv/7q7DbSD0hOkfANq2BN/LufOe85Vd2+qm9F3ct1LfSACIklgIYrN
	cf7IT+5xXZdP+tyoMENBXNhWARy6B1tWoXtNDa5JInjA0EPv83Bc2ssMOWmopKkY1FKV4Byk9Z8GJ
	osBq0Di8mO87lubp3KCUm27dii/Gf9NN3rsJO0fjoRBf6DWf0TOVkACFjRNDK3+QBZ7t5ZNkfv2Ag
	p2KOEocQwk/uw3bKAITQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2cS-00FXSH-Cm; Tue, 17 May 2022 19:12:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2bO-00FWhF-V3; Tue, 17 May 2022 19:11:29 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr2bK-00043L-Kx; Tue, 17 May 2022 21:11:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 mturquette@baylibre.com, sboyd@kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rk3036-cru.txt to YAML
Date: Tue, 17 May 2022 21:11:15 +0200
Message-Id: <165281458743.3119039.9992773532214105364.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330114847.18633-1-jbx6244@gmail.com>
References: <20220330114847.18633-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_121127_120597_BF682595 
X-CRM114-Status: GOOD (  10.15  )
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

On Wed, 30 Mar 2022 13:48:45 +0200, Johan Jonker wrote:
> Convert rockchip,rk3036-cru.txt to YAML.
> 
> Changes against original bindings:
>   Add clocks and clock-names because the device has to have
>   at least one input clock.

Applied, thanks!

[1/3] dt-bindings: clock: convert rockchip,rk3036-cru.txt to YAML
      commit: de55d1639067b9dd4986bb4885c41867d085defa
[2/3] ARM: dts: rockchip: add clocks property to cru node rk3036
      commit: b35fd1af63ffbad76292495d0fd0deefba414a85

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
