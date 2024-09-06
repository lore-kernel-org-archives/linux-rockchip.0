Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B69FCE7B1C
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 14:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVw9Zmk5wyn6O/oGYyQmZMQQLZwJ5ggE9LlKEEh7Ps8=; b=qz3u72yy6TVvsb
	8NpOCPiHGiIDS1KxPYUCjbw8KD0a+Z31uhc3HLQJOyit55FCempcxP+QtBUUd/mDsflnPPY7OzK/w
	E7caYwr6biM4loDKb8ihgyLkjffF0Ylobogf88F69mNJuXTDDefOveW2IIiboJmbrMAOSfOepD7ls
	O29J+F8KIF+DKwHhawRUbamdc+bNRxO5pDYrmiTKK4n3DK3mRFw42uj2QmK7OdIZkHjwTrfmzkYEU
	FvOzpyQT66WNdwL90ZD+H2MNqzP2CnsSuQD+kK9CQE5/q6b/kDTmlJWSjZ9aRHBLsQ5cWGbM0T1J7
	E9rSTICviRVt1WZq4eZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sma7r-0000000CZkM-1x6W;
	Fri, 06 Sep 2024 14:39:51 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sma2F-0000000CYF0-1mWL;
	Fri, 06 Sep 2024 14:34:04 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-205909afad3so20688305ad.2;
        Fri, 06 Sep 2024 07:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725633242; x=1726238042; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=rQxHhYmeBoBu/rIwurRqs3OXFL2vLEg6vwA1TCTFzFY=;
        b=a7qCI56mpB2v/gJISa1ni3aRvGTrLGo7YZ7j9cdARbbO/YZmrrtrYaM+Tw+p1CkI02
         juEyTe4Q0LXa8CVyX3kUusJbIY+CgThhG8+dil1ZHEy+J3HL44LgsT+Fje5WGfV0rrg5
         nkUKqYJg5IiD5E2cfe8uOSS7qBW6erT3OFCo02Dlkm1oX0QEtjd2M7CicYC8Xj4USgOc
         cYuvi3b0X7SXSTwAXdwhqQtXZojQiCd5zDbkIUn80uyiHGJ8lI9cGamXbSZ/S/TKUP1A
         BYP4zDmmH/lukkF+1Dj9nO3S0K6Dxz9AgnjjIv6WqP8/wIptx09asVd/4NqG50r0xetX
         P6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725633242; x=1726238042;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rQxHhYmeBoBu/rIwurRqs3OXFL2vLEg6vwA1TCTFzFY=;
        b=O01HXgA/22v2ZB5ldTZT16P7kAO8FcL5i10aC7cUKz14owI9GLD3NJmbidipCK/Dtq
         1UEmzuRdzbKbW2Id4PDB930pRffKWfAIVOHc3y4ptzCVtN/cI7tm3lYGMxiz/1ZUmVCu
         QgDaFX76eC8LpqjiK0YECnK7qz5giAIOyjwY06Zb3dprIMKgjtbg81hHUeqGyrwDEtQl
         8dSNmhNRM/956BmWj6Nf+xdMR+i2pcrYGKE1HG/JhEshNooCX2a9fsn5yKQn+UioS8TP
         NrbVg1C3NSkofcb/x27DZd00lBKOtCP5yqriFGKhtR36D7Vfpoa06J9SALJeka5d2s4Z
         hngA==
X-Forwarded-Encrypted: i=1; AJvYcCW323kmjOvpKMWUEf/mXHRehtZXhU1YcCxysm+Poyqrg6lOjArafGPvU5M0+j/I+e33lIeGdilR/Sa7zAaFbgw=@lists.infradead.org, AJvYcCWgmwWK5Qx6XgaHXJxVjipzUvPjxFKBiFhTeXtxgUNUKvUptrEaC6fC08Mqaxf7mEY9+UL+DUgYCe5772W3IS+p@lists.infradead.org
X-Gm-Message-State: AOJu0YzITLzqGSuMs+zbrE9KACw4fQ8IFyjJPzFLgQcvOH+w10tt0+SS
	unn/nYVTUlIGa9BoEWbDPiARE9td20Qiewpite7Tn/fxuiieQf+u
X-Google-Smtp-Source: AGHT+IFZ7t97k9Fjh6irQkkAHRokvsBfUc/k7I1Ur60NalXFGzebn9eSQlD04+UbvR/fnBWwM3DpkQ==
X-Received: by 2002:a17:902:f606:b0:205:410c:f3b3 with SMTP id d9443c01a7336-205410cf6c0mr252742545ad.59.1725633242214;
        Fri, 06 Sep 2024 07:34:02 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea531bfsm43440315ad.219.2024.09.06.07.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 07:34:01 -0700 (PDT)
Message-ID: <ef31a8de-346e-4cf1-89bf-b5bfcb69cf11@roeck-us.net>
Date: Fri, 6 Sep 2024 07:33:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] hwmon: Add support for Photonicat PMU board
 temperature sensor
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 "Conor Dooley," <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-7-bigfoot@classfun.cn>
 <a33633be-800c-4ca0-9d1e-f190e23384d5@roeck-us.net>
 <e1f98265-ab75-45fe-a7a9-8e65cc13908e@classfun.cn>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <e1f98265-ab75-45fe-a7a9-8e65cc13908e@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_073403_489424_6B4BE5DA 
X-CRM114-Status: GOOD (  11.31  )
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

T24gOS82LzI0IDA2OjQ5LCBKdW5oYW8gWGllIHdyb3RlOgo+IE9uIDIwMjQvOS82IDE5OjQxLCBH
dWVudGVyIFJvZWNrIHdyb3RlOgo+PiBPbiA5LzYvMjQgMDI6MzYsIEp1bmhhbyBYaWUgd3JvdGU6
Cj4+PiBQaG90b25pY2F0IFBNVSBNQ1Ugd2lsbCBzZW5kIHN0YXR1cyByZXBvcnRzIHJlZ3VsYXJs
eSwKPj4+IGluY2x1ZGluZyBib2FyZCB0ZW1wZXJhdHVyZS4KPj4+Cj4+Cj4+IFRoaXMgaXMgbm90
IGFuIGFwcHJvcHJpYXRlIGRlc2NyaXB0aW9uLgo+IAo+IEkgd2lsbCBjaGFuZ2UgdG8gYSBiZXR0
ZXIgZGVzY3JpcHRpb24uCj4gCj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKdW5oYW8gWGllIDxiaWdm
b290QGNsYXNzZnVuLmNuPgo+Pj4gLS0tCj4+PiAgwqAgZHJpdmVycy9od21vbi9LY29uZmlnwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMTAgKysrCj4+PiAgwqAgZHJpdmVycy9od21vbi9NYWtl
ZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+Pj4gIMKgIGRyaXZlcnMvaHdtb24v
cGhvdG9uaWNhdC1od21vbi5jIHwgMTI5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysK
Pj4KPj4gRG9jdW1lbnRhdGlvbiBtaXNzaW5nLgo+IAo+IERvZXMgaXQgbmVlZCB0byBiZSBwbGFj
ZWQgaW4gRG9jdW1lbnRhdGlvbi9od21vbi9waG90b25pY2F0LWh3bW9uLnJzdD8KPiAKClllcy4K
ClRoYW5rcywKR3VlbnRlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
