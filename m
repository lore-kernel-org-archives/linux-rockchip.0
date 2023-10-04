Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0680CE936E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecSOm2AU9veIlj/dYg4IY7mImt8WNQAcyVsVl/OnU1U=; b=BN4EiGIZmWjBio
	mbJaYJtucQo1n6q3pbxz7sDhXo8B3faOuaDBFiPAy66aJbd40a2+9lTT2SXJOY0D2s/J8SFtGeA0i
	LQFrAQKBlIZ/Owq51Ypjw7DzxpmrY/B+qdmdwnXpO3Bu0kK9fzvsfcMpK9fKyd33bxqMfyeb4cC7u
	aQlDVJ26UM0IWg+7mwIS5LAKRJn7ba1bh9j4vbywzTbWb+6W538hFc0HzCX9RbtsEpVd9eU1vibBG
	iUoGWHgvDhBuw3ZBB99DWb+UoiFhdLwUdUdqkqjStQozFiLaCEa42wkoBmYELGcgGCMPttUcJvfWM
	RLKUc9G6K7uTdtQ7WnEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UP-000vxF-0r;
	Wed, 04 Oct 2023 21:33:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UG-000vpR-2N;
	Wed, 04 Oct 2023 21:32:59 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UB-0005RF-FU; Wed, 04 Oct 2023 23:32:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/4] Enable SMP bring-up and cpu frequency-scaling for RK3128
Date: Wed,  4 Oct 2023 23:32:43 +0200
Message-Id: <169645508393.141514.11315793390523179139.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829214004.314932-2-knaerzche@gmail.com>
References: <20230829214004.314932-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143256_773669_19D52F75 
X-CRM114-Status: GOOD (  13.45  )
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

On Tue, 29 Aug 2023 23:40:01 +0200, Alex Bee wrote:
> This series aims to enable bring-up of the non-boot cpu-cores by the
> Rockchip platsmp driver and enables cpu frequency-scaling by defining
> appropriate operating points.
> Please see commit messages of the individual patches for details.
> 
> These patches have been part of the pretty huge RK3128 bring-up/fix-up
> series [0] which I've splitted-up now, as suggested.
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: rockchip: Add SRAM node for RK3128
      commit: 9107283badc7d058e34ef3b60a52afe6a5e0acfb
[2/4] ARM: dts: rockchip: Add CPU resets for RK3128
      commit: 02941bc2a1bc8ea82617ba1fd4d2c0643399a9ea
[3/4] ARM: dts: rockchip: Enable SMP bring-up for RK3128
      commit: da8b973957ca03f05f78384f2bf6d79a3fce9fb0
[4/4] ARM: dts: rockchip: Switch to operating-points-v2 for RK3128's CPU
      commit: c96b13d7c0e494e1072648301e61e13a2a85a362

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
