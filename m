Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 603C9C19F32
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHLF4Ba5dcZeOkWE0R/JotXL2ToTNy9yZ0DIU2m90SA=; b=nRhmcayH7jf24w
	FU0XIrJcOSP9LoaQMVdINMNxMp34K0TcFWidCx52EcKZ4DT7gmaozY6Jv7BwzIAZ4p2PdNMkERTxY
	+GsC+1wOU3dKg1KzmQRAXVB2OALJFdGouhFWZvKjzYqe0GpPiJqhQ54jgxSsranHzQztHk8DBsKt2
	HvBgqGeyGlHZK92OJpmGpLCaMAW0dRHqapqGbG5/ST9Tm4txc/hyFLujYyOuQQhC+mDZJZLOD8ug3
	ssr00J2KU3t9pJbXkhw4ZcZjxufUbFp4q5KNkjqo7Poj4Cfgt5c0A4jNXSR5huZ0S929XdttZAwIP
	8i+mCf+SRM71fPbHRZYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tneB7-00000007a2f-36gT;
	Thu, 27 Feb 2025 13:43:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tne5i-00000007Yo8-2Fjv;
	Thu, 27 Feb 2025 13:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Uk/F1vtykuq4Bl9zw53S75Gjw8bpLOUYGi0g3Od08og=; b=pnFGQKk2+B4Ycke55ARLdZJ2hJ
	FNyTfoLEjM7uGfkaFUEDnRIS92nNZAd4LI264p2JVnqwvj65QTdgoZcNrACLmunIFnS5qtfNDc+6A
	5Qyiz5jXgzjO4UbVGkpeA/5esex1eqdaqRVFmrJCKzL+L5vsbhiLKspfV6sso0lUZB9ps8rGy1fyk
	ljites5nTNfAlOerHhEnvqBGdmxy/S4jYSpEUTklsgsE1F37+I6t/QEvIpgJSyD2Qgiqmf+M3kTdE
	5KoqiAGLBlrfSC3zkZhHFn+R8dGTN+LPy2gWnqMPEEvu5rilWbMvXqiHAL6IrCMR2oMtOG1ca1JXp
	JTOQ/lkA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tne5Z-00018T-QS; Thu, 27 Feb 2025 14:38:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johannes Erdfelt <johannes@erdfelt.com>,
	Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 0/5] Orange Pi 5 Ultra
Date: Thu, 27 Feb 2025 14:37:54 +0100
Message-ID: <174066344878.4164500.125457221365187194.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250222193332.1761-1-honyuenkwun@gmail.com>
References: <20250222193332.1761-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_053818_574131_53425832 
X-CRM114-Status: GOOD (  12.82  )
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


On Sat, 22 Feb 2025 13:33:27 -0600, Jimmy Hon wrote:
> Add device-tree for Orange Pi 5 Ultra
> 
> Thanks to Johannes for testing
> 
> The schematic has been published for the Orange 5 Ultra. [1]
> 
> It's a sibling of the Orange Pi 5 Max [2] with the HDMI0 switched out
> for the HDMI RX. As a side affect the pin for USB_OTG_PWREN [3][4] has
> changed.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Differences in Orange Pi 5 Max
      commit: 6864a176140a03cfc108a27b869814140a022053
[2/5] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Ultra
      commit: f36f2ae1fede87ca6223b5bda33835bd931324ce
[3/5] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
      commit: 3df28b6fda8f245dc725af78780f75d5f1bc079c
[4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
      commit: efdc4018f3c98967e0145f790329a8934f936a7e
[5/5] arm64: dts: rockchip: Enable HDMI1 audio output for Orange Pi 5 Ultra
      commit: 254324dbe364fb058279486767fa82cd2456595d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
