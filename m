Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB69C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 18:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dv8cOEmornGS413FlpJHmZMPFpZO4K3ZbiGGMAHWBjY=; b=QU9FO7HPjjHCal
	3Lf97oexENmQ4IFljzIw+EgfNKniI7SM9bA4v5IM+r6FO5VT2xwBV6+OpzdNEJr1jjXMKhjwuqPIW
	feIsDHMKlhaxMQxjXln/A0qnrMkaKOjuTyrF9RwSPzI9ZY+S7tbtEMvadavqagjYCWNn3uDNvaY1x
	50uaXB1ZtCSHw8X50dPJD44LLUz/4rFEOtT/NhSp/q0GBl5p7rkJOmijibw7vQ11Ajem/GxQnER7J
	cV4s2kyPTU19atux0hhvbRc3UI1OtXVicgOHJHGDkJYxF24QPJlBSv1F5+lsuCVDkPtQQWDV7I29+
	DGTluYYBlQvqFFrTeUzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMAp8-000000045Hs-19xp;
	Tue, 25 Jun 2024 18:23:22 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMAp0-000000045Cn-1c7B;
	Tue, 25 Jun 2024 18:23:15 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a724b9b34b0so334577166b.1;
        Tue, 25 Jun 2024 11:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719339792; x=1719944592; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YI+bpBZALTybzUwLfkVghT7njEcIxrhFjEkXZ3RLHB8=;
        b=feBCH2LjcHj1HyUmYyHhzb/kKSdqSeMy0VUNsxQw0fR6v2O9ozGmzZkejnVHkUlXCA
         LHpDz+PUQqTL55yd6GakLO4rEHRDSwnwcZjHptPG0N5wTzSa0genn2aAmWEFgL8Wbp6Y
         PQZtmsq22dWLseCidLotUi1MX+ayFKE2rfk4oti/kqGIupGz0VhbyMKqG5q9zJhJbtwn
         uzmrMvgnUxWRuMl/vx+pV79N/ew8h2iZNblGRVpKoB5Oy+xXHUVTOqH2So0xpy8eSAxP
         hRikvjxb739VA1CG5aybauN5mVCQAWnmfI4UjUhiVpYQWaGjivgJQoOcGq7P2uGJQUKy
         60Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719339792; x=1719944592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YI+bpBZALTybzUwLfkVghT7njEcIxrhFjEkXZ3RLHB8=;
        b=ZFGBr9nxTg2M2pU9V1kbQv4YW7gNQ37ex2Nyv9V5tn2IZJ28U+1mFW/zQkjcjgfSaU
         EthIPkjXCDX9yIFAXRs3LyFsWDxEM4a2TYkB8xQeJjwqJdfPi5WhvRxiwl6v/vyszLfm
         yx8+9Ax9lb9eQ978m6ODManpCQm/KtDK+VDPFeJpajWX6ObttT8gRcl+/t3xIEooC8o3
         namaGMLA/xFKuOxjolM0m+Jn9U3Xvvn4vFdK9+7TuAArUgWlyygOyLzjMf/EMXVsFXIR
         K4eAY3OsPj8uZGPCw9V+jngMajGGTk5ZWYx+X6qhqQNrz6hGGPx9i6oC/M80LmUI4GCq
         7rEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUBtL9w2VvRxoC+v5kykbFIQI15zfTpcBkKcQRe3YDs69U8+Ie1Zs+fprNdYW143FdREyJ6Nn+fCG2Dms8RNV8/iYOP3TIhep0RCoXg7nTyjjkg0/nVJ3qWYsiX6WUJqXHj6ooA4VSaeGfbw1yZR91ZhKE7d8AvuQ=
X-Gm-Message-State: AOJu0Yw9/UKwnPRB4UbQ6nwf7LamYixo2p6Kxlps2wwijQetHgR58rCT
	jIVYWzsbx4DJX8r6rXKb1TLz8IE+uuKID3T2PqyGUVkcNWx2Pt+7
X-Google-Smtp-Source: AGHT+IEVE9h75pyP6xYrOYIztjemaOBJkjZ5/GNfxxLHHYCikvn/gKAFsaiCv9uiZ89ZZ/jp3mE6Bw==
X-Received: by 2002:a17:906:f1c5:b0:a6f:73df:15d1 with SMTP id a640c23a62f3a-a7245b6deccmr512949766b.7.1719339791398;
        Tue, 25 Jun 2024 11:23:11 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a72557eea48sm227432366b.52.2024.06.25.11.23.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 11:23:10 -0700 (PDT)
Message-ID: <89f2564f-788e-495d-97ce-f1fa8a921d50@gmail.com>
Date: Tue, 25 Jun 2024 20:23:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] dt-bindings: net: wireless: brcm4329-fmac: add
 pci14e4,449d
To: Jacobe Zang <jacobe.zang@wesion.com>, arend.vanspriel@broadcom.com
Cc: kvalo@kernel.org, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, linux-wireless@vger.kernel.org,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, megi@xff.cz,
 robh@kernel.org, efectn@protonmail.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nick@khadas.com, jagan@edgeble.ai,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
 <20240624081906.1399447-6-jacobe.zang@wesion.com>
Content-Language: en-US
From: Arend Van Spriel <aspriel@gmail.com>
In-Reply-To: <20240624081906.1399447-6-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_112314_478834_89CE7A14 
X-CRM114-Status: GOOD (  12.17  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/24/2024 10:19 AM, Jacobe Zang wrote:
> AP6275P Wi-Fi module connected via the PCIe interface.

Repeating my remark from v1 series although I gained some knowledge what 
chip it should be now ;-)

> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   .../devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml      | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> index b9e39a62c3b32..fd22ade92210c 100644
> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
> @@ -53,6 +53,7 @@ properties:
>             - pci14e4,4488  # BCM4377
>             - pci14e4,4425  # BCM4378
>             - pci14e4,4433  # BCM4387
> +          - pci14e4,449d  # BCM4329

This should BCM43752 iso BCM4329.

>   
>     reg:
>       description: SDIO function number for the device (for most case

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
