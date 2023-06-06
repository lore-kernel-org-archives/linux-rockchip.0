Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F50C7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PkGAMIiMbG3hICZGy/kUXdMTc4sl7VCotdTBDZRhwI=; b=i8XOhK26dfy6gj
	1WdGWT+7RS3Z9CGkWqdEJBIrlthbyZikeZl2pWdf3jz+6TxUoeQZcGbkA4FV/5JptBEXz2mispeaw
	uuIHhdlKE1F2jDZtO1nwW8xMgOQwRqS0pWBnustXAi1+6CBVsDCnm22KKeXScyB0aRTobosNEAsND
	/QDQDUPCxospeBqDWmQ6FrA7T2IRhnFjDLK8hg35QZtpAmB7N/J1V/rCi7n2YpOHYN9rytTzNKygv
	kOTOSl2+0Xd0u44so7ehKvL6RJnDvvlTiUiX6nWOqq22u8DO2CIj5VTJXYpI7PPmA3IRROtukJ3Qt
	6xnXbeRd3rBk1pFyYjHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9V-002XHl-1J;
	Tue, 06 Jun 2023 17:07:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9S-002XFD-19;
	Tue, 06 Jun 2023 17:07:23 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9P-0001ED-2c; Tue, 06 Jun 2023 19:07:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	linux-ide@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH v2 0/6] Add RK3588 SATA support
Date: Tue,  6 Jun 2023 19:07:13 +0200
Message-Id: <168607097305.1436521.3168877133799952042.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230522173423.64691-1-sebastian.reichel@collabora.com>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100722_395021_F28436FB 
X-CRM114-Status: GOOD (  10.39  )
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

On Mon, 22 May 2023 19:34:17 +0200, Sebastian Reichel wrote:
> This enables SATA support for RK3588.
> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20230413182345.92557-1-sebastian.reichel@collabora.com/
>  * Rebase to v6.4-rc1
>  * Collect Acked-by for syscon DT binding update
>  * Use ASIC clock description suggested by Serge Semin
>  * Also add RBC clock (not used by RK3588)
>  * Add extra patch narrowing down the allowed clocks for RK356x and RK3588
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon
      commit: ea85370df14011255c60e1951ef4ef749806aa5c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
