Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C1ACA0FFD
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 13:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxCOke6Omq9odF9OryHlG+ptb77Cbj+ks4pTWP1W8uA=; b=aUbXf6VFLoCKtf
	XrocjwyJW/2hnGXFDa+O/G2bixd6LA1QGYdWJAKyPNQnoNmHhwermNwDBAm52SuIF+43WmTb+gLQL
	yvrUsNxgsbjapMBfpNsnOqMfJNSHj8w8IgLxtUxmW5MgxgeoLU43yUD9dvzK1RCAI4bJNe9MkVpay
	CYEWbRFtTLW6qHL8bQRyHBL3XcNu/82pSb/sFV6kiyUIHhtgx/cuscrFJEMqFy6Bzl0y+sp5NoEmw
	irgIMtBZPdzcqNX32eOE7FJ82HC2tVffq/p4BehM77iceAh7JI95kps4mKQylXZSzCA4W0/nCRleZ
	HEn3qyJUmwCq8vFZ4TiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usLWA-00000007vbW-2J3E;
	Sat, 30 Aug 2025 13:21:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usL9v-00000007t5G-1nuW;
	Sat, 30 Aug 2025 12:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wJ4nZJ68M39a8/HhfpBGX4Jpsn4uN3DHxw2dRDUnOYg=; b=EZSBwGHB7Y+kLwJ1iK8fsJ1v+S
	GOItqKfBG2qDD9Dn2POpIn+YGnSOsWCEKl1271GlQwfrHdgOBPr6AqMyRVsavCKbDaxDLAt8JdVDj
	umMghWSaisFF0Zr3hE434JztzeyHfs7dW9qpdatXQk5VjQzg8MkiHMN6PZBjsccRJjftfuL3b/xAT
	9Gh3alAqCcY5mcrNk8vv0mlaG+jVIb6QXN0cgJnAN992JeQoVGJMHsuNnRjqGSP8tdar28yaUcNvR
	HU+e5E0JaDh80y6ZtH/0SolYyr61ibS8XXXFjgEz7mrajFVxxHuJ64PJkbXr7TZDgXp/G5mHuQRQg
	fldsSEKg==;
Received: from [77.241.232.9] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usL9g-0007bC-DD; Sat, 30 Aug 2025 14:58:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	Diederik de Haas <didi.debian@cknow.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
Date: Sat, 30 Aug 2025 14:57:58 +0200
Message-ID: <175655867257.3578496.10210949893238884482.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250829113826.2029755-1-pbrobinson@gmail.com>
References: <20250829113826.2029755-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_055819_464982_2E75C0AE 
X-CRM114-Status: UNSURE (   9.59  )
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


On Fri, 29 Aug 2025 12:38:24 +0100, Peter Robinson wrote:
> Update the wake-up pin and associated interupt details for the
> Pinephone Pro WiFi module. Details obtained from the published
> PinephonePro-Schematic-V1.0-20211127.pdf page 19.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
      commit: 096bd8c679185f898cae9933c6a68650fa26ea4f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
