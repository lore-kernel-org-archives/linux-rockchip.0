Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D2D4C32772
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 08:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uwaagzunYDGjlsS12xEqtizeBgODO1YWQCEcOgvyKfk=; b=hC4FRnGTMyvjdp
	b5J86RFSg7j21MuPQNz2SS29uzee9ZiIUcwX4A6sUpmWDhvyKtyYsI1/DgYqFryp4bN7oleoZrQTL
	5BoORujfX7zc3CMSdUtUUimI98b0a+I/2A5DjFk3CuKMP6FI1csrJ8qohgyMvP8Pwqx73Oh89GDVg
	EpS4P7IWY7chggdUhZv8HBLrdHgSBwXUQ/ZxItrqwSIQUlwA3VrdEFe5RRvOA0I5SpUaA0RqMrG7w
	w8scQEvXqcyRk1rE7M154VxNQuuAPsugQyeXY323phldIdL/jmftyjmpLpY7/XI8gyPLzSUsjlnbP
	WupsSQ29UsXo0eg8Vn0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOadK-000dNG-Mk; Thu, 18 Aug 2022 08:12:06 +0000
Received: from mail-lj1-f170.google.com ([209.85.208.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOadD-000dHT-SS
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 08:12:01 +0000
Received: by mail-lj1-f170.google.com with SMTP id y23so964506ljh.12
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 01:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=iR63Kjl1xElhrPQBXbo3SKGLz/HeBZERY6chfP30rBc=;
        b=WN+VI894uVlr1nVNgw9WVriIO6Kn/+v1igYfHudX+nqXQ+7Cj9h7Ot8LTuyEsChTxq
         dILAp/LUJs1a67eyybgnXjAxMDkdiv0Bz0IgrLV9jnhTTKnLs5NejhRoVcEz8oPqDIUT
         KcicNyzjGCydTZFoBm7FyVi083j5EX04WbTekgdOOaOSIOSqsssp6jeFXSg/8uwqymvY
         JoDOKZNOQh8lkuvntB57PzKJSoLDfHgpeILoZvtAmwkoMP29xiQwwrNDuq4ZcV1AszJ1
         LBljMCxHL8bDq0QlDI7h1Q6oYVgoyik0018LULT4471Pz6QT0gtFXKCYmVEIQc9T8X4i
         iwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=iR63Kjl1xElhrPQBXbo3SKGLz/HeBZERY6chfP30rBc=;
        b=KOLx1Iv/3+UYYYwU8koQJekVNo8/xZxi4bMO9c15nfpGSplSYYthXuFyQbEbR3z2E8
         LIeDQid96UUyF3CKWP4csnbEASyLb+cKmdpKPkb5SKEJrsqRxCGaXTYopMhHdsJjzOFB
         ecBJPeHm485CmLmDXLucXfbB/VRo2Gz1RbbH+rYvDQ8hlgBMnGNywhtisoZNXQKxAtRd
         T9kGhnDP3yUrxhlrQE3rn7lIBKZPMioeVs6Z0VW/c3C/YolYFnalxZnQz5XL8C8bHbh+
         bEnw7RqwcnvzcYlt0VV1Y+l4z4dJEvIpNipcMeal4vf+w2sIwa+kEw9tZEcX4hoJMJi/
         YhZg==
X-Gm-Message-State: ACgBeo3Yu4XLVnxF0cTqDkm2f2wawtuzcnDfdng0M1E8vNJz5BKiuJ8R
	K4FiPEqfnK8Z5pY5jQK5jxzq1vDCTP2NZNjq
X-Google-Smtp-Source: AA6agR4hGYvGajqsTXda6In7s13HWM87w3BfS52W7wY7yIHCMhxX8cSGqyBKELZYSFId7fOFov7lmw==
X-Received: by 2002:a05:651c:2205:b0:25f:dda5:1e65 with SMTP id y5-20020a05651c220500b0025fdda51e65mr585184ljq.240.1660810257063;
        Thu, 18 Aug 2022 01:10:57 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id z17-20020a05651c11d100b0025dfd2f66d6sm126050ljo.95.2022.08.18.01.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:10:56 -0700 (PDT)
Message-ID: <ddd2adf1-14bf-3b23-e0f2-8a1169f84409@linaro.org>
Date: Thu, 18 Aug 2022 11:10:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add Anbernic
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817204954.28135-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_011159_974150_5D6CD434 
X-CRM114-Status: UNSURE (   7.69  )
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

On 17/08/2022 23:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Anbernic designs and manufactures portable gaming systems.
> https://anbernic.com/
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
