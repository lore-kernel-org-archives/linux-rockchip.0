Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C01F6C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 09:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPmOzsQgqORikp+k/6HYgTQdMjzCEHE41XQm2ef8KSU=; b=4ZBjvFU0FdMqBd
	Yc7zpKh2P+9jn+YsXxkuO/Y2paCTabNYI/tkaWFS2yIRzl1jTH6WZySP2qFOrztSf4RdD8nHSp6Xs
	gL93bVPNblOCVVyZpIW+RLxL9Gh37N+C79OzeVufkian51jX67KSsZ3U4m43kTETOQezwP5asobOp
	IwlMlhAc3NO6Waz61WMgfvQJIqFLXfpb7+XXC7ToVclEwPvFO7dR88+A5XlYacxGM6iE+CU/1LnTB
	vMvC3wqZEqNeNnh4Bn/tkv0hJ4/XeFYxxzBDv4fNZOnw4qyLuy4uXN/f1Pobb0CS/gb26PwthCqxY
	zy0O88akOuqyZHflLCKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9kAF-002zfB-Hp; Mon, 26 Dec 2022 09:52:59 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9k9k-002zNY-Nv
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 09:52:34 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-476e643d1d5so28891777b3.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 01:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pWR+JUq2o54AwQ6BNKo0a70xKICVf0zlgFYzCKYUAOo=;
        b=TUHkEMzI3Wy4MLlTkNJX+3OEd6QSPQdePraNM80YuZEXokTfMTzDVKEozBRheYrj4t
         IpQyhHNCY/3lw3BY/4WEEsfccP6F/fTMik/mzIQUOiV+dXxCuiwpu78RATZfxSGxj7RM
         VGdi/3kVo5p0MJdUGki5mCrGgpb9ihyuHihy1mW361eTBVEKBax3Br4yDNmi7G0gQH83
         VSzMZO0L0iTB0C+IAceJ8xv1tTsUtXt9Kc4UPZ3kgDKAtOYhPev6+NVtyMYN+ewUqGp0
         I3OJ435+cygdtXdyOHKyPCalgjegid2ZWu8xWyNMmwHXBjAGkjb2CSPVWherGbeJvM1C
         AEBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pWR+JUq2o54AwQ6BNKo0a70xKICVf0zlgFYzCKYUAOo=;
        b=E2LycIQK1YfNXxEQquf8PXMsL616EIycO84r7xUM8Ad8Wv8GVkfLPV4t5bqikEuHBF
         j8c9RuLAqfYUDtenuv2LGoEWx046EhJulUy8A3aPtu+cvCo2w7ATYs1P1Z+HgB5FYYtg
         XlVbOEVESwNlUR8L24JGek96ARDFswRnu98UUYUgwvJ4617ZoNLaICSLuHDV9ykme1yD
         e3jvxX13UgJkXv8mJgxtuQQdqZo1Dv188OmrruNZwPZF6UpgPnbZDqFkjUZ9y/vm+Uc3
         BALBHP0tkuiT5iqc8dvidhb5dggneKE98EMuq6AYcJg8VypBH8pceKqx7jQfqelvi7SQ
         xcaQ==
X-Gm-Message-State: AFqh2koP7UER4GHgBHWaR8xBQocgNZdxrMfr2zZed4FNpObhPEkvtoJP
	gXzKNeDUj9dmKJS6eN6YU/5HFVk5JX6QcmB9WdmpWg==
X-Google-Smtp-Source: AMrXdXtRB3VvIx7J4rn3WevIT08YlZ4foe9Ony+g6JZFUVO05YJlfKaQdwx0TxNNs0/V0i32acgO6sRgIXzMtChb/G0=
X-Received: by 2002:a0d:f1c1:0:b0:358:36cc:b6cf with SMTP id
 a184-20020a0df1c1000000b0035836ccb6cfmr2088607ywf.505.1672048347366; Mon, 26
 Dec 2022 01:52:27 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai> <20221226063625.1913-4-anand@edgeble.ai>
In-Reply-To: <20221226063625.1913-4-anand@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 26 Dec 2022 15:22:16 +0530
Message-ID: <CA+VMnFz3JTJt7pYsMcKgt+cqbHNg=f0Tofrp-wgcj-51wkdxUQ@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable
 Ethernet for Neu2-IO
To: Anand Moon <anand@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_015229_116587_6C70A1D5 
X-CRM114-Status: GOOD (  13.01  )
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

On Mon, 26 Dec 2022 at 12:08, Anand Moon <anand@edgeble.ai> wrote:
>
> Rockchip RV1126 has GMAC 10/100/1000M ethernet controller.
> Enable ethernet node on Neu2-IO board.
>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
> drop SoB of Jagan Teki
> ---
>  arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> index dded0a12f0cd..bd592026eae6 100644
> --- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> +++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> @@ -22,6 +22,43 @@ chosen {
>         };
>  };
>
> +&gmac {
> +       clock_in_out = "input";
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
> +       phy-mode = "rgmii";
> +       phy-handle = <&phy>;

arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: phy@0: '#phy-cells' is a
required property     From schema:
/home/j/.local/lib/python3.8/site-packages/dtschema/schemas/phy/phy-provider.yaml

> +       assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
> +                       <&cru CLK_GMAC_ETHERNET_OUT>;
> +       assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
> +       assigned-clock-rates = <125000000>, <0>, <25000000>;

Keep them in sorting order.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
