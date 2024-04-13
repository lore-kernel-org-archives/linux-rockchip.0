Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA81C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maTWCKXr9SFZrRQgmaQ2wH0+BbHiw+q/xgPxIKkeTNA=; b=38NFrMGwpIgXm2
	EIy3igA2NKdgyGj/M9ci1zYpi133UGlJSwO6eqWDsacAR6slnNpiI55BMDKQu3AKIHIsZe+nleOgt
	ZNM1H306euqDtrzLh9aZztNhEN/TMc5KT6i+ijQ4QSeaBBqZfoRBr2pnEgxvjmoEyq30LXPGGR5hN
	Fu3MoQmTms6plzsT1IHbwbt2muOr/FloSa+BM65vHYEa4Ya7wWzRIXYA9/gaeKJrcboLRRcQdBmqY
	BMjuMfLtfMo8N3zPc6D0c9vEviWxNE8F3ORtCwMh+H37lBJfSk4+5AEpMcuDWkkXOeknVYF7bB/vY
	YDaGqs/kytcK1B5XD5dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfFd-00000003R99-2MsN;
	Sat, 13 Apr 2024 15:25:09 +0000
Received: from smtp2-g21.free.fr ([212.27.42.2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfFZ-00000003R8T-04gx;
	Sat, 13 Apr 2024 15:25:06 +0000
Received: from localhost.localdomain (unknown [82.64.135.138])
	by smtp2-g21.free.fr (Postfix) with ESMTPS id 7E63920039F;
	Sat, 13 Apr 2024 17:24:44 +0200 (CEST)
Received: by localhost.localdomain (Postfix, from userid 1000)
	id DA82C40039; Sat, 13 Apr 2024 17:23:50 +0200 (CEST)
Date: Sat, 13 Apr 2024 17:23:50 +0200
From: Etienne Buira <etienne.buira@free.fr>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	shironeko <shironeko@tesaguri.club>,
	Etienne Buira <etienne.buira@free.fr>,
	Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Avoid error message on rk3328 use
Message-ID: <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
Mail-Followup-To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	shironeko <shironeko@tesaguri.club>,
	Etienne Buira <etienne.buira@free.fr>,
	Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
 <f245966c-267f-4159-a9ca-2561693d24d9@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f245966c-267f-4159-a9ca-2561693d24d9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_082505_233108_CC94122E 
X-CRM114-Status: GOOD (  23.76  )
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

Hi Krzysztof,

On Sat, Apr 13, 2024 at 05:09:33PM +0200, Krzysztof Kozlowski wrote:
> On 13/04/2024 15:56, Etienne Buira wrote:
> > rockchip,rk3328-grf-gpio is handled as syscon, but syscon mandates
> 
> syscon does not need such property. I see it in gpio-syscon, but not in
> syscon.

gpio-syscon, indeed.

> > presence of gpio,syscon-dev node (or it will call dev_err() when probed).
> > Correct rk3328.dtsi and related documentation to follow syscon's
> > expectations.
> 
> No, look at gpio-syscon driver. Parent is used.

Parent is used, but the next lines are:
ret = of_property_read_u32_index(np, "gpio,syscon-dev", 1, &priv->dreg_offset);
if (ret)
	dev_err(...)

So if gpio,syscon-dev does not have at least 2 items (or is missing),
dev_err will be called, 3 items for dev_dbg.
Current tree displays a spurious "can't read the data register offset"
message.

> > 
> > Signed-off-by: Etienne Buira <etienne.buira@free.fr>
> > ---
> >  .../devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml      | 2 ++
> 
> Please run scripts/checkpatch.pl and fix reported warnings. Then please
> run `scripts/checkpatch.pl --strict` and (probably) fix more warnings.
> Some warnings can be ignored, especially from --strict run, but the code
> here looks like it needs a fix. Feel free to get in touch if the warning
> is not clear.

Will do, if we agree on the interest of patch.

> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi                        | 1 +
> >  2 files changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> > index d8cce73ea0ae..2c878e7db900 100644
> > --- a/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> > +++ b/Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
> > @@ -38,6 +38,7 @@ required:
> >    - compatible
> >    - gpio-controller
> >    - "#gpio-cells"
> > +  - gpio,syscon-dev
> 
> No, not needed. And also incomplete - where is the property defined?
> 
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.

ditto

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
