Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE67BC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 18:25:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92CF760BD3
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 18:25:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 92CF760BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D5YEYjduEVGNFpD2NMj+T5leZxxllvR9hnhg6fi56lk=; b=2J0v5lfVzqIzbu8swNlsExaLTa
	7e2MMCnm7DlOBmQ6mw9wP61jEaG6GE69SuWvp4F3Sr4Q7iLSwDmMPbnECEuvOgwSXiQPsJZzqmP/H
	4tKMbIWg0NH1ZF9zcJf0sElyeuEUWRnkBB+8qalBLebke7FmXlI4KT1+3als/94tH5FuXjlTvr32O
	oYZtIbOyo6f0C9+q+KWWBTgAvKW1eGmQASiMCYtSKX4VZr5yfJtUnKDUilXKWdBV0bR6bATANIViZ
	fgu4sbMxWiiEFUR/B0KCJNtNvmqQB0E2D7aOjIEzO+3zHkKlPligf51+yiczVZ6dx8eZUV76JADF9
	w1edceDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9XCK-009wBU-LV; Fri, 30 Jul 2021 18:25:28 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9XBu-009w7a-7F
 for linux-rockchip@lists.infradead.org; Fri, 30 Jul 2021 18:25:03 +0000
Received: by mail-ed1-x532.google.com with SMTP id p21so14402504edi.9
 for <linux-rockchip@lists.infradead.org>; Fri, 30 Jul 2021 11:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pzI86rNh8ZMI5ilKFct9RcjfJPHXxZUoC6TTsdSAAf0=;
 b=E7DImHiABX2tUHVyggKzsG7GXVMJwrM4PXd9jD1SqhNxoaXIt5DHoVvoUFNEiD+qpH
 tKhQEvZDr4h74mL3jORlycQ4xhkAFFXhuULrp489811hhZqHXw7P/Ho/JzZYQkdDPq9R
 iveD4lwLmzWpBgQgtS22VCHGOlzC3Ck198OBQACyHjH71enEA3+4ZLbnAyLvsmvFuIZw
 O/qhEBXCRiQsD0RLleLbgaq7GopFzMkW+2FKNG6TkSanr4zNszLiRlKEaoSjAnMxUCqH
 lqEQ/GuBkVwJrLIf/M9wKVQWH1USpWpDkYSVXfZlfGhYjZgrweja92JeJ3oq8f52uEX3
 nLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pzI86rNh8ZMI5ilKFct9RcjfJPHXxZUoC6TTsdSAAf0=;
 b=RDQajvpueCRNZ2Dp8J28ztzelHXM9/2TZ65chqQwqYp5MdxEIM9ZKVDgnUa4Ck7lUe
 y8xsRMmHNvoN3uXzBMdKUKZneJSUV8i3R94VAs1RIP3XVZ650YdgC5lJkBVEs7AQG2Dk
 tnUK9CkNeWFJFlPTpRv/n/Qd4cX/jMb7KaU9ZhgInfpPJK1DKbg0dTfj75Sd8BEx+bIU
 JhfRjPRAVvgTg6YWFXdS8HANyG21vIsNEZVnxi3AA3GZpmaxOoI8J1yp8EJKIkq1WDt8
 AIsJpwqckF+xXZreKb/Jw5OkVkXiUfDoEZUrV2UY54apoEJQBo40A2kml5R1+0Hd9g66
 73aA==
X-Gm-Message-State: AOAM532XDsJaZBkR9WZF2Ldv2UfphTCmQsPhNscVcU9vbWjK9lqE64ET
 T3FPLr9vSIYG7Bh6vPSq2fRfDP7K5pU=
X-Google-Smtp-Source: ABdhPJwyFm2ZVh8LGtuVfipbeFUzlbsnGzOuzCIi2aPFgBxVPBgC6HlrL9HsCQejXPYLfidvpa2wvw==
X-Received: by 2002:a05:6402:6cb:: with SMTP id
 n11mr4541177edy.112.1627669500084; 
 Fri, 30 Jul 2021 11:25:00 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u9sm821567eje.31.2021.07.30.11.24.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Jul 2021 11:24:59 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64
 Model A
To: Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Peter Geis <pgwipeout@gmail.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
 <20210730164515.83044-5-ezequiel@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4dede4af-a57b-fd95-efba-017731695bc5@gmail.com>
Date: Fri, 30 Jul 2021 20:24:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730164515.83044-5-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_112502_328913_2454FE20 
X-CRM114-Status: GOOD (  15.01  )
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

Hi Ezequiel,

On 7/30/21 6:45 PM, Ezequiel Garcia wrote:
> Enable the GPU core on the Pine64 Quartz64 Model A.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index b239f314b38a..1e6153b52594 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -462,3 +462,8 @@ bluetooth {
>  &uart2 {
>  	status = "okay";
>  };
> +

> +&gpu {

Nodes without "reg" are sort in alphabetical order.

> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
