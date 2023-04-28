Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A9BC77B60
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Apr 2023 13:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9eh/2ai4C/mbQ5O4gPUaxJnKYHpTtAOl1ODtm/BbfM=; b=jqatcOSTRplOAW
	oWYB2NMURMAu5rNRtRW/APR9nOTa0mE//bga0Q2ck0RrEUD8EayU7xQ6cgFVRnq/cjSf/sD4+Eyq2
	CEU4kaLadGrRPLTwPQesWNfvz9YJio8K1ZMo1APRJgV/oLUCjktVOMyjcNNBFPnFHDgI/o6QhmL2V
	WaMGx7DJi1tjhbGgLhmb8j7VesvBBxeCJ6XfQAuRfzGJd/LbgJJtVx44E85XAgxCXrlKQPmYwrsJ/
	ToP1S7cZtWuu66ADlr+iJ1H0msdrcgLTPtm0oDUK96mhtszgsv94JJFGC70MMnOhFeDczvJTGklXG
	wvO2aAnRBYMnsBD8/cyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psOEO-00ASoM-1K;
	Fri, 28 Apr 2023 13:33:48 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psOEL-00ASjh-2j
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Apr 2023 13:33:47 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-2fc3f1d6f8cso6270921f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Apr 2023 06:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682688822; x=1685280822;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DKl2QXN/TOBQAoCAOBqwrjWHK7KbPJL/dw8lPZ3RGtI=;
        b=xLeBQIrC7o4aczohLPASe6lZ5dnbwR82k2+gkdXjyWAjUOX9+6aUfK8Uql+HFOTTVa
         RDuZl5IWobYrD2VBvg3u2krkhDX3bd9FWQcKtpNBSXINT1Aah4W7wvO5boFShS5kCoBY
         Hg6iblu0e1LwNzd/DMbjKN3PhzNfpVE+CtlHxIKX8xhpM9yVBuC6isOyi4jFltxhJ+yk
         NBj2evqX9+bg/qWiOVGUfN7nLUmYPaD/UO/uH4/rKRKCDT4pV9dyCd4tmTtjkVMvKcYN
         0dwKR9S190QzZJ2utoF/9hD2GndTUss7p23zR5o+EMFDDjPEcIL09g7e400aSJ2+DDwe
         WUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688822; x=1685280822;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DKl2QXN/TOBQAoCAOBqwrjWHK7KbPJL/dw8lPZ3RGtI=;
        b=jF7LNXeOeIfKIFECoXZI77w+t23T87A/yrGkzNqu9INUBZHWU9GE88loZLNig7IqTW
         G2HTeQ5BIpzrNhPiKb/uAzdZbAHXB+uP3oogUHCHEjKKYZ5ouTc5Vntf8mF65m47uv0I
         SZXjUiDGwuN/oph2Gp4KycsCN8RTGBwRCNJHcmNpCTmZ9qZzcyDuAmtGaXDWv5770RYF
         6TLkb+pQ+U428snh5DpLzHUMBSW2gS5t+b7/rpBVoNdVNKiTmHkb75WTzYuGYMSfytER
         OzoXYzJhgnHic8pGi/c9X6iqnffTVbmdhJgc2TwRO320t8mHzzxlbojltMRKRA7kw0Ef
         sMgQ==
X-Gm-Message-State: AC+VfDyxGRCLXCQjJlWPg2WpmL9atQlo7KzdmyBw28m8ncgZU95mkBET
	0h12BMxOUKIo1TmUR5rmG3T5AQ==
X-Google-Smtp-Source: ACHHUZ43L157CwSGw6Na5Q7NJGMnqU5gjHlGSRY1CebXuBJrA3YfFCo9C1/OO5x2rqksRdEF54TlBA==
X-Received: by 2002:a5d:6690:0:b0:2fa:6e37:3d97 with SMTP id l16-20020a5d6690000000b002fa6e373d97mr3908964wru.54.1682688821907;
        Fri, 28 Apr 2023 06:33:41 -0700 (PDT)
Received: from [172.23.2.142] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id f8-20020a5d4dc8000000b002f9e04459desm21068192wru.109.2023.04.28.06.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Apr 2023 06:33:41 -0700 (PDT)
Message-ID: <7ff135ab-9173-af63-5717-07d099eb9802@linaro.org>
Date: Fri, 28 Apr 2023 15:33:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/3] dt-bindings: Add doc for Fastrhino R66S / R68S
Content-Language: en-US
To: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Brian Norris <briannorris@chromium.org>, Andrew Lunn <andrew@lunn.ch>,
 Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230428013738.30735-1-cnsztl@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230428013738.30735-1-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_063345_894933_083DFA3F 
X-CRM114-Status: UNSURE (   8.59  )
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

On 28/04/2023 03:37, Tianling Shen wrote:
> Add devicetree binding documentation for the
> Lunzn Fastrhino R66S and R68S boards.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
