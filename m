Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D424C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 19:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGrm371YSwd9fUn0Tg/g6y7NSyD9AD85uiJXRyZFMXM=; b=iUP1IYE238gkJZ
	An5hj4+XbRwdNLTwBTyFN6160/6fmXEy4gc7a23ycnRCQ1Q1tM9KWFKXgCe1SjwqExEA5PZaWhd6N
	3MincRcThco1jyj21Ztm+IMyPAU4iwt2vZqFfh6VdoqJ6S9RCmPMlobsG6tE1U72O6sjgKx6jIx9W
	4e0e/usik9MyzyAa0jfvfSVYApAFsjx3VRvUTd7ZwgUzHmmdHYCxUwzrWfXbtH6QwsP5zD8flLPAW
	8uYbWmQ1ZlxJ1AHEzg8nbB06q+E9i4onR8wmaCdL4NdG1tK6o5fmeivxAAaMtFvis27Ee93iCTgZf
	7PZkvzfc2BnPPPE1vSJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrZd-0000000EV6q-0x0S;
	Sat, 10 Aug 2024 19:16:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrZ1-0000000EUzq-3ru6;
	Sat, 10 Aug 2024 19:15:45 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scrYx-0006Wd-Sw; Sat, 10 Aug 2024 21:15:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Florian Klink <flokli@flokli.de>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4] arm64: dts: rockchip: add rfkill node for M.2 E wifi on orangepi-5-plus
Date: Sat, 10 Aug 2024 21:15:37 +0200
Message-Id: <172331732519.282332.134829187911746949.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240808103052.1894764-1-flokli@flokli.de>
References: <20240808103052.1894764-1-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_121543_984322_F03320D7 
X-CRM114-Status: GOOD (  11.54  )
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

On Thu, 8 Aug 2024 13:30:47 +0300, Florian Klink wrote:
> This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
> rfkill node for M.2 Key E WiFi on rock-5b").
> 
> On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
> enable signal inside the M.2 Key E slot.
> 
> The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
> rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
> node referencing RK_PC4 on &gpio0.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rfkill node for M.2 E wifi on orangepi-5-plus
      commit: 8e0eb3dea9739cc5ada7a2d10319734dbbd2699c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
