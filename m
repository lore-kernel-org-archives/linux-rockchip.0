Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18511EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Aug 2023 10:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIg5SwIAB10DYJaTFCmUyAiDuM7vkl7tRpLXHQhglek=; b=dK3FGi8UiZpaHG
	QogU+ew6EczChoNJhc9xdVPQPusZ91TLyQzjoYfs7C0i2OA65asLGH/7dN5oxjbBdcRnG5PTxqHOY
	QQ+ZIK4OymQjGky/hozKzyQFwLyMSk3T9uesCSbBemlHMuLOqxK8tm5qkG1W6vM7j/B3AOfMRUxPB
	N88JK/XXQWzLrZlKmZLfdbbpDvouybjKom64UPUhyE+3vog0lKhUdk9iwNSqpHw7+c1cmnP86Zftm
	85x4hj8UelmJnDiI8lvcQqq/NghcVbnMenLX425/LlJitAjD+HxsvxphCxzYqi/+JM6Lgu1zWC/eO
	I8Lw75OazogigkFo1glQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTgfe-004eSe-1U;
	Wed, 09 Aug 2023 10:44:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTgfc-004eNW-0J;
	Wed, 09 Aug 2023 10:44:05 +0000
Received: from i53875a28.versanet.de ([83.135.90.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qTgfP-0006VP-GY; Wed, 09 Aug 2023 12:43:51 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Thomas McKahan <tmckahan@singleboardsolutions.com>
Cc: Thomas McKahan <tmckahan@singleboardsolutions.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Add Support for the FriendlyElec NanoPC T6
Date: Wed, 09 Aug 2023 12:43:50 +0200
Message-ID: <12777866.O9o76ZdvQC@diego>
In-Reply-To: <20230809054213.27447-1-tmckahan@singleboardsolutions.com>
References: <20230809054213.27447-1-tmckahan@singleboardsolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_034404_138532_C0685DB4 
X-CRM114-Status: GOOD (  17.00  )
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

Hi Thomas,

Am Mittwoch, 9. August 2023, 07:42:08 CEST schrieb Thomas McKahan:
> Hello,
> 
> This adds support for the RK3588-based NanoPC T6 single board computer.
> Note this series is dependent on the PCIe 3 support [0] being
> upstreamed. The NanoPC T6 uses PCIe3x4 like the Rock 5B and EVB1.
> 
> [0] https://lore.kernel.org/all/20230717173512.65169-1-sebastian.reichel@collabora.com/
> 
> v2:
>  - remove unnecessary "okay" status from sound 
>  - add '-regulator' suffix on 2 regulators that were missing them
>  - use generic node name for rtc
>  - remove extra lines
>  - fix alignment in I2S entry
>  
> v1: https://lore.kernel.org/all/20230802051441.3106-1-tmckahan@singleboardsolutions.com/
> 
> Thomas McKahan (2):
>   dt-bindings: arm: rockchip: Add NanoPC T6
>   arm64: dts: rockchip: Add NanoPC T6

somehow the actual patches are missing from this submission?

I also checked the linux-rockchip archive, and they're missing
there too.

I guess you'll need to resend or check where they took the wrong exit.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
