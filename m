Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4B2C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 16:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arvtsoMw84cJs7AjXK0dLH2IBtieNWBetk0AbFBGWY8=; b=xvWvG18+t+ZSqL
	uBmO/9BLQRQvwIi4wHkeYS81GC4Hf/2XDd+EUuQn6GLZWoC80iOPUTxPmWmiIur6jYOBoZPhNxRYL
	9vRGTaddJxgJWjMAnTdWfwYMcnam+2OD876pFsAxq9ssn6CXu98FuJQboZZtKn4yTx5eQ3cHlqZiM
	qX6UqGwxbCeLgd6snpaxAEUh7dMNkyiiwP/SF4+nEYd3wqCVPkNX4IJer0ksvT5VCqZ+/EjPwHFoI
	XuDBJbEjpebMvWq3DY+85VGSgK/i+3d8TDNPfy0hpu6PwNOEU6Ifi8p56oTXm3GBsOOICT5cgjIIK
	gZLHC8Fj+KBv4kl8sI5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nICAs-004Lj1-Ur; Thu, 10 Feb 2022 16:20:02 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nICAq-004Lgi-5e
 for linux-rockchip@lists.infradead.org; Thu, 10 Feb 2022 16:20:02 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7EC713F32B
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Feb 2022 16:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644509992;
 bh=tT0V+KU2BeoLWRdV7eFcuAjZlhzvXhhK5c/htTBUt/Y=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=wRTJUVtOzIwMDB+YKU0ajito4wwvbRayF32E44RdAQJJleYn6Jg4+AL+QNk1aSb1e
 gmZdvkfhrULU620Wiaz+yNuE/PeMXiTudhaOHcENgtRT584vla7X3ys00b/RjJNiwA
 aTc4YXF9V4M9IwHRcfIt8gj91XZVqG48ACNh1zGbkJE9DTts4sm9KeWHJMJh4RXSAk
 Gv2x1bQMMXe3VmSe1Myaoop7PHmrmMqMIhXtqnEH8d3UQ2W9shOUbhyKM8YUXuai92
 rQtcKwjGXUTLil/Onao6nI6CfTm9PJZs0W+DOAklTSuBFJ4gSny+5lks8Dz7zpABGE
 OyGYeaLYTntog==
Received: by mail-ej1-f70.google.com with SMTP id
 ky6-20020a170907778600b0068e4bd99fd1so2962008ejc.15
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Feb 2022 08:19:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=tT0V+KU2BeoLWRdV7eFcuAjZlhzvXhhK5c/htTBUt/Y=;
 b=qb/jOiEZTyETk+YJnkuecf8PFqeGdom7lsUWhiRUI3/eBtwehyMHyzxwC5wuBYdvfv
 RvWlYt6aEPGelIPuq+ATDz56zfcyKkoEhpv62J8J3mYVr+EDzAsBwFH9r9tzrMDMIfmd
 6iKsEbErHLuZsKokRCDQDHjFckXNUwC8p45bgW8zvz2J0rYWD2vuZye5vgB21NPH9iV/
 g4tNDQCY3dKUBeDidXoO5cQo+5kWNpWs1VKg+fDzMuxBVLRs9uYB+YVINefmYS1BT+uV
 2ZmSQyKudt20/WiRsyhgg6FyQVyNphLoqpwPB+JuMYdHfBJbDXclSAhmiX0Rvmil3HMs
 hDag==
X-Gm-Message-State: AOAM532jolM7UI657FT3IBfDS7T+md1dSWfivmFBHoSgTMdyBuvRAIEe
 lWuI6pPDDDBHpzAmh1/BcoapGfsiuOfUOGJpsIzSzE1EiQFbt0xKHJafZDLpyFW+0oh/+dwW4gw
 qfcYefa14I1l8RL89aN/H0dbZyBisDGl2ph/rJJWiTNznfWrojw==
X-Received: by 2002:a50:fc13:: with SMTP id i19mr8938745edr.232.1644509992150; 
 Thu, 10 Feb 2022 08:19:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyo8YzrREsbeeglYGU1jriGlI0EGZwvP8ev+ebkKY9LgD4Hb/DEgHvBEZAWx22aJjpMpTx2yg==
X-Received: by 2002:a50:fc13:: with SMTP id i19mr8938724edr.232.1644509991996; 
 Thu, 10 Feb 2022 08:19:51 -0800 (PST)
Received: from [192.168.0.99] (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id x6sm9820678edv.109.2022.02.10.08.19.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Feb 2022 08:19:51 -0800 (PST)
Message-ID: <7acb44da-5833-f638-9348-0cbcc21cfc13@canonical.com>
Date: Thu, 10 Feb 2022 17:19:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] dt-bindings: crypto: convert rockchip-crypto to yaml
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
References: <20220210161403.2966196-1-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220210161403.2966196-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_082000_357530_AABA03AB 
X-CRM114-Status: GOOD (  15.21  )
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

On 10/02/2022 17:14, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Change since v1:
> - fixed example
> - renamed to a new name
> - fixed some maxItems
> 
>  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  2 files changed, 66 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> new file mode 100644
> index 000000000000..44f415597e32
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Electronics And Security Accelerator
> +
> +maintainers:
> +  - Corentin Labbe <clabbe@baylibre.com>

You removed Heiko. It's fine for me, just is it expected?

Look good to me.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
