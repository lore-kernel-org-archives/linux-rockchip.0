Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 158BCC61D97
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 14:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6D19OO9+EZ7ebhfkWubBxzNd8JndwSZ7uvBvuFZ8Aw=; b=R1wCLjp1D+IsUt
	tfE3VLzmHKIHxdXn8slTVLfxt9AC0jc0gHnA5l+PvEYyhruaCDxs4md8RdxuwfeEi0ruzqp/IJ+pM
	rFFcUJ5zmBNfOT2Jo2x3HnShePDUAc8zQr3tYyzeQus3DYQtY25VEuiP8FAd4XAN9lRU2iwrl+u3r
	jS1aEESfMN07ChxUDrPxwzE5f0iikoiZtfzX5RDSD5FwYeaj5p4xcd4HRcv9/L+Js4KBPXtZutX1y
	bWpfiAXe3kFUg+Hk1nIIGC5PcBDELIWJCYqZc+4CwHNgbhQpJmmy80xphns6yYWQGacJxa7ibX9rc
	c3wzh6vyygu/LNowsIYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM99U-001ddp-Ky; Sun, 29 Jan 2023 14:59:28 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM99R-001dax-3J
	for linux-rockchip@lists.infradead.org; Sun, 29 Jan 2023 14:59:27 +0000
Received: by mail-wr1-x433.google.com with SMTP id a3so2225925wrt.6
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Jan 2023 06:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pkYdbcUfukIthtd0r0b7QQIU7hJvHQCUD0UgIfwX48g=;
        b=Rgf5I6a5W6LV986SXUsrBWelksbM0i4FXT1HC97i/SSzvpCaZbPRbBo9DZv/bTM0eh
         dteXweklQFLuPQWCS4LQDxr0mBXcNgzQ4t8Frm3wZfaJ7qJlrlwj6U/54IY1HWdRXAoT
         938j3DbLNIq72jEZPVDOxIw/xTwiIX522fIFHn5Eff19qpTfJMh6hOfdJKvOuJ7zQZB2
         oKw7FZ2nOO0gIL2xnBsFuYW4xj9ulnYFROKpTxPDGJcJuAeW+fVrPvD0biHPQSpoeZdg
         eIpkqPsunRxZnVl3lAzj9u696I97dhkjFd5FQ0qBHqS5Js2fky1dTo7p0hyhJB+7m8bQ
         Kydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkYdbcUfukIthtd0r0b7QQIU7hJvHQCUD0UgIfwX48g=;
        b=hw12R7IY0h7R3wF778AphIb3cJ+RHgcIOiFHvFJZ0dUWC/7uC+WfCTFxQIs4PB2T/U
         L03lWqpkSjZgmcFpYRE9TCHblX0eRe/mgUTbe+dQ8TpU8+e9E62e+JokN1ib21fagUOp
         lYV0AspEu3bWLE/nE1Fzh12ze5TgPLHy/DAeUHtlMlDcgPgXWPw20eavJB2PpQWfAWFB
         QvUnI94oxf9u+c1sIXek40hGCUod+CEDINAMsm/ickzcXSStXUGHD5JjPUv1zO9sTVVB
         pgRaQnLhLkgsAWXPvhf8mJOfsvIKEybAI7uVarBtuOX/dIlyFN7tyfYFNPD5JDwbHREE
         He+w==
X-Gm-Message-State: AO0yUKWi4Hcj+VPwOHgRa7xWg6QN4kwDx3v4MUM76Zc8t28gmViayOti
	xCHPbwDErBm3BRfJmYUswEjZDcAmL66bLLbU
X-Google-Smtp-Source: AK7set9lhBibwCPMEZTCkQwTk/Ur2R6HM3k4cpVtVT2vBoRMKmwSGZlH4f5o5iVDq5EyI0dHIaXfOA==
X-Received: by 2002:a05:6000:1204:b0:2bf:b33b:fb7d with SMTP id e4-20020a056000120400b002bfb33bfb7dmr17152701wrx.61.1675004356655;
        Sun, 29 Jan 2023 06:59:16 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e21-20020a5d5955000000b002b57bae7174sm9217250wri.5.2023.01.29.06.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 06:59:16 -0800 (PST)
Message-ID: <19b4be07-ac5e-b4b6-acf9-621e567aa8c6@linaro.org>
Date: Sun, 29 Jan 2023 15:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: sitronix,st7701: Add
 another panel
To: Maya Matuszczyk <maccraft123mc@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230129143141.173413-1-maccraft123mc@gmail.com>
 <20230129143141.173413-2-maccraft123mc@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230129143141.173413-2-maccraft123mc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_065925_340300_EBB60B31 
X-CRM114-Status: GOOD (  12.44  )
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

On 29/01/2023 15:31, Maya Matuszczyk wrote:
> Add compatible for 854x480 Elida KD50T048A panel, found in Odroid Go Super and Odroid Go Ultra

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../devicetree/bindings/display/panel/sitronix,st7701.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
> index 34d5e20c6cb3..dbc92c4e26ed 100644
> --- a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
> @@ -29,6 +29,7 @@ properties:
>        - enum:
>            - densitron,dmt028vghmcmi-1a
>            - techstar,ts8550b
> +          - elida,kd50t048a

Alphabetical order, please.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
