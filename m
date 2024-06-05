Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED8A6C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 12:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INCfNlkXUBih7MCNJTXu2TQfW34LHMa4MEckD2ZS6PA=; b=m59MlgyvjtpdV4
	GIBNRxm8vBDboOr13fInb4nCj6uLM+fdb634tEw9redv8jQtNHAsRZCVvf/TnSDN6WA2O041HVv50
	tiUD0zN4vRoJBjvJt98TcLIfbdTda5QODLvBHZdIZnADTok0AKuxSUOmJnkXkJ5oJM8sQLP7jQKKn
	5FKGA59OWr/Q7iwnXJo6vD+/i9WxzwMMm575feyuO8noSctU9lVlcQhavjKsbhyQEAyr2IfWOdth2
	h7bLZCqgqPV8RQo3b7qhxI680Xv/Hm3+bvevFkpt958bbJ5jJoLMTVqPIoLAFoVlzf9WcPs84A4b8
	AFScNwI6jWi25yGUMYEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEpPf-00000005sXH-372C;
	Wed, 05 Jun 2024 12:06:43 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEpPT-00000005sLx-02N8;
	Wed, 05 Jun 2024 12:06:39 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2eaafda3b90so41456961fa.0;
        Wed, 05 Jun 2024 05:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717589188; x=1718193988; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=du0NeTxqutcJ2uTplQDMRL2aMycCdl9mM4JMoH82dDg=;
        b=cO6FGPnM8RbfSJ5Dxi0xxel01eLf9sIV6w5UhvX/T7egBe1dlBHBAYpX/ZZ8VDYpId
         cvO+zq0HCycBcoQTcAuzILMiPeSz3PNwaXTwGnpEzn7J/HQvtwETQabIZZdVICxTK/gb
         07QBhfoQ7ebopxRnquY2JQVyUIT4GSgHip2EPop1aL5MsRTbHHVFaRTZUYycm+bBWwfi
         l3F81CobBUdtC5JMgKmJdgveCTY33een8fixYOV1XEksVWwf2Izq4bpRr2sgBPDQV86e
         /mSruh2V83B4yXF6UUoa2QK/6t4GfA/eZGekpwkQAQm3OLQnLv+AXmQ8cPPGg0FUpFvu
         LXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717589188; x=1718193988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=du0NeTxqutcJ2uTplQDMRL2aMycCdl9mM4JMoH82dDg=;
        b=ZR4Hz+UAevKvpfyjiNLoE8uiPn5yvcWCPMRMxMMWY2YXEr3GnfpBoA4cBLwQ9v7Lq6
         q5uf+1NLvDx5e2KJ5aL/ktUJVj0d1QI/4hdBG1Mn5rEYEozmottACspL4sqAhleOd+Og
         kgbQITUO8e1IgqiVXAsazJd9TG3nuUaxJWmiGAHSoXDXVgNfZkbMIkmfhEe3JYh+K/rJ
         j60OOSDWNF4yUlwsqqrw91+wAtb6W1MvZtRvOTIru3v88JR9UsV3deAT5EJK+szUEXJn
         kf5vr2qavP9YRMl1WJbj1f+UZFettW1lnqNKo9q/m7+QeE5aifpRzW0p3kQPEWDMmubH
         vP3A==
X-Forwarded-Encrypted: i=1; AJvYcCXoW2SwgDZhPJbZu7A5Yjd9BiL3vzNsUoSozRAmQUH+BOjHZGrxjdlWJjZv5Dr6rvt3SOamt+/MoNhBGvD7zNrnJioIaswjavuIbfEX3ToFG2Ia32nh30JzzEc7h2XKrAVJ6CEXiRPOXhSEQk7K3Rih1Knm9SE5dEg=
X-Gm-Message-State: AOJu0YyvwSSlsYAoe16P8HWUYEZtuyRj9aE4iJTSVmCq71FUFyg/3Bg+
	1lOuf16wv5RfNKif6hNSZBfuLDaLgBKuCBzeZw5dZkCNawXeaJEX
X-Google-Smtp-Source: AGHT+IHV4exuth1+KkRgJIPAqJ821frbB5sqYY2gJmqLgu1Rrc9bE5yF9v+X4EEGzDscj3iPlac9tg==
X-Received: by 2002:a2e:990f:0:b0:2ea:7dbd:adbb with SMTP id 38308e7fff4ca-2eac7a92a37mr12145191fa.50.1717589187277;
        Wed, 05 Jun 2024 05:06:27 -0700 (PDT)
Received: from [10.20.30.169] ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2eac2373686sm3559381fa.43.2024.06.05.05.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 05:06:26 -0700 (PDT)
Message-ID: <d61bdc61-3375-4981-ac55-4004776aabe3@gmail.com>
Date: Wed, 5 Jun 2024 17:06:23 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: add rk3308b SoC support
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
 <20240604141020.21725-3-dmt.yashin@gmail.com>
 <b5d2d914-0c2b-4cd1-b894-f894a93a54f9@moroto.mountain>
Content-Language: en-US
From: Dmitry Yashin <dmt.yashin@gmail.com>
In-Reply-To: <b5d2d914-0c2b-4cd1-b894-f894a93a54f9@moroto.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_050631_431659_493D3C1E 
X-CRM114-Status: GOOD (  13.18  )
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

Hi Dan,

On 6/5/24 12:22 PM, Dan Carpenter wrote:

> On Tue, Jun 04, 2024 at 07:10:20PM +0500, Dmitry Yashin wrote:
> Why does this one have a Fixes tag?  Isn't this new hardware support?
> Possibly patch 1/2 was not actually a fix but just preparation for this
> patch?
>
> regards,
> dan carpenter

Initial pinctrl support for rk3308 included registers for rk3308b variant, which didn't work well with some pins of the first SoC and these reg's were fixed in the patch mentioned in this tag. So I added Fixes tag as this patch brings back proper setup for rk3308b and 1/2 indeed is the preparation. Thank you for taking your time on it. Perhaps I should describe such moments better next time.

-- 
Thanks,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
