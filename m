Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92BAEC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 18:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6fjLl81whDL49lMt4sFIewGK8OnyiSWUKfqievGAUCQ=; b=2Q4VRVYhfKHpBo
	OvdpiALabm717dv4P7cQm88Iz7sfAUHSER0tiFxJvT2trUDK0/kfizOmCSN6B2BfTeBkRd+1Bvii+
	v0UzjilRJS4AHQmLrlQw4agMpVAWkhoM2jebKXuicxdh2J4lSEcgIOLcm8PBuPROAvQJBKnfIcvMF
	4Hrq/7M6MN3JCOdPdHnqO5DR0amQG0C4LCOXjob9woyf9UnAkm2zhxcBjLIOJxoCN9ztCre9Hgfv2
	8repb3ikr9cWomeTuVznk5VZhTq6ioGCFkgZZ3Etn1/NqqXp2cJDwmwKi2G+1VTFDLoPf3+1sofZ4
	Tg9ff03P/HEgRQk9M5Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbnr8-002Brp-Jt; Tue, 05 Apr 2022 18:24:42 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbnqS-002BZ9-HB
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 18:24:01 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 s1-20020a05682003c100b00324b888f165so2412714ooj.3
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 11:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=o/Wd9yzfBCTc9zddQ5+TUbcMzzM7qQoebbMKWMFAvjA=;
 b=6fqsRMUbqPWSDs2iFD63VaT6fOfJM3oQSghfFez2tQ3MpjUMJezY8xNhLn8nmtFIoM
 xwIDZBNWeDib50s0taZZmAsRIzaR6HLbl4d7zjH/60xE91PeIpzkEKoEQrJ/MfuRXReF
 nSGHDbFDXjekXUoS3/pKSOUCiYwQkWZn4PX5+xf+eO7LEOTJ6QQdLHgILZTuWe/soWe4
 AH06qDKrcx4ZDFwnLVO7CaBoDOQPTDz86uVLwzMd7GDvn/GlQRJzwARcly6OHJ2SJIjL
 6kzzi51lh/ZpdYqUATR205xsgB3PMmQbHXZ/Y9tmO2bXH1C3LmSjXNnQqocSxZuZE+IP
 LPJA==
X-Gm-Message-State: AOAM5308c1DAB8nsMzhhsTglAkQFQ08OQYW3IRmempKk/o+SMb+6bK7U
 35XQPe7AO0r0p2yqYfixsNsmBIhozA==
X-Google-Smtp-Source: ABdhPJzkaQGbK1qCUt8UsIBSnyyLc44JYk4YSc7/ZzD4IJZnHlmitD8NziNjexON593vkfDmTxfriw==
X-Received: by 2002:a4a:b3c5:0:b0:324:527f:8709 with SMTP id
 q5-20020a4ab3c5000000b00324527f8709mr1541471ooo.90.1649183038228; 
 Tue, 05 Apr 2022 11:23:58 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 m3-20020a4ae3c3000000b00320d7c78b01sm5269410oov.20.2022.04.05.11.23.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 11:23:57 -0700 (PDT)
Received: (nullmailer pid 46067 invoked by uid 1000);
 Tue, 05 Apr 2022 18:23:56 -0000
Date: Tue, 5 Apr 2022 13:23:56 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com,
 jon.lin@rock-chips.com, maccraft123mc@gmail.com, sre@kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <YkyJPKuG1s5pLR+t@robh.at.kernel.org>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220404215754.30126-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_112400_610303_FB90CC9A 
X-CRM114-Status: GOOD (  11.21  )
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

On Mon, Apr 04, 2022 at 04:57:51PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)

Doesn't apply for me. What tree is this based on?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
