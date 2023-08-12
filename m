Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9075BC0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 12:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Q0FlWTEto/o8iZLSaGUZpinvVLUhp7Yot1Idt9fnOo=; b=hJABMPuDrt8vde
	C/Muz+aEVxBmYlAsSH3XzZ30+kyQDxieSOpX4E1pD3CKPxfDLGuo9lIxkr1ImO90z3yRlEhj7iuBu
	xDe+L9T7KpqIv2Gn8yQNMD/Mpbt2dwJb2fujZ6Bx0nx/JJMIFMWx8hnHZLsNJJ5CXFqBR4nNTSQ7t
	HTJwgJtum4ATqviA8DO/DbLabH0U+fBivX3yDrK+LI2tgtPq/O0wdYPWGeZ1fu85KnoBr2orIjrQz
	NLgG04QYRqfAiiwbj6W2VbWBoLm3gdCKgsy/QQaDt7FDNjz99g+6IqWFX5+wKtA5iy9c1PtB65Oxl
	1lJn4HtCEncBSYWdJhZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUndX-00DOLZ-21;
	Sat, 12 Aug 2023 12:22:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUndU-00DOJw-2U;
	Sat, 12 Aug 2023 12:22:30 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUndI-0000MO-0o; Sat, 12 Aug 2023 14:22:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Serge Semin <fancer.lancer@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	kernel@collabora.com,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: (subset) [PATCH v4 0/5] RK3588 PCIe2 support
Date: Sat, 12 Aug 2023 14:22:13 +0200
Message-Id: <169184288419.3581838.12693599479486978046.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731165723.53069-1-sebastian.reichel@collabora.com>
References: <20230731165723.53069-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_052228_812805_6C374AE9 
X-CRM114-Status: UNSURE (   9.98  )
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

On Mon, 31 Jul 2023 18:57:18 +0200, Sebastian Reichel wrote:
> This adds PCIe v2 support for RK3588. The series has been tested with
> the onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1)
> and Radxa Rock 5B (&pcie2x1l2).
> 
> Changes since v3:
>  * https://lore.kernel.org/all/20230717172651.64324-1-sebastian.reichel@collabora.com/
>  * Remove unneeded quotes in patch 1 (msi handling)
>  * Update patch description of patch 2 (interrupt names) adding information
>    about Rockchip specific parts
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: rockchip: rk3588: add PCIe2 support
      commit: 8d81b77f4c49f8ee1432c20c22bf0f03c2937a88

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
