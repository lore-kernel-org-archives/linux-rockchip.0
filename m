Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6911C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 07:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvD7gMWuEqAn//0tUdPwvo3aLolgccsSRfXPEUm4Vhs=; b=0JVQdLzZNFMixT
	fKEQM+fBy347fZkvsZlz9EmTrCldGgAgWlo0D9qDVL0/L0objm6OLABUoistFE+HCp5HDYBzvRMZ1
	2KRhlQLL29DGkoYdcEeOlKTQmpa8u1LyR6qTk+QLVkhC8Y4ML//78l6vs07NQvRo4mmWaKsVwXDqa
	TN5NVSxnC1OZTPNB0ZjPNLUm9ooSyj6fFYcAt5lWrRM8x++lRxtVvJx8gbQiSorVwdXZsKqj5RoR9
	JvsoWnyLgXR+rtXUgcLlsWirKonPeNA/25ANCYVzEFHXRX3wlmvrbNVrXb8BYnDnotlBBGn7BbFm9
	Scqg1x+rb+ZFklnh6jkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOs4-0000000FfyU-4BUb;
	Fri, 23 Aug 2024 07:38:09 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOr6-0000000FfcF-01yb;
	Fri, 23 Aug 2024 07:37:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 908BFA42625;
	Fri, 23 Aug 2024 07:37:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F9CDC32786;
	Fri, 23 Aug 2024 07:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724398627;
	bh=yKju3w6wlSIHPFZKtk3ngZboHQ6setVGKEEDPv4vNYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rw/yRpFYx64PLBY6grtWSGYLh2tRcRkdSOiPdyEfizJstkjch8haK97hLfDp0aEvg
	 9mt+lbZwdIw3rrEE8auuu6RgxvoujGbG7zxva5v0cEoE0cSKVdYKugRg1lG+J4fjSE
	 ztiIwI5dgpUR2ozwMcAjfaOLshqKVe7ixGXYesZCH6EZBKcwzmK5dq5rEnTPORQo2d
	 BowvCn32g6o5sOjgMkE+wMVmVz5umN1YzjAfUPigzd8l0kO89lsS5plS/aoUCbCl5Q
	 rgrENZu6tM5j0DpsLpOKWnQ1gZp/LCPftY3J96YFBJF9/SQfcSVqvdtWNzhV0KVQCP
	 K2+dqT0Isw20w==
Date: Fri, 23 Aug 2024 09:36:59 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 1/4] dt-bindings: mmc: Add support for rk3576 dw-mshc
Message-ID: <ps42lcnfombj2u6wz6o2mgcyexhdhtmvvuzwrxdjwiet2xawi4@pjbvkv66dj5k>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
 <20240822212418.982927-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822212418.982927-2-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_003708_128129_7694F3E1 
X-CRM114-Status: UNSURE (   9.95  )
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

On Thu, Aug 22, 2024 at 05:15:31PM -0400, Detlev Casanova wrote:
> Add the compatible string for rockchip,rk3576-dw-mshc in its own new
> block, for devices that have internal pahse settings instead of external

typo: phase

> clocks.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 2 ++

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
