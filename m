Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D81E8C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 20:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FBJo5wjh7NE3/q7Uh0pPL0BiJU4bh/qDOYTWFvHY0c=; b=d8hKoKjKcJpKyy
	PXtSzqUxHLaVIAzAFRNEuVCCmlqLsr9ta5sqLdRwZsV689Jx8tLpAjIyhIfaoVdYgMDEtgX5Flbol
	UK0trVIoSupZJsu1tJDBX6CAndqiYz5hzv+WvwuTuIqE0BCqD6HPzJh/GUM5xtd6V2eD8DztFrX8R
	+PvLU9jmd4KbtN1p+QfyCfwh8fQWmzDd+zHpNOzovthl1GOYl4QetpURWM8xjVd7SoOXJsnCh824b
	2J46ltJEh0TiydOLquqbhXHTj8kWbN8qcYornAVBE13YrHrwJJ4LCAiLruFIt7q0zfsmnIfF+glZN
	G+e3BVEIQ0ybr2gOAWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVri-00FyL8-17;
	Wed, 13 Dec 2023 20:29:58 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVre-00FyId-2e;
	Wed, 13 Dec 2023 20:29:56 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c3f68b69aso44737355e9.1;
        Wed, 13 Dec 2023 12:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702499388; x=1703104188; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zw2AbkoN/4FIKkUWexE+EWqV2AcpdmgqKqjwrsLePhs=;
        b=FM0pUOFl0BH8HRFurjxh/WfIeGZf9iAHW78xkfgW0HUpqKXqgddZJM8UgZAIVvBwgA
         a8uwyftRnIbxvL8l3QDmGRnhddCulwctLrE0/Kygk77QJsGOC4FxOPHRgBNsEMqp2v0Q
         oc7tnOZHobSlZbgUTssyl2gdel9D1qTNxMBLXMcPLKHbsQFhvbQc2+CEocjbXICdXkST
         /wJb4TdXxHPZVvo8HGIKcy00fd34aIelWk73+YL5CHpz+eyc58F3OIpEkPRoXeZX/TKq
         QwCkwNzvXZHoW1LAp6AYoRiq+bvHGzbmKm8/vrK50ovqMZ8QNCpZ5dPaTH65/bjmR/Q0
         g2ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702499388; x=1703104188;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zw2AbkoN/4FIKkUWexE+EWqV2AcpdmgqKqjwrsLePhs=;
        b=kQZJUVF4fRPe2plh/1JoAXM0H/NB/odWlvbsWVI93YHATDS6nF8ZSj7hFaSxJaZaJo
         3N88s53tlZw5Qo4D3+VRbmkaKDFGtuBUNatoAeDqvrU+ydih7vi9SgIUU8Mw7r0Iv9VW
         WO86OIxpS8Zbk/322kW02lzmT8qIudQszuIjTYruZ1bMUlgM+wPZNbZzKL18W3pEjD++
         FhqtGgtU3CHXyEDFvuMjzP8i8wXGm0nPKg2dpKcQ9WhqV+rJKgZVoRzXZ3qw2b8HdHxO
         WG7IOmcp+WHO8w5Ee5uIA/WUJwVvS0MW8i6F8WypOR0XFtO2DHCrEQWarXpXAJZVIrC7
         LERA==
X-Gm-Message-State: AOJu0YyM7p5sRFVJ7mRro4LC0OGco5Q86MSzjU48fc9o9cZGxNTheAhp
	Vq3D1q9uW3JSN1A0bjboeQ==
X-Google-Smtp-Source: AGHT+IG20yw7g9GqI9IbadFk19Exl/zGderaqPqj/VFPT7HLhLixQNc2+B3uD+potrr7JRkM+oOFEA==
X-Received: by 2002:a05:600c:3648:b0:40b:4812:22e2 with SMTP id y8-20020a05600c364800b0040b481222e2mr5226786wmq.11.1702499387771;
        Wed, 13 Dec 2023 12:29:47 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:3bf6:bcc0:fe50:883f? ([2a02:810b:f40:4300:3bf6:bcc0:fe50:883f])
        by smtp.gmail.com with ESMTPSA id n21-20020a05600c4f9500b0040b36ad5413sm21179364wmq.46.2023.12.13.12.29.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 12:29:47 -0800 (PST)
Message-ID: <a5889aba-75b6-4671-918b-26a4b9ec12c5@gmail.com>
Date: Wed, 13 Dec 2023 21:29:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/31] Fix and improve Rockchip RK3128 support
Content-Language: en-US, de-DE
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <2167016.irdbgypaU6@phil>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <2167016.irdbgypaU6@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_122954_861957_FEB3E52D 
X-CRM114-Status: GOOD (  11.23  )
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

Hi Heiko

Am 12.12.23 um 21:03 schrieb Heiko Stuebner:
> Hi Alex,
>
> Am Dienstag, 29. August 2023, 19:16:16 CET schrieb Alex Bee:
>> this series fixes some issues I found when testing my "new" RK3128 board
>> with the mainline kernel and adds some core functionality like SMP bringup,
>> usb and networking.
> before I discard this thread, is everything from here migrated to
> separate serieses or are there patches in this big pile that are still
> relevant on their own, that haven't been applied?
> [I lost track of what did go where ;-) ]

No worries - I kept track :)

Not everything is re-sent yet (sound nodes, RK3126/RK3128 split-up) but 
you can discard this and will re-send everything left in separate series 
(as I said [0])

[0] 
https://lore.kernel.org/linux-arm-kernel/170109134007.42627.12929766893521974712.b4-ty@kernel.org/T/#m63efa1c1379353b5cf764d2f9a260cf0329c864c

Regards,

Alex

>
>
> Thanks
> Heiko
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
