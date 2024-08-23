Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E039C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vq2IFxb4WSL1ZfFu9QAZXJeTyxWv35wUq+xh4tne89U=; b=ys4btzSVMlCyyd
	S5dO6gh2aAGwO3QmJVKw2z7hfdcH6Mnb6tPfzXeEitPVWBDL0URcwnMOVPPXGOeOdq2WWv6Co9Ouq
	v/kCN2c8nudxOuoGCDzF+ggW3t34rtJ0PqS4ZhZg8hv7VdXdUPmc+Q4sP36HeyiyVL6GzLjFLJI8n
	gv7f9KXEjUWkHHhDGIFjLCNFZkjMuJpHvNndXS0AT30J9GHTD/xeK6RbkVrmgqpLQUS41vDzya7Wm
	mtobkmjd6GnVuX8UMcSzutcvBK8yOcvaJCDyqgLJLdvLsQrCac0yvZMPSdLHOXJx5c3K+4B0J21v5
	FmyLrTmnb+TJwrwsNBRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTV8-0000000GiPu-3W2F;
	Fri, 23 Aug 2024 12:34:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTV5-0000000GiNc-2qOB;
	Fri, 23 Aug 2024 12:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IL8m+tZRH0NH7TTs3Y3T6ZKZMW0ktdt17CP3zTeJE78=; b=1oDYwBqTlDD8oyW4lxmsQ9JX+q
	x7WCVI6a0TNOq4R9fUha8rmSOcrIMYtWYy6oQCcAcZ65ECjJ8dCFNShmnRQZ9HePbHH8DbFo016zj
	P4p4SWA4pqWDABOpjRQmiEsOzoc+ZQhHChjzSu4SeaHHFdqno2zo3eOwn51icxBAs9MqndcQprx0D
	M9ttVQXXcCzkxtxV7GuUydx6y6J1N4uv9tbxUfAkVsfaQ+jXPjE/Jt8AMcZPyeMCdzkngCv5yQ5Hy
	7AE65LRbU2KJBuE+rhnQ5JkA4EacOp8qqx1Yc2Z0nMIect6BU2G735I28DsEzOqLbYqUZunKPk4PB
	wWSCtrww==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shTV2-0004zK-0B; Fri, 23 Aug 2024 14:34:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 0/4] Add pinctrl support for rk3576
Date: Fri, 23 Aug 2024 14:34:37 +0200
Message-ID: <172441646605.877570.8075942261050000.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240822195706.920567-1-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_053443_760706_D632380C 
X-CRM114-Status: GOOD (  11.36  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 22 Aug 2024 15:53:35 -0400, Detlev Casanova wrote:
> Add support for the pinctrl core on the rk3576 SoC.
> The patch from downstream has been rebased.
> 
> The grf driver is added support for the rk3576 default values:
> - enable i3c weakpull SW control
> - disable jtag on sdmmc IO lines
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
      commit: 4261b5804661f75408a8e2b63038308d2aae1f31
[2/4] grf: rk3576: Add default GRF values
      commit: e1aaecacfa135cd264a0db331d3ab8b2a04a54a3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
