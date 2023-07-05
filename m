Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B6D0C001B0
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 15:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOutKCJzHeICqaZCbmLb7fEFuCt1SBFNMeNntoUhTJg=; b=XL+wFTvM+0vsnU
	I5j0Uc4ihpcg/zYQASBBuX/5DhUjw6V24GwiPNOJMzdfb4KDjBXZd6m3fqGmT+okiKJaFCv2013XJ
	zbf5/KqDC58QEGf6O7pxXawjMKvGksrK5yV/wsrs+HOTGbJ1QCpSEYbMSHjWw1wfCd3zYInqEcOfI
	FdNlAUP5V2WuSSsdujVVAkAzEXbvZH5Seap3yy3cNuYg0y7Ma/QNI+WYDWomgBB1EsaAbW5AW6fbo
	UtcezXY/Joy9iK2qDWjR1PWLgZqd+2Qs8QpDHfqU6+AvnjkUFp6ClwlirMXreYXZ31TEYMgU0UrJb
	RlfSVz/o4fZurlaSkNoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH4nn-00GONQ-2u;
	Wed, 05 Jul 2023 15:52:23 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH4nl-00GOM4-0r
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jul 2023 15:52:22 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f122ff663eso10794706e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jul 2023 08:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688572337; x=1691164337;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=frIiMffWaC8FHtPAqH/Lcc+Tg0ak1iMFrHKKSrlhbsg=;
        b=Fpvm7gEqWEDqjPw1xIOrWFSEQfVGYSt960vTw2G47d8gOuulduiUv03DxXxWAOSIFu
         qDeIpn8fCuBUQMeaa9Lr8/JqQ/9wu8IvKPajkdb1aN1Ipu4WNcIrjg8ij2V4zEQpcmov
         PnFWXIJSIerq1nQ73kLpA+6TZatpJU9S5PrzxLISbcIXHxQBQuCqMTdgWnj45D1reLC5
         Iexp6ZYfPTDbDf1elyKYXVxwSIr12M4/7a7Gp5E1VxNlNSBzkWKyWHlh23TwSjd3sSfa
         dh728KqpSTH/4QozgW89qudRFj0woVTFCBHeRN84jG5ifc3Cgl4s4CFBUlf7QCAmBSm0
         903g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688572337; x=1691164337;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=frIiMffWaC8FHtPAqH/Lcc+Tg0ak1iMFrHKKSrlhbsg=;
        b=KzImp0DrsvNpci45YE/oqpBJLSknPzlkXuLXW38N9MFSTE5gckytS9Q1D6iZUAQmSV
         PAT56rjqllCemkqVZnlIxa2kG9sQm9riKnGkdpWTKwMgsZ1al3AZhVyYrm6wqeXGBsD4
         J0ioPJpCty9Xai3wPSt5c2qBY9e+65Mw0Ql29Nuaa/3l90eiNS1O7WVbW7Ew0Mlej/Vm
         wxUI4RM3PwEYeQaLg7ia+e2Re9aIShanfsD+7EcCAQolLXXxKGjVvWaPSBtE5NX/KFww
         lzDSVZGwGTM7cVaVdD3cE7q5dJ4rPd3XipQazRbDtJeKLvHdXytw2O3SNviph5rb/UPH
         Xntg==
X-Gm-Message-State: ABy/qLaB/8c5tdtSRVF2vigUMS5uBSW/UUmA9m1bLoJ5AIK0XkLx+Hef
	93r2lnpbUgO3R2ycQg86YzLiTg==
X-Google-Smtp-Source: APBJJlH9+DrIDduKdVcn+U1de79ZRpouG66xAaa3U2wJ9/rGVa+4ffrY0QJOiS9Uf5W9XRp3ZONXEA==
X-Received: by 2002:a05:6512:324d:b0:4f9:6581:8b4c with SMTP id c13-20020a056512324d00b004f965818b4cmr10862547lfr.44.1688572337309;
        Wed, 05 Jul 2023 08:52:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id le11-20020a170907170b00b009927d4d7a6dsm9535076ejc.192.2023.07.05.08.52.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jul 2023 08:52:16 -0700 (PDT)
Message-ID: <5804e11b-cfe2-2226-1c7e-199a7bbb58df@linaro.org>
Date: Wed, 5 Jul 2023 17:52:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 2/3] dt-bindings: arm: rockchip: Add Radxa ROCK 4SE
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>,
 linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com, Andrew Lunn <andrew@lunn.ch>,
 Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>,
 Chris Morgan <macromorgan@hotmail.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tianling Shen <cnsztl@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230705141011.111568-1-chris.obbard@collabora.com>
 <20230705141011.111568-3-chris.obbard@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230705141011.111568-3-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_085221_328370_CCBA5589 
X-CRM114-Status: UNSURE (   7.79  )
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

On 05/07/2023 16:10, Christopher Obbard wrote:
> Add devicetree binding entry for the Radxa ROCK 4SE.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
