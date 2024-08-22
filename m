Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72B0BC531DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 07:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+o4Jw1QjpxoY5MAE58gcg7pf0iM4m8DoAKBUpenaT4=; b=YO/NIW4grXvjF3
	afhxi1O9OaXr2XQpyC7lhA7G3rwe6eQs4KGM/BL+ZPznpzKOXXLgN/f0i/yw1hxty43VE7I359T0o
	HEdwjUfcmecL84gY9+5UzLITnLSiPCk1B6kmBgL8fWIwvbbTUmpkN0Xxu2KtA4VKPRk1IZ0cwNYBK
	2wg9asGWGDoySOWinYDdW1U5IacS1XVNw4WH8HmVW9pRvW+zUQtDFnHL0c1LV5wzETYwrYnEcWUzH
	imh10CYBjToQlBu766QCIeRCwEwq7oJ2Y35coSy1JqjpKPwLTED5t03I/GKxle9xMcb3nctvCYdCx
	sm6Yke2Le2OnR2mczRmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh2f7-0000000BwjJ-27YP;
	Thu, 22 Aug 2024 07:55:17 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh2f3-0000000Bwhk-1tFB
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 07:55:15 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5becfd14353so688817a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Aug 2024 00:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724313311; x=1724918111; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WEMxkmps5fBhkkA4iUgysD4v8ZU5plsG8cGD1Rw+ymM=;
        b=A+/LPQML9G7QPwwVKjvlbRtX9/a3dpkYoRjf5ZTUzEF07Y6LnXe7IW4B07ibGGgnxj
         4pBNt2b1uxVsltMjaQMlCI9kFo5DjNCiPSHmwXtrqxjcfLXVxlABBucpQ0HaBnFXKfdd
         N8FjcZpwfC0hp0ncOHIY8yHMc8/yoELJLQfZGxoM6QCGlZ+kmt6S30C8ASPsb/+IJgz3
         sUOUEbtX7Kcy9mMKwse85IykbKjnNauvP3V5dO0R3DAU6pi68NpKj6tFWeKu2oEYMY1L
         SKv3X+Ul1t2F7QxEjoP4maqmMcxY7D/qLz+egIgzHBxraRkGDHDBjFCFj1FUljkNUyrb
         IYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724313311; x=1724918111;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WEMxkmps5fBhkkA4iUgysD4v8ZU5plsG8cGD1Rw+ymM=;
        b=Ppu6M3wcZp7DbL1CncsIehp2hyWCEDXdiieiMqetW+MfnUc9b3BhV88KkN/FV0Rgmg
         TZJcaHr65MXOwDQ+2Hef2/+c+YIhl8miQkNBVfdMmIekVQFIPByAU+nhZapU0ry/tTZV
         3EMkhuuNDlJElPLLtpYf5vkHxM+ylpq/gMPiYsC+3BnRB3tL9/hArS0pkEO0/WDL1Vm4
         d/3+7W4jT3YQIn62mTgmTS/hNobdmJGWrglfnZEnAw8jmrqlnHfwrGx3dHtc1rCFjKbF
         EWd7GWxtHs+9K6IlYZ9bvKfmmj3s6Kzz0fyMqWxuH3yDYZoqfROmPcXDk/b6dit+aO/e
         71sg==
X-Gm-Message-State: AOJu0YyyiCsNkehtYr+W0+bGKzVcj5Ps3wsMK6U8520b6El/rIsGy76W
	ruzQxQ1XCTfSn6EzxEqAt05LTkNR/XSXs+p7xH6oarQBtBY/ADb2D5D7ilxf5Tc=
X-Google-Smtp-Source: AGHT+IH2Ql1jTj7O3GI+6Z3dMnyxGKEgZvEtWtmE5cMBZeecWfk/Hl74tjT/kz3MaQurQFNlT0Q1ew==
X-Received: by 2002:a05:6402:34c4:b0:5a7:464a:abd with SMTP id 4fb4d7f45d1cf-5c0792947b1mr557111a12.30.1724313310527;
        Thu, 22 Aug 2024 00:55:10 -0700 (PDT)
Received: from [192.168.200.25] (79.186.29.241.ipv4.supernova.orange.pl. [79.186.29.241])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3c9dcesm576492a12.30.2024.08.22.00.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2024 00:55:09 -0700 (PDT)
Message-ID: <24d01601-99e8-4d61-8024-530244bd78f5@linaro.org>
Date: Thu, 22 Aug 2024 09:55:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
To: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
 <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Content-Language: pl-PL, en-GB
Organization: Linaro
In-Reply-To: <fbdda0b5-a924-48f8-a4d5-6578c2b5d378@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_005513_574390_0C91240D 
X-CRM114-Status: UNSURE (   6.40  )
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

On 21.08.2024 15:13, Krzysztof Kozlowski wrote:
>> +#include "rk3588-nanopc-t6.dts"
> Do not include DTS files. Please rename board to DTSI (which is for
> includes) and then include it in respective boards. Remember to generate
> patches with proper -M/-B/-C so the rename will be properly recognize.

Thanks, done that locally for v4 series (will wait with sending to 
gather feedback on v3 one first).

This way NanoPC-T6 has 4g_lte_pwren and NanoPC-T6 LTS has 
usb_host20_pwren defined separately in their own dts files.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
