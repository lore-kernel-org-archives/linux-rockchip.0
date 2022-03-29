Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B2D4C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 19:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urRhQsVPVuThX1v4GC5fMEgtLlRuNh5S02JBwdhVu/g=; b=o8HHZEyv6+coLh
	Xgv5ob+NCseNZmtguFGFkNnMaWISYXe1piV5IWPYk2DSqqG1xf8dqcuM0s5SY8oKEsvN/chz+ETwi
	lXkre8wOfR6/DnfxmEQnJ/YCXPMNtU+kao5iCHOqHXWS8TvojS2aFKvc/94+46kPOdfFAn8Etk0h6
	ASWr1An+NIL77wKk+CJ0dfUIPwr9mJc+hWRFN3yppI44IBzmOAZwEOpXhMeAk6e6i/JeC1ltRqo6r
	q2orS+csyY5VrjdTpAio5mWS+tuD5tqHaDKMOeNja2ASPhKcrSuTYDQjMdjqUrHsoZ1xVH/J/Uxyb
	PpLr9ydsBgnu0kKhS7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZHAV-00DJl9-F2; Tue, 29 Mar 2022 19:06:15 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZHAS-00DJk7-Eo
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 19:06:13 +0000
Received: by mail-ej1-x62c.google.com with SMTP id bq8so23104762ejb.10
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=R4sUD/h50Bf43vOXljayxbaTzrnkE01kcRyo4ru/wmE=;
 b=dCHc12WonPl6079dcHq+ZOly+/rYb0WPhWVaW6uIMntiA3fSfeCfEgE1dLYF7YlsIw
 fFJDXnoMDTFZoWfnZ+6Db1MZBFQuJEORc/aKf+HuWVMFxMnP1JAXXhg9bR18DccS9e9K
 P16oZnRCBSMXFsP6jmDv33TIG8sogxezhfe3hiNFk1F4c7vcCV4P9yysaYkDPXyG45lD
 XYVFXnugodx50wXw6cndXonIZ7rKmo0gZ1iI0FxsbePnKo6dvvHObMtUlmDxrIIOhnj8
 MHBFszLv4oOpT6ssux6c7vd+TPiSdJu+0Tdbf/b2rMLG5R8HJlFtWMPOeY2k/ffKm8Ze
 Txpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=R4sUD/h50Bf43vOXljayxbaTzrnkE01kcRyo4ru/wmE=;
 b=hgZjt4/C8+WndgKp3s5CQlWmZhL12jeQhZXv8okrEi00kW4XHYAwS9LxuVrkggtiuu
 nkhHNRmLUNRSoEpvFjcKWYYRRP2t6oFEgRYgYt113ETFICTri173t+Hzpq5FznGYNRrd
 hDYTt30XWaJxtphF6kNWozhSNnJ+7rg+XV/kSLdJZydgprDcu661Xb7ttSoRUsCNr7ZP
 ANuyu5XtVwm1vn1ypAsLkoSXHa1QyiiWapWt/p7G6WHy2o5Awh7sdF1CZg9Soru10POV
 AaoWDBMoJmrCrgRWA1cqzbZEnkHDgKtMi5npoWcdj1R3xOUqFPhdg5a6PsDeNGtAu2ag
 x0PQ==
X-Gm-Message-State: AOAM530bbCSJ6Fudx27oSb8Z2MPk39gckpF0FmZNzFRGOgZZZX7JBdfm
 N0QakcpMBBQh7Xlbe1nLKzdhtA==
X-Google-Smtp-Source: ABdhPJx2shVhEMiPQQnvRhN82e0FGdSWbageEUczWptVA506xGOCxhu6bQZW3y6SqBnigtrgpKjrxQ==
X-Received: by 2002:a17:906:704f:b0:6e0:2ce5:131e with SMTP id
 r15-20020a170906704f00b006e02ce5131emr34569646ejj.246.1648580769541; 
 Tue, 29 Mar 2022 12:06:09 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 bm23-20020a170906c05700b006d597fd51c6sm7492373ejb.145.2022.03.29.12.06.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 12:06:08 -0700 (PDT)
Message-ID: <e019c6cb-9840-5e4c-9c36-10e2ec99bba9@linaro.org>
Date: Tue, 29 Mar 2022 21:06:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3368-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329180550.31043-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329180550.31043-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_120612_562395_771CE4E5 
X-CRM114-Status: GOOD (  10.99  )
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

On 29/03/2022 20:05, Johan Jonker wrote:
> Convert rockchip,rk3368-cru.txt to YAML.
> 
> Changes against original bindings:
>  - Add clocks and clock-names because the device has to have
>    at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3368-cru.txt    | 61 ---------------
>  .../bindings/clock/rockchip,rk3368-cru.yaml   | 78 +++++++++++++++++++
>  2 files changed, 78 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
