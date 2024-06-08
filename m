Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E336C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 15:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfdhmIULJCpmpov6qNGH6Dt7N8MzCNTi44kEuyVe6U8=; b=0MvyxYS0QnHqJB
	va4rIxmUlN3OssAmirzi1FcOK4HyiMXPpg5RlUbE6jqDHeSRvgAjtPwjJG9y4qZrwvOqEmhZOp1iY
	giiFflmG0Wcj0ZJ+NqCxUxdf0Vwvt/GSIHSsuz9gALYEDEN8hAmKM9goKES/5RcwA8O73wtsokqxp
	BPAjSRlwDQ3tNWSLuHxXXdsNDXlKAMKNQAuT34esU1T55lF0ve4m1MNQeIb9J3gz9yeBQZrCvxP9W
	nw3psNE6O7r6/zdONm2P2FMEjemX4E15KaYaiEMb2Qh2PsB9CW3bVWgTSjn8jsAyQV5ja2ZYwEgdy
	/LSNkbCn+m6IPLw9Accg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxot-000000009c5-2B7f;
	Sat, 08 Jun 2024 15:17:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxop-000000009aR-1CiS;
	Sat, 08 Jun 2024 15:17:24 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFxon-0000Ur-I4; Sat, 08 Jun 2024 17:17:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Stephen Boyd <sboyd@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 0/5] Add SFC support for RK3128
Date: Sat,  8 Jun 2024 17:17:19 +0200
Message-Id: <171785983005.2839639.8937453926692720849.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240606143401.32454-2-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_081723_350711_ECE19F80 
X-CRM114-Status: GOOD (  13.57  )
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

On Thu, 6 Jun 2024 16:33:57 +0200, Alex Bee wrote:
> This series adds support for the Serial Flash Controller (SFC) found in
> RK3128 SoCs. The existing driver can be used as-is.
> 
> As without using some "id holes" we would run out clock ids when adding the
> additional SFC AHB clock in the binding and would have to touch the ABI, I
> added patches which remove the CLK_NR_CLKS macro and use the recently
> introduced rockchip_clk_find_max_clk_id helper instead to find the highest
> clock id.
> 
> [...]

Applied, thanks!

[1/5] clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
      commit: 3d0316c949e26392a5098e23c139c932991e50ce
[2/5] dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
      commit: 9f22b4fbd4c6d27ca4e5f8fa6632e6d7a846af28
[3/5] dt-bindings: clock: rk3128: Add HCLK_SFC
      commit: 469d6e0e70eefe1a31a89a7abd379f169b33b1f4
[4/5] clk: rockchip: Add HCLK_SFC for RK3128
      commit: f1fc95b41a3b1b2e613acb04c4f8aee7b87394cc
[5/5] ARM: dts: rockchip: Add SFC for RK3128
      commit: 01689df79018c4d68f84a2ac0cf65c35c852b979

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
