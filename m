Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78FC0C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 20:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWxEKVeCrrFmYCn1wJVnDl9vkRhqZeLCjfJyVh/3Imc=; b=J7oSoHwq12P7tR
	oJv/GUrFWOEwESJJELszC0ef4m4Fno7GBmWig0il2/DPvwVGWKPlsiWp0Vl6XdMBNVjTc3XeUoCsh
	wVS4ADwccIoAoTJYvctmkaelXwfwRazDuwMt4cAWcr/PjHYr4548fPKXSQEIhvFbXalTMnzgZNWYV
	0MnwaxYsa/oIXb0EqDGw7cBOmmOgltJ15jqeqIPiwaLH6/L0v3wAF5Gfrxp0CtsSrA6j1HDue1aT5
	3TrUpGDoWDTPjtrlknpmvt19GW7zap7VjGjHt96aBXhSHBZjAZiCX6nl8i0TlUVI7gME1RWDMzvB+
	K7ZO2T8oXJl9vSX9zZRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngum2-0069lG-4o; Tue, 19 Apr 2022 20:48:34 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngulz-0069jj-AH
 for linux-rockchip@lists.infradead.org; Tue, 19 Apr 2022 20:48:32 +0000
Received: by mail-ej1-x629.google.com with SMTP id r13so35355991ejd.5
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Apr 2022 13:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=CJf6mwEn+nVa2WZGxE3mxgQWoFOnhgooJvM6BUiZrIU=;
 b=sadS+dg/MUv2FK1jNv4oLA4r90msuWn07eu+YnpcnwBkvjXKjO6ovMpPDB4WX89vRZ
 Zp1LuWysBPu4wG2p3ssLPAi/GQs4kZqU4H1VDgTVidl981CgDIxKMKFQinTJBI4I+yYW
 +0cOWB42lZ8nODDHXFHvfhNqDuWS9vmNUXhpVaaxc+Oc/oCltiOaLTAzHkyq4DtXDwXk
 BzYB9hk0fGEU2BJg6zqmWAJRDRpytwPPLr5LLYQv39gWv2eTN/AY2gr3/BWHrglqfIZG
 r34urJSf9o8CynG4VHbozLBcWTW0S+j6HzQPCeUOhvXYqe+V4somhsvQ6+oG4RPFWDr/
 cxDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=CJf6mwEn+nVa2WZGxE3mxgQWoFOnhgooJvM6BUiZrIU=;
 b=D6+dKEO6afzuQ8D8kgkQxBTTw8DWhweP7sIN3y5GUNQXRD+ngN1k5rYtIq6j5bvG33
 ZAaYaN22DQgrAbu8j/egaP7Knu7vKmW6I3BCc0DF7/2pzoy1jv8w08MIcFTWVad/9LMW
 Ut44CFfxc8HskGQk1oVCq4ok8k/17uMUUi83G7j8huZwm5J3vBHyArfrn/3t4DJmHwaw
 FGZvRINdKsDHybjYmG2mYxFlwh7yQLEq9dqR8c6Gvjr5dHhXBNWZRiKZV6iy1R1g/8FK
 cFLE36Ha+kqZF9FjdEFJCUvzuVr/zYH+qeimh1I62CGXi4icE0BGFe4P0qVigkjBw6pv
 MI9g==
X-Gm-Message-State: AOAM5327aJE/l7N9bw/ePcz3yBdF/y/EzK7jPFp64dHJ0+qUh+ZII7K6
 lauzzkTd2JbNpbrDCESFlcLBwA==
X-Google-Smtp-Source: ABdhPJyQtcbsYxBk301NPuwUiPCLtudHHdOKEJcHue01td/XXGeGWYHsjUmYm8cYC0OuP1gllTZtKQ==
X-Received: by 2002:a17:907:9005:b0:6da:81ae:a798 with SMTP id
 ay5-20020a170907900500b006da81aea798mr4214344ejc.699.1650401307466; 
 Tue, 19 Apr 2022 13:48:27 -0700 (PDT)
Received: from [192.168.0.222] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 wi17-20020a170906fd5100b006e8b945ab94sm5905360ejb.216.2022.04.19.13.48.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Apr 2022 13:48:26 -0700 (PDT)
Message-ID: <09339568-8901-991d-a3a4-1061fe5c90fa@linaro.org>
Date: Tue, 19 Apr 2022 22:48:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Aw: Re: Re: [RFC/RFT 1/6] dt-bindings: phy: rockchip: add pcie3
 phy
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-2-linux@fw-web.de>
 <38e60bb2-123b-09cf-d6ef-3a07c6984108@linaro.org>
 <trinity-597cf8a3-2ad4-41e6-b3c9-b949f8610533-1650390552136@3c-app-gmx-bap70>
 <fce0337a-0c71-a040-0a01-f20b55eb568b@linaro.org>
 <trinity-a5ae4007-e6e3-4869-80ad-3783109b6d4c-1650400612809@3c-app-gmx-bap70>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-a5ae4007-e6e3-4869-80ad-3783109b6d4c-1650400612809@3c-app-gmx-bap70>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_134831_423154_ACD1EAF7 
X-CRM114-Status: UNSURE (   9.57  )
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

On 19/04/2022 22:36, Frank Wunderlich wrote:
>> Just use default as I wrote above.
> 
> so like this?
> 
>   rockchip,pcie30-phymode:
>     $ref: '/schemas/types.yaml#/definitions/uint32'
>     description: |
>       set the phy-mode for enabling bifurcation
>       bit0: bifurcation for port 0
>       bit1: bifurcation for port 1
>       bit2: aggregation
>       constants are defined in the dt-bindings/phy/phy-rockchip-pcie3.h
>     minimum: 0x0
>     maximum: 0x4
>     default: 0x4

Yes.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
