Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F39AC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 08:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3RMhS2Ow8Gl/qH7KrXRPzOgGDc7AHzwuZGeymB0ods=; b=mSWY20RTLbeFkP
	oKIDXZkezRKXOQ0tfkM20jz1SOVbVQA9qy7oInzOCQJqLIRY2iHnFuNAjfy/u/62g07XY8zQMPGdG
	D5CuY9OU2MVCVZb+dGzH8Bd9xOtf8llyjs6th4STf6qotdOm6HoiV+1t0/qvw8Msp8ivYTdGiTCLI
	ZIiN4o5k5usoankj/VIBkCrL2PyvdAHVICaAzvvvUCCKN5NzMyuEiuz5BOF3b3UrHEHE7NKzTHEEz
	DSPggsRy2lesm+ZfrAvTRWOuIH6KM9B+3rxuc7RNkWlNovdjUbYn1obYRY0yhAnkjzMtjKzCVNVrf
	R8HDW0wY5hWSe0c6BPDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx0Xu-0000000FBZg-1Jcy;
	Wed, 17 Apr 2024 08:21:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx0Xq-0000000FBYv-0wsQ;
	Wed, 17 Apr 2024 08:21:32 +0000
Received: from i5e8616c3.versanet.de ([94.134.22.195] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rx0Xe-0001bO-En; Wed, 17 Apr 2024 10:21:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Jianfeng Liu <liujianfeng1994@gmail.com>, conor+dt@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, liujianfeng1994@gmail.com,
 sfr@canb.auug.org.au, weizhao.ouyang@arm.com
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Date: Wed, 17 Apr 2024 10:21:17 +0200
Message-ID: <13494460.uLZWGnKmhe@diego>
In-Reply-To: <20240416034626.317823-2-liujianfeng1994@gmail.com>
References: <20240416034626.317823-1-liujianfeng1994@gmail.com>
 <20240416034626.317823-2-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_012130_318585_D09A0E67 
X-CRM114-Status: GOOD (  13.25  )
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

Am Dienstag, 16. April 2024, 05:46:24 CEST schrieb Jianfeng Liu:
> Add vendor prefix for ArmSoM (https://www.armsom.org)
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

[PATCH v3 1/3] dt-bindings: vendor-prefixes: add ArmSoM
yesterday got a

Acked-by: Conor Dooley <conor.dooley@microchip.com>

in
https://lore.kernel.org/r/20240416-choosing-boney-33cf206d0f38@spud

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index e4aeeb5fe..e47405535 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -151,6 +151,8 @@ patternProperties:
>      description: ARM Ltd.
>    "^armadeus,.*":
>      description: ARMadeus Systems SARL
> +  "^armsom,.*":
> +    description: ArmSoM Technology Co., Ltd.
>    "^arrow,.*":
>      description: Arrow Electronics
>    "^artesyn,.*":
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
