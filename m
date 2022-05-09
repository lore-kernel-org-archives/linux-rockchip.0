Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E1F9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 07:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aomYOViLwv1eCTiGAgQWbVjaMl6WPYFBC4N8c3z01+k=; b=CiQx/Uqp2zosVi
	vFOipLzxqGd6TAAZmUB+vGq3ZwYFextX6SGWS9WkDXsHSq6IuMbkczUgBdZLek1fQtWrlvwQhKAZZ
	XsQjyRRH6Y4/fOAQTAGOmUFDn5h082wboDC0syVB+TFuKGZrVdA0NZX6myjYu3hkMnoTqKOqSPeXt
	4ZCMUIRpwIbmVGXBvinFRbiJ+TH4F3CIyT/MyjqzQhkRTrekFu3zv/Uc33aIvi5KwFnRCS0X9smkQ
	WRTTiMBlfQvLmKq4nY3dcG1kMpAawvd+S+sAKUq8yLu4wI+akXAJfyP8mTYBXYc8wlvbVuL/HDZX6
	T/RrFlFwowjYioFCMF1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnxkX-00CpIz-1E; Mon, 09 May 2022 07:24:09 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnxkM-00CpGi-Qf
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 07:24:00 +0000
Received: by mail-ej1-x634.google.com with SMTP id ks9so18595198ejb.2
 for <linux-rockchip@lists.infradead.org>; Mon, 09 May 2022 00:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=z5Clk3XYXTp+vmz5f/jeXgXYH06mx9BqefglYqriuK0=;
 b=KHHanOPHMJzQqw6GMXaDS9KVtVOGdklcaRuC/OvfhXffD6M69QJz260KKpWqqYpaCA
 6A3/Sdd5SwhVxkmqbwke+bGMT8WU5XQaU+DQMTDdqVgMivB5VcoAO8MFNkMepLy5OuAI
 WSTxjSIUmFpuz0fenzMVdz5HU+R7DCnoYTCWXUtu9dhTO/Ni4katAVIPuzZzuhL7+8DC
 J/ywTVxCEkeLABC7V0SeijP1PduRx5nIPfdQd/hWqvwFnSE2b01bEU8zcLUKoUYROl5p
 bgXeMuPwatUa3smZHrf2Qk3yntrVkqaTXwBdEnUsooZEZ1QYjzOjRAJY9Xcf6gHaoWmU
 U1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=z5Clk3XYXTp+vmz5f/jeXgXYH06mx9BqefglYqriuK0=;
 b=0Tusrd196uj6FBOw0qHCQ8T9JMj8xmj5oDwBUfTmi07C10iZFz696UFlqG+50z0K9R
 DmHaT4Te5IJ3E1XmVCRcV3yo310ckK35gXl4XVr+bH76YKZsTUADCEP8T3FW5c6YZtNd
 wtgzoEhoQ6nhKWhyCTMrN6PLtMCFrYf3JU5rHrN47+2vlqH2PNqfatoeBFsX0qHJ9Tc6
 aJ63yzXzyLfqkPoW8hKUtxNYZR6Qaq+ItcC2pKgYRPTXzUXGFji/2nueJhkgUgARXrnw
 TPaskTcCBV5iUck7vgztCvI4zh041AWgxYbYc6h2OKE/DpZ4byQyD1v7fgVIBd9h3Qj7
 mdvA==
X-Gm-Message-State: AOAM531W39n9rXIlniNFJelE5I6QpwmqHV8cfKHrN5e8IOP0BJeNsXjS
 OTJ0t0pP8WLuY3eRGfgUlFt5xg==
X-Google-Smtp-Source: ABdhPJxsCeAGzJhiVxk3d02pleP/R1atUtuQTe5bS4dXtMXLktM0/4uRbPSxOhKyBgBzGzmTexDkXQ==
X-Received: by 2002:a17:907:a40d:b0:6f3:d1e4:9d7b with SMTP id
 sg13-20020a170907a40d00b006f3d1e49d7bmr13391190ejc.69.1652081036476; 
 Mon, 09 May 2022 00:23:56 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 md17-20020a170906ae9100b006f3ef214e30sm4799652ejb.150.2022.05.09.00.23.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 May 2022 00:23:55 -0700 (PDT)
Message-ID: <0c44d40e-cded-cf35-b836-baff156f36d7@linaro.org>
Date: Mon, 9 May 2022 09:23:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v7 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de, ardb@kernel.org,
 herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-26-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220508185957.3629088-26-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_002358_891660_6E958350 
X-CRM114-Status: UNSURE (   8.66  )
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

On 08/05/2022 20:59, Corentin Labbe wrote:
> The latest addition to the rockchip crypto driver need to update the
> driver bindings.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
