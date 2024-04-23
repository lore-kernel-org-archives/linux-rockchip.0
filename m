Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 424A0C19F53
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wL+Ir1UsrIDHzEwGeRZARNgWlhWvyGvXgZ1WdFXeCvs=; b=Pzqm/OsFXnQXWI
	OIXGqiQ9vO5fRuXVbcGQJTarnJqBla6+szk4RhkihNw8V0tugfEe22oZDcEz76JxUv2LhpLPBZVkk
	GumKN4yBIbTXifeh4gs48BkiP6VuesgQlTI6twOdhYtSGT5q/pj9fsb5nQcZBQ63/xL6pEnFEOP8E
	ZuLRFJUFxhx21nT64duFvWLIspNODu5Pbjn9scj9tzVhYpjfkiOgOPT6S4wcHKoXw3/gUWBIBVu5P
	ej9G89I6lBg9wS6GGPWmF9PUqq3ssvhrdQ721iERGJyIySN3zG83QD9uaXgCBsKUhPqoGvlGP2Yjg
	fPgoWHR6iq6sh+bRpwCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHss-00000000Tf2-3cvg;
	Tue, 23 Apr 2024 15:16:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHs2-00000000T1y-3FyA;
	Tue, 23 Apr 2024 15:15:49 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHrv-0007PZ-6j; Tue, 23 Apr 2024 17:15:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/1] arm64: dts: rockchip: correct the model name for Radxa ROCK 3A
Date: Tue, 23 Apr 2024 17:15:31 +0200
Message-Id: <171388532518.2652222.5651556523830397668.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419103019.992586-1-amadeus@jmu.edu.cn>
References: <20240419103019.992586-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081547_233608_24FBC32E 
X-CRM114-Status: UNSURE (   8.61  )
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

On Fri, 19 Apr 2024 18:30:17 +0800, Chukun Pan wrote:
> Changes in v2:
>   Collected Reviewed-by.
>   Remove changes to compatible.
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: correct the model name for Radxa ROCK 3A
      commit: fac5b3381639a504cd0e8c015242622331cc7a52
[2/2] arm64: dts: rockchip: correct the model name for Radxa ROCK 3A
      commit: 626a479873b6a680b3227c4852bde4a1f2c17fdf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
