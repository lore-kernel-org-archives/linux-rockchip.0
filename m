Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED694C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 07:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JxGi2T+SGEQmXkoVl8wr/2gruzjTRZW4ga8mKz9hmak=; b=RUkYzZ7hAVRpKB
	13LZoF3asJSr61T9J6NaqRSSyKyYCbgow+NXBuf7CK6LEgylETIg+vNMPeRKtamsZ/TYi6vMujXbQ
	Aw3HruzwuROpAPLCDy01z33Jp+F60Ha902NngFAzJyRuzs2gPfVDQ36Ftmy5vX5/pT7A4/0MZtobv
	UuY35cR8D+sH6conKK+soZSQ2+rWxQaPeADc+49ZYY1Djeo3rr1liDn3qH1W8qcegRhtspe0ELMRQ
	XuYeLh9hNuNxFr+gToKnO48BbAFBGNZWwSlfHQG+UnFvB/iDmYS/YZzkC+8S3EvVqQbSAS/0zSuKi
	Hkoin/PW5KjsZrn8dPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pupWx-009tGQ-2A;
	Fri, 05 May 2023 07:07:03 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pupWv-009tEZ-1F
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 07:07:02 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so24133977a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 May 2023 00:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683270417; x=1685862417;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tjfIWaz2gKRzoVKJjzHFLE/kALzLbCnUyuP1dmCYAVI=;
        b=d1VizN4V6/3O4uEpv+S4T5YPBFM2rUIG+XF8rBnvA6F38rl5wpigfZtIuuratw+dyC
         9TPRSlrh4V/QeKsViv8K3lccrvz9jc/b0kkG2s60R8bI3nSvFtNjaOOEJ2Dm26WR+O60
         yVWhgwVnYYcd2u7doDTPZQ6D1MLR3giGkAVWNpO8HhIUlVqgBWw61gjoP3CBAr4k+2w1
         Pwcd7jCz9WvM8k6Nb+F7FBWJLAAZD823hA0pjto4SoBVNIdcql/j3RsmTNcmGW6SFEsQ
         +3ILIkvYYQ1JUz0CPb6kI+eQCBSXTDEFQuZVGMlhd4syd6KnQ40KBpPwF78wfzB7AaBG
         bneA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683270417; x=1685862417;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjfIWaz2gKRzoVKJjzHFLE/kALzLbCnUyuP1dmCYAVI=;
        b=Ckm+MPOlt89n8lYfAQyeveg3LJFi77mzq0fr2Notzev/j2YJXrztgEwbPISBZp2u+3
         5OnTtlFaFJCSQJtqZBofjyxfAh4wACvCGC7sEA7Z5i0zEoBT/cij/8zseXVbLWlAfg5E
         nZ6ZCLSARhUoMb4wci8LUQeBxYbKOvvB67Kkj+4hGF29g2ejA+/kuVZZUaMPbM1QJho0
         g1vvFyE8h1ljzB2iHMSqcYenMlEOWPyAzgu+hrjz6qkXDAfVTVLKQcmJTEhQwA5hSC4j
         yaJBHFQ/EmBNN4SmT8IhCOSx4PfyhHft4ZWHDq3Ty0ET0CsN0tNvChkG1706LksChJJe
         55qw==
X-Gm-Message-State: AC+VfDwKGUKv0JXlbVo0/mpwDPruL0IkMCDAPyH/+sDGhLlo21xTIcZY
	/KFCvnP8oFefygKFxOFXgHxOjw==
X-Google-Smtp-Source: ACHHUZ5pADaESc4yUyQqzDmrW8k5y2W5ZEwHwYqa/Hr7jtppAyVLG4ZxOomYMGL8CxmzSVLE6YAXzQ==
X-Received: by 2002:a17:907:3209:b0:94e:4b26:233c with SMTP id xg9-20020a170907320900b0094e4b26233cmr587324ejb.16.1683270417622;
        Fri, 05 May 2023 00:06:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id j13-20020a17090686cd00b00965bf86c00asm540956ejy.143.2023.05.05.00.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 00:06:57 -0700 (PDT)
Message-ID: <c2cac92c-a71a-7b8d-6697-35fd4f91e462@linaro.org>
Date: Fri, 5 May 2023 09:06:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 2/8] dt-bindings: nvmem: rockchip,otp: Add compatible
 for RK3588
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
 <20230504200648.1119866-3-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504200648.1119866-3-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_000701_423993_B11EA0A7 
X-CRM114-Status: UNSURE (   8.98  )
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

On 04/05/2023 22:06, Cristian Ciocaltea wrote:
> Document the OTP memory found on Rockchip RK3588 SoC.
> 
> Since RK3588 uses different clocks & resets configurations than PX30 /
> RK3308, provide the required changes in the binding to be able to handle
> both variants.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---

Thanks, nice job!

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
