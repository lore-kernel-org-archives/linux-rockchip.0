Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A50CAC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 09:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFkWMvaEPmI8hu6zWD9ZRVsphIMdprIq4M0f1zAf7h4=; b=QSNEm5Bi2W1aQs
	CmiKmUPdXbRhGPiCCISzRArhKjeciFaz7hwUFC1vr1ynpCx8EOonZI0fy74oT6NWr1fEKi71vzPVi
	Y74cldq97nWoXSpjSJ/7vPvydq3QM7I7RZjWFqpOCzirYaJlE1ChPeqzektn7FfH8dmDzAfFaknzy
	tFx/zNXUaV5zMhA5OPUifuhs1rFB7e+KhnRqGR9cXbzJhncIoBuu/JHlVz6WxI4lnc+NhXEpteFby
	2xSzL+U5M3uLO8vZOkeodajpyQ6I57BUJDAugfMWqZAH2ypkFqEfQ2LOfW4n4oesSSxGbs+QYMwwV
	Qd8ii/YjsM+LUAQ7Y66A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDOa-001FmJ-8F; Thu, 08 Sep 2022 09:00:24 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWDOX-001Fjh-SG
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 09:00:23 +0000
Received: by mail-lj1-x234.google.com with SMTP id y18so4327788ljh.12
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 02:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ly9IEYTInP8tS6e927ZRVIe99VpHkJBnPnaAyl8oAUQ=;
        b=NfJYCPTU0FSTkctPFB601rskf+uu1n4QI7Ee/ejRS5GsPfHvoJ0DwKNQ58zs8Lwt1U
         dQBSVO4jGReIsIffEyNBr+p8XgiSlQr/Red47hz7EB1QlsJaW/ZjTworgo3tCCn18BaJ
         xqKO69a8CfFieoSNKv0N/dgCXa8dJUhuRcejnewhfalw0FizXCCxWY/E2sa9gSTWa0dm
         VpaeKdUu7LZHLbKHbYdlLVBg7iO0VOvddIbZOr8sPt00Nr2Fw6ELhQYJB2/I0zGI+PYb
         shiQLOBh/fy4bk+IIZdFdcBt0YNi4UutinHvjBY3XulereemLXZJeW4V4jyl/5pm0X/f
         2Y6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ly9IEYTInP8tS6e927ZRVIe99VpHkJBnPnaAyl8oAUQ=;
        b=vMy5qPaLAOKQ5MeAv+mMCQI6Tc+rCGv0Imfn084+hbrTdj4eTgP55whB5kVD1Ol/jj
         ZuGhqala1mKJXeRuObfYNWorBh4I6EYjAZ7ygFoZeGCfZkHrIfAaWRnZH3+9YmlotPda
         btGUlsGe2q+7Ew9xsXKENJ8DS1fjAcv8anYuNLy1sH4hvEpNi0StslInWkj/xZ2o1qGv
         zzw75knuuIm5lp36NgsEtzmENRrlNfTqUDO7ObNoKBRxVC4yBPWqpIL92T7eHLuo9n46
         R8lIxPeULct+wx4WnoBgi8U2HzF2UlcKztwybGhFT1YYDDJ1/EmyQDZLYJkpZw9TQkW8
         ZuYA==
X-Gm-Message-State: ACgBeo3TUlLQePFvvyceDQxXA9RJGtkvDmrsSCIrhbuZV1UOBerK/SwI
	9sQ62IAL50zZZVtisOp8zbToeA==
X-Google-Smtp-Source: AA6agR6y9hLVMc5n964fka1mBct1yqVVvdizyIoXKoRfIG/TFKTZIAwVYcC1/xRy+j7g4Vwkz3AL+A==
X-Received: by 2002:a2e:8188:0:b0:25e:4ae6:5503 with SMTP id e8-20020a2e8188000000b0025e4ae65503mr2044547ljg.412.1662627617599;
        Thu, 08 Sep 2022 02:00:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m9-20020a056512358900b004979df1c1fasm1468931lfr.61.2022.09.08.02.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 02:00:17 -0700 (PDT)
Message-ID: <d5c88236-6c6b-2583-7f96-55e7a428d1b7@linaro.org>
Date: Thu, 8 Sep 2022 11:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [v2 1/2] dt-bindings: net: rockchip-dwmac: add rv1126 compatible
Content-Language: en-US
To: Anand Moon <anand@edgeble.ai>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, David Wu <david.wu@rock-chips.com>
Cc: Jagan Teki <jagan@edgeble.ai>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907210649.12447-1-anand@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907210649.12447-1-anand@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_020022_040736_F2C2FAAE 
X-CRM114-Status: UNSURE (   9.46  )
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

On 07/09/2022 23:06, Anand Moon wrote:
> Add compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
> v2: add missing compatible string to property
>     added reviewed by Heiko Stuebner.
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
