Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976CDECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 06:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+y4kWziD7BKUm5KTyZ5e7j8Zk8sYPvql5MqApKTRCFM=; b=3NenGufdGhSfOa
	0YGFvOexmdGfbNiaCold/qF9nemIPRrOFdExArXY64A7QUqX2njbma7YbtpYo7PffvtPAwFgoIq+L
	Exg7AkRci0idHuHOq3qNVuOc86RsNbw0nPBbD7Grz4Ekbz7MyBULIKoR2LN8VJkZ+v2MK3/hsnL2p
	ezF7X7HE/zuDB1Cu+03sQ2DCHLjJyE89Oh/aAp3U66ni433nCXx/lFEglnGfLp0fnm9KdEQTphJQd
	hf4qaChWP0DNr+gX0VK432Whe9NQQeK44iDMmmVC/BjcXqmPQ/02qpsda4I/xO5cWvBYvwAwieI3n
	Axk5am7nReVsRpspHenQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRnc-003ufl-Sz; Sat, 17 Sep 2022 06:59:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRnM-003uXk-Qz; Sat, 17 Sep 2022 06:59:23 +0000
Received: from [167.98.135.4] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZRnI-0007Iz-4p; Sat, 17 Sep 2022 08:59:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com, finley.xiao@rock-chips.com, shawn.lin@rock-chips.com, zhengxing@rock-chips.com, jeffy.chen@rock-chips.com, jay.xu@rock-chips.com, Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org, mturquette@baylibre.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: clock: rockchip: change SPDX-License-Identifier
Date: Sat, 17 Sep 2022 08:59:14 +0200
Message-ID: <2999300.CbtlEUcBR6@phil>
In-Reply-To: <d70fa056-608d-0c19-7948-c67b15a4246e@gmail.com>
References: <d70fa056-608d-0c19-7948-c67b15a4246e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_235920_932458_22073749 
X-CRM114-Status: GOOD (  13.77  )
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

Am Mittwoch, 14. September 2022, 12:50:45 CEST schrieb Johan Jonker:
> Change SPDX-License-Identifier to (GPL-2.0-only OR BSD-2-Clause)
> for Rockchip clock bindings.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Request for copyright holder approval.

For me that is always ok, to follow in-kernel policies more closely.
Rockchip recently also suggested changing the license [0], although
they requested "GPL-2.0+ OR MIT", which should be pretty much
the same though.


Heiko

[0] https://lore.kernel.org/all/510d1180-bc8e-7820-c772-ed7f35447087@rock-chips.com/

> ---
>  Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml  | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3036-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3188-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3228-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3288-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3308-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3368-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3568-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rv1108-cru.yaml          | 2 +-
>  10 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> index 3eec381c7..cb20a632c 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,px30-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
> index 1376230fe..ffac332b9 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3036-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> index ddd7e46af..6979ed1c4 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
> index cf7dc01d9..ca34345e1 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3228-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3228-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
> index 96bc05749..b952b0eab 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3288-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
> index 523ee578a..e1b314ed3 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3308-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3308-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
> index adb678777..3e8225357 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3368-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> index 54da1e31e..b06eef33b 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3399-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> index fc7546f52..5b49adcac 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rk3568-cru.yaml#
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
> index 20421c22f..95bfeb8fc 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
> @@ -1,4 +1,4 @@
> -# SPDX-License-Identifier: GPL-2.0
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>  %YAML 1.2
>  ---
>  $id: http://devicetree.org/schemas/clock/rockchip,rv1108-cru.yaml#
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
