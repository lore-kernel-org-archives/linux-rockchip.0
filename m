Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 216D6C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqYBon25bLhL9s1/Zci9WggSI94PiX/88erMqZlAXig=; b=Ch1HTAXmtIFQme
	LUXSvVgRblt7TIPmb1JOpmB9B7bmLDlMY2WB1MUr700dfOxK4R3jsieQQebZN/DxtfEPsb3kurEy3
	JZqvpCoSQdpLcuylUzcc8vVSP5sZ6mY9l7D1Y3KHWFj5uvR87w+qgjIVav6gNgbyStzuCDLF2KZ/s
	mXuG29huNLYQMPoLJiSmvCC4Y9mWbGWNFLbCMdNPiVa5K/iapmh4ExXeVyyUyVRFvs5wJdR+CToiF
	AhtLlRzP982alXrQYUQz+Yz3F8IAuEMgM+EyHbmDR0TcBBbLe/yTIXZApqe5ZyS7+q8vm9QB/wTik
	/eop/4uftQqaEuxYuw3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71R-00000001vGB-2W9q;
	Thu, 25 Jan 2024 21:12:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71N-00000001vCm-03KM;
	Thu, 25 Jan 2024 21:12:26 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71H-0002EX-0F; Thu, 25 Jan 2024 22:12:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b
Date: Thu, 25 Jan 2024 22:12:05 +0100
Message-Id: <170621707726.1872080.10519033279482537538.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240106202650.22310-1-alchark@gmail.com>
References: <20240106202650.22310-1-alchark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131225_097428_ADE66DEE 
X-CRM114-Status: GOOD (  11.99  )
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

On Sun, 7 Jan 2024 00:26:45 +0400, Alexey Charkov wrote:
> By default the GPIO pin that connects to the WiFi enable signal
> inside the M.2 Key E slot is driven low, resulting in impossibility
> to connect to any network. Add a DT node to expose it as an RFKILL
> device, which lets the WiFi driver or userspace toggle it as
> required.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rfkill node for M.2 Key E WiFi on rock-5b
      commit: 82d40b141a4c7ab6608a84a5ce0c58b747cb7163

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
