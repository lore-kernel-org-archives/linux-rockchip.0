Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F7AEC71135
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 09:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grKLt9LfIsDIITyuhNlOeHBlZ0uYwydf/fWR2HS+trQ=; b=Dd7j1noeiGrd2w
	JmLqRvPYub83ay9mAB+64SCQYBImsgoqr/eO+SniUoNVDkaS/rEx0fNYYBA3F+zb2D7liRQibwtFa
	4o6+o5jk5JxTg2COSAVMFg9jawJzb2DCT0h8RlCz6hW2663Dcr/5FAHueex+tk5iG7SRAq24D0A+c
	1sT6OMwJPP37711CYfGy9bgXsmpO4TSqv8sVoWqSoVp27tz1Yc369+bVD3XDzfZ3lCfGZ+OcfOZkN
	n+aDYHdaxa2z1QLM/C2lKGM151lYXq7C59fRfJur4S850Sgd8QB981B5/RuyzGvEItrZg/NiInScp
	dgjuLMcm6/91m3vjvBhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbfc-00000001QHw-2o0K;
	Thu, 29 Aug 2024 09:42:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbaV-00000001OCd-2rSp;
	Thu, 29 Aug 2024 09:37:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OpJRCqvJUgPhUkiazewk4fbcOXCM86KxZfljMMe7Uig=; b=cWz55Bm4M9U8thKk6gSuu/A07u
	w2RVOJ013+1Kl+2mN92amgwPyNv6DoHWbFMmIxsZBP6gZ4J1uvArpAd5fypGxjzlVNfTWiTna0BCC
	cFnGoL60SdlGm94Z5GnX561yMyUMBLbfsjazgIVAEGx7lKSqwOd9hNYmXilpmnXwhlPEifqkmOjqG
	cDB/5kyeq8xDoIoGzOijhl3Qh/M6oTn1YtFqLsVAtCdW1SF4ZdqJ9EVPYIiE1xDkUMBBocuqQHAbw
	Otlg+VZvaNgdisNklffp57T4hSRYt5ksZ+v6jxy85IHGmMDfMRpI/OduwFB1Dwt7AQArmEHL7PKGe
	4kQJjWWQ==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjbaI-0002nq-3Y; Thu, 29 Aug 2024 11:36:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Magnus Damm <magnus.damm@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	patches@opensource.cirrus.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	linux-stm32@st-md-mailman.stormreply.com,
	Serge Semin <fancer.lancer@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	linux-kernel@vger.kernel.org,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 1/5] dt-bindings: clock: baikal,bt1-ccu-div: add top-level constraints
Date: Thu, 29 Aug 2024 11:36:49 +0200
Message-ID: <172492351369.1695089.4051009745081865137.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_023707_740160_2A609ED1 
X-CRM114-Status: UNSURE (   8.69  )
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

On Sun, 18 Aug 2024 19:30:10 +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks and clock-names.
> 
> 

Applied, thanks!

[4/5] dt-bindings: clock: rockchip,rk3588-cru: drop unneeded assigned-clocks
      commit: 3529dc29fe65672ad9aeab9499fee901d0010901

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
