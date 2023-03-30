Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B77EC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 11:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqF4h30VxgwmJKJrhNBdZJY+Y3dPSeqDyz+/t47Ec80=; b=hXeN2H+gBQpxZt
	AbHWfIy53XmD9QY8qDWcoUO+r2zQDMdYFKEWCAhl4edobckX6/Rgl9siQxQmLLKmif4pqMcEz9mmT
	MJm8zHp9FZv7mu6qZhQHdvLZyTZDWvgod+nAaOlEKnUNOIfRAIT1rqxmiLwh9VXq95GiYBVGiJiM+
	dRMa8naLtGtHSCQKb7Ftq70wCM6GJOQbmzNw1Ntgn6/NIm0NN46RcBt6IJfs/Zc3f935t8HpZnzG8
	zB7kss0tn4b6d+Kk2tVlU2v/xM9Btq3pLWbS3jV3NjKRHUTlXdKVPgNW+hd02aQdC7qM9pkIZRIaK
	CfH7w5IaRbEyA3ZeHsvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiU-003fWV-2z;
	Thu, 30 Mar 2023 11:45:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiF-003fOG-2x;
	Thu, 30 Mar 2023 11:45:05 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1phqi2-0003YZ-T6; Thu, 30 Mar 2023 13:44:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: krzysztof.kozlowski+dt@linaro.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	wim@linux-watchdog.org,
	jamie@jamieiles.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: Re: [PATCH 0/2] RK3588 watchdog support
Date: Thu, 30 Mar 2023 13:44:47 +0200
Message-Id: <168017666938.2380317.3546280306376407710.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230328210048.195124-1-shreeya.patel@collabora.com>
References: <20230328210048.195124-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_044503_952821_7487C82E 
X-CRM114-Status: UNSURE (   9.61  )
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

On Wed, 29 Mar 2023 02:30:46 +0530, Shreeya Patel wrote:
> This patch series enables watchdog support for RK3588 and updates the
> DT bindings for the same.
> 
> Shreeya Patel (2):
>   arm64: dts: rockchip: Enable watchdog support for RK3588
>   dt-bindings: watchdog: rockchip: Add rockchip,rk3588-wdt string
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Enable watchdog support for RK3588
      commit: 932d139e4db18d535dea271df51db5216b8787b3
[2/2] dt-bindings: watchdog: rockchip: Add rockchip,rk3588-wdt string
      commit: e1a234eb3d1507b942c25e5a5ae0d6fb9036f1ff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
