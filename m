Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332B1606A883
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 03:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LwkB402W;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ypZUOlzW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aGXFfaVxPbTtTQQAD5TC8lrXngURvG2PBDH3gsAGBtk=; b=LwkB402WWLbXJtGN+kYhknmM7G
	HCE52NIH1btdMnZLqeeXm6jkCw9AIbJJWfdiq9R8JmAlwm+O/tluoiE0kHlrksdsaRMP++r0TUWGc
	aIuFnnCjHcdYOiK2a76jrT7LlT5d2P9X0eJLCtya+Beite22BK6/4wAMB+NVtoHJGfkrncU4TzxCF
	yIGlVHbHOAvaAfufQeRaaZN95LgsPVuBgR0jKrTcMaXCEa5Fn+tzItciehx0HdKDz7tA3bTxAJcQx
	yIBushhnWn/aIbah1gE/hPlymGTtMPFK6WPgdEG1h0HdxV9qeM/Kz7x2UdB7voBB/y8n55B/RmfcP
	NJdO1BKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmyI-00000000zPX-3Jiv;
	Mon, 16 Nov 2026 03:01:30 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSmyC-00000000zKG-3y5J
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 03:01:27 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-6b7c7fd4c33so353928a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Nov 2026 19:01:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794798081; cv=none;
        d=google.com; s=arc-20260327;
        b=m1ck2LmSI/w6RPZtZnMt33DWeEKi7Drjey5C3dvFQHhWsE7KV+NrlGKMUFCxLCtmEQ
         85dti3Rx6Ml4qHS7aidPdXOVDfbjbgm0C0xP2rfbM5Xi02ZCmEFh8tP49UFlxS7PA69O
         7fg+TiT77cA39XJasiEzKgvzkP4mTjcJzIMEDkzcjSKcJU3VxASzkUiP4QYVvToHgNnG
         2cEeomvMeNKuNpxPM6AikiaOQrHxSXPpQwwYk7B6iuC4ZQHdLCYhmEDgAbpi4b4vzVZ+
         RaWUI9/ie16jzdElWkH3rLBMXeP3+I9k+iCn0gPD3EMcRg/NG6zFVv+s0V6W8JFiqDUH
         m2Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4qUheKg2Lay7rkyQAuqzWzkTXaIYOEjjSVeDSogdieo=;
        fh=GsklUYPrstIvsiT4ekJORl8NXFUs0iSqU09TCDjJCpI=;
        b=e0L3+YGA/jQi3G0ylfC8thtzvmnqo1Y4xkc10eXug0yPlyUQaojag6xpGChJnYQqnb
         YQgZ1qbNkardM4Qu/xRoLbna4ewoE0apyAPAw8dzslw4zHcO9Mt3rw2c2XU61gM6DmDl
         dKJYThLoHWWfBX++znbUulFmX1zyDnfwZyS3ywHvLhhMqlNEEckVixz2UmMVuDbwdF0W
         yLrU2OYyjpNxy/QC9r4nnOj2rh61IAFAMKcew7eH9whFzthGuuxjw5zb3aumIAp5zEoK
         KN+hDKofZ/z5w0UYnQyPSFQYI+x1CsrKNyqzbJIyMgilQqJmCA0B/qkmIIZprsyKlSE3
         tJ2A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794798081; x=1795402881; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4qUheKg2Lay7rkyQAuqzWzkTXaIYOEjjSVeDSogdieo=;
        b=ypZUOlzW0zfxiQOwmiTLgU4qngWZuHY9XO+Aes+aYyaOfXsP2aye96YbozwVFG3Zdz
         7xfkQNgysPOy0aAFrWl4jHZuQvLf8CqjeJThUfEpLA0dVmatlXqNl1S+lR3aKuOCGMYR
         Ex3qYAE4urmIwqLj7dPJeLFIaBl34KYsFQycjMnIyhxhh2Lydlxub2q+rh2HfrltOXHH
         WXZ7OLoNG54sUTs1ww/ikqjcmigExi/o0KdXLBAmQ9vgntnKc0dre4lXsv1b7X6iHPOR
         tnBTOLUxnlczGCsEd8obVqEiZ0kEWC1yJ6tvQCOKW9fb/93wp9vIfRS+/Mu2M6c+6kLQ
         T0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794798081; x=1795402881;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4qUheKg2Lay7rkyQAuqzWzkTXaIYOEjjSVeDSogdieo=;
        b=IKE+8nK+GvdCcosJzk8ZJitT2SeE9J9XlV7MyhLv+b5valu6CJtmx2tVC6ff0Mxvz6
         9qTDJF3ZGap3Va/TzHv5wqd1WN/0YCWyepRpFwD4vmd6Jn6yx8Emj2sMWMcF5E8ZA+DL
         kkFQH3Twk7WyYlpqeJrZysckorDRBCyW2wbyIbl783mZVMTQyFOiiYW22bcT5InharuM
         CXm1oUcVirXdPhEvUySr8psiYknGvmZuKIRj/u9gjpJwwzVxnaNphkw7D4WZL+a3d17s
         EgRGcEyN1G8x5H5D8jhk2GUfsPJh8IFqXR5ZsRSQnG2V0nXECOnUZE1jaR2t4A6MxoGr
         d1eQ==
