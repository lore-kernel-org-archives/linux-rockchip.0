Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0239DCD1297
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2Dsp9MebHhjQFHTARLihgi6gOc9KnX7Vl4PhA+Nq94=; b=nAXWdnZOQ+O0da
	GCKrHDKZBJvF+u1X3HJFtFoXV2Cw/+5MuYQAWfzG8Tvmi+FIiOlzRIUFA6ImJAwYGMMVf62c+jKcB
	kZka5/N4srBaVZv/Cp6QBCUH3w7v2EmAo88UPVrNiRiU/wJntrQSH4UeZjbc33XvfIVP5+EJ6LaSY
	bAQHuxuqa173y0agEXZmHH5+gAR3iCg5l3htWJ9UzBVLhmu8/Ph7hXm95gt6PuoYGR0sTQycJyH27
	kMx9Fp3HsMz/6NuxJ26GZ4NiqWdY1Y4xMc9O3jWsPA6cYCQBYaL64eXpslVBJ/KuJ4YHZN7fy0DFI
	v2jQEXIjR1PpHrPl0HmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIp-000000058oL-0ld2;
	Wed, 10 Apr 2024 05:15:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIm-000000058nY-19uZ;
	Wed, 10 Apr 2024 05:15:17 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIk-0008Ut-As; Wed, 10 Apr 2024 07:15:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 1/4] arm64: dts: rockchip: drop redundant pcie-reset-suspend in Scarlet Dumo
Date: Wed, 10 Apr 2024 07:15:03 +0200
Message-Id: <171272604791.1867483.10125190310440634047.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221516_335295_43E4FEFD 
X-CRM114-Status: UNSURE (   9.40  )
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

On Sun, 7 Apr 2024 12:28:51 +0200, Krzysztof Kozlowski wrote:
> There is no "pcie-reset-suspend" property in the PCI bindings or Linux
> driver, so assume this was copied from downstream.  Drop the property,
> but leave the comment, because it might be useful for someone.
> 
> This fixes dtbs_check warning:
> 
>   rk3399-gru-scarlet-dumo.dtb: pcie@f8000000: Unevaluated properties are not allowed ('pcie-reset-suspend' was unexpected)
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: drop redundant pcie-reset-suspend in Scarlet Dumo
      commit: 29148d841edea9335141fae86a0742f539fe1327
[3/4] arm64: dts: rockchip: drop redundant disable-gpios in Lubancat 1
      commit: cd0793fc3b03985d90f24232056853ef79ff555e
[4/4] arm64: dts: rockchip: drop redundant disable-gpios in Lubancat 2
      commit: d892a6f34adc371ee0dbaa5ba684d02c4431f2e3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
