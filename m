Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FFCAC54E93
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 10:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfhx/zZxhTiVhusqy/VaQV1+kzgZPYbcZrm7ZMF9uQg=; b=M5PahYzTQ47aDZ
	Tjf2G85O03g00J+AoCTvkbb6Z5Edl2hpZ/IIwoVCSwuwj2ZxmBMxz5157kJD0XYscQpYX0hmcQFiD
	OcTg9zUjKiPByPoEKsN+TANo0JfrCTJpdGZ5H39CLRr0W8/4kHaDHEyW82GPNBZRJrIV7vKMSVVmW
	sQ/kLsPuLLega3vY+IVWpJblx+kHzoh7Mvo4uwVARQBh0b/fXcVf8/iWtG7KKm4OEe/4KRZUlFTic
	ex9okaIKv2OWhbAXGOw8p7j60D14kqRZIzJzfFC43QwOeDKu0qVq4hGDHaKSAHT792a8gm6P4JFnX
	V8Mz5evONp/Cs/VnocZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFsA-0000000EwMT-2eIz;
	Wed, 28 Aug 2024 10:25:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFrF-0000000Ew2n-3pnj;
	Wed, 28 Aug 2024 10:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=O/BM3QttQXByMfJAW9hhalkO4P+GBm0Hu1hMTokbCmQ=; b=cbGAVQgiJ1ZEIKB3qtK8gJt2D0
	K0B+fmIIgbVMsPHk2AkGQinZ714LfcnupGLNHLlbQU81I56ABT7VN4HbS5dGcogBZTLbi/AP2mdM+
	vwSrA/TO5K+uhaYoS4tWPLXN8WicPn94alWf97Pv2L2tJVj6joZ2LMr+sUeOxKPHAj9vlFN1kLrzK
	R1JLB9fYSl60fZd93OvgvwiXBUQwIG4taL1+CSe62ewrCAuH58XugaDtDHufM9Gdcu2e2Mr9IxSvd
	v3rgbkxnC3NieMNMTjbOzTbm7r24Fv3YPKFrHqIVRh5pB1F/WfXmEgIyUTtY9xOFr4BjUQgZjFuaQ
	40IGlfVg==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjFrB-0004Up-BN; Wed, 28 Aug 2024 12:24:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Alex Bee <knaerzche@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] Add VPU support for RK3128
Date: Wed, 28 Aug 2024 12:24:49 +0200
Message-ID: <172484065905.1479647.10986779548768332833.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240523185633.71355-1-knaerzche@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_032457_974055_44585C1D 
X-CRM114-Status: GOOD (  12.21  )
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

On Thu, 23 May 2024 20:56:30 +0200, Alex Bee wrote:
> Similar to most Rockchip SoCs RK312x have hantro G1 based decoder and a
> hantro H1 based encoder with attached iommu.
> 
> The existing drivers can be used as-is.
> 
> Fluster scores:
>   - FFmpeg:
>     - H.264: 127/135
>     - VP8:    59/61
>   - GStreamer:
>     - H.264: 129/135
>     - VP8:    59/61
> 
> [...]

Applied, thanks!

[3/3] ARM: dts: rockchip: Add vpu nodes for RK3128
      commit: fc5aa1ba77c78c17d2c1ddb94e7aca3f4f32efcf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
