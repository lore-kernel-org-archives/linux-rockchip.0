Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95F90CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 21:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yCo+eKfRBx/evuxKjAaWbTJQ8+nbxLnsz0aSd2ImfqQ=; b=mP5hYd6l76YBVI+yj2mcxRgRHh
	xzCXzerC1JTQYgat+syud3X2kaUshSMXkLAV5Ap0CTphb8ms9bvhEGHiu4ZHCA9gpibvfCaL15z8r
	0SVt60+vzwLbBAhLzp1f5fy8fDiLHEXfjHArr5VDNhbR5gGMEAwlJNjmaZPEFUW9c8IMiiUx4jjeG
	NInt7Q/pa+OkZyq4ZwU98cEvN4tfXyp1DuVU8fcSbb2n9cjOjuzVp+sBKeCxmhBDiHljlbv9M0TL9
	G9e4MTTm/3u63fd2f+5eij4pLyyW7jhBFQQZljliuZyhlSz3RYiHLTMcsVo0HGaIC5GNt4BEPwSoC
	b7zbTUOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RGX-00000008DiV-1o6h;
	Sun, 21 Sep 2025 21:06:37 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RGR-00000008Dcf-3Bi9
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Sep 2025 21:06:35 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-b54dd647edcso3707860a12.1
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Sep 2025 14:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758488791; x=1759093591; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1dUSsg5D1sQ/n6aucsx7OOyNbAsbZlL33M7HbOlr4DY=;
        b=R+yiv/X8HW1NzLYrIWG2boDtV1AkSe9J/gVsM60FfDEmBDxzI9GwWrtgTKNqkT7MqP
         tVTCGmfbE2JEFSpJymH7OsBG2nuUUUaSWjqBjhUYYhiUkCLnfLceC9Q445rJkoL4UDT0
         9FqjrrGZTBYRy0gLnK0fKgrrszVzMbOOl3xfuVVMVddcdfVnoXCFkO1w0N2DXcoLuQf2
         kkJHTXdsgkzI/BIOLm04Mwf33Izd2SRCF3DoF7ATpkAbb/fTIOdIETeWadlh2y7lk6XD
         0qIGGzXy5SRuGlAbLHEmFq4hLSqe3lVf8zJmfExGU0VqzzXc8gSiOOiwIeKmOcm//JF0
         iTxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758488791; x=1759093591;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1dUSsg5D1sQ/n6aucsx7OOyNbAsbZlL33M7HbOlr4DY=;
        b=f10XXmx5nvEu+8LrAscDN850OjZYvTfHEl65ZvyVGVHn0STvM9hiJAzcNOpxm9NC58
         pJsrhh2cWkfkjifEg7N8eUDiFNE1xKUx7ZXTSK3ZhD1HxNM/WgQ2hLGKCmBE+uCAr9NF
         WBOpjzP0u7hxhVKwBcM+ypSYqDreRzZI1mCQ54Pf0fle5v322GPdHde8Gug7SR4rileX
         na/ccl0u3ImP+wzcV03m9gkLh75iCrNtAszgqUN2dLuMvYKd0JL+lmb/f3MfRJhFk5yN
         +n7kpGeodbE0/kxtSbZZ3fd0t3nDcGbxvds+/Z4tHNS1PNpogrt4g3wWnpgpJ7KJd/xx
         ItSw==
X-Forwarded-Encrypted: i=1; AJvYcCUtPrW4htKpEpE2+SEETfPeCGh6KAWGSlDJIOWBXYBr8XHXEF58niT7rmyYDtR+UUz6chXdCS3oFWdUdUPkAg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx19PcyQE6noBsQFeTIglgOrixj3nQEMuu7Ns2O/u2Iy2zGX9+d
	wU3rZsXeVsaRvueU5MNYNbzS8CO8+byBq0z/OCnUkEkvJn/o5IkaEUAI
X-Gm-Gg: ASbGncsh7I80cnxAY1DaWtvFdPIAoiONjoUHOGxOnx81eaEA1C5yutzhL99CZSyRfnk
	CPfrthw6OWuCMlaMh8gY9InvgnPi4tGPbM6VYA+ytMHK7IAbDR6/8h+LCMIPUszL2meAafhXDKl
	V376rZmOJFrWcVKlNuG/X9VhfNP92WXZfFUDMmGjZldYMYMDrcQrk6WLEFj4BXJ5PIQuunBB0O3
	xV2rZ3XLMpRE2WmXRMAR2iy8Ra0GHZQFnY/AesVr0jpGjpX5weomus7uXHRSRNdqqSVTHZlwPbY
	+w3MGZ0xY94ia7+VVXIMWH7ubAUQnkeaEw/4PW1AFSYxnmsKYlDBMBGnjZzeN7lxQ6+PWy2HyLA
	4A9F1DOmxWkZEPMtxTz4Hjp4qn/OXLqpp+6XOUqvWHChLo1Lw1M0TGE6RuiaVjjTWJvUNTOX+Od
	1x
X-Google-Smtp-Source: AGHT+IHZQgmOYDYkwaNRw5Ez0iNg/VNiStfoYUByPz6lPez924U30hCMS1gj1w6xAjrT5JiXzjQYnQ==
X-Received: by 2002:a17:902:e810:b0:272:dee1:c133 with SMTP id d9443c01a7336-272dee1c1afmr68492865ad.22.1758488790660;
        Sun, 21 Sep 2025 14:06:30 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698019665esm112448845ad.62.2025.09.21.14.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 14:06:30 -0700 (PDT)
Message-ID: <84c979f8-2bd9-4d4e-8437-0b4d3d119586@gmail.com>
Date: Sun, 21 Sep 2025 14:06:29 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rk3399-pinephone-pro: Fix voltage
 threshold for volume down key
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-5-e6bcc6ca74ae@gmail.com>
 <addgrqhxanzrjdhb7y7y2qrqu4odpoclbwlswuua4yqinrzh2l@wcdtuquzuqvr>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <addgrqhxanzrjdhb7y7y2qrqu4odpoclbwlswuua4yqinrzh2l@wcdtuquzuqvr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_140631_828476_5A0645CB 
X-CRM114-Status: UNSURE (   5.94  )
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

SGVsbG8sCgogPiBTbyB0aGUgY29ycmVjdCBmaXggaGVyZSBpcyB0byBjaGFuZ2UgYm90aCBidXR0
b24gdGhyZXNob2xkcyB0bzoKID4KID7CoCDCoFZvbHVtZSBEb3duCiA+CiA+wqAgwqAgwqBwcmVz
cy10aHJlc2hvbGQtbWljcm92b2x0ID0gPDMwMDAwMD47CiA+CiA+wqAgwqBWb2x1bWUgVXAKID4K
ID7CoCDCoCDCoHByZXNzLXRocmVzaG9sZC1taWNyb3ZvbHQgPSA8MjAwMD47CgpUaGFua3MsIGFk
ZHJlc3NlZCBpbiB2MyEKClJ1ZHJha3NoYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
