Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18F80C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 12:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SiK04ZsqqE7uOZSX16lfELAQmjDZdrMDhN4cHmucf/U=; b=uVDjdOu7oZ6jAo
	tnlKep/gUi+4FN6GsLUd9npFG9CvaIUjpVpzMZgfwAbBDdnXzqXUAAQPfrjv1cQcYp0xcI+cV3+33
	rrQRGh2CWRwyJ/heAg49qtKTFCvbPV5XzOZKHWFUtb8s2jZDO/RI35wvs8Wrdy1EVq6G/VIw8VaHF
	ZMNuKYgXpdK2RECGENxsxjGr5rkq6buHuJteX5lWFuoUQzwWUzG/ZAeeX4r+Od2nnffZnWcHIFKk+
	OP1TIr5i6sc8McxjzZNyqA0ZJe/E5fQZP7+/MwCQ90etk4I5UwEow3nR8Ql9EVnmFJglvHEM2+zZ0
	UzZ2JbjbqxTKIHPtp5Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc3nl-00A7V0-0l;
	Tue, 14 Mar 2023 12:30:49 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc2fP-009sp9-23
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Mar 2023 11:18:13 +0000
Received: by mail-ed1-x531.google.com with SMTP id j11so60502338edq.4
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 04:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678792686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTLw347ZTk76CB3YCjWqXtSW/kYt7O7yegt9D9Y6FXA=;
        b=DfbXKcyFf2lJtqM9kxnIwQgXX5YHPtmETobmmHOm3Xih8xuS22CBz9vhum+UjfNGnT
         AX/sKetrvq19eNac6gFFkYcUDW6YBAVFgQXHp0yZuDLZpSYPkIMzfI0FWzowlfHnt+Vg
         37NzIbYf2dKi907JOSf7p5gsNRdYl9kzMZYTJfbO8Hhm9o3V41bI153d7ILKIqjA6vue
         qJxEVrZnAfIBudOJryrUnv2DX36HSLb0kv7MZFCynatG/tp0k9WpQp0YWQv6HyLnadxU
         DzejyEjiM9TQ/0IOkDw4drPhRZBZ+wH+gSAyM8Q7/yWZ1UYuvNE0o0xX07pvvqoFd1Cq
         1DuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678792686;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTLw347ZTk76CB3YCjWqXtSW/kYt7O7yegt9D9Y6FXA=;
        b=kMBvOJDfxfoxmBFibw2sHvwOWcRnls4P6OJRrOhS38r0nCpzGYq7Qk7yLCYFmvOOKZ
         uNlN5ixr921ITiljlSt2PzczySHaDPG/MTiAq/azuTn8faeCHM28rFOXUiMMguLwCimW
         kMfmzIyPeABvGobIBaLHzSYXdCglt6giu/aHuYmCljrngGud9yS8BoJGovCsbmPa/0wA
         8Eyssq8miSWI61JD1egmjTGcSRkgUkJ55tKA4ALBqZ4TtnzZdsg7bEU80Ht1zmqM3Qz+
         6GNw1oN8dM1N1TS/4/UBm0KSGDj0cAqQnM3xPgIln5uh34nP1TaeB1ownf79DwpewhFy
         vGAw==
X-Gm-Message-State: AO0yUKUbDB1tCjOictChrJtmya7Zg6CqkODBvKnW6zUd0UgSFV6ie54q
	/nKwj3pW6L5gHsLGCzvyZt4IiA==
X-Google-Smtp-Source: AK7set9AeqSbWbMpQSeHyDHFZ0ow4SZlOYcmpT9uXkJZMQnegdxX9KuOMQUBc32BeUqDoZUsjzpCaQ==
X-Received: by 2002:a17:907:a0e:b0:895:58be:957 with SMTP id bb14-20020a1709070a0e00b0089558be0957mr2625143ejc.2.1678792686070;
        Tue, 14 Mar 2023 04:18:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id xa13-20020a170907b9cd00b0091ec885e016sm1016273ejc.54.2023.03.14.04.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 04:18:05 -0700 (PDT)
Message-ID: <4ca61aac-a901-1bfa-6cf4-8c2917621667@linaro.org>
Date: Tue, 14 Mar 2023 12:18:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/4] dt-bindings: PCI: dwc: Add rk3588 compatible line
Content-Language: en-US
To: Lucas Tanure <lucas.tanure@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof Wilczynski <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Qu Wenruo <wqu@suse.com>, Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230313153953.422375-1-lucas.tanure@collabora.com>
 <20230313153953.422375-2-lucas.tanure@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230313153953.422375-2-lucas.tanure@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_041807_678414_63286EFA 
X-CRM114-Status: GOOD (  13.52  )
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

On 13/03/2023 16:39, Lucas Tanure wrote:
> RK3588 uses the same driver as RK3568

Subject: drop line

Commit msg: drop driver and focus on hardware. Missing full stop.

> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index 2be72ae1169f..91aa9070ee31 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -23,6 +23,7 @@ properties:
>    compatible:
>      items:
>        - const: rockchip,rk3568-pcie
> +      - const: rockchip,rk3588-pcie

According to your driver change, these are compatible, so maybe this
should be expressed in the bindings?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
