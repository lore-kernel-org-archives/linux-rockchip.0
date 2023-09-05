Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 167F3CA100D
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Sep 2023 20:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zm79cyKjbKQqbNF0bn6e7e6+98I47m38Ebi5hDieETA=; b=LZeQl8bE8wAibb
	mYpmHPRFFbD9OQAb58qxLhVzL/6wtrIceaswQ2yT/2Aex49kUZj/4Kmvv0nO7zoS2HA2oxLAXj/Qi
	l72CJt1JDOR/kdRPiPQw4V8/mz0fM+EQc98bue4u8Rf8Db/rZo4NlnxI0bc1l0rhZ+73kLrW65sfF
	AfvskVVyEBeHBgm5NuZNwsd6BW0To6OBKI4DmW0rRl8xGyyrMsh5V1VKPAGyzErg65Z16tZqIr65j
	CusvwDL0SpHf1rA/I2LyMwT60s115Gl5ZLBP0HPc+hBJHmde1vBqsRdziv0YeJwAwdQnYNulsaT1x
	9JsRoSnxPIYhohFg1LYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdd47-006igW-0u;
	Tue, 05 Sep 2023 20:54:27 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdd43-006ifY-2F;
	Tue, 05 Sep 2023 20:54:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id EFA47CE1323;
	Tue,  5 Sep 2023 20:54:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2813C433CC;
	Tue,  5 Sep 2023 20:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693947260;
	bh=SEebsU0bIwz3C7Fask0Blp/8ke6yGxBzEffMu1BzfxE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eOweapDIV4kvmx+SXiwXd0QH6P0/m29hyXMMX7WwdRbaeGb7fSrecZ6lX0J8WhHwW
	 J9XfA9D3ab1EHgux0ExH0VYGzatpfxx5MlQDc1st0gSuWsFYk4LZeDBto8Mo0w1EnC
	 acVoMB/XpjVCvbd7L4K6GcbGubh8YXrrdGbgpQTGecIzDNL/gmJQUyk3FlxT7ppwGP
	 9Y/yzrz5RtTCuWa/VOoj5oaxklG6TBN64KLQ2k1/Nx8cjuJ7ugzTQQFuQ2euYNYFU0
	 QFSV5WbvjCYR/PBqp7ncWX16WV+uL8tWny2nQPXhAk36gDm/Sgncngw71NduzEgRpj
	 4FDaqsNA0Ka3g==
Received: (nullmailer pid 3997795 invoked by uid 1000);
	Tue, 05 Sep 2023 20:54:17 -0000
Date: Tue, 5 Sep 2023 15:54:17 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, Tommaso Merciai <tommaso.merciai@amarulasolutions.com>, Daniel Scally <djrscally@gmail.com>, Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Dafna Hirschfeld <dafna@fastmail.com>, devicetree@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH v2] media: dt-bindings: Merge OV5695 into OV5693 binding
Message-ID: <169394725610.3997729.730832978386837870.robh@kernel.org>
References: <20230817202647.2179609-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230817202647.2179609-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230905_135423_914846_215A648F 
X-CRM114-Status: GOOD (  15.64  )
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


On Thu, 17 Aug 2023 15:26:46 -0500, Rob Herring wrote:
> The OV5695 binding is almost the same as the OV5693 binding. The only
> difference is 'clock-names' is defined for OV5695. However, the lack of
> clock-names is an omission as the Linux OV5693 driver expects the same
> 'xvclk' clock name.
> 
> 'link-frequencies' is required by OV5693, but not OV5695, so make that
> conditional. Really, this shouldn't vary by device, but we're stuck with
> the existing binding use.
> 
> The rockchip-isp1 binding example is missing required properties, so it
> has to be updated as well.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
>  - Make link-frequencies conditionally required
> ---
>  .../devicetree/bindings/media/i2c/ov5695.txt  | 41 -------------------
>  .../bindings/media/i2c/ovti,ov5693.yaml       | 31 ++++++++++----
>  .../bindings/media/rockchip-isp1.yaml         |  1 +
>  3 files changed, 25 insertions(+), 48 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/i2c/ov5695.txt
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