X-Forwarded-Encrypted: i=1; AL+hErFdypDoHhK98oap5h8uqv24SCQ2hBbXEqv6ms7deAdhic435oFluzvjIo5BlqXNCFRbTLp1FOHqH3HwNgGPOQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8VKwrC/Ff87tGBue7K8bj7m2WBrOwwDDoMMFU3HcY9r7bfZS/R
	ricxu/tErtwFntCdOzMC05eTt3uqg2OlMDGXD4v5VOIVft/zy1Gtdpl+5DGf1dH7DDhk9g87121
	V4UH/O8c1mncr5hmQDmGabbxvkn3sHAA=
X-Gm-Gg: AYBFou3kBy+A0ATU+QiClV4eRMz9lT8LSO5phqUDkoV4IS/EDS29FQW45hqH9ASO2Ki
	CsIds0b8DinLMkjR+BX+W54ek6Z4Q//mpfrBuv85Fzx1eweQSidbjdJTB+a9Nsb0blpuJ8PwHCV
	B+I5xROlJroqNOCzV+kkx1dA2ti0Hu9VBXWG+/8KlQqWB6bQ9jxxN/fAUMhpsyBtZjwr4r1ccdw
	yUVAPm0/IbIGFm4nWKMQY3sKEhRAwXtRLpfEJLowBEx1C7cXnwo1CpPJTetG1HVtJWGkztV4EjQ
	1y7YFQ/9wkTIn+axud0Yq4bfJT75oFJJXyy8V7iztb1etcEmYFYYu7DMRF0KThE59pt45Az2wsv
	xR93xYv6yDf71tt+9kRs0OCLTHUg2b/XYtJFT/AmfYKMZ3nWW8GApbYMb840mgrs/orzLvaY9Yg
	vyv0P3ZCUb0EdQPUE6
X-Received: by 2002:a17:907:6eaa:b0:c4d:1768:48eb with SMTP id
 a640c23a62f3a-c50962f0b77mr1233752266b.2.1794798080923; Sun, 15 Nov 2026
 19:01:20 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-3-d681ba20b36a@gmail.com> <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
In-Reply-To: <3ab93996-7e37-4143-aa4c-b4b4b0e025d8@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 16 Nov 2026 11:01:08 +0800
X-Gm-Features: AclHuK_2CCL-6w7SS-4GVGwc0x2u2Iaps879pDspYuxXhI4Edd6EqNeYrnLX7uA
Message-ID: <CAPwA33JHxsd=nr9F9_KFKWPx+HGaR8P3ee7hxMc8XCS6QY46gw@mail.gmail.com>
Subject: Re: [PATCH v6 3/9] phy: rockchip-samsung-dcphy: Unwind power-on on
 PLL lock failure
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261115_190125_010843_465568E2 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Michael,

On 11/11/26 14:02, Michael Riesch wrote:
> I wonder whether this should be here in the first place. Only judging by
> the name, samsung_mipi_dcphy_pll_enable is something that affects the
> complete logic block and probably should be kept in runtime resume to
> begin with.
>
> However, since _dphy_rx_power_on does not call this funcion, it seems to
> be something related only to the TX side of the logic block, but for
> D-PHY and C-PHY. In this case, it probably should go into
> samsung_mipi_dcphy_tx_power_on.
>
> On the off chance that this is actually for the D-PHY TX operation, the
> function should be renamed "*_dcphy_pll_*" -> "*_dphy_pll_*" or
> "*_dphy_tx_pll_*".
>
> What do you think?

The settings in this function are indeed only for TX, for both D-PHY
and C-PHY, so I will rename the PLL helpers to
samsung_mipi_dcphy_tx_pll_* in the renaming patch (6/9).

samsung_mipi_dcphy_tx_power_on does look like a more suitable place.
However, I do not have a C-PHY board, and I only have one panel with
mainline support, so I may not be able to test the DC-PHY TX side
thoroughly. For now I am trying to leave the TX code unchanged unless
my series affects that code.

Should I move the PLL enable to samsung_mipi_dcphy_tx_power_on, or keep
this error cleanup path and the renaming change for now?

Thanks,
Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
