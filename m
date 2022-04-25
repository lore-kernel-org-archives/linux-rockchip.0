Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B1B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPXHxq+2cJUkRlrA1rO3hbAwmMS/qUnIMRUzBQcc5Dg=; b=R/3q9muPwKXO1J
	TmvAjZ1j6DzH2z42QwJ35FmVGAGDufy69q5V9opQ2c4osfN8QZfG5cj6ysFAewygjeEvzxhEfMwsL
	o37f1/F29AsQTN3IKKQ6C3hZZ3M+WHmae1cBQhSUF5iXb4oKFVXPWbH9vjRLocbSGN62MQ4Bh74TM
	L/NWOH0y6r6EPocpNw73Q8FjMzSDCTBdtWzneOqeml2HkXCVO5/A+U3Tg1yM0OjHJrt0stTnjW8g3
	hT/tlBhHuLDHFal1vtmClL7koB7rE3hXNYHlovrIdd86+/Yf5Akjm6EnkdH5UUpx8VoQ6Gid0LNRx
	dIApRhkGkYH+i9yAADLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj32K-00Am1X-Lg; Mon, 25 Apr 2022 18:02:12 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj324-00AlsM-Ai
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 18:01:58 +0000
Received: by mail-ed1-x52a.google.com with SMTP id b24so19388347edu.10
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 11:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=CQyS9JnYDoE9kJ+jTL0QIFhL2uJUMfyzMi0NzcSj508=;
 b=Hb8RN6EiMjlSvW8/VxYjPfrAHhWf2Onumhs7UYhkmVYJLoIIF+QZ1a2WIQRjafoOox
 7UhsspWR8blftdb+WKialnHA/DQB0YgjUvlM8FaaqmjEM4CL9HhAfDY27znL8KS5qARx
 u3g9fUqAYDQ/Iry9kqMM2wDkHGW0gc3skJ7BcXIdSvZB1BfZkOVzyMq1GdkvPJmUhK0R
 xjgwf3J31MvvMf+u9eoHLxnurwtN75N6Ksa3vmrF46pqas5RGt3Gx2ZxYaW3LQjeU9mN
 /vNvHj/sEESHjmth/lul/zguOf1IWtZam7sQuGamvJZJqGvjraQrV9KCO6BSymRzD8EN
 5S3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=CQyS9JnYDoE9kJ+jTL0QIFhL2uJUMfyzMi0NzcSj508=;
 b=z/QKvCi5vCUjMBMVEGbSvF1wGq+GODKVKDTPhqajXwZdOpqPMThZFHM1fsex2YoKfy
 NQXcPiCNXnWfS4mJdJ8RpUcopMM9MgWsy/Xjivm8x2GdgOg++XCNEecinzRJEUrffmMt
 86YOF5iC2D4fFBY7522T825QEgERDAqZOLtyOwrqTtDS6NBKgdrYZKVDYRRX0oB27bsb
 50rR5kb6mrd1+KmglNmnTHhE7+Os9gG5SPVbY+/OL92lORvFHXVzP9M4WJ58u7a30uDh
 Y/Za8ZBZ/xApBxO6F4qNR2jnd6LVLD9aVnt/TQF9JNV9vti3eEVchZ36jM3b9XKSyyK9
 dYTw==
X-Gm-Message-State: AOAM530kALx4t6as+nipt61QbhvWt3kAGf8XsKGlbjq/nBytoII3mb2g
 6U7j5u59lz0WsIzH8bBGLLwsxA==
X-Google-Smtp-Source: ABdhPJwO6MUEy9Os7ZJugK0SoQGSRJEX+oveN8kqQtbjJvUSdcJhefbKxH7V6FLGd7Cz/afbWu/MRA==
X-Received: by 2002:a05:6402:845:b0:421:fcb5:55de with SMTP id
 b5-20020a056402084500b00421fcb555demr20633908edz.124.1650909711992; 
 Mon, 25 Apr 2022 11:01:51 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 v10-20020a170906380a00b006a68610908asm3845108ejc.24.2022.04.25.11.01.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 11:01:51 -0700 (PDT)
Message-ID: <24bb0631-740f-875f-b65e-9f353fff65eb@linaro.org>
Date: Mon, 25 Apr 2022 20:01:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 3/7] dt-bindings: arm: rockchip: Add Firefly Station M2
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220425171344.1924057-1-pgwipeout@gmail.com>
 <20220425171344.1924057-4-pgwipeout@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425171344.1924057-4-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_110156_401572_FEE62C7C 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 25/04/2022 19:13, Peter Geis wrote:
> The Station M2 is a compact single board computer based on the rk3566
> SoC. It outputs on uart2 for debug and console purposes.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
