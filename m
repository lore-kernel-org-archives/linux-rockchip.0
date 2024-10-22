Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 876B1CDD0C6
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 18:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EC1XB6Ob7P9PeRyBqeXOg63kks77fZXjnkozFbVj/Uo=; b=MZduiOpcUuaQe/QYrUcq57aKFC
	WrbJkrs2dBV8MXbELkylChlIaO78ZHaI+4HAjJvndt2Cyb9zQ0TI6ZYz0YmyCFGjWOoQFv+rPHvzr
	r9hC9Ln6CZjuNYB33C4losOcbdn4qEffWSswpGNKALZQJThvATEyvMo15iUH3vs0v9PU3Sd373wz1
	hynWh+QUy1Cl2BMvX6xoblyHHZUbLBJJh7X1lD0WCm0lwIMIAKw6+jXihjr+Zdo+2OOBjtWsFLxz1
	VRVpxYovccsHj1+/2T7jPwYNd5hB7OM7PvWBBBIWkMMVYhq/BLSp7m4QEdeF+D1bJGNI1ONf+sl56
	zLT6XNVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Jw4-0000000BqRl-3aNR;
	Tue, 22 Oct 2024 18:48:52 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3JuT-0000000BqHw-1uxY
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 18:47:14 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5c9850ae22eso7497080a12.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2024 11:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729622831; x=1730227631; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vbp68Eq5imbbcAf7fif8perRCzrMuuyKniLW5RY6SUU=;
        b=LodBEHZ5qR36HXXwpV7ka+GN52196dQZhDRXMMFhm9NBQrjOohf0GokPu4RM+QOgN7
         5lEtfc847vW2YCSHgJNi1gQ8kdUvfqOS7BFvLmqnVgJ3HWD5/HvkbFBj0MfX2gw+pVaU
         G5Naj1+Nbk9aXJTjLByhhS2PjdSdJAo9udukkwBv4QcL7Z9N0caiWSSYOo1EpmboUMEz
         y6ntr367E3iotlP5soldBpAWUFWwaM7YeeiAmoR7NofRrp0MLsCbvoMF5sg/kgggVEWM
         7+0Vh7goydkNd7LbpWuaPqgh15VS0VeGex9uFkXtmYvOz1qhaP7bgS37Yd7V92emufIx
         o3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729622831; x=1730227631;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vbp68Eq5imbbcAf7fif8perRCzrMuuyKniLW5RY6SUU=;
        b=DCQfdXhWTU32rlNPy8U5KMVffTWg01NU9EWw09xy/JKeJ3NxteYeQXUYO8EiFwpLUY
         qYzAzmFp7cGIrioWYmiptXCrrKGyW3pshiOKkQuYLx3Ry6mHzAk+015i8uM30+9zy6+6
         RepWSf3BAXwoE5Z0swyDc8sdOleOOnXrlISPfM0XlpN/qpYsf9Hc/nYec2rRjEx1v303
         ngqEt1WSNWJ3abTK91ZeYKg3VQgHyrI2K3SrYK+AN517ePfTyQJoN9iSTvN4iFExZZC6
         rleTpyuMfa6zhV3YGvXWU0prDk74HS1JvF+6ckBMfza6b33COoKaXApAGPLv8HJZ3nzy
         YCUA==
X-Gm-Message-State: AOJu0Yx5Synctro0BQoPCmQ8fN55aC4O9ND/1WXB4a6NmhvXS4YRygPx
	dMd1smwqQ2vssSW4PMgsv79uoHniZPjNsqysLqtEDAMnUUqAjx7mZGkYUmAFJsVgPV93K0A9H+R
	TJuY=
X-Google-Smtp-Source: AGHT+IHkYfK/m0OkXzVpdbLlo0zWIzOmaNzayrnEd9AID+hMaAJRYWr5LoQYWWu9YOTnHDZYrG+m6g==
X-Received: by 2002:a17:907:3da3:b0:a9a:825:4c46 with SMTP id a640c23a62f3a-a9abf89af75mr2205066b.28.1729622830720;
        Tue, 22 Oct 2024 11:47:10 -0700 (PDT)
Received: from [192.168.210.26] (83.11.13.124.ipv4.supernova.orange.pl. [83.11.13.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a91559f15sm373319466b.133.2024.10.22.11.47.09
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2024 11:47:10 -0700 (PDT)
Message-ID: <9539aec2-09d2-4da8-9fbb-9914881a493d@linaro.org>
Date: Tue, 22 Oct 2024 20:47:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Thinking about firmware and hardware description for latest
 Rockchip platforms
To: linux-rockchip@lists.infradead.org
References: <20241022165413.2156-1-shimrrashai@gmail.com>
 <04e2e389-ba45-4d77-a152-6705b0d92ba1@kwiboo.se>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <04e2e389-ba45-4d77-a152-6705b0d92ba1@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_114713_540334_39EF7393 
X-CRM114-Status: UNSURE (   5.05  )
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

W dniu 22.10.2024 o 19:43, Jonas Karlman pisze:


> and be sure to leave around 16 MiB of space on SD-card/eMMC before
> first partition to not overwrite any existing bootloader.
Let pretend that we are nice people and use on-board SPI flash for 
firmware parts.

Please (with cherry on top).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
