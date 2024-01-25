Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8E5C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aBr1XvCuXMkW00s0nNUtc3OWRFdijNFT79+/hYP+NU=; b=qPPVQxHsgiAxU4
	h4fXFdWGLI3LCar/SZgCrhZY27HpPkEWogWNrlc1KVim4mSHpZG6X76jjzFFyTtDyRD6gfIEa86E3
	DUfu59xzd915ceDijq4WYP8nJIoT21HZ9zHPABgLOZTFzEaPGuYy1j35jx4JCgKzTu5SAl4WlTxpw
	PoZ/A6/Q1hmwvSvGMLA/26z4mERzcvOk3jc5QQ2HVZrg6b7inPhteDQqWxhlm4bdb/SpNabppaSch
	zUqRZLQOKZ+/Kmz39W4Cx49xPkd2nsHxFGkxWKPnn4jCWoGhtCYFisEQwqCOxw/Y2s6mTYOmtN4gQ
	jwa8Jih/XegNJ6YX8IuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71y-00000001vZV-1wUI;
	Thu, 25 Jan 2024 21:13:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71P-00000001vET-3auk;
	Thu, 25 Jan 2024 21:12:29 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71K-0002EX-FL; Thu, 25 Jan 2024 22:12:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 00/10] arm64: dts: rockchip: Pack Edgeble NCM6A, 6B DT
Date: Thu, 25 Jan 2024 22:12:11 +0100
Message-Id: <170621707723.1872080.226332467843721502.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131227_921355_BAB6D7BA 
X-CRM114-Status: GOOD (  11.34  )
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

On Sun, 26 Nov 2023 00:35:12 +0530, Jagan Teki wrote:
> DT patch set for Edgeble NCM6A, NCM6B SoM, and IO board.
> 
> Changes for v2:
> - suffix -regulator in node names
> - fix node lables
> - update commit message
> 
> [...]

Applied, thanks!

[01/10] arm64: dts: rockchip: Drop edgeble-neu6b dcdc-reg4 regulator-init-microvolt
        commit: 271e4e979a5a32617fe811df8410cfc477918c68
[02/10] arm64: dts: rockchip: Add edgeble-neu6a-common DT
        commit: 736e39a0af98d5dd165b8cc99837790c3e019d39
[03/10] arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
        commit: 40137b58e7dec7624de41b9c4c22219e230b5b99
[04/10] arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay
        commit: 951d6aaa37fed409c30669ddfed5d1e040cdb281
[05/10] arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
        commit: 9f6d8911cc3b7fbe270ef991b0db0a8b623e01a9
[06/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
        commit: 8c711ff32748b46688ddc6663e377dba12ed22cd
[07/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
        commit: 5d85d4c7e03b44bc31814420bb73b2ba12e42c22
[08/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
        commit: 92eaee21abbdf07001a7ee3c0d03c48889619600
[09/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
        commit: 762751c183750243f68c1b48889d89d4653c9f19
[10/10] arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
        commit: 9b606d2d11af4b131e7a3e5889f43a193e637c66

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
