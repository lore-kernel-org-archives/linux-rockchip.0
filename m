Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58EEC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 18:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCbgVW/rkZD9qEebsIUSx9+DV9VP6BlnCzP9s4daTIc=; b=Hk4qCqlthVptDi
	ol7j632YarADys0/0rf1PSVO5/Wj5mAKUb9cF6IfPzCqPYQWV134lcLNtinGzCL56rYrYabLpRJ9M
	rPYs1kJEzOULO+np6K1uzi6GMUuQktzJEpjgoErv/hYXPTdF3HAc536SE8KkwSx3Qf7AReGlj8ob/
	021TMBK4NfTXFuLt82QfeUar2E5w+Mm/e1ND6uxZdFyIkE/zAjZfy0h+1OYi1DGeOAmWpIgNRd6ZA
	8+YgIA5fPYwE8YYoCYsfqPXsg+yeR1POCftsbLKfziWiDTIlGcKiUiwc8Xl5QQQgr7aFMLgmpCUOp
	M/QJP43sjTn07n5/HgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6aF-00H4b9-PM; Mon, 07 Nov 2022 18:10:55 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6XJ-00H3CC-Mu
	for linux-rockchip@lists.infradead.org; Mon, 07 Nov 2022 18:07:55 +0000
Received: by mail-lj1-x22b.google.com with SMTP id d3so17549317ljl.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 10:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xGzbPcp3W+tJwRD4VsrTgzgj+M76xrWtKtvZNseJPN8=;
        b=tMMQX/EhEI104xOjR7D40/vjZerzqkE7YOM/NNgNo/nOX8DL0BEnIfJl8zcECj+NkE
         cadU64L/sgpu0wY5ZV96Yb+mkw7ywnJnDe3Ea1hbryuUD0cda2pSZH8DUBYpePhtNQLE
         P/PBIPCicYFLHAk0r9K9gBwMbq33LLtmNqzH+u+GmHtL5q5Jz6+H2LzOHoXOT84j/Dex
         CbPy1DuQn+BRFo8C2DK3QwzcsHrm5SG+IGF2PbYJLd8o3AZxPA5pLKoJosrvNh8WdTlo
         d1IO2cs3FnKgjAT48ArkvYMDoL+gOMDIdeKt0izwaeQPvYut7JBuIwVk/cgorl99m4Qn
         rfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xGzbPcp3W+tJwRD4VsrTgzgj+M76xrWtKtvZNseJPN8=;
        b=DYQ1bVYntqpFlS48zXXaN1CVkpQlrAy1i5N1He+J67wKC6lRO+c2O6CKtTPIQ9vA9C
         1GaaVG12+yBlL1TvdhCDXkxAGwD4HY1khNaGB5Rv4G4Gn5734jrNbg/pAWz9cnIQ9dTX
         paOZoMBWHNNH1BAj6p+/Ioyy6HNY13iJZYqqPTKt05QW0FiXMOrwCnnh+hZ1HfCBCF46
         vmhMDXA+Srsx/rBaGPx6VIMRxiDJ+luP6/T7gN6aM5LMboc3KEMD79gQ0j0z7ICJtYJ+
         /WMjQ+QbxRlEuTXhJjDqqlta2LbjLZAuvzx03Hv5MFFcRLwQ7zIhWwCKqnpDhElooqG6
         RJhw==
X-Gm-Message-State: ACrzQf1NALSGZ6K2Lr5SWvBCMEe41+9uWtJDMU36fXKIGGnT+5XI9fRM
	QLnutuy2X3LX3tATviTTcRXklw==
X-Google-Smtp-Source: AMsMyM4colD8URbCBCk00gHoMXuiVYuBgD10XMX2nAPdi4CJlhl6C+S4xQpxwkfOU66wmdNcOqemvw==
X-Received: by 2002:a2e:7303:0:b0:277:c7c:9c61 with SMTP id o3-20020a2e7303000000b002770c7c9c61mr18768509ljc.274.1667844472153;
        Mon, 07 Nov 2022 10:07:52 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id g13-20020a0565123b8d00b004afac783b5esm1354123lfv.238.2022.11.07.10.07.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 10:07:51 -0800 (PST)
Message-ID: <ea5d34cd-61eb-b811-5bc1-9846a642a738@linaro.org>
Date: Mon, 7 Nov 2022 19:07:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCHv2 1/1] dt-bindings: mmc: sdhci-of-dwcmhsc: Add reset
 support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20221107173310.60503-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107173310.60503-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_100753_802076_CD04C4BB 
X-CRM114-Status: UNSURE (   6.67  )
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

On 07/11/2022 18:33, Sebastian Reichel wrote:
> Properly describe reset related properties in the binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
