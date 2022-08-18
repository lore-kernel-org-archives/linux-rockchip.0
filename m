Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C234EC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 21:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08o2h6RjgRJnnfYqW8m/WXnowMYWtXeBGZsuq31il8o=; b=Zcwy4kBxa10kgV
	3uTelwQ5Ic79UU9VD+PejbQTqNIy96tHIFPyhSshILkPzwPNOPLgR4XH+08V6GpkH92PTQWvpSorN
	tD0ccsWa9fTaRQpor3eWJ+Fnh1pjHrQlrO4aUAN4glL2jW0Cc/Fx8mAUV5ao0lqTPZcpnxAQPKlcD
	k3BX880R0UwBhX9UZkY10YDUYM26DopRhbl+WcajbXZDbSMSkW1q+a8eqlY5kYQVzUJMoslYNSMrA
	AUrUyKkEiOMU7GkhN6XMIEDIdueE4j1M9vSq6rPQkaaE5MYuVriOZLyCvz5N6wlNpYlMssPhKNO3G
	ttA5Z9pEp5wZN8YYEKow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOn4v-009qdk-Rv; Thu, 18 Aug 2022 21:29:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOn4l-009qZZ-NS; Thu, 18 Aug 2022 21:29:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 31CDC616A1;
	Thu, 18 Aug 2022 21:29:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FC43C433D6;
	Thu, 18 Aug 2022 21:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660858153;
	bh=FipX6TVhrxxHlLkeH5ciwQ7iKPbNA0jvMsmy8hdNRVs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=NXopHnykGh+XHvpPSsAr1PicYgKojNMOjbNGWZ2RLkbOutAOlwZlGtBHjKiDClZ/h
	 mFdGpx625eZyQcJ7gtko3p0RysfP8L8LHRcAeKpwCXoV8gNlYblZq0tyYC/DEc9sEe
	 ApZedc47hAVg4FG/QM00AaJpXnrLOsgN+q2cbNQgVOPpXDE9/RCA10cCWzqLXUqiBX
	 AyXijggm84IOZPXK+wloH42vbZL/uMhbqnSiKEsL2p65FJhp8eTc+9O2umwqgSitm0
	 W0sGhKd/LNZyJ+dmbUfi9mzd33atwR6qbTy60Yl/5agGESK5MPCs/ekf/3Mrfer0eU
	 5FR7MMDmo65ww==
MIME-Version: 1.0
In-Reply-To: <20220818124132.125304-11-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-11-jagan@edgeble.ai>
Subject: Re: [PATCH v3 10/19] dt-bindings: clock: rockchip: Document RV1126 CRU
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>, Kever Yang <kever.yang@rock-chips.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>
Date: Thu, 18 Aug 2022 14:29:11 -0700
User-Agent: alot/0.10
Message-Id: <20220818212913.7FC43C433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_142915_821760_73DD87AE 
X-CRM114-Status: UNSURE (   9.63  )
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

Quoting Jagan Teki (2022-08-18 05:41:23)
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: xin24m
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "general register files" (GRF),
> +      if missing pll rates are not changeable, due to the missing pll
> +      lock status.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"

Why aren't clocks required?

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cru: clock-controller@ff490000 {
> +      compatible = "rockchip,rv1126-cru";
> +      reg = <0xff490000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;

Can you add 'clocks' property to the binding?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
