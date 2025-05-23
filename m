Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98EB4C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 07:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ol6XsSk8ZTdQ9HtuemkRVIxIDfkXayoYIsXNNahniss=; b=WQcoR07CnPi+jS
	sPIpu7yBkzWtpSC/LjIseViExiU1Iju9DDuvuKjwW5gkTfYGA2hi3Nmm9O8Tci6X583aOcof+2Yq7
	xsHJcSBOi7/gaIPAaXvUBhvwnqjZoXBkoN3CeIILEUelB0qFYxO8wc78/Yv02bWlJQ+Rb/fGm2ZGt
	BdyiaMJLdBIJaAnsOzos3lskVrQ3SUm8ibOL2tkKxEW7v1kUbRL0KRnCY2SBKqP/cYNBpSckxs5Ux
	Ic0GGyZ88A2vK2+8gu1P4o2iwe7qBdvOL4b68qkkEhph0H8QLZ/D1PfJQg/talLWvr95QsA75kSh3
	EuA3Lp0kCG7/8DQlSq7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIMZk-00000003B2h-1pXd;
	Fri, 23 May 2025 07:12:16 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIMZh-00000003B2E-0xUK
	for linux-rockchip@lists.infradead.org;
	Fri, 23 May 2025 07:12:14 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3a374754e03so393828f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 23 May 2025 00:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747984331; x=1748589131; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=y9wcJktofqVWI3CDj0WY+uIWHsaWsvQJKV0vHBPO+mo=;
        b=xo5wpw3VPrSjU2Hrhklvmr6D3qV+SMalYn3PY8Y7/tzeXjQR7fgacFSuar0FEI5RvA
         mba8gdq6j1WAALKzC0TM5XyE9Z638GYDeBB9JkMf8d4sFCvV7xHMDlUXOc93tjFGmHE9
         3g1eAEc7kt1Kis4hN+8CLChKREDRFprwzjw1MVGzqS6g6SJ6+leX7Ct+GDbkfceJVviR
         iGpTw6OUt2A7zpeGtohWzKA6LIt3GmQgUbM6FnOw7vMFC4x+6b/sjh/upKU7Zd6+GJOe
         aP190KBDkQC5w2u46P2fyFZBzPqz/S1RNfMi1kY/uUxOOLm+UtzmxCPqMT1XgEXl367D
         8maA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747984331; x=1748589131;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y9wcJktofqVWI3CDj0WY+uIWHsaWsvQJKV0vHBPO+mo=;
        b=Bf6BvLZHHSEr0/nRchgV2BGsWlwXdzDdIYqVL2ehfTU1PmjBpjI6tSkGk3Oogm5hSr
         71zPED6rrvfRf7IuH4kKIKkdrhom9YSqLT1JLcyq7xpgx/E17TkNBc7LxcCUM172v8QB
         AKa0VhaGc0j5lKMasl+wPirhzU3glxD8npaYcB+2yMy8ForJwZoa1nDQtLi04T8Hx002
         meoYu0CpNkYpyAx0LHYHkooFqdqoWrxtmHPFfNWiPpf8LVAgr4D4PBQWl7FXmmXVv7Bf
         UUq20Z5F55mCrM0j7mXUXNEh5U1oSAirQMC+SIcupozIyry8gSOWBrelt+g1me9/CUkp
         syBg==
X-Forwarded-Encrypted: i=1; AJvYcCXnvOrKPLqGRlODa5KNDgPNF+zeVyXDW4vJgVG2g75U3IhAtGgnE9rTr5acFg01GCYtibMQlYqif9AJipmo5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtvfCkn/cY7TacRN9X9Jm9i/VJDuigDuwVdfuEkpt9+O7J9FkU
	SU1f9MZh7Sq4O9AefMc719wUCGLVGo12oBZMUGIISkd+vovwFbdeWUsKNs4W7mjo24Y=
X-Gm-Gg: ASbGncu18jlmXIFUr4VJ51GG138O2l/5vhmpn2GPauxEuADH353NNr24WIMWZREZlqd
	HSQ1v0BSBWATbcAzQC4um/c6v9cbBAS278gALyCQliZNHGULA45dQR7dcb3Zoa2UWKX/wZdV59T
	5oDd8hxoxV8D0uJRHEAXHFYgDkgVvmOo9vZcgzOQ9IFp0nuS14fFqaWDhyXcDgupGUfkTdA4jb8
	XHhJwJ5E++Q3vmlM1lxvjh2p6XMJD7gYmt6/PDNDkvzwM9QBQOpimOump5LOFImbJVxGNWrMMyp
	7w49p5fkijEvfIXRuPpBlXBxf1AQMMNGqgJv+JC6I7HzYAP5J45bkgpiX/Deqyfw9nStur0=
X-Google-Smtp-Source: AGHT+IGTK8IKeBlrlL85CwrhvZIeTflby+PuZV9bWjkME8T/VeEXqBiD4WNMgdtjoxnbqZZ/5+yCsQ==
X-Received: by 2002:a05:600c:1c8f:b0:441:d244:1463 with SMTP id 5b1f17b1804b1-44b87a0eeefmr4609045e9.0.1747984330803;
        Fri, 23 May 2025 00:12:10 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f3ce483bsm129076335e9.33.2025.05.23.00.12.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 May 2025 00:12:09 -0700 (PDT)
Message-ID: <65f95a57-64cb-4815-8ff2-9021ab7b7ae3@linaro.org>
Date: Fri, 23 May 2025 09:12:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add DTs for Firefly
 ROC-RK3588S-PC
To: Chukun Pan <amadeus@jmu.edu.cn>, i@chainsx.cn
Cc: devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250519075432.2239713-3-i@chainsx.cn>
 <20250523070026.50263-1-amadeus@jmu.edu.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250523070026.50263-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_001213_282455_E59522EF 
X-CRM114-Status: UNSURE (   7.67  )
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

On 23/05/2025 09:00, Chukun Pan wrote:
> 
>> +&gmac1 {
>> +	clock_in_out = "output";
>> +	phy-handle = <&rgmii_phy1>;
>> +	phy-mode = "rgmii-id";
>> +	pinctrl-0 = ...
>> +	pinctrl-names = "default";
> 
> pinctrl-names should be placed before pinctrl-0

That's unusual - not inline with common coding style and with most of
SoCs. Is this some kind of known rule valid in Rockchip?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
