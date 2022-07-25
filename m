Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DCFC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 22:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/PcnZILYgW+jyUdsTbQ0EvaTKgd5HtiAxrhvbCoG28=; b=raYr/D0q22fiNi
	Oq466Q2VUoZqEfz9etLkXzp+mnXE9OL5Ltba/fJyU9mu7l72fFqudVb2xcBDycU2VvCOU+gjW4a/3
	YK0/TWeXEsaBJsQu9dXhh1uNOVmxfbMgvQV5//g4VeqbTjuPyjzn0w3CdBXsxAI9K+s+ofZAyiPi4
	SgQ6Bjmx1l6RWaoJN6cQnD8OtNEF3daDkwyqb/M3BIGngU1Q1upYOB0PQQVqxw+EPxqQc55W5gotv
	EBiXjuzQY8INh9OoGWJNIsw5708X31oyU19abnMWtPXNnXm7ldsk6DP58a8odDNzQXAF59pT7JPAn
	iB2d1y/ZbeZ/ezSJQYNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG6Sv-00398K-S3; Mon, 25 Jul 2022 22:22:17 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG6St-00395N-Rx; Mon, 25 Jul 2022 22:22:17 +0000
Received: by mail-ot1-f54.google.com with SMTP id z12-20020a056830128c00b0061c8168d3faso9715123otp.7;
        Mon, 25 Jul 2022 15:22:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=usnmbR/AmFXf0Qdhxn6n0uStsPRrPklSyxofovA7ixo=;
        b=Gm+6kgoBKslMlS95MhvbegjCpLeJY2NIc772gWeG0GyxtX0UmvcaZXehmhSlO/PKIs
         h0/lAfoctWDob4LA+ETXoQI6+AZmld0L+56qQ9mTvUgnna7iycdVRHM1GrdHuh2QiS/A
         qVc0g7OjTygOykT7CaojSkoik+PvM4P5K92A0hnh1xfP+BD7+gmfNCAp/ECS2a8zadOg
         HdNqUEKO7BZjiYxT9Dcu5Wt5zTe+7xmCxP3YPpaOAXFdm/mtSWiGD3WtrFt8TM4nXnW9
         ZtaJpuYZTS7MvbUKuR6gIDNaWVIJECgPVSRId2jBNSqTOpyzw114b5pfBjdUQLLI7EFq
         W1EQ==
X-Gm-Message-State: AJIora85Srrg9IBtjs05DwI77L6kMhg6ffPL+tQL3CK3U8ZwlA8IlfjI
	/ci9cfKBGlHk9XlsgBT1vw==
X-Google-Smtp-Source: AGRyM1vN8EPdmzVTTKufoNx4fMFcuAy/FFxvpsZpHOw3pLDW7a+ZmZ+FUbbvHDo2ZRb7xwrcjSXdpw==
X-Received: by 2002:a05:6830:600f:b0:619:1d62:60c2 with SMTP id bx15-20020a056830600f00b006191d6260c2mr5553879otb.11.1658787732972;
        Mon, 25 Jul 2022 15:22:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id v188-20020a4a5ac5000000b00435b646f160sm5316984ooa.5.2022.07.25.15.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 15:22:12 -0700 (PDT)
Received: (nullmailer pid 2848618 invoked by uid 1000);
	Mon, 25 Jul 2022 22:22:10 -0000
Date: Mon, 25 Jul 2022 16:22:10 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: add compatible for rk356x to
 rockchip-inno-csi-dphy
Message-ID: <20220725222210.GA2848546-robh@kernel.org>
References: <20220720091527.1270365-1-michael.riesch@wolfvision.net>
 <20220720091527.1270365-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220720091527.1270365-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_152215_934530_847002AF 
X-CRM114-Status: GOOD (  12.50  )
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

On Wed, 20 Jul 2022 11:15:25 +0200, Michael Riesch wrote:
> The driver for the Innosilicon MIPI CSI DPHY is compatible with the variant
> in the Rockchip RK356x SoCs. Add the compatible string to the binding.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
