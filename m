Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADBBC636CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 20:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KOhX7hI9pFdDrCpVtzCxuCF23qML1YUbpILd3rMy+0=; b=sypwEIGb4N5QxJ
	Wls8PM5a4chyouqpAurM7mdJAcvXoEi6uEUxUv6Egjr7dFVJIDb9/BSBQecN9sW8sFKbw9KKXYKUD
	ZyHt58Xn2u0Ajurkaxlm9KlfJC/1PMyc+I7UOQWe0NZbh4QKTpohNAROeeautjEMcW7Vsmt/0jh5r
	XxYomacg28CE4Umi5mWBPVNPPSlQtr7Qcn/sJO5mXrnIsawmGm5EJMcQLBNOQs5J8rM7XLS87Crbv
	tCJncZR5KxcPYtbI4QthkTsrjA8G/4DM/MyeFs+OZy0Pybw8EtSAja/HQzRY+Ea9Wcfpox45p5GBu
	aIcBRqfE5MLGO43CC4QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOBP-0075jz-W4; Wed, 15 Feb 2023 20:15:16 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSOBN-0075iY-SM
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 20:15:15 +0000
Received: by mail-ed1-x52f.google.com with SMTP id n20so10499443edy.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Feb 2023 12:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dlmPTOnb/uWLfvlA407oM/Uo2zpIEnCfaCV3rCJXuTk=;
        b=PGgGoS9veoto+MdZyUsqJVCgiRm48C+bKGg/BNzqmRyAgBduWvjwLSIA9hJVRCTPfC
         tyB77nflObOintmTohjswFYX8+ae/eoY8EUA9VzdFWhQp+l+rdx9MaUxF3bHu7BGf1z4
         ihoqE5AsCngkijR4DrhLF37fMhF63uDOtAp47ig+OQrTn6A/BW4tD73y6TWMJ6ZntKCD
         5J7V2so5FtVjGXPEzP3RkldnxZi/61DuY0BKamJLit8SyoEJhI6Iry0TNH3SjOFUMvOs
         ylwlFYZ0vqzHuuFjGZthLTlIEN+jkgmc3/J4WC1ojPxdLwqSMhWj4QeGZs3hM1Fkn91Q
         y/5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dlmPTOnb/uWLfvlA407oM/Uo2zpIEnCfaCV3rCJXuTk=;
        b=Hr4jOGZ46BQtHVV/P+x4TscGzHxy/rZMORj5T5nl7ohU+iUPreX3JKGyl3wrthJvHi
         AqCtCpIRE7Cm5JSXMRidAq1bf8nOmYPU9VTClsJQYa0CGRwxD+vtuMUq+K9ufgkoezgH
         RU5ev0XuOTuStQUvIVGyTaosrvUT/WkYXbavwMSE1kiXKjbzElF15E6dLhG7/o8GqeOG
         p4rMiyXix9zbfBinxvJ6dHN9WQpU7CcMr1Kf+Vn5dbng9C4C2rNJCqBXEs1wPJwSq00t
         gzHuCjN0YO6V8FNDTZlAaYcoCpw12RWrWRu17GlIqG6A1D0aRP7ijkLrJGLHlEp1ALYt
         An7g==
X-Gm-Message-State: AO0yUKVpTrMYz8niBq1hJFVUVGQiv78y/LsEqEGjjIXcgO0T+5i33nzp
	y4knYt9/H/6fQLOnWVJIWlGW/w==
X-Google-Smtp-Source: AK7set8lzJ0tcYwuFqn55W8bMUH7MpsMOhrCOTOKKSzf2FZ8WDQaVfnJzAccK7AFJKoOa77PZC0Ivg==
X-Received: by 2002:a17:907:7e8b:b0:8b1:472a:758d with SMTP id qb11-20020a1709077e8b00b008b1472a758dmr702577ejc.18.1676492111277;
        Wed, 15 Feb 2023 12:15:11 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y7-20020a170906070700b008b14bd356d9sm638926ejb.37.2023.02.15.12.15.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 12:15:10 -0800 (PST)
Message-ID: <0b053e6d-79c5-38fc-5f6f-d7cd13fcefd9@linaro.org>
Date: Wed, 15 Feb 2023 21:15:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu, john@metanate.com,
 quentin.schulz@theobroma-systems.com
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
 <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
 <CAMRc=MeKdb=xmidwXQiNxtJpb1xii1D-43m1z6cNtF1VxFwogg@mail.gmail.com>
 <e0bf4347-ec24-a4e2-0851-d5cdf850cc28@linaro.org>
 <CAMRc=MdZOmxSTvtKaPo7cnx6q+dg8ANQYuM8PeuN+KQ7fqV61g@mail.gmail.com>
 <e0168826-2276-405e-2d31-4b396335d02a@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e0168826-2276-405e-2d31-4b396335d02a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_121513_968866_4B2AA67E 
X-CRM114-Status: GOOD (  10.18  )
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

On 15/02/2023 17:14, Johan Jonker wrote:

> 
>> Johan, please address the enum issue and resend just this patch.
> 
> I changed to oneOf, because with enum I didn't get it working.
> With 2 enum's it complains about: is not of type 'string'.
> I'm out of ideas...
> Maybe it's something simple that I overlook.
> Could Krzysztof give an example?

Documentation/devicetree/bindings/arm/l2c2x0.yaml

It should look like this, if my email did not mess up indents:

+    oneOf:
+      - enum:
+          - rockchip,gpio-bank
+          - rockchip,rk3188-gpio-bank0
+      - items:
+          - enum:

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
