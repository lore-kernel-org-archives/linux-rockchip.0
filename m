Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E3AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 16:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8IeT51AdkUM863yBl9Tc0oTgzKILu1PT48Q9yHViOs=; b=QoQ9TWj71xUe84
	iFcR5NLcRLdpB9ow8UOWSROrRXUYP3Q7HeeapUuaYI4gwzLf8JmI39mSBrVzb3oAAnXAZmJ7WKnOX
	HZ/mKqyJrRLqkLcMXRzgOWoNipkWPd/d64GF0mF5s8g1xdoOVaB2r5teadI9jjc8xcsRUj3/qLb9b
	Tq+oLblFxIUFRiHnIgDZvdq2BX5o7BSt7LF+Sr4zGZfPc8bd0Pt7ndWUBWlkAh3n5glK9Txz7EZf4
	zzqFsitFAb0psergHZm71xPbQUNCfbdN4sZdtgxJCSC5wv0ACnU9dgrFR9VDy+Qmpv2W55HgJTj3l
	QpKRpWvMF3k2zmMd7VrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nah2m-009fsC-VJ; Sat, 02 Apr 2022 16:56:09 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nah2c-009fp6-LV
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 16:55:59 +0000
Received: by mail-ej1-x62e.google.com with SMTP id p15so11831198ejc.7
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 09:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nfi4NEK6MIGGOAKpFGw3ah+OgZ8k4sVFe3sjs7AcqKI=;
 b=R9o0JLcLKKFkgcjNXlnkGZo74RAn4fx6d8+oEhfEiQdz9ohinjsUMYIbHGFs8pTg72
 AeObhxIY/YhiJkekxiP4FoBpJvqI7b2cCmo03xP+S7bmFVyAWgwLI4VSyEv+3A7IaKFa
 4VxZ4zHWYR5Awejm+qzr0EC9IaiRToORoxnORkAazKg1DxPsXQmiX7/g29YO2WqRwLVq
 xwCeA43TIEdS1YhYgLLupmFZ/11cKfP+DZZpC5JTo5GPbb+3RO2dR9Ruvmxfn3pVyZNP
 X8VbolWxl2yR32EpDZUe7RMdBh9P3PVizLnoiJ7WBx/AZjlGjiEQmZLvZr9T3/8ZHz2S
 xS3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nfi4NEK6MIGGOAKpFGw3ah+OgZ8k4sVFe3sjs7AcqKI=;
 b=2JZgOeilck3Wu5Vx+5cndp3TT75DINGB4x/5LCflldxKzkRrRh2pQl+vq3Q+2YRawQ
 ZhsZ2RS6LDBwvmREJ0pqhzANhXCww6F73Ji4EuP+hpAIIVR9VD8XMyTviKIFL2gMotZS
 AMqjqVFoguQnqTYSkFehxJwqCNBOFC5V0CJmbyyqUUun5hi2J/GSEXj1MhNSpPDl8TkP
 VRQpZK4VhCzzTzXcXZ69Nn8fWcsNyRgYZhC4L1rlBfmMSWlXEGcO4g1w8veyDBYTiwue
 YxAcUiY8hTXmmPhZiEroDTD7PsiBFWcnuy7+66TZgt5i+JIavLMPyHhGfCtNLUbOBbF0
 wvlQ==
X-Gm-Message-State: AOAM533mVxgzO7cj0TPtAyE2InJHa7xbwfeKqMOBxjnI9Su9LSBLGl1B
 0L/ui0ZBXP6/17PiAKLzvePc4w==
X-Google-Smtp-Source: ABdhPJzV97548dTgRrJlT61n1xfow5lqLQajsyqG2L4623QqUac2p7SFXZ10wARzCdQ9KlnmqK5lRg==
X-Received: by 2002:a17:907:60cc:b0:6da:9616:ecec with SMTP id
 hv12-20020a17090760cc00b006da9616ececmr4716491ejc.298.1648918556604; 
 Sat, 02 Apr 2022 09:55:56 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 ec10-20020a0564020d4a00b0041a68df1a71sm2629455edb.77.2022.04.02.09.55.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 09:55:56 -0700 (PDT)
Message-ID: <ebfdfed2-58c3-0b3d-b381-9160a00640bd@linaro.org>
Date: Sat, 2 Apr 2022 18:55:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 15/16] dt-bindings: clock: use generic node name for
 pmucru example in rockchip,rk3399-cru.yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220402143636.15222-1-jbx6244@gmail.com>
 <20220402143636.15222-16-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220402143636.15222-16-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_095558_729287_9976E532 
X-CRM114-Status: GOOD (  13.51  )
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

On 02/04/2022 16:36, Johan Jonker wrote:
> The node names should be generic, so fix this for the pmucru node example
> in the rockchip,rk3399-cru.yaml file and rename it to "clock-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

You received here the tag, there were no changes in the patch, yet you
ignored it.

This raises my concern that for all other patches you also ignored my tags.

Please resend with collecting appropriate tags from all reviewers. For
places you discard the tag, please mention it in each patch changelog
(under ---).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
