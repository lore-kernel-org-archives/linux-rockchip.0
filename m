Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F0FC46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 22:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqJ5bPT/RqS5pXsUTg2nwxt049KukIlhvR0fcTV0VrA=; b=yERYIcA0b5NSXg
	P0qVSvvCaGhR6gwZx3JJjASAoQJ6sR82B1MzdzyG/MQEfXJuv7jX5iYHdEO9VONX6V1sSW9CiloDX
	HTOeI8EEgALkgrfgGPH43b7Qd7tdjK1BPltH6WRKPSOL2aqhBOQZUhJ7ayXEn2pK+LJLRUj8F38QD
	1ZOHSPozmbwtmTYQ+gEtQeSBuP4zlsc2yFfCO3vAQjBamZoiRe/KAGA0Mlu4ThPEnqV3K9LrTdxgh
	jdGfqgQMwi5eHyvyNB86uL+iu7JjlV6yZDuJ8YkXZY2EzOacHorHCys1r2tz/cUq2m43hD5nTMfXT
	ma83yxJ9dYhOpbdVc2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlN-001iIJ-1m;
	Fri, 29 Dec 2023 22:55:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlA-001iCx-2u;
	Fri, 29 Dec 2023 22:55:23 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJLl9-0004VA-6G; Fri, 29 Dec 2023 23:55:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	John Clark <inindev@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: nanopc-t6 sdmmc device tuning
Date: Fri, 29 Dec 2023 23:55:15 +0100
Message-Id: <170389050011.2630399.396518160692088358.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231228173011.2863-1-inindev@gmail.com>
References: <20231228173011.2863-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_145520_947209_57314118 
X-CRM114-Status: UNSURE (   8.46  )
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

On Thu, 28 Dec 2023 17:29:35 +0000, John Clark wrote:
> drop max-frequency = <200000000> as it is already defined in rk3588s.dtsi
> order no-sdio & no-mmc properties while we are here
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: nanopc-t6 sdmmc device tuning
      commit: 9e1faff1cbc877903d019a7943d37ddc5042704d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
