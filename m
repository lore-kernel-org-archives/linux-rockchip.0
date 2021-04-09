Return-Path: <SRS0=7n+9=JG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CAE8C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 12:38:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31CED6103E
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Apr 2021 12:38:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31CED6103E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jB19nANKwAuAFlixcbjPrqNIjoIPJDWDMNV3trcf01E=; b=byayYNUsBb1DF9hON+wKA6UeI
	Dim1bAl6qLY66LtUbqOuCbNI8F4OqDT8FAFHCLfjfdHCmKNIQxzNdppiObAsvwBDEqG4wgcpKGn0r
	8DiVVJE+qxSjAhMtr6i9re5Y6+213ucTUd4LNJ9KmPRsoNk9rJtYbQXhTY33Cv8t3+ioCJGpF1pMO
	6lAlH/N/WFkftBvQ0I1xQRUCZZskJggSyog+SvEqdvMsNv5e3QH0tQTxxfHJAzOlIr4tmTnZmaDDR
	47nIB2AjohbL9jp7m2VCCPsnITmbodrVKiemfLEKoSvJWCK2a91MMqZ5gQUWN/E4RcUvMsmLVTbfo
	wJx26wH2g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUqOd-000l2g-3W; Fri, 09 Apr 2021 12:37:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqOb-000l2S-8E
 for linux-rockchip@desiato.infradead.org; Fri, 09 Apr 2021 12:37:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Vrj2njnju6P37FX4R5nkYyvVHTJwDCcIDa0jtbjQNS8=; b=W4Qv+LT3ih8dbLZ6RcMEwQ4imX
 u/WDOplvy6gzgCPigGHou7Z14cHS3Co9DYfheljqVA67Er/b2b2svMO8PCe5yFALeyC4R5vNJZgLT
 TUkJON1rtT5/fWsOcYvNF3CBhF5e10JlNatAs53fXx/JA7/lqwe3spPNFneLG4AvKzLH3XQo+o3Jt
 4bInl4YeMIBO980W9AYi1N2WH/GTHegZLp6tsXkN9wPnF/xttlKrb8vt/h9J4TXZSjoqA5rVU53N2
 OV+t6SDR1itZTCwbYgGwBH5Jh9DMP0lPOxebHP9tci5OL140OpCDtIEQNlzdhETF09iPXXG2RsXot
 gFObkjWA==;
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUqOY-004WFZ-TA
 for linux-rockchip@lists.infradead.org; Fri, 09 Apr 2021 12:37:56 +0000
Received: by mail-lj1-x22e.google.com with SMTP id u10so6266820lju.7
 for <linux-rockchip@lists.infradead.org>; Fri, 09 Apr 2021 05:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vrj2njnju6P37FX4R5nkYyvVHTJwDCcIDa0jtbjQNS8=;
 b=rn4xWoJbIM2lElaUk3BqsK/H6dLfBdBqZzpEvAsAN6NnL8kR0USSkLu1dQhqsK1J73
 hO0N2vYqqgi6BuuEyWIcJHptFsRf589/TfncGZ4tWMbuGxjuhMvIH4q4Aob1CaQ36wfY
 mpnRgdkvTo8nEj52PVLHRIwETk0tWf1Tw6AKSpikF4l4vZTxbBL1rDbU4l9POzrFRxRu
 hX6yUamtAqRBJbEFUh5Ldynx4Om9m544+C55qRVe0MOh99tNfI/MIlDASxy6ou0grtc/
 wgbUxhiwrPWnsYoxvsvDwkkcc576juu94+/LZpw76WK+4XCzo5onUe7xRcRPc1b4LfK9
 JOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vrj2njnju6P37FX4R5nkYyvVHTJwDCcIDa0jtbjQNS8=;
 b=dzUdFX4o0FTwJ5kucyPG6Pzbc2hMxQ7m+94ugdfXMMURj0c7KPPo/vEj79XKPO2k87
 Q6MBBgim+MxevbH1Yp7UfHCN7U+em+UhYSSpTSVyHeLUDVkIvCk5kjQr7gdeCRT6tFXO
 XC4o6Xl44f3x+kvBkxUP3Y2sXJZJE97hyaVYhUNm4whbXu4rw9mGfUxIs2GT2HKfEeno
 su2NVLMy2jMDRNKlU5KbDU1fGBadLArI+bV3e9Tba1TlpOd9EBsd4I+PHXUM021VMt7m
 +5/plPYq1Y1HFQdsTG34nIxu5V+raZAMw06PwmgWUNKBxbIDBZbL4kkRwaeRcxl4zEP2
 KT1g==
X-Gm-Message-State: AOAM533zFjvV1/4f/RmKvQsz1bGzV9oQbPe/D/wk7XJE2l8BsnkmuwF1
 sdWhblkHI/xvahly8k8bDMo5+/osXT07FeCLaVu1aktlfc/nzA==
X-Google-Smtp-Source: ABdhPJyjeXNIJsgKQzSnVqGXQBIctrOW1DI3Gkh598EGopzXaoTH+TVDD886ENRO8OX0ubAeeHKR+umKzc8k1lYTiHg=
X-Received: by 2002:a2e:9004:: with SMTP id h4mr9430809ljg.326.1617971873118; 
 Fri, 09 Apr 2021 05:37:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <20210319081441.368358-1-jay.xu@rock-chips.com>
 <CACRpkdY+A4bsW28yXRGeGVnK_UcR70sMeX3jpABGVJc49A-xcg@mail.gmail.com>
 <CAAEAJfB3csiXBtAioV768PYMb4Sv8UYvmaVaOXZDhJWEzXPLeA@mail.gmail.com>
In-Reply-To: <CAAEAJfB3csiXBtAioV768PYMb4Sv8UYvmaVaOXZDhJWEzXPLeA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 9 Apr 2021 14:37:42 +0200
Message-ID: <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Jianqun Xu <jay.xu@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_053754_965756_7EF8993B 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, Apr 9, 2021 at 6:17 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:

> Seems we are missing the dt-bindings for the new compatible string
> "rockchip,rk3568-pinctrl". Is there a patch for it somewhere?

Nope please send one :)

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
