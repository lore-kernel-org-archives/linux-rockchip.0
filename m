Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E7E0C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Mar 2022 08:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk4W8OMk1fkn72o8XPJcY9QKj/3tSWMNHxLoKcAzG/0=; b=W4xf+GTfupWx5o
	sT2ylzJCJlUQrQPrHcqoT8Kd4AZi622RGyCwDGGkdjecdMxPr2BZgZ3O0cRCsMtHeI+wpMZYrzbAO
	iTr8758RkghAm8G9G7HhkArNBatbIviMTdJxRS2/NRGY3OSqzXsQVtcG8yErms+ywrzbRuS7hPuF8
	Nx04KuTQ0bWnijPRalGYVCPinvwoNQad+pB2Zr+n240q7Yr0Ny4NgP0nVRBn5s8mMuo47sDRTeXIv
	+oqZx56UtAouXzEQyemspFw87h7g27L2VwE9ZXzd1QPKYe43rfnCfEXEtdoqsdUBhSFIfn6NwHql/
	rskQIvySw4AhVDVZEcrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYNtb-005Iy9-70; Sun, 27 Mar 2022 08:05:07 +0000
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYNtP-005Iuy-4z; Sun, 27 Mar 2022 08:04:56 +0000
Received: by mail-ed1-f46.google.com with SMTP id u26so13687599eda.12;
 Sun, 27 Mar 2022 01:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=IHOIaMurWc7F9ZSw+uYgY5lnqAhPhqRFB9rnEJSiWNc=;
 b=Yn/miknfvmFRwUMg3GLqj6dKi+45oevRNww0RbqHve3/+1rPl2F1cBOrJwGtpR1icf
 laqUGaIACBvju/EPW1+1Vpxw5L5OE6b9AfhkPR/ZbV95r/HJWhQqufERkfTp+97ijf1s
 jBi611WAwzrzS2OQPYMQYOmq2LcECkFoydh4YzLzqk9UICSa3HIyO1aOw+zt39Nn1vqz
 ukT3gx+kWkq80qZAus6abdrAE9dq+gM41gVsGokn55KyvtjztJGR7O25gDs7LIUN58J5
 BLsde2j5s9ozqKrHW4LJA2jKCL5+XIpI3kyNn0sWtjyKAeTkOZYYFWg+g5507/QKUDyh
 MAIA==
X-Gm-Message-State: AOAM5323ZEM1YFy3MDppbPUqjCqQ8PWCSOwBxFr57TC1tIt0vc4I03ZQ
 wCaQ2F70HXJoBbGzFEz1O3Y=
X-Google-Smtp-Source: ABdhPJy4EOHN+HJ/Npv5WtakVNt4K3GvTHkNtyBVRFi8JZFEELjsIEw1eNOVaTJKMRJ2z5r3pD5F7g==
X-Received: by 2002:a05:6402:5304:b0:413:8a0c:c54a with SMTP id
 eo4-20020a056402530400b004138a0cc54amr9137498edb.172.1648368293151; 
 Sun, 27 Mar 2022 01:04:53 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.googlemail.com with ESMTPSA id
 y16-20020aa7d510000000b004197c1cec7dsm5403354edq.6.2022.03.27.01.04.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Mar 2022 01:04:52 -0700 (PDT)
Message-ID: <c7714450-0b68-7041-dd46-072d45efc753@kernel.org>
Date: Sun, 27 Mar 2022 10:04:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3399: use generic pmucru
 nodename
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220326102712.20906-1-jbx6244@gmail.com>
 <20220326102712.20906-2-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220326102712.20906-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_010455_230627_2A6252D5 
X-CRM114-Status: UNSURE (   7.28  )
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

On 26/03/2022 11:27, Johan Jonker wrote:
> The cru nodenames should be generic,

"The node names"

> so fix this for the pmucru node.

Wrap description like in our coding style:
https://elixir.bootlin.com/linux/v5.13/source/Documentation/process/submitting-patches.rst#L588


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
