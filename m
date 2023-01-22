Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B9FAC27C76
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jan 2023 13:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h46ITHXwJlAgNkYOaS4WystT+O68Ogl+uUOZ7C4HKG0=; b=OudM1ydhjzLOyq
	+UsPF41NmlBYLVGevLUpR/KixtDY12KXrj2Ker6oj6QEol3dNLS7iFLafJ/ghGHyQDF8QGH/nS643
	rEvn3u41I3T8us66kIpFQv8QrpJ+GZWnpy5NHMnXteFzT8k0PQPekREF8qlYklT9S4ATHi1wIHwqu
	9t1HELVflvupYayedFqN5TeZATINvaROyVFes6F/Syr/KWw8PCLXpTJffs2m8cgpYkrL2plpn42uc
	2bRPBtjoEMtukrm2NCpvy4ti4FSOwo+9HyRCJwQbic5AFkyU/mkVe8pkttTYXLU6JupnjyMTqxyN7
	F3fcPZCcDTuklXaZUubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJamh-00FNci-Se; Sun, 22 Jan 2023 13:53:23 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJamW-00FNYO-Jy
	for linux-rockchip@lists.infradead.org; Sun, 22 Jan 2023 13:53:13 +0000
Received: by mail-wr1-x432.google.com with SMTP id h16so8576392wrz.12
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Jan 2023 05:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3uz2hambBKLny/k/c/XNti8Jw4YcdQCQlmBD+jwVcBk=;
        b=im0FbK9Wffib+B7bORG4P13UYRAyZyp1no4g55k/all0Vq+yhRXlxv2tPSHemQfYHU
         kXkT2Mcfsephkho3xZWoUR8TXApQ7QUPOdNlAwxCICAfWBqXvY5I548WRlXqDDloXbRi
         quHu9BOObQpNOBG45Xflh9/8aN8hkZD9jCNdy7NeGAdvCY837WzuOHO6xcl0l98Y3KtT
         QQSuN0cYtNQbkaoYYfw0N7d7RKk3Cg/yRJY39GblJJYmyVZ2T+xDbrVF7NLmXwXDSAac
         gClk2nzoILKbEUksvkVncpo7CpYIaU1mIgjWeagoKIo0+rejOBRT4S2IgZKl4FJx2fT7
         0rvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3uz2hambBKLny/k/c/XNti8Jw4YcdQCQlmBD+jwVcBk=;
        b=yOqIjMOiTb6Ny6qeK3K4toIrGGdlewbPhvD//mBE5W97ftWhpRTgaT5MeM29hQDxuN
         9TmVRo+KAdMWVcaPrbQH+g9nDreApDWkKyFWo6myvJVZgKsmsuiqTVvNJL6BHmyutHdE
         gXDtvNGcTRf0MRqKUnauQHykeoM343QR+m9v2jYUB+zgcet+3a4++Vn5m49gO5PNAyzL
         0pQ8CkpkABnEZ8HxV2+tvAkOdXX75FPSoLnqbQvQpXiOEMoXMwxACm/sWCRS6+jluxIu
         4oXLer0Q+sZTMIY9hLsLyqRWNVhi8EvNl6ybiDLDtq5ezInpFbvGJoQdW0RUShk8crTW
         +mXg==
X-Gm-Message-State: AFqh2kowpgSmYMEJGDM+6gyeovfp3MyFfQlMOge3UAb0KKeqSOB0cVrL
	NQhFFTvAG0e5QcbCoZuqR3GAdQ==
X-Google-Smtp-Source: AMrXdXshgTb0eYjX3WLoeDDjDTBa4r4aeJ+fgpVNN17aH0ELUdXHirup37RL7a9oBC55AR+KGOFzDg==
X-Received: by 2002:adf:fc4c:0:b0:2bd:dbbb:e7e2 with SMTP id e12-20020adffc4c000000b002bddbbbe7e2mr17629897wrs.60.1674395590842;
        Sun, 22 Jan 2023 05:53:10 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w4-20020adfee44000000b002ba2646fd30sm3247627wro.36.2023.01.22.05.53.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 05:53:10 -0800 (PST)
Message-ID: <d5d9cd96-d12a-9cd1-f49a-54c036174c8b@linaro.org>
Date: Sun, 22 Jan 2023 14:53:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 2/8] dt-bindings: pinctrl: rockchip,pinctrl: mark gpio
 sub nodes of pinctrl as deprecated
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <137b56f0-8e86-f705-4ba7-d5dfe3c0b477@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230122_055312_670559_337BEF20 
X-CRM114-Status: UNSURE (   6.80  )
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

On 21/01/2023 12:08, Johan Jonker wrote:
> Mark gpio sub nodes of pinctrl as deprecated.
> Gpio nodes are now placed in the root of the device tree.
> The relation to pinctrl is now described with the
> "gpio-ranges" property.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
