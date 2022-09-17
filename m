Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 497AEC6FA86
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 06:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9/qkDuI7usT4xVM9yA4H/cLOkWAHzCWF5oX/pDJq1Q=; b=dXzYqeIlKoamOj
	uOQ7Tyv3HmjOzKwtOaGNpsyO6ShXzeCY05sBHaVznXVGeF1+XcPuDtUrK6Nbdb7t/6OtxiaYhxHmK
	h6WnF6aUSeJNdQ2tleiLWtXRSfaWa7obnjnukfvunGIfs7Wl429vTUw0rqPpHrCD3ZaOY0LSfkyz9
	XundXkVZuvEgvK3e62T9U0m9piqceBeIC8smLlLeH3sb7Q3l2F3N4SYM20zrh1zH+t96sGt3ONReV
	+SJqxLIVZepWngJJ4JBcn6Wlck/mr0f23RAcHSy6RYvjZ16SfVecxzCqqfXOyNK1/HhDAFcjLqH1l
	M7af2fMBxNaLQsgU4kAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRlI-003tFT-8e; Sat, 17 Sep 2022 06:57:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZRl0-003t5T-JM; Sat, 17 Sep 2022 06:56:56 +0000
Received: from [167.98.135.4] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZRkw-0007Hc-Il; Sat, 17 Sep 2022 08:56:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Johan Jonker <jbx6244@gmail.com>
Cc: zhangqing@rock-chips.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org, mturquette@baylibre.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip,rk3128-cru.txt to YAML
Date: Sat, 17 Sep 2022 08:56:48 +0200
Message-ID: <1754977.TLkxdtWsSY@phil>
In-Reply-To: <aa1fc003-eef9-13bb-b21b-ebccb12dc257@gmail.com>
References: <76d87f49-6a44-0a05-c9dc-af870fade924@gmail.com> <14d7bbb5-51c4-8fc0-2303-f5164c6da903@linaro.org> <aa1fc003-eef9-13bb-b21b-ebccb12dc257@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_235654_683428_909F8785 
X-CRM114-Status: GOOD (  17.27  )
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

Am Mittwoch, 14. September 2022, 11:25:48 CEST schrieb Johan Jonker:
> 
> On 9/12/22 12:51, Krzysztof Kozlowski wrote:
> > On 11/09/2022 23:20, Johan Jonker wrote:
> >> Convert rockchip,rk3128-cru.txt to YAML.
> >>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > 
> > Thank you for your patch. There is something to discuss/improve.
> > 
> >> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> >> new file mode 100644
> >> index 000000000..03e5d7f0e
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3128-cru.yaml
> >> @@ -0,0 +1,73 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> > 
> 
> > Can't it be Dual licensed?
> 
> That depends on Heiko and Rockchip.
> I can produce the patch for it, but I'm not in control whether they reply or not. 

Rockchip recently replied on other clock-patches to dual-license the
binding, so this will be ok [0] .

And for me, following in-kernel policies more, is always acceptable :-)

Heiko

[0] https://lore.kernel.org/all/510d1180-bc8e-7820-c772-ed7f35447087@rock-chips.com/
From Finley with an  @rock-chips.com address, so this should be ok



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
