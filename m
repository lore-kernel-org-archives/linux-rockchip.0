Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D69C2C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 16:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIPuuPtTnIudDj1LphHAkwdg2CQ856lqI1xPi6s6qKs=; b=CkCDtYQHzVO0gM
	cDfTUjHPF5JHWrRmWMIsct5GzR5wDL957KkoIjPPtsGcH+NDsdtjY6sDZgfh9TtNCdulTJO8a5GIq
	hwszsSdEJJzWlfcH/MHyNYMI0VTySEZEKdUahPmQDYQqspkdD33v4ITI558+ERFOdD9K8lOJpkB28
	m5GjSrN25pIIcoTlMs0oeJAtlv05aN19JnXVfeM5CavbW455wihgz/4GA779cPl1czuaOAFQoFyhk
	+ILz3qv+O5jiJg5MD9mdXz5fdNxuXBXS1ZYSHHPoc0a2nA/7Hhn150rsx4I6D/KDbLiRke8WLXcU7
	/KmF92IUxSv67EEQ1qmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox9dS-00FlkJ-FJ; Mon, 21 Nov 2022 16:27:06 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox9dP-00Flip-QH
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 16:27:05 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u11so15073582ljk.6
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 08:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IK/hcYRO4+2xDkBUGwlm3+33CLzxibEmLxv8uMBuvXw=;
        b=C9oaLuCFpVuHZBmZToJMOFdTN+ZrANvFGp68HH7T0DdgitcmCIytNppzjmG0GpKsxS
         DRqCE2JfwXaeDfTrrjZLBsMRXYrBBSRZiJIhIV0GSK1OSb/mBFLvsWl94T7Es7bB98/h
         /MQYtLXCQd2IePMHurDKvwEwYBMeGQYFS1/5I2crL7MOFbB9QixzeRGKuYwTgGEiphIm
         cO2BFNEGPk671Ed0n6OMfl06IWi364ky9p45QO1WcCSTY9j7LDAJTsmSHOOfdAHovsV3
         jF0CtvnoYWPs2LyajVb6/dl0DDWL5IwzHrHjqMthTlWq8MeRZxrzpsScXBRNWAh5G/Wl
         RREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IK/hcYRO4+2xDkBUGwlm3+33CLzxibEmLxv8uMBuvXw=;
        b=HmM+125V51/0IudkHrWIAQHJfQGdd4LOjphTRtDJPEvjNUabQTXISFx355b5EU9mg7
         rmzeuPZQr+dIfPUpHBJwld53Hu+0vKjw+xdij6Ch6vUT950URqfEXEvCfwceWpsdqkDW
         AMiNEvSnQwKJBLksgdJt6z1wByw8yBYxmH7gXeE6f05j0mvipR0VTeaKjtLG5yVH/yHl
         hs9V8WEz6VkOdmD8U85kGRr5VOyx8+C9QgKmG+BqVsU7+Uh9G1NvyZS4/dLHyXYUpPp1
         As29TfHX7wH3xt2eK/XR0FREv3O7YGRNJc2nqjzgede3UHFLeoj0zooWlQBKCNMki7da
         qAmA==
X-Gm-Message-State: ANoB5pnnKaOMaOvPOzAMzKB6UvBfIjcgotPbs6PNk6D0KZ/dAeHcyp0k
	IEjc+ZyGhKZ6svY9B9FvtkIhB6porEXflhgx
X-Google-Smtp-Source: AA0mqf6jg9QPuniTDKbw/FHukSe9K+oG1xhN84uEcSbo3NdKv66w4NIw7IKP5T1TWsxE8D2WJoJf6A==
X-Received: by 2002:a05:651c:110a:b0:26d:e85b:92af with SMTP id e10-20020a05651c110a00b0026de85b92afmr5623921ljo.464.1669048020079;
        Mon, 21 Nov 2022 08:27:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f10-20020a056512360a00b004aa0870b5e5sm2077709lfs.147.2022.11.21.08.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 08:26:59 -0800 (PST)
Message-ID: <777399ec-ac03-18f6-c37c-7fda6d927ae3@linaro.org>
Date: Mon, 21 Nov 2022 17:26:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3568-rga
Content-Language: en-US
To: Michael Tretter <m.tretter@pengutronix.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 ezequiel@vanguardiasur.com.ar, robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
References: <20221121151755.2072816-1-m.tretter@pengutronix.de>
 <20221121151755.2072816-2-m.tretter@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121151755.2072816-2-m.tretter@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_082703_886613_ADBBD0DF 
X-CRM114-Status: UNSURE (   9.01  )
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

On 21/11/2022 16:17, Michael Tretter wrote:
> Add a new compatible for the rk3568 Rockchip SoC, which also features an
> RGA, which is called RGA2 in the TRM Part2. It is the same core as used
> on the rk3288, which documents the same RGA2.
> 
> Specify a new compatible for the rk3568 to be able to handle unknown
> SoC-specific differences in the driver.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
