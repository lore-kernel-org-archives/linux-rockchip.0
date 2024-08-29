Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B47AFC83F16
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 13:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wcc6RlR8qqDra4r+BFGljEtklvCl0ormZVfDBYCxMXQ=; b=Ee8qEprSHnjhs1
	rnEkte4OApHfH+WWhxYORlwWi/3DaU/WquauSfLidMVTE8xM+bWapE6/ag6AAGd59UoKdhNonrAjd
	jTeSssxrIjvFeXHQJwTpWQ5iWiSaAcuL75iVR5nGVzpzzeXQ1SQJke0hzSG8B23qeIP/GI4f1AQwE
	f3vxfmdF6S4NsxwmL23JQq7nHTrMnvITHSRkJvqTUvddlcWMfuwag3PKoZhA7uohGVj2sCZWN8Vwi
	85bAH7f7NQhYh/Q5MwCZt8ELfQsTPtyFpLqj+iWP08vnbR6nCiytk7IKLNnMj3HgaSF85bDhVS9cg
	Ki0W4WqCUjujfinA7UfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf8g-000000029Md-1Kmo;
	Thu, 29 Aug 2024 13:24:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf71-000000028vV-1ls8
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 13:22:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d50psUmIEkqi/PIC0pC+pdrFyWuax6XFXFj8gL0MU30=; b=2FkxxlixmCeeaKQuup+KYnXb6w
	fahSX4tnvoyXps4Jo7VKVvNb3MURWejpJyukEp4NHA+rqZCsbxqrsXhnTgd2O/4BvyIx4ln4QluCv
	xQIvKpaGoIf3l70wBV55iGI3yx3lT8rpN4coeY2VF04eQrnrrMxoXTBSRDL5FDk+upCkb88qsTGMb
	mUO7rWUJAAyJJp4wImOVtYw4QhWz/yLPJjGHQm8qck5f07hk6K8gBsDnQ1ZgA+mryrWG7j2GimydA
	eO3UnrIJG9trMAdGmN8eqx4NBZdZKmdvO4psRE5Qm/cZMhYihrtpCrT1irXSpcz9xSnC/GnJ6YH5O
	eKMiYq3g==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjf6r-0004Gc-SI; Thu, 29 Aug 2024 15:22:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/9] FriendlyELEC NanoPC-T6 improvements
Date: Thu, 29 Aug 2024 15:22:42 +0200
Message-ID: <172493775779.1723433.10615698442871368939.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
References: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_062255_483581_2590C5F8 
X-CRM114-Status: UNSURE (   9.42  )
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

On Thu, 29 Aug 2024 14:26:51 +0200, Marcin Juszkiewicz wrote:
> This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
> (2301) version of a board and LTS (2310) version.
> 
> This series creates common DTSI for both boards and then separate
> NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
> and T6-LTS gets USB20 section.
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      commit: 809b3cb3285da6f98b0a516bf070a1d7bf4f7b2d
[2/9] arm64: dts: rockchip: prepare NanoPC-T6 for LTS board
      commit: d14f3a4f1feabb6bb5935bf3b275a1e6bf2208eb
[3/9] arm64: dts: rockchip: move NanoPC-T6 parts to DTS
      commit: aea8d84070fe0846961deb23228d9dd3f8caefb3
[4/9] arm64: dts: rockchip: add NanoPC-T6 LTS
      commit: db1dcbe5f752d423421f77d54d246398b196f670
[5/9] arm64: dts: rockchip: add SPI flash on NanoPC-T6
      commit: a22a629c63b1addcf2d81eaf30383c1deca5b7a9
[6/9] arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      commit: b70caff0f9592719b6c977e291c33192e959c9d4
[7/9] arm64: dts: rockchip: enable GPU on NanoPC-T6
      commit: e86cbf999cda2d44f32ec622537024e3b923080d
[8/9] arm64: dts: rockchip: enable USB-C on NanoPC-T6
      commit: c9ba75320e5a12dc9d574603acf29b38a920b40c
[9/9] arm64: dts: rockchip: add Mask Rom key on NanoPC-T6
      commit: da439eed06ff6806f22341ab0468226afc555305

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
