Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE568C41513
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 12:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0HgkvcGZd8QFiTgGcSGg3LWnQ5oSBVRiH/IjBndMWM=; b=QIzqyDsBah1DkU
	iQybNH1UUe5ktX1H39WzYRxiAwAJ7KSl6rpwLQ9RVJes5FNV/DYT5oEpnItkH5y3REczEpfeV0X8H
	U7CfJ57LmDymj3K0k5LOjr4pw595zmjHMwBwNBG1oSJOJ3LsDs/g0RZfuvAFdkCcy14I7AmymOeHV
	9SiFK6p6s27tQQn1+j24J1l/RkjWpCsBCSVXOciKQIrP7V/GTS8U2R8ylABjDIyzcAO2tMnrEx/sU
	959/YjeHoTO0ur9TA4VbfCX87x5bFQSbcImDWWevBxmhpxugBC0DM7+TP+lqS9G9AKc2wE3veYTCJ
	H83+EhefltdgDcpMxl5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsMid-009aqC-2J;
	Mon, 16 Oct 2023 12:29:11 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsMia-009ap9-2Y
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 12:29:10 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40684f53d11so51128125e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Oct 2023 05:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697459347; x=1698064147; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4finqyXhH9LnXtXrWYKjQ3daBsFlTGuZg+2p6VUb1Yw=;
        b=X9te2Ia26Lq+NcyZX3ZxEvc3Ec4sM4bO4dFrQPRBAq/4H89AW2b1bxYVysCzlUSFPr
         f53Zb9iaupIcOeOrZ5l3rCZN+Nknxrf1Du9rjnpr7I10BoxHZ7HwIIhGnsxCgHr0Sh0l
         22i+wAEoLWEN7wf62wMFsTBv8mX3yg9fd2SZAXp0ei7laohg8MHcr8RlI5Eb5XHp7fzN
         6fIcWIqn6L3e7894bJdKT7ZQVVM83gg8OZgTSUSMs13G+vGsjc+Bi5GJ66ROgfEKcVM3
         jsyyax39yMdzUhKjgxEQGSt1o5EOgrNLUp9kteLM22Z0N2erHzSYwmY+f5pPA6+KUmny
         JXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697459347; x=1698064147;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4finqyXhH9LnXtXrWYKjQ3daBsFlTGuZg+2p6VUb1Yw=;
        b=GickFROqHNNEE7I7A2g5XrYCQKXOBgPSKvVdrf0VEg1oSVRg9aulgQFnE2g1iaXNt/
         ydwwoW2L3D+P1ff0yfajqYKVrug5W6aC4/UQxb8LQ8OPVyI8Y7UTOltcj0oyRPw/L1Bm
         8Rp0E7gGjUmOi48FJOiEaUNbSmR6Thoi9HhaJ8SoTiXNOvdZscPRC8MmACzkgi5z3OVS
         80rF5NXXCSwWkl4/OzJ9Ll4IeJRD1oeeCRT6PZqJ+Wx2lv/A9C5avMeVfnXL0/Cqz99+
         3VapHxrUFr4JTBa8gfn3LotEfkjWjtsnQgl5/bummS21HOeLINnFGqDhI1blvfLWytDU
         TRlg==
X-Gm-Message-State: AOJu0YzSdZtQsk1vLsPk6VmDFhZ7N2vi2GuyBuDL7Uo50w+ZMHb02zy4
	C8CtmERnC8ewYaQh3d9d/3cl9A==
X-Google-Smtp-Source: AGHT+IEru9oDUIKXVJPPywLYzN5dyEeh3V8L0Qt4dJ5ayQJCSmQ1etgSR3rBCtb45JrSOdP65S+X7w==
X-Received: by 2002:a05:600c:3657:b0:401:b0f2:88c1 with SMTP id y23-20020a05600c365700b00401b0f288c1mr30246310wmq.29.1697459347168;
        Mon, 16 Oct 2023 05:29:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00401e32b25adsm7111236wms.4.2023.10.16.05.29.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 05:29:06 -0700 (PDT)
Message-ID: <6fcc0838-9a94-4ff4-b2d7-b86815a8af12@linaro.org>
Date: Mon, 16 Oct 2023 14:29:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: panel: Add Powkiddy RGB30 panel
 compatible
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, andyshrk@163.com, jagan@edgeble.ai,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 neil.armstrong@linaro.org, megous@megous.com, kernel@puri.sm,
 agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
 <20231013183918.225666-3-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231013183918.225666-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_052908_830948_8BD6225D 
X-CRM114-Status: UNSURE (   8.89  )
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

On 13/10/2023 20:39, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB30 panel is a 4 inch 720x720 MIPI-DSI LCD panel. It
> appears to be based on the ST7703 LCD controller (this is assumed from
> the init sequence similarity between this and other displays). Powkiddy
> would not share the part number or name for the display from the bill
> of materials and there were no obvious external markings, so name the
> panel for the device (Powkiddy RGB30).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
