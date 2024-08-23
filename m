Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A55CC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 07:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYnfvQLYqXY/hHf7G1aN4lcAmwTBhhMmk8FKnP7aTQI=; b=dfGJIrWyQihIOw
	w3fJI24FuTVqY+6vf+v20eiDRowtgfPCvpevQnWM0kW3AmXKjdaarinQeXgZyHnNzI/bstKYrPcUD
	+3rglqUDqM6N9TPIRSNTPSd3nhi8LGKe1dgRB45mt/2DNw5g/WflZeg9zvH914XzKF50/vFN5Eyny
	g4is/toh9BsuTKB+VfaCLPvbK/QSes2gdL3jOhHARgEScmx63R7NIjAFrWJzkjsWjc14J0DIMZ+QM
	/kFHSWJa2g6zFveORhpbcczG/v0eAqg0BH2Vgt0gXsSHTfxid8tLuPOMKgv1+j8dI70GrjZ6nNJmd
	easM0DQ1h3rIwm9VaVEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOqc-0000000FfRQ-1KEs;
	Fri, 23 Aug 2024 07:36:38 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOpX-0000000FfAY-3tB1;
	Fri, 23 Aug 2024 07:35:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 40AF9CE1048;
	Fri, 23 Aug 2024 07:35:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78381C4AF0B;
	Fri, 23 Aug 2024 07:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724398529;
	bh=31BzUJaUWOeYiOCtZiE1g2D7WGT7TmHDMKeTPn/GCnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hNCEbbOOoeVLJ1Drg2L1X13c1P83VH65FS9OE9Aj61YcAp0bRJneicrxjGhsHb/bK
	 EvmRvaKXgpgPeCB0ovQekYAn8uaDbcgOQj2T9i4JeckbUQdUBNNNqguqEfxs+gvPyj
	 Fm6CFz2guFUbx9HlPkyWkEl7xWPlBA987qn9sJxNPztMYTWzT7WyoE8vn2IC3RsMs6
	 S3K8lnmXNjlNxBpkXqt5w8LCbUuk1MOqZBPds2o+L3txnipuWdMPdUigzVhgvVAEmZ
	 lSUoaImTp3Vf+8ud3+NqsHRxCs+W3dOXy91HC1V7JRWmHMMLuGKexNgqFneF4JmDGL
	 +9RbuTm81MzhA==
Date: Fri, 23 Aug 2024 09:35:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: pinctrl: Add rk3576 pinctrl support
Message-ID: <bsaurbgipklfm5gaa3iem4xp5iuck6hv2lnl4zohqktk3k56kl@3qfuxoiv77f2>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
 <20240822195706.920567-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822195706.920567-4-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_003532_163615_3E3CA9F6 
X-CRM114-Status: UNSURE (   8.69  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 22, 2024 at 03:53:38PM -0400, Detlev Casanova wrote:
> Add the compatible string for the rk3576 SoC.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
