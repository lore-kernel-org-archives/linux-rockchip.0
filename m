Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9328DE936E9
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtDKGB41lxDsKkShRZkpbS3UWC8dPlEZ8qLOVbF2eFQ=; b=dofkXByWKj/zRG
	ND3lL7WBathQAR4DByjAWZNeUY81AyW3SJVY+p0lBI7lPMmElApDjSjNsGn67rb5fjqaHKMDz3vi9
	c0vInvXVABGBj713tqHKH4lsEpGgaO5CRyiwJSlIWK1d/8qBTONlEfezcAglbPuPfp8q8u3ouqYPU
	Jj+4jWYdAWrxzazbcb8GLjVNWfMJJhJIISuZL4aCXc0OCs2yaxi2bm6Amed3zZUPvfGVUkrM8oQL3
	81ucqsRg+BkgvLFxidKXwKTc2d3l2tqTphpbgC3lnoT5kbTOHBHGWWEJ6wZOhD9Sa8Qe1OcUpUMuc
	efIdjpGk9HJETyxzGB7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UP-000vxm-2w;
	Wed, 04 Oct 2023 21:33:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UI-000vqY-10;
	Wed, 04 Oct 2023 21:33:00 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UD-0005RF-Gf; Wed, 04 Oct 2023 23:32:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] RK3588 Rock 5B PCIe support
Date: Wed,  4 Oct 2023 23:32:47 +0200
Message-Id: <169645508389.141514.2717578509168602867.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230918141451.131247-1-sebastian.reichel@collabora.com>
References: <20230918141451.131247-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143258_352447_9F84166A 
X-CRM114-Status: UNSURE (   8.95  )
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

On Mon, 18 Sep 2023 16:14:48 +0200, Sebastian Reichel wrote:
> This enables PCIe network card and PCIe for both M.2 ports the Rock 5B has.
> 
> -- Sebastian
> 
> Sebastian Reichel (3):
>   arm64: dts: rockchip: rock-5b: add PCIe network controller
>   arm64: dts: rockchip: rock-5b: add PCIe for M.2 M-key
>   arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: rock-5b: add PCIe network controller
      commit: 42145b7a823530f57983fb6e6897f40c0be278d5
[2/3] arm64: dts: rockchip: rock-5b: add PCIe for M.2 M-key
      commit: 199cbd5f195adbc0e70ad218cdba82f45750f11b
[3/3] arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key
      commit: da447ec387800bdf2df1fb1d8c1522991d025952

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
