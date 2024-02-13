Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24CB9C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LN0Dns/SWEPosUZuGPd6eXJCcYMUvDCqMm61vQFiIGc=; b=3PDAxAR0GaxtWz
	/4dx6NGNF2PrdYSEU9EIHYnqkZA4KkWQOOPTC9ikO3Ctri7ybc4KUaRV2FUbUFB78yAQG3Jn1+mRn
	md/NYS24MmzuL+yDbr6uVdG/7J36s/a1VIWEEZbEWAGM9vo3vAEl+LdFrwoR0Rnvwd628fd/0jeNZ
	VNxFIA/GlM1/fyvgglAI61NmeGg5hQR2rS6WtdrhBC6DLtks+Y4cMOOAo8zsVtNi+9qY2/Ji7fJ1q
	FQJ0cjtLSYs6tyxepyXMXnSI1JN2ONTGnZuiv5xsIfv/pSs+f73sjP6t+KWS0AqD6aVe0lc8BHx+j
	8tzk6js+Xul3d6RCMXDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGp-0000000AQf9-0xZA;
	Tue, 13 Feb 2024 19:16:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGb-0000000AQV6-3oM2;
	Tue, 13 Feb 2024 19:16:32 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGW-0008FY-6B; Tue, 13 Feb 2024 20:16:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rk3588: minor whitespace cleanup
Date: Tue, 13 Feb 2024 20:16:19 +0100
Message-Id: <170785172858.3347621.3639452641350737104.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240208105129.128561-1-krzysztof.kozlowski@linaro.org>
References: <20240208105129.128561-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111630_076023_4D1D9791 
X-CRM114-Status: UNSURE (   8.86  )
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

On Thu, 8 Feb 2024 11:51:29 +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space before '{'
> character.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rk3588: minor whitespace cleanup
      commit: 00890f5d15f50bd386bf222ddee355cec6c6d53a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
