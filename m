Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3F28C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 22:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOQYkWX9Ab7d8v7sJjNL/I9JiiMJLNUC8pMSdiYhwFw=; b=jvo5TYURkZ3fgv
	Nm3uXgCIuBQaThZOWLSAUYrZUzf/2udtmy84XOeuPgMjWjdhVAeoXUwnmQm2RMmgBBP5OFVtVEiRA
	KtdGP5aay5Xb4FFa1VpB5UNGeupMl9XZZmstujAEoG0oxYVcMrQgTl4NMIQQ7F4Zjk5+BYsLs+8Lf
	Bk70x2sTEHUhZJA2jzSWqvHm9emaZxKKquyuWde0E+2HcWuwXBPLldMNbP+67aobLDJbNAyig6prW
	QLTNOfokUKq0B2zanvnooGqOot3lW3bs8Gif5VxEDa7QkOY+hW7eXUsp5G9bwwJuSjkn2V27Co7GT
	D9xefw0y+eK5l8vvJdTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlE-001iEi-0e;
	Fri, 29 Dec 2023 22:55:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlA-001iCv-2f;
	Fri, 29 Dec 2023 22:55:21 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJLl8-0004VA-O8; Fri, 29 Dec 2023 23:55:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	John Clark <inindev@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Thomas McKahan <tmckahan@singleboardsolutions.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Fri, 29 Dec 2023 23:55:14 +0100
Message-Id: <170389050012.2630399.15117069356427722375.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231225223226.17690-1-inindev@gmail.com>
References: <20231225223226.17690-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_145520_861661_A21C596A 
X-CRM114-Status: UNSURE (   8.66  )
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

On Mon, 25 Dec 2023 22:32:16 +0000, John Clark wrote:
> Both rk806_dvs1_null and rk806_dvs2_null duplicate gpio_pwrctrl2 and
> gpio_pwrctrl1 is not set. This patch sets gpio_pwrctrl1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
      commit: 24559788384916041a0bbf54c32e2a16b612d247

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
