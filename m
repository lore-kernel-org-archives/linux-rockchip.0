Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B819DCD1294
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 21:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2AyAj6JINjS7Ekhcm0UxkVXiAHRTUiqrQMQR5ogNtmQ=; b=WnjKLt31MewvV/
	+UNC/iBuo45i7nAJNF46Z3Ewhpgor7Ul90Kjcn9VflSJ/MuBZNjowxNlBMuHxo9aTB01DX6rN14v9
	wJ0L1Xah5HfL9wHKdWxDQGu3gx0VCKjjm8XBP0a7iBbo6a5bCqrWK1siaQA/WgZIFANHXNQQmW6Ts
	UlnYcHGOatk2hSgDxTJVluIO9R0oJw0d/tB71L2MmgVE0WMvRMXpDIjJIzsZIEfgaOiS+KYp87QlK
	+ca3D1YMFbX2py2hs6ToQH1SI5Fiw1eOeYzPjt4y8PVXVLQ3jG5gSviItJFpgocz0vCWZIzUMxgsC
	fqbigLwdBrUuWs8nImjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPdG-00000008wkT-1MjB;
	Mon, 01 Apr 2024 21:55:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrPdB-00000008wgP-3E5A;
	Mon, 01 Apr 2024 21:55:55 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rrPct-0008FL-3v; Mon, 01 Apr 2024 23:55:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Folker Schwesinger <dev@folker-schwesinger.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Vinod Koul <vkoul@kernel.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] Enable internal strobe pulldown on Radxa ROCK 4 SBCs
Date: Mon,  1 Apr 2024 23:55:30 +0200
Message-Id: <171200852042.1394042.15662763470622443255.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240327192641.14220-1-dev@folker-schwesinger.de>
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_145553_875500_452A0E81 
X-CRM114-Status: GOOD (  10.86  )
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

On Wed, 27 Mar 2024 20:26:36 +0100, Folker Schwesinger wrote:
> Various RK3399 boards, including the ROCK Pi 4 series showed instabilities
> with some eMMC modules when operating in HS400 mode [1]. Later, a missing
> pull-down resistor on the eMMC strobe line was identified as the root
> cause of these instabilities [2].
> 
> This series enables the internal pull-down on the eMMC PHY strobe line
> for all ROCK 4 series boards as they all lack an external strobe
> pull-down resistor.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK Pi 4
      commit: f720dd9b8b6d8b2160beda789429d5489ce8a099
[2/2] arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK 4C+
      commit: c1b1f340dd7db11f273e426e110697551c9f501f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
