Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D42AC54EE9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8+cPNtReRjsvQqVZkiP6GzhmwhYM6Zz32xDGbTrvGo=; b=y7eFAwsAeJa/pg
	Lo1CIfqSeFJCkNgj477wwrtX0cs6G7ehoC2VPXJfMKJmwJqscD/JGwTuqoGJyIf9olkAHimZvcyBx
	cH96seMQgJVgHdt98XGxF9NPzDVyze+qDKNbpfkm9FgIYXG4XT+bA5CtTyMPoQShE24GwQX2NVfoj
	BdR7q7A0ZrscjEwfbOOXvomNuESy5UmHtHMf4KveLMfvkHjI6pYoCMAIQ/xqNoB7+cBpGllXKGrNb
	mdVrO8QRkH7ZBCclEbX2uPUgDlRPHEUPHihGW9W4khJj5ezc/Z+ufp0d0NVvcDCRkttgKYDIU638i
	pcCkPN5zdSWQz9vCyT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaAjE-008wJ1-SD; Mon, 19 Sep 2022 06:58:04 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaAjA-008wAw-HS
	for linux-rockchip@lists.infradead.org; Mon, 19 Sep 2022 06:58:01 +0000
Received: by mail-lf1-x136.google.com with SMTP id f9so44699066lfr.3
        for <linux-rockchip@lists.infradead.org>; Sun, 18 Sep 2022 23:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HixeEijgNdIfC96l5GNmM/ip3I7jc6GLlC/pGYJiNe0=;
        b=DUXv11xaW6oMqERHnBM7YEDFc0tGNDWY3rhOtm1JxwWar9ZNHZrSE4S7NMpm+8Yfop
         +rb3g4YutPawjYnK7H0D+AD+e+uh0+7u4Hv4HvuYbjIk0xK7XNHXwfmEWeBGLqZ29l66
         EVzkLTXDiyW9G3bhW+82POdEpJnkSZ2RWkHJrC+hcEevzfSUx4nbZ6xtVFRhwCbauucq
         NTjBuM3OG7TVNyWKekKqdQhkYPUSCbjIcERHVXvkzGsGMETfYtaOKpyzDNgT2mEeEfUn
         eeVSqsy15SNWZPtgSpT5H54q4viBIE9B6umjQg4cTSde3g4HlUh4hLvYDu1in4YGvHLH
         BcsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HixeEijgNdIfC96l5GNmM/ip3I7jc6GLlC/pGYJiNe0=;
        b=cP5GdD4DHu87VnOrUNVg2ePWDuKenBQCJU+WWVZk4LXaxUmYHv2FrF/hxGItY2CAle
         JN0BD7g/4be9MlB+R6Tn7GjSfqhFL8FW+nul6GHhyfU2Edt1CptGz3wQikbs9PI3LTsF
         SO3tZ98i+C+JnOpglh6x5ouenpM5yoNgDEFXXZZHDIWXbBMMxR21ml8hbAGf1khHZX9I
         Vd2L8FUt5fVt4wFM3O6+TNHyWOnWaUwwDB3kQB4liTmf4jwDPj/Ph2a2wq/sbAvU5ulp
         XIQCfJEuJBQ+AXGyyU9HdkyiD3L7n+YU35d6FVO3DaQ/aNjORjkLjdEpL1kv57YVpnG/
         sNfw==
X-Gm-Message-State: ACrzQf0tlaHtmeVaod6qRaEo0mlxpE9SJ7Pvj9jr4BPhUPrgMU+GlG/6
	XbTaGF+qUka6zdKyeSLB4A4I9DrsBRX1Ww==
X-Google-Smtp-Source: AMsMyM5nZRKY7/6eiAda7e78HT4hWua3cDCMp6gdnKVGnPVMSuONGWGJSGCo4ZZQuN/ESUWvErWucQ==
X-Received: by 2002:a05:6512:3b23:b0:49f:59db:62fa with SMTP id f35-20020a0565123b2300b0049f59db62famr4623020lfv.79.1663570678448;
        Sun, 18 Sep 2022 23:57:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e16-20020a05651236d000b00498ff4ae746sm5046224lfs.294.2022.09.18.23.57.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 23:57:57 -0700 (PDT)
Message-ID: <40700e39-9791-d2ad-8563-0ba2da982e10@linaro.org>
Date: Mon, 19 Sep 2022 08:57:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3] dt-bindings: clock: convert rockchip,rk3128-cru.txt to
 YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: zhangqing@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <4e69a06d-7b53-ab48-1e50-2b29ff3a54e6@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4e69a06d-7b53-ab48-1e50-2b29ff3a54e6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220918_235800_646826_53523832 
X-CRM114-Status: UNSURE (   7.40  )
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

On 18/09/2022 16:29, Johan Jonker wrote:
> Convert rockchip,rk3128-cru.txt to YAML.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V3:
>   Fix xin24m clock-names position
> 
> Changed V2:
>   Use SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>   Add more clocks
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
