Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D833C636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 17:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MobW8sFLONhAveczaq6e9HspnRaDET4pK3ZDCx5i8Gg=; b=IdBU08folIVxqC
	5UDoYTtCzD8uyKQb/NEGlRkTbM+E4vgHiBIsYYdeESv+R/MpwJnuGmqVplRurz1ZH+4ne7eJ+zqah
	+6N0dZ484mk5hNiRAbcbZfyOK6s6wt7cenWhPV+ybE7QnsIBbva7WZBsd9dfDa2srHbtW/uVkPuH1
	eLkB4ntCyggRRZtkAxlp24IIpDWyMu7RGoAsPEgAIy2B9/yU+srIorY8E5IP+S0bUrBTSisP0iXld
	8FD1i1EkW0h8gu6arCqz9AE472D1oAYLLb/BYauSrYwdgCDWhPvq8VhmloOz2qsmAP7v3QEe5H9dc
	cH59KQYPcdw1fnynTDcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRcJM-00Fd5S-IF; Mon, 13 Feb 2023 17:08:16 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRcJH-00Fd1P-1t
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 17:08:14 +0000
Received: by mail-wr1-x42e.google.com with SMTP id m10so4066577wrn.4
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 09:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2InQIExYmP5Jgqnc5AiUW3/d2IV4ctPWBKAcygB36v4=;
        b=D21IBKd5duKNwSZD2lHnVwMweGSumv4jTyAqy03/XwI8B796iqCUO8aE1pFXpyk6Aa
         qJXtcld4Li+Z8PzdSbHDoYR28unCTtepqvBlN9UlvIsQYFQQ5/QkhvsC9S9qIdwcJm2I
         lF6vLSFEbHmIOXFlg7FtYJUZwXq1wMgDs3hU2uvAU20qBQC1NFyG9uwoDmX8lndaM7WS
         3wmSDXdctqtwL/rupvBCfI6uphuzDTCcK6aP234JVsfOu2AI6BDslLDXIlzFomJgh+Ra
         RrU32Jm4vUV0Mt3vMYRpvc68T+eBqtFIpTwNoOXqRAJrkPnqiVMXmfPvTmmQTBaMfYcQ
         +bqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2InQIExYmP5Jgqnc5AiUW3/d2IV4ctPWBKAcygB36v4=;
        b=w0CIWCc3vUIny3w2NYtPNTk4t+Dnmu4DSAOUyV4h7Ivjj2fu/IipFhz9DwQNcluUZr
         cVPCeXeohCG9jIuecjK990jIClcOg+vIT6FnIJ0S9TG6K/jmeRAvL2pXIt+bg66p/zq+
         Eo2xhyXlM9rxUyDFCd5EZeKcd6csZRaGAjqsf0jgq14b4zFvp1f0cMlSXaVU8SquBMjX
         1C/ufhcb11d1E9Gxcb1GUERib0wVyq+d/pCjrj6Z+hL3i/1HRAoWhC0v5bVkI1vQ8AtT
         WLqOFC3n//kko0jHYXltm6rrHQBYL5bwRojdM4+KUpyuK67xZ1gz8QnrqfdIraNQhMxj
         THEA==
X-Gm-Message-State: AO0yUKUykuSR7Rxrjfv2CHCOr95xgIJvY1VbOoevQP2Q440wOAT65Dyy
	+A9O80vDEXhIvMxYF0BtB0WdDg==
X-Google-Smtp-Source: AK7set8f8iVV15Q5bQ7Ofj85okM/P5EZ0M3GD/i8DQmT3Fhlf9NzOVveTl8eioF4PukoueqHH8l2DA==
X-Received: by 2002:a05:6000:1369:b0:2c5:4c32:92c5 with SMTP id q9-20020a056000136900b002c54c3292c5mr8649659wrz.25.1676308059660;
        Mon, 13 Feb 2023 09:07:39 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i14-20020adff30e000000b00241fab5a296sm11030147wro.40.2023.02.13.09.07.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 09:07:39 -0800 (PST)
Message-ID: <9c53ccd6-ea38-82bf-2284-d606fb2293f2@linaro.org>
Date: Mon, 13 Feb 2023 18:07:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: sitronix,st7701: Add
 Elida KD50T048A Panel
To: Maya Matuszczyk <maccraft123mc@gmail.com>, heiko@sntech.de,
 Jagan Teki <jagan@amarulasolutions.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230213153816.213526-1-maccraft123mc@gmail.com>
 <20230213153816.213526-2-maccraft123mc@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230213153816.213526-2-maccraft123mc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_090811_103520_7885DD35 
X-CRM114-Status: UNSURE (   6.83  )
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

On 13/02/2023 16:38, Maya Matuszczyk wrote:
> Add compatible for 854x480 Elida KD50T048A panel, found in Odroid Go Super
> and Odroid Go Ultra
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
