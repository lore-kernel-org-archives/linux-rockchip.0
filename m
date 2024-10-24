Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE64FD0BB70
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 08:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3OJ9aB8eOS8YbTqL7STWbZMX+r8BJVfxhN58QHFHr8=; b=DrLDXmJA8cW4kI
	bHRSxHD3quysvXQqA/xlqbczhCl4FlMQgg5GFEVFRMvyRse7FRzwNEHiCR7JR07NfxLpC6n/WYLfV
	PKE12oJ7bTzyYm7TlgxW7bo6hcw/kj+RGv9V8PxD+I6Nw7V19UrgFFJuqjlIQ6jOYdyrjgF0yEb6e
	z2DSch+N8MzJ/uxZ6/tw4aggOEfr2cWg/nG63/8WTsUnUx7LFxX1r1520kxm4NvJm6ArEcZUZ/2bR
	wGRMkpZ23wn73pJ3FZMF06vDnaDXIjRstCESLZ7AIVgT8tQLI+hXgMbj+itYghlvzyLhnR7+zUuT3
	ATcqV6pV6Im4x2pJtAgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3tIK-0000000HJ2N-1G32;
	Thu, 24 Oct 2024 08:34:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3tFF-0000000HI5l-1nfj
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 08:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZE/aSrPdjH8G3jCJAQl4xhD2hP0D3n53EBBl3dE9zmg=; b=DiVHtA1quN9WbuHsUL2Hx+BycF
	/3/TGQQBYckB3fiJP/taG4M09wWAbte4jh14ASxc3M6NgPUYIaboHnXBRByBB0C6oftZSngHUmB31
	inZvyd7iteveRbbNdi4+3xaXUAU4EDWQ3eKmehF24W9fdmd+IFX3MoOKHrhudPTwOQngFr/I3MtnU
	jQhJjtOCrWHOrtjOu/29tUqD0HURPf4WZnxgVWLSQPHxtWBCWEbPXRDU1yzRFvs4LrvSd2D2gqiDW
	SKc9MdoD+bBKluGVsVmMXpOGsgkXl9jYLmESRMzMvGqwfY1cu/WAU5l995DEjY2HjPiakjNvZEtC3
	CZa/fLDA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3tF6-0002iS-EM; Thu, 24 Oct 2024 10:30:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: pwm-leds for Orange Pi 5
Date: Thu, 24 Oct 2024 10:30:47 +0200
Message-ID: <172975863599.1671562.15889278869197906579.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024012726.1730-2-honyuenkwun@gmail.com>
References: <20241024012726.1730-2-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_013101_497762_6D556A1A 
X-CRM114-Status: UNSURE (   7.11  )
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

On Wed, 23 Oct 2024 20:27:27 -0500, Jimmy Hon wrote:
> The green LED RUN is driven by PWM0_LED that can be controlled by PWM0_M2
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: pwm-leds for Orange Pi 5
      commit: 012d72a00b535694093d2d0935764b6a009d1ffd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
