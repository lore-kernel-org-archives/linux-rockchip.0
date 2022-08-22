Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2701AC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 07:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65/einXSWfcPgoQRDiXpr+iAaJgoI0DWBOEZnJ5f2bo=; b=C2JQHko08MMSD4
	02a2nmFSJps2wgGdcpqdrt8R3vsB9pHufDuTZAtpmyY3JUflsJHJsc/fFWXX2N0U5dCx8U8gVBAlD
	CCuUMHG7nd8Irr6n5w2Mpjqw6PQWGbadv2zPi4hernjpPgIjmKu520w1PTj78TdQVBwTKDK1U1O5Q
	lVtMQyd9JneID2St5xaFhXLnmkL9lxlgUIdi3KJlhstB8RyzxA+AH900LOFljm5y5UCrn52L/lRXO
	KoXPnyJPWCsYxT0Pn6oBl9+OBwFAARUR+Il+T4Z616KTo4WU6/Xzok+iwSvhBJ1Z3ZsTFO/QRgKvl
	BvSb1HoeAXrP7nBU90bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2DX-0068fa-Eu; Mon, 22 Aug 2022 07:51:27 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ2DH-0068Ua-M1
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 07:51:13 +0000
Received: by mail-ej1-x62b.google.com with SMTP id n7so1352884ejh.2
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 00:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=X/e0sUGzNGa4XatfY2HnLYxSIYjraGrcGgPCXIi/SH4=;
        b=p/dfF5WWiVj3NcT+TOqGCRz9kDKav+hCC7ytBLCjOHmYBbY3WzfaiOVHZJJLPiY7ZD
         gm4IoKS2TbFvcOJ7EJtpsLpcBep5CmybCoVvP1bXAGk97MS7aNaBVGOD3zqp/mLZuxjw
         sebOdE7zQ0fR8l/3L3PP3fv+NuX13xr3MtBBCHmp3NCQ9AEJKts+CA7AUuxWsRUovwX3
         N2/sAXxbxZba5IdloZQNoI79sM1dDVtoMEXyLgky929dT0FN1YrY02AZntbtCd6fk9Iv
         NOFLF2jTh924yvjqt5A4da1qmT5BEe1dTXamy1sxelLYfcxaTRF4EBtFkfi65xq2TStq
         ZjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=X/e0sUGzNGa4XatfY2HnLYxSIYjraGrcGgPCXIi/SH4=;
        b=gWmwKqFmMcTzJKSR9dWs2H3SoRtbYBRkGIzF5nygDCu+8pNSS1FuskudAsc/wbWLm8
         t3mWCdBItQ943TQvHYIpcONjiVdRO3COcVuWfDCTjPqR+G2amumLvU4Q4HBwoRLgKyO5
         lTol0YLXBEN4NCRnhNGEnB/uwAknlqc55+mFM6LavOO1sFfvv5qEoZtLI1VwHI95cOd8
         hz4uVKuy3U1bVw2lrqx1/1hdvA6pI0BmUudiAsZA+7Jehs7NIEAp6m8EN3up6y4IF5XM
         UVnsxhnxFfkeduQi8nnh2AvqhNyJDL4coIDUn410+/2dO+KzmO3kHh8ajoYskklq5y/9
         JIXA==
X-Gm-Message-State: ACgBeo1MsYGwzDShzc/4kKZB3pH0TXwHwUs58Chp0+QstKa4xj9u8OsP
	V4Dgl9iZp2rnwksdjVX9hqCc7Zb9DJ/tZmZj4V5y1w==
X-Google-Smtp-Source: AA6agR7uLIVK3T7IxhbVmoLbLjMTG5c912qcrQBKemUAnACqvkhKAjq74FAhRld9ll/zFYHAdHegCnDcGa4LtNFN0zQ=
X-Received: by 2002:a17:907:9628:b0:731:1e3:b168 with SMTP id
 gb40-20020a170907962800b0073101e3b168mr12261197ejc.526.1661154668591; Mon, 22
 Aug 2022 00:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-7-jagan@edgeble.ai>
In-Reply-To: <20220818124132.125304-7-jagan@edgeble.ai>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Aug 2022 09:50:57 +0200
Message-ID: <CACRpkdbJg-u-Lh-T9MQuaL+OYFOSU=ToCyAx+dvoZ9WsCEBT7Q@mail.gmail.com>
Subject: Re: [PATCH v3 06/19] dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_005111_879573_D93B1DD2 
X-CRM114-Status: UNSURE (   9.98  )
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

On Thu, Aug 18, 2022 at 2:42 PM Jagan Teki <jagan@edgeble.ai> wrote:

> Document dt-bindings for RV1126 SoC pinctrl support.
>
> Cc: linux-gpio@vger.kernel.org
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v3:
> - none

This patch applied to the pinctrl tree for v6.1.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
