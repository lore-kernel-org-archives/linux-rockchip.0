Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609EFC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 07:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=128j/e8BQTV/izmW+ICwOwsLQvqcVqUvgKLyIsUeKkQ=; b=KFOpwd2jF30izt
	2igHVf3Sw999y6EtUBAy3zWWXcN4Kl/Suu8UGi4AV3X22DxlXoqdfljJNdQ2/NO4gUMWG0sLSOHuH
	Nu+GnHWU67LX1HHjLihBEpsukqZRnCYr/QhjDWIq2fxIsxgm/oyoGxTDAapIgtmToJybZdhLv6Tb6
	vNUNGWAJw2mAU1Z7U/F2nzJzaY/Uj0uetJSGbEOdVu2nfPg/gBASfLv6NqFgNopZTvNJtUrfnYEIp
	wOydwoayzdF61SuhEOdtcBx/BKn2qMKyLZL5eDCgKcwRgCuCnwCSrGzwdiJzYZKjb/dZ0k+Ij77I9
	tU2UG/MusryRh8wDcelg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXeQ9-001LVE-GJ; Fri, 25 Mar 2022 07:31:41 +0000
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXePx-001LTV-Cc; Fri, 25 Mar 2022 07:31:30 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 i67-20020a1c3b46000000b0038ce25c870dso380879wma.1; 
 Fri, 25 Mar 2022 00:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GuILc5kRDriiMUiIXV7yGyzOLFCBv5MwLQdIg/dr7Gg=;
 b=W8ad+geeroQ+Zd+eXxCQaLhCdYlvYyotHKAtrt5XHMIe8yU1MZQVQO1R6J8EEp+dwo
 8lIBve08t3o1fuPmEFlMS2BL2RsR1L71XGpgxztmzF+H+SbBQNwqsLNktbCs7uV9Hjxy
 hMIkPpwLYH5I2VTOR6A+56oy97DmySycjpzdDNkuhckWEtJUAvOr/NQtyK29RKynfHMB
 6stwO8iFEJGiFBL5RczDXwLDIIiKB8rI2lFP41PQE8lzZhpBFTNsR1KFcXLz8CYvP0oG
 XJuHnWIQuGIoSLXsxW/UNT/AvmaCiLFZL09zzOgZ65fEjE8unb7W9Rc+B7YRNkuoP7zO
 AMtQ==
X-Gm-Message-State: AOAM532KAyKomvBHYcaHnaTopTXSUGzNLWwMPOjaqA7QpBJ3ERMImj95
 U1TMaNkOkWNpc/TAdZFRWv0=
X-Google-Smtp-Source: ABdhPJxX9+mei/tkczYkXDnJ8Ea8iol1WorIaCdEFNkBNxZcDCKU/ZfZR2wP0DOrgOPfGrPat8W3eA==
X-Received: by 2002:a05:600c:3b86:b0:38c:afdf:66cd with SMTP id
 n6-20020a05600c3b8600b0038cafdf66cdmr17701222wms.198.1648193487331; 
 Fri, 25 Mar 2022 00:31:27 -0700 (PDT)
Received: from [192.168.0.158] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 u7-20020a5d6da7000000b00203d9d1875bsm5199505wrs.73.2022.03.25.00.31.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Mar 2022 00:31:26 -0700 (PDT)
Message-ID: <bf438af8-5969-73e4-009d-cb7d93095a5e@kernel.org>
Date: Fri, 25 Mar 2022 08:31:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1] dt-bindings: clock: convert rockchip, rk3188-cru.txt to
 YAML
Content-Language: en-US
To: Stephen Boyd <sboyd@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220324133229.24035-1-jbx6244@gmail.com>
 <f7493d93-6c8a-efa9-1f2c-a0003a6d43b2@kernel.org>
 <bf62ad40-6bcf-62ae-f56a-cdc8d17456ec@gmail.com>
 <20220325005130.C45A3C340EC@smtp.kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220325005130.C45A3C340EC@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_003129_466808_5129BDA3 
X-CRM114-Status: GOOD (  12.34  )
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

On 25/03/2022 01:51, Stephen Boyd wrote:
> Quoting Johan Jonker (2022-03-24 12:51:36)
>> Hi Heiko, Krzysztof,
>>
>> Question for the Rockchip clock maintainer:
>> What clock should be used here and other SoCs with several clock parents
>> in the tree?
>>
>> The clock.yaml produces a lot off notifications like:
>>
>> /arch/arm/boot/dts/rk3036-evb.dtb: clock-controller@20000000: 'clocks'
>> is a dependency of 'assigned-clocks'
> 
> 'clocks' is not a dependency of 'assigned-clocks'. The dt-schema should
> be fixed to remove that requirement.

If the driver does not have any clock inputs ("clocks" property), why
does it care about some clock frequencies and parents?

The clocks is the logical dependency of assigned-clocks, because
otherwise hardware description is not complete.

What should be here for Rockhip? We had similar cases like this for many
drivers, I was fixing some of Exynos as well. In my case usually the
root/external clock was missing, so I supplied is as input clock to the
clock controller.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
