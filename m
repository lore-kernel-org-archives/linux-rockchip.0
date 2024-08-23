Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E43FBC5472D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 08:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DH/CoiT6Tjp9Jh1tX144dG315G8wZLdoecCnnlrG79M=; b=UX8s4hSM+X2Hfh
	qdQTMDnm1DVZonPofAYOfFVroj/E+tWYE1yvUyjj1cW705kvydbLn/7Dijc9G/gW6MAu97Q7d732U
	6aHy2FiWIaH0PGmcJv768giD7sjKSJeXE3386bKK/aarVcfcJJWp74VCpdyGo7lOw0WzkW5D+Xeum
	jmEpVdMEfvMIdYX7lbZNl62rRuMskGjAnkAuEX4LBN2lYaszD6Zmudy/SAGEDPWbEjNXIRVsqWvWr
	A/4bMCLR3HtZZZ4KZSM6h8MTxbqVhRdEOqPXLEl5Vuj5ros1i+At/aSTLEWeguhl86lxW8UVy5usu
	5TuRIKtjB1RjTmhK/t8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPrE-0000000FvVN-3aAc;
	Fri, 23 Aug 2024 08:41:20 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPba-0000000FrKL-2o0c
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 08:25:12 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-53349ee42a9so2094544e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 01:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724401509; x=1725006309; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RNVXRGnKpS8kF6YfpZzWwrX8JQATANezy1mHf5Ikppo=;
        b=Qs01jDGzRQEcMm5Lro8Exito0Doao2yKgVRQDxStaW9JU69nmHDetaeCAquC+FcWJR
         xC9HYBBuNGry3aeQIdS8xeb6Rm05lfQjmLS+tD7HrAck7X1VIphO47/7hbzofSyC73/C
         po1+Cqsvddkp8h3bC+RX9Mr9E3sykcD1kFIYMrJ8h9/fI7MRXFkDoOojvDdjGRQ1xig9
         iuVMhhJmoxmgMz+mOXSdNZdNLKZ8qEeeTTkgY6BtYL6keJRxyzEiOo7AKC7ena7/eYV8
         dv4ZKIu1AVIF+luGn/omOWdkyXMArLbWgFx1f4Xen5dkrSLxzGyzpkSSKsEg1j8jdORE
         EU9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724401509; x=1725006309;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RNVXRGnKpS8kF6YfpZzWwrX8JQATANezy1mHf5Ikppo=;
        b=TWowlh/tq/NzpZyeTSzAFeEYeW5QHrALwtuDTkPUOEu7fLqg2mZ2QPF0HOtC0T0vUH
         KyXaVKO1jIXdCyTmYxWUdPZS+ngjZO5QTdUPZ2X6I/FmIPepWI8enpDy2hbTgKOVknxq
         4rLPlESv6C26v0xm1oRsh7LZItP7e/kS/0DBmWOAmvRVSHsPO+aDjw8dLXgdY+p3Jpjd
         Ya4UCJk9ujzzjKrd7GH6kUPdnfb7Tr99OwxR4ybaEXMXyw1GVRXadRyVUHvpGj7Lvb+A
         1RJJID/9PQyh3Kr/IakwbsT3xJ4+q3esq6l3LzppmQDNDJYUix1ZwAWdz7YBbdMg2/ws
         MKCA==
X-Forwarded-Encrypted: i=1; AJvYcCW9WXL/EasHP/Gt8LEzKYFnGXnZOPUGoEE4VcfyIcUBa0pQVUxq4Z7ZohmFKdPlGEO+TClvIY5E8XaZMudByQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEJe0oLvZNP+eehCOqNqBzHV3gbarqd8+c82NMpxcZWQ8y0Ri9
	4wHah4Ran/0iSH4swDluAKUE7pfIj6w3QsmX+435ppSDTJgUFKiC1ZbUrxF5m6Y=
X-Google-Smtp-Source: AGHT+IH6bCoEMQoChtaCyFYQylFJNLu2M2f6XFz5Fuwdk8LQw+EOz+A9GFqvb1SnY/XWcQktSzz4Qg==
X-Received: by 2002:a05:6512:10c9:b0:533:88d:48ca with SMTP id 2adb3069b0e04-534387c47f5mr883420e87.55.1724401508256;
        Fri, 23 Aug 2024 01:25:08 -0700 (PDT)
Received: from [192.168.200.25] (83.25.211.12.ipv4.supernova.orange.pl. [83.25.211.12])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4365b4sm224742166b.113.2024.08.23.01.25.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:25:07 -0700 (PDT)
Message-ID: <21067aa4-47ae-4208-82ac-b0232d20d5ca@linaro.org>
Date: Fri, 23 Aug 2024 10:25:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: rockchip: enable USB-C on NanoPC-T6
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-7-892aebcec0c6@linaro.org>
 <13942328-84bf-4b9f-a88f-287b233c1654@kwiboo.se>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <13942328-84bf-4b9f-a88f-287b233c1654@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_012510_746964_D7843CE0 
X-CRM114-Status: UNSURE (   9.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 22.08.2024 23:07, Jonas Karlman wrote:
>> @@ -135,6 +135,8 @@ vbus5v0_typec: vbus5v0-typec-regulator {
>>   		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&typec5v_pwren>;
>> +		regulator-always-on;
>> +		regulator-boot-on;

> This should probably not be always-on/boot-on, the connector is
> described as power-role = "dual" and try-power-role = "sink", so should
> probably be possible to disable the vbus supply.

At same time it is not used for powering the board so probably need to 
change 'power-role' to something else.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
