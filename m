Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F744D5E36B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkExGj5Lks18jdeiX3e+kO77S7lYd9g/VE92Gwi5IGc=; b=5GZ/W3relQ/LKg
	PpFvpQx5Wf5+JIPK9fCp3QyGEO/dXce3fu3nbDLbgagYuiFSItDqw6lOdTViWvUJuSTqBZLrmGml1
	29QW8kTNUwtK7WDyyqUd0+mXgm8zRdU8/OJPGNEv8Du/LRG2WV7itJAZewnsB3Hlei/xqB4x8Phjs
	afjqzevqCd8gZIbX/Gp+LIqzIvjmjLCv7XhyE1dGK+OWyxsUvFi1hdTiPBlpWV7zFkJsvqx/I2X5G
	OooLrKokKm4n6FG3F3G9oSqbM8WFsDPJUkAs5xVDeVNsVruiyoe/Q5N8seeb1BODEXimrHUzDKbAQ
	+00Qltr7qG/k/6IGMOjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qSb-0000000Dpnj-37Ou;
	Sat, 09 Nov 2024 18:45:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qDI-0000000Do9b-2tkT;
	Sat, 09 Nov 2024 18:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4G1FjBzeSEZRf8IgX5k3R4WKY6Al61s+kAOhnejUrYg=; b=IjqO2O87kJ7ViWtF/ZP+EajbGN
	lNpusQ15opEQcU+RKo7Z0OFSsB04XwN7kN/tw83vyefBtxeMkLGfMsWT+PKGaPw7/vk/d9Ttki3BW
	ylGuSp5OaOGbh2YR0DnKGpLvR3qdbYKNol3h98rdsGBN0EU2mHdOYpgQ9CP8zh8wThEAwnrvdTvxK
	apjuElOJiiZUZszMZ0EEffvsG5HhSPDukEd+QGV5gQDiEAV4PVdVwDwMqZDrTman5PvZaqpZWntpK
	sAEZ9pcxMC6KRgpeBC5IwIDNivy8taoWGnvBdbNNb7jwNCrW0Oxle39ncy9AoEprPqb49Uh5agG23
	LYxXjaNg==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBK-0007Km-K9; Sat, 09 Nov 2024 19:27:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
	John Clark <inindev@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	rick.wertenbroek@heig-vd.ch
Subject: Re: [PATCH] arm64: dts: rockchip: enable USB3 on NanoPC-T6
Date: Sat,  9 Nov 2024 19:27:19 +0100
Message-ID: <173117675955.1131306.3275734524301023495.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241106130314.1289055-1-rick.wertenbroek@gmail.com>
References: <20241106130314.1289055-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102936_768052_FFA4D5A1 
X-CRM114-Status: GOOD (  10.19  )
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

On Wed, 6 Nov 2024 14:03:13 +0100, Rick Wertenbroek wrote:
> Enable the USB3 port on FriendlyELEC NanoPC-T6.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable USB3 on NanoPC-T6
      commit: 2b47332134e4cd29078b3fb7d30b0a0555af01f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
