Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAD6DC27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 22:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JV/Tx0a8CILu2S4Dze/4OWYk3bMr8FsTKIWBsH6reKA=; b=WeyNFz1Y6S2+Cz
	E3d0OZRJM6m7Zs+d4yBFknHFW2UZ7TU9xnG7v4KnW2XR3kTfW7JjxIl4k8yf2EX1njv5fAzc5xwR2
	ePTV2LULdVpsC1i0z8m2iMhjHqmON0P5Djj2DD312B6FfzYhgIDIGZ7pAm8fvfqlDd31qPnTJltX2
	UHX5IUqkkzowNHK4XKqLB0bxggyLyusJvuVULpPWDA6MxwVJafLWVkR9fNJAAecqL8sugCRMZOvdl
	7uiCYDDmN/JBr1kRwfMN7FmLrH3duvM1kaKfBbPg0kKRyOsDO9+R3ejMYthpkuIEoUVhc1lwFpU1K
	id74Q+XaC2aIj7G2ginQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFi59-0000000Fqaj-0Iu3;
	Fri, 07 Jun 2024 22:29:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFi54-0000000FqVt-41Iz;
	Fri, 07 Jun 2024 22:29:08 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFi4u-0007Lq-Mp; Sat, 08 Jun 2024 00:28:56 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 2/5] dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
Date: Sat, 08 Jun 2024 00:28:55 +0200
Message-ID: <2004624.2IRrRt1zHL@diego>
In-Reply-To: <20240606143401.32454-4-knaerzche@gmail.com>
References: <20240606143401.32454-2-knaerzche@gmail.com>
 <20240606143401.32454-4-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_152907_032623_8D38D86A 
X-CRM114-Status: UNSURE (   9.93  )
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

Am Donnerstag, 6. Juni 2024, 16:33:59 CEST schrieb Alex Bee:
> CLK_NR_CLKS should not be part of the binding. Let's drop it, since
> the kernel code no longer uses it either.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Just carrying over an Ack, in v2 [0] Connor provided an

Acked-by: Conor Dooley <conor.dooley@microchip.com>


[0] https://lore.kernel.org/all/20240607-dealer-vertebrae-9b22db3dc43b@spud/




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
