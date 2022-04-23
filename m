Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71752C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0adnDqtyhcsENTCafc8ARgmPSqlS3gm5yXoCjec730M=; b=xFGIZAD/CY7dFA
	vLJlGqc5UcHcpDXAXUyx17+O8ZkSdVpuiZO3kCQFMhqRn9kxdHLE2LRenU20EfyWM6UyA1D7f1hXG
	Bc71uqkXwYLIZWXdbc9TRaQ6Hu8RoUVb7TmoeqaMcp85hXAFhs8jLajEfsbuKQdZDh5NNqSMUsWCh
	yxYe1bJvrtMyM+BrG8kuX/2bXbx8R/Nm/G4rlgrNubKIuXYhOPPCrBWoRFyyH7qhlZnsPo1JqywYg
	23hSxXb7ZSqnpXaAqTraQDow5sqtJgdN4mZTPMQLqIpNKAbAeg1B6vcp3Ip4Vrp7zlpMDGKYUM0ga
	9n3sc5NTiRqMylxTzU1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niCbv-0040fZ-3m; Sat, 23 Apr 2022 10:03:27 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niCbT-0040RM-1f
 for linux-rockchip@lists.infradead.org; Sat, 23 Apr 2022 10:03:05 +0000
Received: by mail-ed1-x536.google.com with SMTP id d6so8054711ede.8
 for <linux-rockchip@lists.infradead.org>; Sat, 23 Apr 2022 03:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=VxTbz/61EBkYnAtoeVOTreTiohwdB8m5aatXEPOs56Y=;
 b=wKwr4PjmG2iH3MjybUlBF5EEF1KoicnTRf+lsmPwz/8ptiW4BTVJ8iPtTACg9Qw8cg
 LSxrriHlFZ1JDnPpgSEt0PgdYJfWnW1eW1UMO3dwLrsE+lT5oBNOFQhs1BUd2JNNc8mM
 CwObPksUx0Ydxp+FB+3Ebhos6a2qMrp425q9F17hscPkjCXSbg8jQRjyYjiYJ4ifSwb8
 7qvRLVYuvbPzt96bRxRJgsmNwRJCm5u9Lxl67O4G3s87tzJSaK1R8NW+h1X+upmQDxZx
 xTLUmtnsmOH7eL/URcE1HbqJZYxmyeyBKPNMOrXjlvyFkixMvEZW6eL1FB9mwHq86HKw
 jezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=VxTbz/61EBkYnAtoeVOTreTiohwdB8m5aatXEPOs56Y=;
 b=fP6XzIQtDuEJTgVDTNTYKfwHW/5vtkA8hPEKat+pcnHyqbu4iLZm9lCsPsxaQNYK7B
 MfdsmBVglLzrRSN562a5bQq4HzKALzFZHSWp71iT7UqftD2cprveWNBXRj8WsvkOqiDL
 UAaJl/FXPwB73Z/jX41yPcXxkWP6LiXUAvEnYS/Soyn8hnJ+ztUSKtkF1S7qQLGuZYMQ
 5v4QHj27l/lb0Lgd7PJgJfND8oYkwvBq4JZ1RA8LVXgfHXGnQ4dyTpMmWsmLkMxA6vLZ
 pPfJmUPugLOkVPmHNOFeF16EUBGazKAe6fR/ySju/7DQvLMJP45rLFcqhW64NY6flY9+
 juUA==
X-Gm-Message-State: AOAM531kVs626Cg4OVeXn6p+mdln43Hm2Vc9w5WAs4PRVBr76mYWsCO9
 7Z6cTt1B5bIAvJiIOgRYpem+eQ==
X-Google-Smtp-Source: ABdhPJxDW43NqQtrujSc4G0sjErIulv8al4rq9aXoSm0TYEn0LCABwGp2SAZ+HfqhRpD2xKNmOcETw==
X-Received: by 2002:aa7:de93:0:b0:418:d700:662a with SMTP id
 j19-20020aa7de93000000b00418d700662amr9313643edv.107.1650708177812; 
 Sat, 23 Apr 2022 03:02:57 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 q15-20020a1709060e4f00b006cdf4535cf2sm1508043eji.67.2022.04.23.03.02.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:02:57 -0700 (PDT)
Message-ID: <1903537b-ff19-d261-aca7-43bc28978521@linaro.org>
Date: Sat, 23 Apr 2022 12:02:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCHv1 15/19] dt-bindings: serial: snps-dw-apb-uart: Add
 Rockchip RK3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-16-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422170920.401914-16-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_030259_196076_EB01DBF3 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
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

On 22/04/2022 19:09, Sebastian Reichel wrote:
> Add a Rockchip RK3588 compatible.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
