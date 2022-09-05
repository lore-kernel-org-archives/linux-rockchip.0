Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECC76ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 18:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6D1yH6uJT+akpImIb3mG8BwgO/G0H23Ihi/UnkB41w=; b=b2BoTLT3rrrm+v
	ZbTrVoK9VO4v9KDUQTJQq6mCefoS8ls5vKAMakcuuwc7CB6KuRoCYZYLpj/JKyTg8dOWduwopZu+4
	eU5nOnQeb7cuUvfWmpLpC83SnksbdR0yAFFc4EAnQkqnNr6mW4z/3ShkaABov6z1rCAYGBboAt7OB
	2UaHNvHDcy8bDNqHJulvUxz5hcg748TcEIZAHQplxW1XJsmssfY7zCKQhoS2hh4FVtFsiZszLAecm
	ps+GOOyY0JcBjC663BSDx+BEgokBOgbZEBdLTTKEXZhE16dWvJbfA+bbsnVSASmsGa0RRDUqP+QGk
	U0I3DP4BlS0n6kf4UuLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVGxK-008Vj0-C4; Mon, 05 Sep 2022 18:36:22 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVF4r-006wBa-NG
	for linux-rockchip@lists.infradead.org; Mon, 05 Sep 2022 16:36:07 +0000
Received: by mail-lf1-x135.google.com with SMTP id bt10so13842741lfb.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Sep 2022 09:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TPo9G+SnanyNcgpNjrB5OO4mwJTTV7C5eyU8y1QEoJg=;
        b=P6igY7tbzHdrAJ38BP6uwRFIpo2Ie5y0/NP8tv/wHqmgOM9fe6BvkaA4siuihSqdYX
         cykfgDSZlhlFY4c1wxsWuuMhY3ZwG+0slnNZL9YkixtNnomkMBuMQOUt4121SGEY55k/
         3k3+0Aqa7eEVyKHtdga0kac1LS7JGcZO7d/0QMDj6PC2CpkWPJn781A0Ik0yTMmvNoUf
         KPXxAcA/EvWfbrkpoQIp5KtTfqTEEBLxAciTMJDh4J5jYJPaFiMUcUCavNQsuqgQS61h
         7hLYTvVRahRj9iiq5tqHVqklWOiRj22jeYW3CiE8W3PSmH34uJtbjd3HGUP+NSqPVv/H
         tYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TPo9G+SnanyNcgpNjrB5OO4mwJTTV7C5eyU8y1QEoJg=;
        b=NECCuTlgEjwRJMQ2mFTWp5mPoxUEBh78o7iU29gASgIu66MsTioA5+N0xldn0/wPRJ
         B5GtdEe95zY76ytgcm4lkKcraLRBI69m8RoU2RVyYxDM0qcXuueKFEp5MTtP+8u1jcvB
         8llUCTMe5w2ehHDD+e634+05ZgxAtCHF+v/4LcvSBB9w+DlhooeawZlQxuPZpIYtt7ks
         Mu5nsAMg0mooYpA0Ril9jrydspykGB0BJYhcRpFNy1xSsJ+hSAWIMxaonq5aL6y8AUj+
         +wuf2K6TKRCNsrGAARyPAa29wGW5OrPctCEyhPGnZtAEyDx70XI1TINpj4nJhe/kihC/
         pzVA==
X-Gm-Message-State: ACgBeo1aVoiWvAT7rTn+FNS7s74Ouo/ZMWXIrWUrY1vSlNb0VmK/LL7t
	sKySjnPGfSGsBYI8JhjSmoxJeQ==
X-Google-Smtp-Source: AA6agR4lT/iK3r8v8hV8OmgJEN7PH81JHyvfe08ukmPJhW4VIosK4fvPU1zd3mhmxQnDNum/t/CKqQ==
X-Received: by 2002:a19:4f55:0:b0:494:6f40:5694 with SMTP id a21-20020a194f55000000b004946f405694mr12350320lfk.326.1662395758899;
        Mon, 05 Sep 2022 09:35:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q6-20020a056512210600b0048b0696d0b1sm1239659lfr.90.2022.09.05.09.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:35:58 -0700 (PDT)
Message-ID: <c0894d21-922e-9251-64af-f519d2ed970a@linaro.org>
Date: Mon, 5 Sep 2022 18:35:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831182629.79255-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_093602_706993_0376F77E 
X-CRM114-Status: UNSURE (   6.45  )
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

On 31/08/2022 20:26, Sebastian Reichel wrote:
> Document rk3588 compatible for QoS registers.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
