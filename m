Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEEC7C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:08:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89C3564E4B
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:08:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89C3564E4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vWYu/JW9dLqnPRBv0QKXyJhfzNngMKG5Jf9hZhMubbM=; b=nXWcBkX68GoO1HKJvgWUMGU5R
	tS1atxXA+LikrCgVWIGohVFugVD9tfQuLisN6TJDQsAvoFErCD0vbsIPrB+Q8DK0yJ1MsXXGrEd+x
	jPhlaGS6F3/NbNzcy6LhjwUR2tP11Wun+7cqQ4rM6nUUP46zXGNIw8iOua7RG6A3lbJX5yuqPKUwe
	WI6moaxv3sqO1fPWk0+Sj/dpe43p2wtmI58lpaBeSynpP1Yf0Z13/S8XSbg4d86P4doeXpvsxxB6g
	IH8BdfTZhhODHvfKuxKH2IymYFi+5Jq0uWsvbzfnLqmoPyV/H4XeHnidZIF172vF47w4ozrmXDpTp
	/jSOcYRxg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEUc2-0007be-UH; Tue, 23 Feb 2021 10:08:14 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUc1-0007ay-2s
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 10:08:14 +0000
Received: by mail-ej1-x62c.google.com with SMTP id jt13so33744604ejb.0
 for <linux-rockchip@lists.infradead.org>; Tue, 23 Feb 2021 02:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ROyuuue68J3fLDExdnLzPZi5sO6o6bjOhvo+3Bf4zzA=;
 b=SpdAy61NGEOL3U3BiDXcHcGiE6m98ALFU9VrnL3SytXSVkLWlCc526JADgIR094cDO
 1r7DmCvBceTl3YROgT3kFMPLHsBJe/eyGHbGLvf6RGEpC+Bqfz4/FasCFG4oN5zaYZlT
 xwY2L2jidKSGT4IlMkoTZK4Mlpb8DcbyehV4gpjmid6dhjzHUQ+FCYnHn/MgrIgaGtST
 n6W60JWghn37Lpu0upjreXDZAvXQrGKoAO+kkN1BCzOOibXUzSn7hSlGsXg5exOgivJ4
 YHRaHzJfqIpHd4SwfhAg/KI1PVw23JgRo0qeSnjfx2zTjDVtrsaxK503jbZuGm70ckyu
 VKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ROyuuue68J3fLDExdnLzPZi5sO6o6bjOhvo+3Bf4zzA=;
 b=njHzHYXnnMUZKzmyiK/7hQFDuTPCk5sF3cP63ZjpiVEKgOG3kS7PYV6sQgicbO/jzB
 uzMxCYL/zM4fO8zqH+0B0y6803srkYdS0j8EHZqVCFSNbuvqYzemc38XN1Tma5eX+ap+
 ueavfAToQuGGYD4zjxAuHn/EpI0lcQ3b8XwH1Jt+6W6swQpkwvcmVA+17YvTM7FOrCgB
 9Hs17eR/SPEgnGKbtqKoEGJM2/lTIAm2GQhro2kLa7jzFTwgM/0pbBreSDqOKxH5Yjk2
 H8cBDTkYnQbtO0AJkFaFdDwKpm+TK3zjq+ozjraw9sSGaFgga5oyckTFbFoxnV5zv7KG
 gA2A==
X-Gm-Message-State: AOAM530sBSCDnR2pvA5wiCYNItdCRFicIlLwGO3r7P9QUuaK2WtaUKJG
 Cn7ESzICC28Wrhb4c2NxSkDC4gA1sQQ=
X-Google-Smtp-Source: ABdhPJza/DR3mOZaLgwzC5Y9tWRDVAjF6MH1sIflJbClHHEDe5fut02toOIu/RGBwrnoE2LUdwRD+g==
X-Received: by 2002:a17:906:34c3:: with SMTP id
 h3mr25264946ejb.132.1614074890245; 
 Tue, 23 Feb 2021 02:08:10 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 i7sm283406edq.87.2021.02.23.02.08.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Feb 2021 02:08:09 -0800 (PST)
Subject: Re: [PATCH] pinctrl: rockchip: add support for rk3568
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
References: <20210223072419.123308-1-jay.xu@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9a725c5c-b5c8-0ac9-738e-ad89f1188345@gmail.com>
Date: Tue, 23 Feb 2021 11:08:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210223072419.123308-1-jay.xu@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_050813_190209_A798C115 
X-CRM114-Status: GOOD (  13.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianqun,

Before a new compatible string is used in your code it must be added to
the documentation with a separate patch to rockchip,pinctrl.txt .

To get a ack-by you must include:

robh+dt@kernel.org
devicetree@vger.kernel.org

Your patch should show up here after filtering:
https://patchwork.ozlabs.org/project/devicetree-bindings/list/

./scripts/checkpatch.pl --strict
0001-pinctrl-rockchip-add-support-for-rk3568.patch

WARNING: DT compatible string "rockchip,rk3568-pinctrl" appears
un-documented -- check ./Documentation/devicetree/bindings/
#424: FILE: drivers/pinctrl/pinctrl-rockchip.c:4547:
+	{ .compatible = "rockchip,rk3568-pinctrl",

On 2/23/21 8:24 AM, Jianqun Xu wrote:
> RK3568 SoCs have 5 gpio controllers, each gpio has 32 pins. GPIO supports
> set iomux, pull, drive strength, schmitt and slew rate.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---

[..]

>  static const struct of_device_id rockchip_pinctrl_dt_match[] = {
>  	{ .compatible = "rockchip,px30-pinctrl",
>  		.data = &px30_pin_ctrl },
> @@ -4239,6 +4544,8 @@ static const struct of_device_id rockchip_pinctrl_dt_match[] = {
>  		.data = &rk3368_pin_ctrl },
>  	{ .compatible = "rockchip,rk3399-pinctrl",
>  		.data = &rk3399_pin_ctrl },
> +	{ .compatible = "rockchip,rk3568-pinctrl",
> +		.data = &rk3568_pin_ctrl },
>  	{},
>  };
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
