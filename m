Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFC5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 21:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGdFxlmqtEpyE5HerAJC6D6HYB5DYF4h6BZ46NJ2/SE=; b=e71GHDJn0MkiCV
	qefUosoxB7GuPEXHbbQ8HOmAT83lM2ghAaDE9SuzFC+FSKGnKYTPBaLGJ2KJQZ2WOm89NegOHky3A
	wpEG1DNYIQmlhKsYhois3NL+ad3UTJiS/ROAEWGcGmVaKr2WdiMwdvyt49J2YKPoPmB6Keetc6DgC
	fsfyb4klgBIi9WRiWYU3ShArRB9Ip6OG/KjJ6qO9tl0lOTAK3J1I5KgeAZBLXWfc4HHOnySp7jHuj
	UxwH7ap8UFHlJw63ePlWYDAn4GDSND6UBoU7SSOaiabKojC6XWDMwc4t0epUwggZEQ21I46CLxLw6
	ZxFxINUfLCUg6NCoqAUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYDzE-004wLD-SL; Sat, 26 Mar 2022 21:30:16 +0000
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYDz1-004wIr-RP; Sat, 26 Mar 2022 21:30:05 +0000
Received: by mail-ed1-f47.google.com with SMTP id b15so12910973edn.4;
 Sat, 26 Mar 2022 14:30:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7H//OQ3peeZo6cFkBAqd2bvidUOeWSddr0qVAjJHEkk=;
 b=e48b8g0hvGlqkFGk7S0oDf+qUP4xX2jAYCbSeGnz3oFqb+nymNJadCdX1UX8ZIqIk0
 nOhvtFr3Lgr323cc99D2C89ErGLg+3IIr8kG83V8YD7DtJ6SMKbnQj5E10Uhwi/C7sBa
 OPa8fnCREtFWIawtfEJGLpnOTRZ1vLzgfl/wO9gkeqDqFeq3Da/zaX2RXFqsfvpnzIVv
 /H+jCRqWGbqgWurDEd+2AhfiuBHCDqdKsEfc4/claiudkLP8iKIPLklAa+zXPzwhfGVx
 krVla+/AeCkMnsUJ74XEhe70HVC4l36rNfOBpAJdQImEtAoDlTmopdKNHRAlWB8SsVpl
 LWfQ==
X-Gm-Message-State: AOAM530M+5XQ/D3LMKWUdiX9Ky2yNLzWnZT22srkRhlH7nKWL4dJ3tg2
 cU9ATBi0NmiWFuMGzP+Ts6wXiio6jfU=
X-Google-Smtp-Source: ABdhPJwdup7W+e8oCpUfyH1DfPFRegqIKYsj2TkC1DZLAN5hn9CCubKrNb7IkbBYOsLudYhnXw3P3Q==
X-Received: by 2002:aa7:d58e:0:b0:419:c121:ea33 with SMTP id
 r14-20020aa7d58e000000b00419c121ea33mr5846197edq.256.1648330201522; 
 Sat, 26 Mar 2022 14:30:01 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 pk9-20020a170906d7a900b006e05b7ce40csm3864675ejb.221.2022.03.26.14.29.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Mar 2022 14:30:00 -0700 (PDT)
Message-ID: <a6d8ab4e-c863-1dce-249b-e3971cdaf930@kernel.org>
Date: Sat, 26 Mar 2022 22:29:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/2] dt-bindings: clock: convert
 rockchip,rk3288-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220326120942.24008-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220326120942.24008-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_143003_927086_8F84339B 
X-CRM114-Status: GOOD (  10.32  )
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

On 26/03/2022 13:09, Johan Jonker wrote:
> Current dts files with RK3288 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3288-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3288-cru.txt    | 67 ---------------
>  .../bindings/clock/rockchip,rk3288-cru.yaml   | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3288-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
