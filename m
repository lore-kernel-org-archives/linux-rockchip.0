Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A348ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 19:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REvqbF+CrcaczBqjYwzuNalgoLlyVKWYmMfr+4tI7TI=; b=OWZp9lnnMqrDLq
	d39SdpI1CwakvwMLBWnq9krQSvCqzs+AbTVk4wRE/q8l6OO8m1EPVClrJ+GWi396eIOZQqmo00zXO
	7pdQhaeuiUCUP8EE3czcUWQwxlRnMuZ2zo/J70DIoSJhYxjKO5lVsRB5WUwXqIx7hLlPIe09tAd0c
	z+PsvWWe7Kx5+L4zEEHAgumLbm4mQ1GcjLXLMiRkRpfPX9vKTY7h1xliYt+onY/A20jd8CUMQOIs7
	FJoEbU7HGNBlMMBLqI6jNe7JeSJx9//wtTLD7bQUroJGhXqCpISdRjBHodwmnL0Zqv/T/m45tUmA2
	HQf9JFFbti6Id1OQ/3nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opaRC-00EDGT-56; Mon, 31 Oct 2022 19:27:10 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opaR1-00EDEN-K4; Mon, 31 Oct 2022 19:27:00 +0000
Received: by mail-oi1-f178.google.com with SMTP id r187so13784661oia.8;
        Mon, 31 Oct 2022 12:26:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4di/lLF30NiNOY2y58ftDsroYebuwIwGfqf6Xiyt+E0=;
        b=puTC659NdY5LoXKlHTs1Z8FKAIkSRhCMF6+Ml9QZ8RIHSPaIZNgkiGYUyoKgtr/kbo
         MNvv0OJjvegI/mmWzWyIyo6ANMRXPDaralOcL64VPGHfk+d9J3zku++9t7eRvjcUOd2S
         HK3fCRulT6dL+49IlruCB3V9VcR+NK1nnf4uyQjMZXNAz9YmQ1mvMlbvUBU/mgWZpH9s
         Na4rip64DrxbFUHecszjAyBEiod2fho3bWtvv5UAEkAWheN7yEAU5CoWD+Y4aBKKc7gT
         aP4jFVkudQ0HSXAQ6UJS54sQRK06OrnEWThgJ2jd0+cB3FaoUBu242Xfm5a8JQ5DTkod
         FD4w==
X-Gm-Message-State: ACrzQf3dOaLUB4PApDIroZKrVC+ZULwuuqe3r8bxkjTl62MjuuLDh4dy
	akTPNxzeLPXXpVLPgThHfQ==
X-Google-Smtp-Source: AMsMyM5fyIkq8Zl+7LyVSIvYffzfskCjDo4gOFtL9h+x5N0+BM8JPLZ1lf8gdt4Kt6YyWLzTPUNmCg==
X-Received: by 2002:a05:6808:1248:b0:354:2c04:c35b with SMTP id o8-20020a056808124800b003542c04c35bmr15190572oiv.143.1667244417543;
        Mon, 31 Oct 2022 12:26:57 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g10-20020a4a250a000000b00480fd5b0d6bsm436989ooa.22.2022.10.31.12.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 12:26:57 -0700 (PDT)
Received: (nullmailer pid 3287247 invoked by uid 1000);
	Mon, 31 Oct 2022 19:26:58 -0000
Date: Mon, 31 Oct 2022 14:26:58 -0500
From: Rob Herring <robh@kernel.org>
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Dmitry Osipenko <digetx@gmail.com>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: Expect specific type for
 monitored-battery
Message-ID: <20221031192658.GA3286587-robh@kernel.org>
References: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
 <Y1+MNL+fCfreAqMh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1+MNL+fCfreAqMh@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_122659_675980_475860D3 
X-CRM114-Status: GOOD (  13.99  )
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

On Mon, Oct 31, 2022 at 08:49:56AM +0000, Lee Jones wrote:
> On Fri, 28 Oct 2022, Krzysztof Kozlowski wrote:
> 
> > Core schema does not define type of monitored-battery, so the schemas
> > are expected to reference proper type.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/mfd/ene-kb930.yaml      | 4 +++-
> >  Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml | 1 +
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> Applied, thanks.

NAK. Please drop or revert.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
