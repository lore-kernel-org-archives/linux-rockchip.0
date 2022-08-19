Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FBDAC32771
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 12:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1grBw4U9lMjefTP8aBgthqGoVUEA5Nd7dTzpsgF8R6k=; b=XA1mJvuiFmcBJh
	tiSM3F/t2AWsMV+USKSpaNAosVMjtIyUJPYh/qKejBEJ9ux4RmkN0PvVyvtVYVtAJfw5JUjkEn0r2
	HItAEgdUAHaZugeoY3zqV4Z4jZ5FiI0U6JKZf0c/VHGYxCkIO/mgLaMHltKGEctN23c8VgaBzjILb
	4LgW1LgOMVUGE+LJpoBavHEsrOo1EEBDl5SYD4wsp2+9Ue/QGCt/Gg7R/K2UuahYEfFFLGEwkt8Xx
	YmH5jcEr8w7w0WEH6CIj7XHfnND8EnQwLjite4I/ZPUYuGSPX8zXNKhmbmzWT7t3UwVkhUC8F2WF1
	2meWn7FkusLw48vXl+KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oP14M-007ouS-QA; Fri, 19 Aug 2022 12:25:46 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oP144-007oTz-2t
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 12:25:30 +0000
Received: by mail-lj1-x22c.google.com with SMTP id by6so4357864ljb.11
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Aug 2022 05:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=sPAIr3I/RUoMi4ftqJLggh8FLJLybtqUz44u5FwZ69s=;
        b=yd09AZ1ZqE9GM+8Wq2mYXieBcanLCopJpCd+xbsD00CC8+SjmAztIoMDKvYp7W/Uu5
         oZEDYYyqDkYqF50eemul1POnlllplWv+crPmlqjP/f1+PQhTEdG3aFPpOIshBojaDhHz
         KwEmW1AroMgWJFADUS2cVge/HL77O7AV6v3Z/FjEGCGEhcIU7yQzsWueOpbAWC7onH13
         V7cUvZ60MSXOX+6TP913AVMkF2Fyvev43uJsXYhVRs4NF/JwtLnRnL/JNvKxGAfC40wQ
         EaibRxPsBaIbvKXvacOnBc5XRKbFyxTvQRh3yZK3yZNwuWxRnOqvg7pmlwxXRn0j16P4
         VGbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=sPAIr3I/RUoMi4ftqJLggh8FLJLybtqUz44u5FwZ69s=;
        b=SXMOqELCNXHvBGfaHIBrFblK/0OBtU1Buj3zXNhr2uHQTvsxmGbeoyYcD9Nl40kgWU
         PSyoJIg3T6xsTyB4FEkdOEFXCOZrm6C9a6tAYjWnRFmnQMFTAIcoGMl0NuSUL2f8tvYo
         ceUHwLZwa7Nh3W1Lml0qm2+62WsUujAanK+sHVG5BsPqlFAelWs9PWtUDRM+1lNWRnyJ
         XkN+eTwukDuP4zp5CVArOCnOJFrX9AxGEmcYXtpUXsyqChSaqgo1K1LE2mKYwc+J0SU3
         TEus7C1fQv0yPg+zC6EQJFOwx49J6npTYqwXxKR1mjQYNUmWKtq7t1kIVhWsXOHZlwWc
         FG1A==
X-Gm-Message-State: ACgBeo0stQX4xGefT4etpqisCXq+3BDrJ5dE2yFROsYHsX4drk/bUirD
	RKBXLs37e1jRpAFVfOMQudvXeQ==
X-Google-Smtp-Source: AA6agR4gxzCBBXAz+vcZXb3CDnD15SI7T2zVGQ3EPHvcI5fvFTOuNQ49cbkJwBjEPuJxNyPDhbk95Q==
X-Received: by 2002:a2e:9283:0:b0:253:e175:dd84 with SMTP id d3-20020a2e9283000000b00253e175dd84mr2002587ljh.221.1660911925350;
        Fri, 19 Aug 2022 05:25:25 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id r5-20020a2ea385000000b0025a65b784b6sm599084lje.33.2022.08.19.05.25.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:25:24 -0700 (PDT)
Message-ID: <29c8ef7a-4249-afd6-8368-d248940cd205@linaro.org>
Date: Fri, 19 Aug 2022 15:25:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 01/19] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
References: <20220818124132.125304-1-jagan@edgeble.ai>
 <20220818124132.125304-2-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220818124132.125304-2-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_052528_153760_05C8D106 
X-CRM114-Status: UNSURE (   7.85  )
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

On 18/08/2022 15:41, Jagan Teki wrote:
> Add power-domain header for RV1126 SoC from description in TRM.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
