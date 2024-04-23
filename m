Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D1AC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D5nEnCiKgbI48faxMZ6z3hGKWKJcLiUscjHqAdPLkw=; b=cCB22tTly9zsmm
	RFs0m++YrmtQK6vyq4WO7+SKBv+4CWhvrx/n/LKGyW2h4ZZ5+loItmxDWLu5VWZhn1j3EYYf5dliZ
	RwyuJHLIIb6msg8/XAaRxJVGiuSWtkfh6ItYtXs4gdjwFMTObqPorNqkOqqTNuLBAwvIA/7qqdGVm
	RHtmM47zDrGLWL7xf2/UA6REClhPSe/mniqrOBEP41B8G9M7rr+dwe8Z9UwrBCPLcNh1mEO5UO6HV
	+SgYZJfD+rsoaIHT+Ylhw6amGe2R9tc7QuQtOEsFAk+rlU/DLRkhJpp8aZ290dObrNBBlAgy5RrOR
	HD39GI83T4/iF9i7ZJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHsu-00000000Tg7-1je3;
	Tue, 23 Apr 2024 15:16:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHrz-00000000T0T-2iNI;
	Tue, 23 Apr 2024 15:15:48 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHrx-0007PZ-P3; Tue, 23 Apr 2024 17:15:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	weizhao.ouyang@arm.com,
	robh@kernel.org,
	sfr@canb.auug.org.au,
	conor+dt@kernel.org
Subject: Re: [PATCH v5 0/3] Add ArmSom Sige7 board
Date: Tue, 23 Apr 2024 17:15:36 +0200
Message-Id: <171388532518.2652222.7856355087807197549.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240420034300.176920-1-liujianfeng1994@gmail.com>
References: <20240420034300.176920-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081544_648029_63941F03 
X-CRM114-Status: UNSURE (   9.03  )
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

On Sat, 20 Apr 2024 11:42:57 +0800, Jianfeng Liu wrote:
> Changes in v5:
>  - Rebase to next-20240419.
>  - Add missing commit tags.
>  - dts: armsom-sige7's led-0 is green, not blue, change "led_blue" to
>    "led_green", "led_rgb_b" to "led_rgb_g". And Weizhao's reveiwed
>    tag to devicetree is removed.
>  - Link to v4: https://lore.kernel.org/all/20240416034626.317823-1-liujianfeng1994@gmail.com/
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: add ArmSoM
      commit: d21ca7a353d3677f0b9c730fb37f7abd373cc9ea
[2/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7
      commit: 90a5434fc4b4c09fc0b5e4364e8594dabeae0d8d
[3/3] arm64: dts: rockchip: Add ArmSom Sige7 board
      commit: 81c828a67c78bb03ea75819c417c93c7f3d637b5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
