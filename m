Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19FB1C7EE43
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 08:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfzAP4UTs3VbhifWtazb7U3/zvSuSTrIWSuNLokOJ2o=; b=KbYGWYS9m4mpLk
	zgr+Wmcrc62k7+nZpdZKPCaPBZLWMNea87wINLApe6IcEtY77FFJQwvKW3q6B8k+UUAeDQvkz64tD
	o+rudYU3X8pOcpDjjE8TZUavZZWEdLI4qE0GAJckxEIJUufhIluVPSWekwlnMAApkXLDWMAqbbacQ
	GrxJ6F5EmUPy+rVUmjU+0JpYLsv2pAUgvGK47FVtPjaKfXBwFxMkV/lTRg0xHAxvYxlXRYiwzSEcR
	QDFegyRcfXBShnaNO/CeE3E5/9En/KXT8k3MWko4PMjcn13tNpQv2hBtZd1DRNdARhBvBpfku61R2
	Oerg2IqGfGj7FmlTKhxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqy-00367w-0X;
	Mon, 12 Jun 2023 08:24:44 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8cqv-00366P-2g
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jun 2023 08:24:42 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5149c76f4dbso7287342a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 01:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686558279; x=1689150279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7D6Fyjiom4mYpRNDGxmJ+4tkPJWamSoxinWl7N6B39g=;
        b=VMvW2ldCRLA4FS6P7F+8G3PCEY0tb7Iu8cL59lJycrVCfw/5IYyNMSAqeVLQJnkT1G
         niO9MMRSIz9o/yvfgmeKs7p5YCLZgp+AzSJxMWpW0IHxChy4pV3Jma4m2pLJOcuZAiUc
         HZLai9VZSbkQTVz43k8xCehT/XQM9QjZEtPMJXpiy1YQCdyrwRz2QS3qUSP+B1F73anB
         rxhJN47WVWZJDttOgsyYqw5ZQdnRJwz2mqUpyO4OyJNeMrJd0lD5GPHguucrtX40VJie
         YpYmWj1F+iIHE+uQF9uCofEhvLvc64D0CIiivNtxVpSKLcgB3RJcnJbtvTmLHP+VWmHU
         eQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686558279; x=1689150279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7D6Fyjiom4mYpRNDGxmJ+4tkPJWamSoxinWl7N6B39g=;
        b=TkrDh/o9bXfp3t6OBqwhmOTk3EZpaeBohN7skB/bacJLWNGaTgviAs2UlYJkQnb/uH
         t9sTTq9Kl62cUBP7tIAwOkpcfXWXVyGZz3RVbQbxQcAiM7+TUQsxi9S8bMStt2PsxzYI
         5zefjJvwlOnhYQGBIzP3XcYgQS/f4si0kW/Hxthk3o4+m8EWeIej4VUmbk9YMDs936Hq
         XJb+CAxAVAfy9AKhfMtK69SgR0WmKstru/uaCNsD5PHSg9pIrEHQns4Qq1vEoiT3QkES
         gCiGcgsT+lgsBtjjvjZztTWz9kmtCmtpFP73bRKqt2gOi60PHfCPSOCLSyc4tdR3jh0Q
         tWpA==
X-Gm-Message-State: AC+VfDykLms00ctEskIw9v1/I+hI76dJsTNsXdg9Nl5F9s0tRo7q7nFO
	llbKgMEooa7+gUMtapGi+rIJVA==
X-Google-Smtp-Source: ACHHUZ4fZFtU0nuw4O03Q2YBjYiPLMxR/evqGLuCK0fv5OjI6AlCOdT/nQI4kM3M9h2oNHciSBdreA==
X-Received: by 2002:a17:907:1c1f:b0:982:21a1:c4e0 with SMTP id nc31-20020a1709071c1f00b0098221a1c4e0mr1221846ejc.56.1686558279550;
        Mon, 12 Jun 2023 01:24:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i25-20020a1709063c5900b0097899aa737esm4956590ejg.147.2023.06.12.01.24.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:24:39 -0700 (PDT)
Message-ID: <e132676c-af02-4309-dbef-f1cad2157253@linaro.org>
Date: Mon, 12 Jun 2023 10:24:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 3/5] dt-bindings: phy: rockchip: rk3588 has two reset
 lines
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-4-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_012441_869268_35F745B8 
X-CRM114-Status: UNSURE (   7.72  )
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

On 08/06/2023 18:22, Sebastian Reichel wrote:
> The RK3588 has two reset lines for the combphy. One for the
> APB interface and one for the actual PHY.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
