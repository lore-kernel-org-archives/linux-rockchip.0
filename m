Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAEE0C47074
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 22:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csNWYuRSbJhaEEz2NqFWCT/8Zo0C1mREIv5TWHg4Vfg=; b=cxv+T/lWNhZFX+
	882NwiJ+il3GUnZFFB9vgih/0c4u8TlsM3MsaxFIvzO67CAIKSzIfQn4X9NAHvaF+glPHhRVlNPLm
	wt1vJ2SuX5cYmSKRsDzscR6gToaZDmH7kP+pHmzX3ii/EkfoEak1NhYvqwSy76UboLxR5NX1fh8Go
	8PqCd8xCoFz0IqR7sWroJ+k14wVWNMc938lnkRRZYk0l6KcqELxGLu9YJpNBG+zOeU5q6wz2V27s2
	r9WdMd2DsFtNZ82dh+1bUHv1xXcj52EgUE/UmpJtz9Pwz7/1e0lCZ7i60vN+MN+6x9hFS081AsKRC
	NwiMBQEnPD093X9Q5P+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlE-001iEt-1s;
	Fri, 29 Dec 2023 22:55:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlA-001iCw-2m;
	Fri, 29 Dec 2023 22:55:21 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJLl8-0004VA-7k; Fri, 29 Dec 2023 23:55:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	John Clark <inindev@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: support poweroff on the rock-5b
Date: Fri, 29 Dec 2023 23:55:13 +0100
Message-Id: <170389050012.2630399.8754217298577818519.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231225222859.17153-1-inindev@gmail.com>
References: <20231225222859.17153-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_145520_909500_09C90F0D 
X-CRM114-Status: UNSURE (   9.87  )
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

On Mon, 25 Dec 2023 22:28:19 +0000, John Clark wrote:
> Allow the rock-5b to poweroff its pmic. When issuing a "shutdown -h now"
> on the rock-5b it reboots instead. Defining 'system-power-controller'
> allows the rk806 to power down.
> 
> Commit c699fbfdfd54 ("arm64: dts: rockchip: Support poweroff on
> NanoPC-T6") similarly resolves this issue for the nanopc-t6.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: support poweroff on the rock-5b
      commit: 7738f551173540b3daa63a91b384b167eacd24fd
[2/2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
      commit: aed6514c4e3aee843385ded4c5ee0921b51c30fa

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
