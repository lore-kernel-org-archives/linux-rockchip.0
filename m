Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0EE7C54EBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 16:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flVOM7xMcvDftsYnDwaGHyPZ5dWxcysxqx3hefm8et0=; b=Om57Z4NJYxRxmX
	UGXoX3j3hrKyZAqKVZ4dJKrYkJFqmtNX5OnHJNaNP4YD474skkOO6WtIILNnCSSS12g8Kal1xn1el
	u6OhWgDI2IHWqAsJPONWD4CLmBpiCJiIqJL9p044WdVH+Ia0iscjFzbS/rnykw8rFMOhaEV2TQMmM
	gZH1gB2AWdz/C9Ln8ilprxm9cF0NJq0cpy79atJB3exbt/62CtBUEm57CUxTk3jlSUKeiPnUkKwL/
	HPGiOUg8Mi/I1lv++bx+kxERX2mVibOgpzLAzbGeRFRKgK02YtWGmUKqcdl8EJJwoOUpzNM4wNqim
	xFIMeE2F4qwNxRgXhvUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFHfF-007p8x-CK; Tue, 10 Jan 2023 16:39:53 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFHf4-007p66-MK
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 16:39:43 +0000
Received: by mail-wm1-x32a.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so10545537wms.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 08:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=76z269HHy4FyyHUAPr8lTZqL1EfM7779/xLjc1+5hq4=;
        b=f6P6qB+MThS7or9SxkSLmDlMwr/Sy8IO4X3NKxxSO1lvHMNvHyrbU4aciwm+uzoj1I
         hq4Hi29wBraHKq8+ySWksZwJp4mqmqkUTs3azTla+EEVX5AnDAg9awljMcElEha7Xwls
         Y05iuE3CaZ7mQpJAGZusJNJudO7rLPKpPv2US0ts2hdEr7yCIq0uXKlAinTxr4oLgz9R
         DMt3eNjw826cqmqG9bk69/hjUUe7Oef9QMoxqiGm4JqA0ynGDC1ugkaIX0qRmBMQXTiO
         cohBTL7Sdoqw5w1YapgQW8dDl39quOuLd2XSnBhlvAlBoQfsplOq51ParlHeODt89hIm
         321w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=76z269HHy4FyyHUAPr8lTZqL1EfM7779/xLjc1+5hq4=;
        b=BUOVe8g6G4QH0vSEPGttF/yRt4XAjvzWv1Y4tQpeaCrMfQUBJbrsbIXWV/gnIVzAZa
         PK81P3pl6a1IIZgTLPwTpsPmxy+XshY5LJ3PoDY8ZGeHAAe/DEcke1G7q6r91Idojvmr
         cCX/rjBmUDEmyfwtfXb7DqgIe0Hs9o/JFKqGimlFf6IY+QWgMNR2lbr6EYbEMrXJcYDV
         BQBGbdgUxr3EYeoAxye9egIUHKYs+MVirFS4dthcMY35BBP+k73PIMr2T0xJ/PyYerFv
         WQTP13h5ORVgikhoe+a0xuPHzoM4OeBDQqWc+EyJW1ng1iHKpEyv9XJvlVRVF8h44Gyb
         osNg==
X-Gm-Message-State: AFqh2kq/Pu1HHqYk65hc/so+fdVye8PMyVJ89PPcMXdMVBAkZphyxwfG
	27fZ6Dq776DgwepXJpsG/yWRwA==
X-Google-Smtp-Source: AMrXdXuJ5I9OptNe9qPfu10ArK8AkMJeuK6hRf2mL5FnXKCy2MoM2LwbmUi6qWqDnVJSrLQqpqgqxQ==
X-Received: by 2002:a05:600c:1e18:b0:3d2:5e4e:701 with SMTP id ay24-20020a05600c1e1800b003d25e4e0701mr49768128wmb.31.1673368780003;
        Tue, 10 Jan 2023 08:39:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bi6-20020a05600c3d8600b003d9df9e59c4sm13280998wmb.37.2023.01.10.08.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 08:39:39 -0800 (PST)
Message-ID: <e887125b-9bcc-2fa1-a8aa-a5f0176d00af@linaro.org>
Date: Tue, 10 Jan 2023 17:39:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Edgeble Neural
 Compute Module 6
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20230110134658.820691-1-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_083942_741991_0925C522 
X-CRM114-Status: UNSURE (   7.83  )
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

On 10/01/2023 14:46, Jagan Teki wrote:
> Neural Compute Module 6(Neu6) is a 96boards SoM-CB compute module
> based on Rockchip RK3588 from Edgeble AI.
> 
> Edgeble Neural Compute Module 6(Neu6) IO board is an industrial
> form factor evaluation board from Edgeble AI.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
