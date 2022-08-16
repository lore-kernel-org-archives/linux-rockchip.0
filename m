Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC161C2BB41
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Aug 2022 07:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMwGK+cktdDQ8lC5lGHgYf2eFRuTcFYeauULJSqOu68=; b=k59aTAgmn0Fa/H
	Q7qfu260EA7+XwWVnQXWOG7dzwUhsgV2jxQ94aJ7WFriq4Ed8dE9THieRzTZ+weriMbj4WQWWlf8q
	YnDqvVEoAggUa6XeFtBpqMf9cBJRvGT8SEiQfImAz47dDZ/uXZcJVDQ4FsTt6IlMiGl0OqHVpyFxp
	1zeWsV6y4Kvr8aFFOFwszLmXbsdYu9zfLjwlI7oFDKX7CvvEhZSvJErslXwPypXiJvM1vO9S6X8B9
	fTG26cR8wqKnSJQ8YdbBW9k2N6t94pp9xDLHeAxX79MnVgt8WfChJPWIf+7WkTmWfBjSEEnVvr3gp
	TyUWBFcxqOAFJrMKvABg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrMK-00FnfW-BO; Tue, 16 Aug 2022 07:51:32 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNrLm-00Fn2s-Ka
	for linux-rockchip@lists.infradead.org; Tue, 16 Aug 2022 07:51:00 +0000
Received: by mail-lf1-x134.google.com with SMTP id c28so9667190lfh.3
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Aug 2022 00:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=SsFQ1RIKNiJVmQ5p1REhokCaS6zA2xCDkzmoDwE4rX4=;
        b=C0vovSaBtU3Al/+uuR5jDDnyI0+U1TP282RQhz+GQNbnU36bQz68AnK5kXLHecmF5A
         axOm3+W83f958RvgYeCKIkNS2glYVCYOrnGKMtcBNOEjCW2uEZGCp/UIoq7k0PGgNCe5
         IaLDe0R3RR1+G0S1Ta/V8OGoA+zrMQfpq/kxlJLuwZ59Ta0nAWPVpHdpCdi34td8WLod
         +0DGSh8mHtK0ro69ztI/vT43EY7+SsTZHhb8LaHHU9qoZHW8097OXTkZNeLHKhY9DQnA
         5xW1kRi7YOtHwZRwFAanL8RrpAUc+Ty/vJstUKxz0zzGyY1L13nix0HgOmjzc9TIGFxx
         3pmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=SsFQ1RIKNiJVmQ5p1REhokCaS6zA2xCDkzmoDwE4rX4=;
        b=JvQx6Et/wYbazPyBVTQlmnHsbDX4+lPOnqN9zGYpNjFlEzSFj4jLYFsgM6WPOTfU0f
         041u2nZVCySGArovK8w84+9ymxVh+Lw7BwxXTChGeT00maNwNUOR43q/Y34TjGG6/Hak
         hlsraRlcrX1Dr/fF++SZmXRvQOkxL0iUpys4iDn7GiJydMWp8vl18qtetn9azGrgzKKd
         PwsdgWeHUIfl+TYZMVdYU8KUD9eUuvYgt3lTmIaCIXrhQPj6CkkdKQS6Al/6hl0x1IYn
         P8KSYBD8B2lmfjpsJTw3JnkpP7Hqgot/ldzXz/VZNL9Oeu9xnWyYX47S/JHeYh0QtQ36
         w1zQ==
X-Gm-Message-State: ACgBeo0bGV4d/A0NDgaAPGbAEyG/d9BCMtGoHKrqQfQxnDGH85dyyEim
	tLnOP8mOVTHRRUN4u1qEaAXc7qW0R9WATh1W
X-Google-Smtp-Source: AA6agR61EpgIZo4areU1VwiZwwTCgopZu+2bI0uZ3goHpEzDHA9edBrmuCgn1s1AR0GHg0VZ6JjiWA==
X-Received: by 2002:a05:6512:1050:b0:491:dda4:1e2c with SMTP id c16-20020a056512105000b00491dda41e2cmr3973398lfb.467.1660636256607;
        Tue, 16 Aug 2022 00:50:56 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id u11-20020ac258cb000000b0048b13d0b896sm1308697lfo.141.2022.08.16.00.50.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 00:50:56 -0700 (PDT)
Message-ID: <c547ac5f-e4e8-d043-22bf-626cc580a69a@linaro.org>
Date: Tue, 16 Aug 2022 10:50:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro
 bindings
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-2-tom@tom-fitzhenry.me.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815123004.252014-2-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_005058_737112_9A4F9F2B 
X-CRM114-Status: UNSURE (   8.46  )
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

On 15/08/2022 15:30, Tom Fitzhenry wrote:
> Document board compatible names for Pine64 PinePhonePro.
> 
> https://wiki.pine64.org/wiki/PinePhone_Pro
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
