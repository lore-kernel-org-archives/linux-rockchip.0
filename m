Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20E43C3DA70
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 16:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4Koqtz7OOrh7d7RQEW9qPk/s/H27vQ153ocggGgfNY=; b=MKABQ5seKiWyzT
	o4/t77aDFfarnBuZsq/FKGQAU3B5rpMfzku7o6xQlFSJsF+XnJa4O5jBckLAs8GgJGXVpY/IT/Ydn
	pmDbE3VqhILfi3Dij7enO3omfl4A+mDVL7zTrcPWcnkSD5EN87e6nt4xJ06mSLWCn40MjyhmIZnfP
	RLGXLEONK+mcWdjbU9vdE4UgATPYYnp8PK7Ey9DBXmDiMUC85rxDceH9CmBKNb+VfaFA5Nv2TL/ZS
	4XX65CkCoHtmyZHR5i6nUAWhytbNtouv5GSuphgpLqtbZyfRZu97Rni1iRGHAkz5brPlqo3n2Uq5b
	qSIusN3UcHJ3LWS9Ajag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYppg-0000000FtH4-1nJ5;
	Tue, 30 Jul 2024 16:36:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYppe-0000000FtFq-0e2G
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 16:36:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 30F4462005;
	Tue, 30 Jul 2024 16:36:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AED1BC4AF0E;
	Tue, 30 Jul 2024 16:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722357373;
	bh=XIyhNqlDuxm6pMJEOSO1+GWCuSX84v5KFQMHzdYZowk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Oa1fiIMP/Qq19dk9m/TykXR6UPGsj5AAZaSkQOJbA007ujDvSJdnu/krhIoxDz+IO
	 kpVtW9XVRUlBpXxhTZhPqheieUr0lClJRe3LHOwpmiqSmRLhwemYcyQT9KbgMeh6kS
	 k5n2SWMeya//V2RwOmMltmx0TO4XDso6somvqluwSyiny4OSLx+O0pXqD5aq0lnrVT
	 FpmHSUl7GHlqjri8/0JhWNSE1mhz2GnhupGUe+XSGxql049jNibA+hwPqynvt4QKi6
	 VpNgei8lTfNvyTDPZQ9YY0/GJiQP/vLRrQbzSLxbi2n1CmwkWThqrakyVmDKAcN4mp
	 2k3DRMvIhMbwg==
Date: Tue, 30 Jul 2024 10:36:11 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, jagan@edgeble.ai, andyshrk@163.com,
	jonas@kwiboo.se, sre@kernel.org, t.schramm@manjaro.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: power: supply: add dual-cell for cw2015
Message-ID: <20240730163611.GA1485886-robh@kernel.org>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
 <20240726194948.109326-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240726194948.109326-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_093614_297819_34CB45B9 
X-CRM114-Status: GOOD (  17.84  )
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

On Fri, Jul 26, 2024 at 02:49:44PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> According to the datasheet for the cw2015 the device supports dual-cell
> configurations. Add a new device tree property for this condition so
> that the voltage values reported to userspace are correct.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/power/supply/cw2015_battery.yaml    | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> index dc697b6147b2..0e7866d42cca 100644
> --- a/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/cw2015_battery.yaml
> @@ -34,6 +34,12 @@ properties:
>      minItems: 64
>      maxItems: 64
>  
> +  cellwise,dual-cell:
> +    description: |

Don't need '|' if no formatting.

Acked-by: Rob Herring (Arm) <robh@kernel.org>

> +      This property specifies if the battery is used in a dual-cell series
> +      configuration so that the correct voltage is presented to userspace.
> +    type: boolean
> +
>    cellwise,monitor-interval-ms:
>      description:
>        Specifies the interval in milliseconds gauge values are polled at
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
