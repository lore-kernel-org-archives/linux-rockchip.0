Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E139C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 15:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63gRN3f5BVupPK1UXKUv2jqbaSyik+ZR+D0Uty4S0SE=; b=ECHgkl094JCLUL
	lElEz6OXYyxL2HWQxI4D2CM8h2v0PSi3ABtdga7jiLnIWQPlAfxfahf3J74TNwVi0Vv54XylQRaVl
	socQSC1xsTnNZ7RweL67Dc+BPg/hWahBVtQ9eMZhPuvtNkUEwYmv1heKKKJuU6SxKyVmBfWn0TbJs
	naTR/8TV40Ex/jvED7oB2EfHoG2qjXdFouhTzKilEC6ipHJXpMyMtmA/h8ByilLFprbZJxE4z8MAk
	MJWgnMqM+0r5HukXkCbI75TqogGPi8cFL+7pTi2SoXNQtaa3z5ylzrEMgh6Csu2jNKhCJLRN/XfzA
	vOpng0Q9F9siQbS2+dqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phuCy-004Hkh-0o;
	Thu, 30 Mar 2023 15:29:00 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phuCw-004HhJ-0a
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 15:28:59 +0000
Received: by mail-wm1-x332.google.com with SMTP id bg13-20020a05600c3c8d00b003ef90adc168so4284657wmb.5
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 08:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680190132;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dGsCmW7EUS3nfy+7BnW+WgqTabyFkZU2nitm+ST7mKI=;
        b=gfO4wBAMcJ8t0kHqH3xynuzyyJtZvI+YL4+NG4UxqIGIKLSk/xeTl9+QRt0iGEMX78
         lQuRe1xmTJx/kG4vG/MRGVaWIzpRw4kxDOewTMPZ3zQZOrnYPQUv1elti0HcD6zry7iE
         QpFJlXVAw/c0/QOdVRskbll0h55wlArViYWeAxqpnFZaq14KttfJuCEzqqL4Ic+KdNeZ
         vGMKORaRMZUmXug8ZScqebP7bntofChz5sdm1Y8o+Q+ojC8BcpbzprXgt3Zr45HhqhW6
         Uo51KawFOXgSypTUNxCjaszoGWxh05pyb1jB5kL7NQM7g+ZHZv3Ri7ISt/sK7ZvPadGS
         xFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680190132;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dGsCmW7EUS3nfy+7BnW+WgqTabyFkZU2nitm+ST7mKI=;
        b=n9/tUhMpdFJVgbhsQwPHmWDeygNb+oBu7fwLWH6THalQThLylVkgQcs8SBw5XXpsqc
         MgnD12s+BWTNcU4mnXH2MRHzalkpr3TYNJQp7D/8701PIyT/7WyfU6Bjwzc8Xd00o4M6
         Rz/hod5tsEgDEclPFTYkLOW6mswhU4uyYw9GaSsNzb0vjSTwaGNFdNIE8HnAiu9CFtkA
         LZ8Ibp1uifNV7nGBAWIsOSn3x3MDGZtEwOsQTLqJtDsQZqc0HTk4GIAzD0OgOgZwYH7P
         3PQDSU2jfgI83jRKHhCUJnOtPyUdH5CgkYa0mzNBGn27Wl2I8Q+DLBmqITgWRpLrvqLS
         pl0A==
X-Gm-Message-State: AO0yUKVdwffHG0xryzeAxsantiugOmobCdm2aCEBhjIfg60Pyfnv4hnK
	N2xVDnddkKFEXKcx50+7MFI+Dw==
X-Google-Smtp-Source: AK7set9JBCqQOXk+u/rw68P8YwukfO3REwzC5Umey4FtmvcIbY6E6CbTxzim81BNiRT8Js8+wSeCng==
X-Received: by 2002:a7b:cc98:0:b0:3ed:2702:feea with SMTP id p24-20020a7bcc98000000b003ed2702feeamr16821936wma.41.1680190132118;
        Thu, 30 Mar 2023 08:28:52 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:9ee7:40a0:eee0:62cc? ([2a05:6e02:1041:c10:9ee7:40a0:eee0:62cc])
        by smtp.googlemail.com with ESMTPSA id s15-20020a05600c45cf00b003eb2e33f327sm13485297wmo.2.2023.03.30.08.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 08:28:51 -0700 (PDT)
Message-ID: <95fce357-87f5-93b2-c57f-f561a79dfc34@linaro.org>
Date: Thu, 30 Mar 2023 17:28:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RESEND] [PATCHv3 1/7] thermal: rockchip: Simplify getting match
 data
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
 <20230308112253.15659-2-sebastian.reichel@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230308112253.15659-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_082858_252001_F1B6153F 
X-CRM114-Status: UNSURE (   7.99  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDgvMDMvMjAyMyAxMjoyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gSXQncyBwb3Nz
aWJsZSB0byBkaXJlY3RseSBnZXQgdGhlIG1hdGNoIGRhdGEgaW4gYSBnZW5lcmljCj4gd2F5IG5v
d2FkYXlzLgo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
Pgo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBj
b2xsYWJvcmEuY29tPgo+IC0tLQoKQXBwbGllZCwgdGhhbmtzCgoKLS0gCjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJv
PiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwK
PGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
