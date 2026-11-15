Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFE6606A329
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Nov 2026 00:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AKN8Kaa3;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=03NpYBQg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/olKJcdnCJdSptBoOgbCtmjOjfUR/z/aUEQDzUn8v2Q=; b=AKN8Kaa3dXHJCOKxfoTMy3lB9u
	7sE2p+xZwWoRznGJaS3qlpXEQ6Cln4TSSYkO/bd7Wuni4aKd9k1EX37nbBfBiTKpKkV70NgvAhNOc
	jwgLJuvE7EZy1X2+mWtWHPIS4JNcY8dzGZgIy3t+cUW3MaSGqnugBvWhfqA032FnCqaLZCxAw0uru
	mtkPZ9uOz95+HNqz/vIcArnfEl6kUInEPWNQgQNYxoMh+w1H5fbF0UC7SRjdjeA6bPccWa1uBbM5U
	aKZ8EYK86vYUkKU+Y/HqPtZgPTQebYnWuM3TTxwJg2usa0DqYGI48FLYpxGw8Zd/xhU80XdDFKD/C
	1DVBpp2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSOa8-0000000GwWy-1RBO;
	Sun, 15 Nov 2026 00:58:56 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSOa6-0000000GwW5-1Sym
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Nov 2026 00:58:55 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-36e99cf7bb3so2971713eec.0
        for <linux-rockchip@lists.infradead.org>; Sat, 14 Nov 2026 16:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794704333; x=1795309133; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=k7NOu9mRwqKS6KEdePuU/ewkkmtEQ/cj2Ubt3cKxgyM=;
        b=03NpYBQgpkTj6pvPMI9qwY4X0mxDyMYoB1ofP9luVWmM2Dpb5uIRui3F1VvOL//owm
         caHMeeakGbC8WK7kaLzJdHlO4OccAIaxbJP53fOQsHZkMnm6UqhLtm+CqJzIjasF5evq
         ZHhmOX7RpEq6IwQ683Jymsw2rRFKL1k6d/78eNtKzPEY4IqvPrM2k7kDqogZ7txEwhXc
         h/eLSVS78GPeoB1XLBBaOrmK/Moc09ZiSSvk9lPWDqMyHqAzK2IIjmgcyL63XrceAy7g
         QsYPGpTBNaTfNZWeQYo0zXlWfrdYNG9EpgRaI7VA6wuf8WPUt2vXImyIhlYY24v0Q8y2
         0Grg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794704333; x=1795309133;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=k7NOu9mRwqKS6KEdePuU/ewkkmtEQ/cj2Ubt3cKxgyM=;
        b=gjVTTg+x2AiX18Iov3aqsMFRPIZtObZD0V8AFtMN6N709ZNFftUDUhAWeGkpp7AFBV
         3WeEaJC064drzO4PhwgrKL/czmIrUvKPnG4n476dTIdkFXt6xsVpcSLRxRKfmO5vPB1N
         7hLETJ9E7DqX+9A3kH2dWIld/Hp2CrJvVGPiEwzx/lgP7vt9UGPdLFiV/i1UU1BARNZF
         wbeIyaUt7ruKc9Rcyeof+xhEHvZIhvIoZTSErtQ30qtBWgfgGPWIQmn9gRiGDNM3fUPa
         WR5Z54lu584DFb3TCUcqDuIrqzCz94X1qU33QxX7DTjEQKDCQDVbiQob/a0ZNjfTQ5nK
         uRhA==
X-Forwarded-Encrypted: i=1; AL+hErEyDLGf0pO65ikHB1j2HVqklxbZA8FhVtLhQSnltE2AWz2k3Lyjfp24ONWtjODrlQMCH5fRxgLCjbatW7Bgeg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+P4TAawq8Hz45PUR1etgyA47oMpYg4TpLAw0h3uEWQZfI+1Ung
	OicGWu5kE4PisPty1xr7J8DXulf20AchyMzDUzdYf5ZpV5xrg+9VR/qz
