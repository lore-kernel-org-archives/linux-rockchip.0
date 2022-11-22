Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9636BC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 08:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBnJHBAFj+SxjaGzh74RGinW2++hD4HRbS/LEhH7Rw4=; b=p6mxvfGATXoTYF
	cwQxf47Vcn4aI5WrLM4ifSYwkb8eSgVcRbyyJBZysChF44pfekoR4hucQwfvycaJ+PJZzrSlWTr12
	U6e3RL1FlWC6Tr3odvjIHNBeLVoNPAOxWCPM/1WKcxNZbwF4+eXvc2bPRnw0MMMc0wo3oaUAvIBRB
	jDZo/Kv4CA/TXptTCeldnGDvgzHjg6hnmvLdmljnZ38bZZ7WtO2NOZ9yYxCenDNaqgK2Go3+HZYxL
	c7KEUvSTzePA8DiGZtbKI4lWLTaX4loT/PpEVqSJIk4T5kNQG4xj9p2XFiKFRTzZXWD1R1IHSjr6E
	lqYZ/yW4uBw8ZMPmOPSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOJn-0064zo-Ff; Tue, 22 Nov 2022 08:07:47 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOJk-0064tP-Qr
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 08:07:46 +0000
Received: by mail-lj1-x22d.google.com with SMTP id x21so17040944ljg.10
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 00:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JdIkh5FeSoZ8vG2Py8Ie8AdpYwxDaXFSiRuPe0OKxvM=;
        b=m5+q7lTyIb8KkrkhnClVZg69k6pi3OIIzeCcggOo/2b7fe+FKVZ5zZQsqTxcFvcrDr
         4mp1ixyHnqgxYEzNof2EYaVrexjqMLGVz1MfvArmzAZnN9v/1e0s/7VUz13Nbf9fOIeY
         QcPHA/uf19lhAXXfZVaSPQHngrp9FjhoxyOvaQmwe9RL8hoKZjSXc3c27X6O/AXdaiiW
         zdjJSJWHNaCBXv9uC48c4IC6Ph0Ew7MYE9pymwLwvDutl8d+z+UN9uy6/PQKdsWui6Ts
         YbEktCw0J2ukUMbAgaRHlRsMxg8WliXuAvCOCYJEWDEwXeYL7GK+pbGs44v/RVvj/n0O
         TzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JdIkh5FeSoZ8vG2Py8Ie8AdpYwxDaXFSiRuPe0OKxvM=;
        b=uAUxZikEqjQzHOc5hNk9J7wIS8f1W5MmJ+LNOpRlVNu55yAenefJkWgqP/4zAn+jCn
         /5o3o4aiF3cu9WBKKgO4nG/ivytsbLuMDuR8tv4BLFmVh45TT8+CP0rXM5NLO0QZuqw+
         BoiPfl+CSabMZTAejgVxr2pORZiIz70SYw5sx5NSLzP5jUf2aT0ZGEm4VmmFVuUD9tOv
         yJeQJzhR0Td+fqeLMvya1MkCerAtMl5oaihgSNRLD/0oVuick/ggUtQOd8lGi39fI0Lt
         Nev9ceb6uuCp/XzGw33Zz63c7E/zSpczpU029STXrLGovt6fcRB1BOID49NTeBFqUVMT
         edRQ==
X-Gm-Message-State: ANoB5pnC4pc1bl277ZsYOcRJMNYs2GL8pmJg8cPtEqlD9k6RNLoSp2Ro
	PQVJmgw2TZZ9rH01rLK8smryYg==
X-Google-Smtp-Source: AA0mqf44ISQxoEcJpXAmn7cIhtH0mCpcVETxgWhH+HtfH/H9FR/axCBi1Ql68qW6Mti0P4kTAPSdlg==
X-Received: by 2002:a2e:bd81:0:b0:26f:9736:bd5f with SMTP id o1-20020a2ebd81000000b0026f9736bd5fmr6787783ljq.285.1669104454750;
        Tue, 22 Nov 2022 00:07:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s15-20020a056512214f00b004a8b9c68735sm2380745lfr.102.2022.11.22.00.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:07:34 -0800 (PST)
Message-ID: <15374b92-335e-051b-790e-eef39a62b20d@linaro.org>
Date: Tue, 22 Nov 2022 09:07:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCHv3 4/9] dt-bindings: arm: rockchip: add RK3588 EVB1
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
 <20221121175814.68927-5-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121175814.68927-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_000744_988304_4FFA2F50 
X-CRM114-Status: UNSURE (   7.77  )
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

On 21/11/2022 18:58, Sebastian Reichel wrote:
> Add DT binding documentation for the Rockchip RK3588 EVB1.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
