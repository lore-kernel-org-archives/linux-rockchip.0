Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF5ABC19F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhCibFJISniWfyN1i0AEoreAUU6YtPTVw6GvhLumInk=; b=Tftl1LQ86o9CBE
	xQnqgrLmf81sQWuodeG+899z8MNRon4L8KWhZQaN+nJpbTLFrmZSaqU/w3/moV9hPP/aN0Fs6fPXo
	G392SsWUFEQ05vdqgsbE0FuzL20INQoI8bxRdYwXFO5msddzGSSRN0ZfJ3NBwvK2HQ6/FuRmKcw/W
	lWBkTysaJzEtZxJSnTPn4N7qsjANyWx8Plzev/BkW4eQ6rD/Q/hLnRReiNBUQVphylgvE6Vj3apl+
	xz3KxAVJxEGVC/irL7wr5dN9QV2fxNdxr9FvaAu85OS9sVTJq8weUuYdBLGaBBYMldV+yXp79AS5Y
	H1oassIjX6YANUmcN+fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tneB7-00000007a2X-0DNk;
	Thu, 27 Feb 2025 13:43:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tne5d-00000007Yni-2mfh;
	Thu, 27 Feb 2025 13:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sKbx/cqIDw+mrJ09vJ4uQbWUy/6eW7Ss2IOLFOIIZiQ=; b=hLOyH1AzsaVOtJabG8mG67QlJ6
	7l0t367OmRHtPWZTs0hRlXKULI9VKDLR/i1TDZ55QKzF5o4KlIUQVeZq4HIt9tO28kcapCIoh7ODN
	QhmNVhr68L9PH34GxdT16pqLriYXJbRUPSXHe2q4nSHn+n3Tm95wCeIYZcdg+yN2Qy8WcDgRPw2Ep
	uHZp+VrMbJ3eR8Tgh4X8pFunfLNvyffpj8+BrSapZNPU1bsjmi5//Ou/Eu3klI2Afio4V0lMvJvS/
	FhJ7NyzwF1Q//cvMyXCwtwgujbdEMvEpEs+EjW2t25ssCn8kMb6TEZYqsoEGAEjc4jb6o5FHj2nn9
	NATY2wRw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tne5Z-00018T-DE; Thu, 27 Feb 2025 14:38:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	stable@vger.kernel.org
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: pinmux fixes for PX30 Ringneck
Date: Thu, 27 Feb 2025 14:37:53 +0100
Message-ID: <174066344878.4164500.4996137094609435540.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
References: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_053813_701007_F74282A8 
X-CRM114-Status: UNSURE (   9.55  )
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


On Tue, 25 Feb 2025 12:53:28 +0100, Quentin Schulz wrote:
> This fixes incorrect pinmux on UART0 and UART5 for PX30 Ringneck on
> Haikou.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: fix pinmux of UART0 for PX30 Ringneck on Haikou
      commit: 2db7d29c7b1629ced3cbab3de242511eb3c22066
[2/2] arm64: dts: rockchip: fix pinmux of UART5 for PX30 Ringneck on Haikou
      commit: 55de171bba1b8c0e3dd18b800955ac4b46a63d4b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