X-Gm-Gg: AYBFou0yzo0A+sH8LfW179MKuBAZAQBpscZduqWz7+zUl3PFgiiNMsEDrH0OPjYvQhq
	lR5oby4lBAzpTGLQcntWTVCMsWXiJEA1cnutjiRlsvSNWF6r9s9/kaSv9CYX9m4W4j805AFscqJ
	o0UmwtDQIsCr3e72qcdIXu9hFs9CQ1GTnaDiXmC/1/+akIEz2zarU1f15HUqZWA9HU1CoGjA88Y
	Nqs7wtYsNIr0bc4ccTE8PsPHZo3FcIUWiezEW02Ujuo0+n44lQSKk+1asF9Au6dL9QX/F/p1hV7
	skRutxRuuf7O3J7l7q8kwGu1FgQ5dvKNRPqC3fknFc+3LehxSSdRYa+SWnPUD0iXeOORX5edOYu
	V560HN/OfsP5VOw3ngOMvQGFSfA4XBuZ2i5rnKPqOfkQ91ocR6BYO3sevUz5uYXtJaoe4Bvws2a
	2fZwBBGxF0FKduq3TiCrSYjFdWgaBOYbKHJDAmplaH8akbXuRhlwSr1NJv8c4OB0bm+ugpDnov5
	h+jNr6nLqtUCLJHvK56vZAQbMUZ0MoZ75s7RY29DUOTLmcLz2gqp3kMxsy71KoREAuYpwc4aE5A
	2TuttGU/mKCxcJVJpuDLUG9ydIdJ9AkBEWwxpV2zqGq/x1PbRMnUGoVjSjnoNiCVZNk=
X-Received: by 2002:a05:7300:e9c5:20b0:361:167c:2364 with SMTP id 5a478bee46e88-37966e3ab7cmr7375931eec.8.1794704333340;
        Sat, 14 Nov 2026 16:58:53 -0800 (PST)
Received: from [192.168.35.43] ([218.50.238.131])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-379563e6b6dsm35679526eec.21.2026.11.14.16.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2026 16:58:52 -0800 (PST)
Message-ID: <0f536451-9f7b-46f7-acca-e10e54dec37e@gmail.com>
Date: Sun, 15 Nov 2026 09:58:48 +0900
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] dt-bindings: devfreq: event: rockchip,dfi: add
 rk3576
Content-Language: ko
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
References: <20260921-b4-rockchip-dfi-rk3576-support-v2-0-04f847016321@collabora.com>
 <20260921-b4-rockchip-dfi-rk3576-support-v2-3-04f847016321@collabora.com>
From: Choi Chanwoo <cwchoi00@gmail.com>
In-Reply-To: <20260921-b4-rockchip-dfi-rk3576-support-v2-3-04f847016321@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_165854_386748_B8DB7428 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: chanwoo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 9/22/2026 6:15 AM, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> The RK3576 has DFI hardware for monitoring the DDR's bandwidth much
> like other rockchip SoCs do. Unlike the RK3588 however, it only has two
> memory channels, so only two per-channel pclks for DFI.
> 
> Add a compatible for this SoC's variant, and add it to the conditionals
> at the bottom of the bindings file.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml          | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index 3450e28b4020..dcf3bbde3e8d 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,rk3399-dfi
>        - rockchip,rk3568-dfi
> +      - rockchip,rk3576-dfi
>        - rockchip,rk3588-dfi
>  
>    clocks:
> @@ -64,6 +65,24 @@ allOf:
>          - clocks
>          - clock-names
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-dfi
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          minItems: 2
> +          maxItems: 2
> +      required:
> +        - clocks
> +        - clock-names
> +
>    - if:
>        properties:
>          compatible:
> 

When I applied it, there are some error.
Could you please resend it on latest commit?

-- 
Best Regards,
Chanwoo Choi
Principal Engineer, Samsung Electronics

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
