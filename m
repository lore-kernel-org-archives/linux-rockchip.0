Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 684C4C7EE29
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 06:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZYjZZcyn20bYMTasWyVzLZezZe67UxbCtSPTerRFSM=; b=3cUiIcy7Bahy+o
	iCXVlHFoDeu/FHvsLpo5Y7xUuCp/wyZsBcME8XwK76HEVZaZmZMp4v4NMqGnkOCbbTvwLsrwX4hIf
	B1wOmGreSUefUpIJ8nqualuo8zh1PquhQLPgQdngteWBFZxJy3oBvirMunUvNXltazh8fvhZqc7cS
	Y/5i/YxPHavMjT5BPXO526xbE8umcxzHcGBMvv4obQ0S/gLDtQZutkA+H753bSu9ef3oBWpK9XufP
	U8gymvLsXFaHbVbkW9by+k+x6xrrKH9dUc/AbYgr5e0+dOwaX+WY9MwdikD80MQCn4CZSmYQMS6u0
	4W5MIMRnhxOCDiQyz8vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xww-0078uR-1n;
	Tue, 13 Jun 2023 06:56:18 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xwt-0078sD-2L
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jun 2023 06:56:16 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5151934a4e3so7666577a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 23:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686639367; x=1689231367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WmDb0FqExseWIwOM+eDbd4Y0lzi/vx10EOXmxwOWe4M=;
        b=o0kkKmW2vSbCVd0ghUZmQJ5Tp5ku/bqKN/w9kbxWX6OwWUAKdaBZWKGPtp62VFTaQM
         vE68/3HXtlb7Ipiaz7LoGRMD4JusW0hVgsM9EGct+SpGJcOMHvc+S7r4SzpKkRHeVNOk
         KEaw10ZFBcKCUQScWVdlzv7ApNKm1ZgyVjMogr1nZJqvjtW+20NWX7wkTuqL+sxhRX3/
         IrwZhuz6dKj9XLK1dNNZoKoIluZAqFhSwdbFqAzE1bsX+PSxTY/sFfjQyNM8sqMvsISv
         hAJUrcAdeMVgFS+ZYMTK0CmFP2UnHfTzh6Hl/6XrM0cdboobGbzjXQH/gjseyfpR3z7E
         4TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686639367; x=1689231367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WmDb0FqExseWIwOM+eDbd4Y0lzi/vx10EOXmxwOWe4M=;
        b=Y3aLLCKtvw49I6X4NZv21tGmuEO+cFSdcZAKA3F1koGc3FjCbAIECANUwjsUnWCFxH
         nkfiKOtyDEedfVrYmnm+MrvZSWrJxdEcTl/fxR7p5o4op00qVXbdi9ljixRnj0dcm5Jh
         tVy0Zvj2aMeCcAJeqFinPeIGBn2yKbsVtde7jGkUyX7nfWoV8zM2F1hPMAJ5s75dXC0U
         MUJHXsdfYEiSlgtGS4THy29FzdFVjE+BLrertZqSUyqADv0XUe828MGt/CbaR49xK2Pp
         rpmtrW3hfrIrEgTSGU6j96qRAp8OUDzr0mvfHpLRHnb4wzdrLKrrCGBkgEPTjSqk6sVt
         2G6Q==
X-Gm-Message-State: AC+VfDxj/0uk2WlN6bKDVbdIGhTdlIhfOMy9uornnE7d9l7XIkjcN+Nn
	HXk6R49aWoycFwvGlO2SJ0jsTA==
X-Google-Smtp-Source: ACHHUZ7KDHVjq84hd7jnAxZuW1GtZX7g9vEo3lmLlL3Z28G3faXdjwa6gLk/uRj3hbQBYDNJ/LiuiA==
X-Received: by 2002:a05:6402:1012:b0:518:72f1:8211 with SMTP id c18-20020a056402101200b0051872f18211mr856371edu.28.1686639367370;
        Mon, 12 Jun 2023 23:56:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u13-20020a50eacd000000b005149b6ec1bdsm5945038edp.29.2023.06.12.23.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 23:56:06 -0700 (PDT)
Message-ID: <b72569a2-c101-e686-ad7f-3eefd41951ef@linaro.org>
Date: Tue, 13 Jun 2023 08:56:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v4 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612171337.74576-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_235615_768201_9A57E3B4 
X-CRM114-Status: UNSURE (   7.37  )
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

On 12/06/2023 19:13, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
