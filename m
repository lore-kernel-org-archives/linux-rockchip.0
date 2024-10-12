Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B878FCF2577
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 19:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmWED7bpxPlOy51YHHV7dIUW+F997n3mOLIAMdf3Xv4=; b=Z7xJ/HJXpLv5Jj
	yPirhy1htzwrHA7ayockOrY1OXNRxMQCUkC27oAvC0vzflH3TL+xqjnuaYC325SD76AtwFAd3tkdg
	CI3Sg1MqiFXYX6pjBewCJyD8aWRYvsDGPj7ShMwst4yau4cGpMGG89m2/XlA1fj7JH3xQXK/LLVem
	DlxbjUqVG8ZH3UQr65YxOpO9dv+Jw5YGR5QloZDYH6767N+xQAcWqjuZQOurN2wrTZn5MGZaK7fiI
	CkY+PMTK+iqnaF6m7pCSnPyFJZ5C61JHOVHstCzTEF7rPb91sS7PEjVcjv8dc7eHROPn139HQISoX
	ELhTc4TMQ1AfPr81V0Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szhTc-00000001hWz-3tTO;
	Sat, 12 Oct 2024 19:08:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szhTa-00000001hWD-3gDN;
	Sat, 12 Oct 2024 19:08:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ic9XVUBHDGFbjKjFR5Akyp38Oq2AX1aB/FbK1DvjEds=; b=wjsEJBvdw3FCsJGoOZFcciJYLD
	eDiCundW7AQ7TOB+Wb2SSCPUuEwXbJSkHDMNVUokutu0hFfSsmonTU0VPHPdeBee2quM99lyjuavQ
	E1O1yEfF1xOuxPmFd2/WpUMAeUMjqgojb5bJtz5LAl6T/YHDjnynzoVJiuvLUKkFKiwN4KbpAz6x1
	7YR5jGp1wUlvIRAKW8ZMzpkhf77O1FL+EwZCLFWeVFDKU/JttmHPSYpt2l6NOldedx/pGZNrLlken
	RuNYUhQYCL8FPoQj+gFiL2a6H3EiWswDh+dWkn0Uu3vxiPKCb2dZU9TnzUeD+qHoEWeYI/SzGK0Gz
	huIMNwkg==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1szhT8-0001UY-N3; Sat, 12 Oct 2024 21:08:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
	linux-serial@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Tim Lunn <tim@feathertop.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	devicetree@vger.kernel.org,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: (subset) [PATCH v4 0/4] Add initial support for Rockchip RK3528 SoC
Date: Sat, 12 Oct 2024 21:07:59 +0200
Message-ID: <172876007504.42219.14344131285317910319.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829092705.6241-1-ziyao@disroot.org>
References: <20240829092705.6241-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_120830_958781_FED94315 
X-CRM114-Status: GOOD (  13.47  )
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

On Thu, 29 Aug 2024 09:27:01 +0000, Yao Zi wrote:
> Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> multimedia application. This series add a basic device tree with CPU,
> interrupts and UART nodes for it and is able to boot into a kernel with
> only UART console.
> 
> Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> booted into initramfs with this log[2].
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: arm: rockchip: Add Radxa E20C board
      commit: 0c6f259d56c035523a4ce3d49764b9ade0859f1c
[3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
      commit: b5494d5a4434fcbe6271ef2d7ba64fc5027f3cd8
[4/4] arm64: dts: rockchip: Add Radxa e20c board
      commit: a09bbd747f383e8d0b78364f06553fcb08951e2d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
