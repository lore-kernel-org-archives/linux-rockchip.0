Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B66CEB64DD
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Aug 2023 08:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDMw8FXPQbAFLkOt0Spgxll96ScWSDDiSShHvY4yK98=; b=zjJ28PovI/9DiL
	KOajIw/k3HJCpmicDJ/pvNZu3NFYtAL7klFQRPitTF1ANwUZkNyzRDrXT7x5BhwYnOnL/ySF+RVkn
	xBMj3WbWMsohl+NPZz/VG4BcYikliF1A24dMleblSZzbUN3JU64ikJfePrZ6JSH/UeiQkYIFczPhm
	0Z9xkIeFLTLVTcZ1zo/9IQdVTn8TNiRm7WGk5g9qqzqnOa+Q1lDXoNRUZOONAMonl8UcTdV0Y1iDx
	hKzJUUbJGmiKgddxj3NxsWJprAE4ywArNjzzB+chTwRhNPlE71qdRqWZ4ddf3NHIQYER0win9VB8k
	dQX4azxVGOs47mZV5/nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSvo1-00GU1O-0r;
	Mon, 07 Aug 2023 08:41:37 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSvnx-00GTys-2N
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Aug 2023 08:41:35 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99bf91956cdso550533766b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Aug 2023 01:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691397691; x=1692002491;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUj1t86IIglhpvqbCl+JW1p0KP0RIykK8lcH5sYs7WE=;
        b=uHaH2GdpgclUraDoPzTb4pV1nYPdWxfiaaGHpD8ip5S2erNhUbkFpcvX3tLQPwuJiE
         P4w4rynffTyS+jg2bYa24bS/McH0qUG3jz9KDhRnz2F5jH91vq9rmtL+Tk9O0eapCLd4
         L0Vk1ld06IK76WOh6X1ctPA1RF6HLNgNr+HQfD9oEfnOXkOc9mlLixdgJELnWCCVD3g8
         PN9Xmpj1Uys9VXyFqYLJdaWgPGTMGER4GOkL4uPDNdWW+1C0cELVq4G6zwyRCdF37L+u
         DYyG+mNCr5YKoucMXI07rg+RsfSmjKMQBuunc7mfZWG7kx4F7ULRa4mLEP9cRuGIGiVv
         qYOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691397691; x=1692002491;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MUj1t86IIglhpvqbCl+JW1p0KP0RIykK8lcH5sYs7WE=;
        b=FJfV8qZK+tK/zxSCEioTWt7Li19toJeu39/YBQKWa7GWZswYUElJX75/RFp2puaV95
         j0dvXpMibEqVe4RSNjwgCz0LVxJjFP4jB70GCoQNsOqAfs603PEuN0TRxogu6IEV8pEK
         QeWHWHNg2LDwhqjT53WMICrnE2tVJgUHQQBMnG1JtIHtwMryFiebJXsYflxti4nBiQQ2
         V5nDS2VSJsNIShBwYfvViPNQzQFqaoURBFmT/Xs4G2s2huLB1CF/3P4RkcET9lnOeMwo
         RCKI9/Kru2sofiYQF+erA71nwhiX2yvLTPhrkLOYjHp8S7wSgF08ERnb2m3IRF+7wYFS
         NCIA==
X-Gm-Message-State: AOJu0YyPrS0cnlXEQxE7C1v/HAc2R53a4MoBoNz4RbsaxOx5AN4Op+hk
	2rGyhuHKf2g8rAWikmBjoO8Lvg==
X-Google-Smtp-Source: AGHT+IHNAZnHDcoJmsBlY3w8kuDDoRD76fbpds8ZCkkKxNciisv0f5lhiixQKkV5SSVUmlWzXnq+Tg==
X-Received: by 2002:a17:907:2e0d:b0:99c:a07f:8c41 with SMTP id ig13-20020a1709072e0d00b0099ca07f8c41mr6204519ejc.28.1691397691504;
        Mon, 07 Aug 2023 01:41:31 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id v2-20020a1709063bc200b009890e402a6bsm4885380ejf.221.2023.08.07.01.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 01:41:31 -0700 (PDT)
Message-ID: <6caa3739-fb5a-28e5-38cc-9b22830775e0@linaro.org>
Date: Mon, 7 Aug 2023 10:41:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [RESEND PATCH v3 3/4] dt-bindings: clock: rk3588: export
 PCLK_VO1GRF clk id
Content-Language: en-US
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com
References: <20230807065942.9937-1-zhangqing@rock-chips.com>
 <20230807065942.9937-4-zhangqing@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230807065942.9937-4-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_014133_777746_BA505FCB 
X-CRM114-Status: UNSURE (   8.07  )
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

On 07/08/2023 08:59, Elaine Zhang wrote:
> add PCLK_VO1GRF clk id.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Consider dropping CLK_NR_CLKS

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
