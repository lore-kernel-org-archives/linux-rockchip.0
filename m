Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2328C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 13:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKnxM92B6MgcOiCAht1XHPBHTage0Cse+JQBHEz/bU4=; b=oNXfKI2i5+Mrju
	RPvD9b85ZVjozo5RF2o1UTI9aKEPIWoNHaFcJqR9Zzc2LRpU/ZUokFJAJ1AlvCFxbXgSJN+lETKXa
	tlNWxGfnAJzTS8sm7iEYBV6ZHJ/Jw5DUMxmvkDbzsv/EI9I2GTJlpmh5lB8H5868KuWZ7KliYtWWd
	28tIDxiS/lMmY/l6ZvgRwO9PGgkLahqhJ2EsBCUlOSOl0rvg5MDt+cGFgy32WL2iBj9xdf+JLuBsy
	o27tGj1ZlRyTBYziX1qga+I7mxRmJDNqE9o+g7c+7ndySreoIdb/+w/zcqmVHlqPHy1fXotFJQ5VO
	3x21b9jwqPIz8yt6pEuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbjdg-001EA4-Nr; Tue, 05 Apr 2022 13:54:32 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbjde-001E8e-6x
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 13:54:31 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 n19-20020a9d7113000000b005cd9cff76c3so9448363otj.1
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 06:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dy5LYcTnNJiWRcwV1Fieefr8N5kpvaI50G2mfB2TW0o=;
 b=oRTrTtkF+q1BBVG9AVVedAYu2e0LMKRUmPSsMtS5WJOU4jsLSjzLhQC0+c1n44OAaR
 Mds/oqlV9GozohD+5RC2ju1JsRWssPc8L3EZTDKNhDrGcvYhHw2lZvwvvQ9Aiyx8MaEb
 FSUPyH6/Ias/QrL+DA7NXXw2ktQSrw3QIKU8CRNtGWd7X8ey3Lrr3AAkHCrhKcjIlK5i
 Lwd/mEAPoiWVq/Lb+1kKAWZFTrQ04Kn3I1xbKpT6wo8iFB4WI9LjczYc/hUS8UlZTwRR
 Z9Vj8XF4SWPK42ns1ChpQvBiEpYDjEhcTLd8hLgf8FKtytj7qdHPQ7+X0kNVhl/AxS7+
 Ph1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dy5LYcTnNJiWRcwV1Fieefr8N5kpvaI50G2mfB2TW0o=;
 b=oz7fe3y0EIBsUciD6r+CP3+Rwu9j2OUCBYpQoYu7lJjkjAEiwpoDjRveoqhTNwJPKn
 5CFvWsX3H3C6Z+O+Z12YmhM/TTcSQSvt+W47R8PII2s6UPre6YRCRS+GqA9bM3SBfiQn
 0+MnHk0DEJ76FjoD4IXDf8aSXc729yofL8lnm2L6M0yWVnQ//rIbBQ+3tf1KLYnItfzS
 gFq/VJVX2NLidB+ZLw124AEvFodepNUNFZpfPFJSwrsm5VEEIEhFNt0L1BDgHXy/Nntj
 CJdqW1hF1ta6qnLGtf2jHaowmghj+637C1EkLUNfEQ4ApBjGgKCmIsAh6myppnZXy2Sx
 +ggg==
X-Gm-Message-State: AOAM530f31OGZk+Vw8MYjY5moSNFCyjNDRLk3l8HBKogb/7j9sttutAY
 +BskPpwQEPckrRkKtvnXu8o=
X-Google-Smtp-Source: ABdhPJz2dllJO+XzcLvJiX1uF5tdKyc02gu0lc7wYaLLYy5qUIm3967isqwJ+g8yoWhmKIJAmYPmKw==
X-Received: by 2002:a05:6830:1041:b0:5cd:b09b:2164 with SMTP id
 b1-20020a056830104100b005cdb09b2164mr1232172otp.186.1649166867183; 
 Tue, 05 Apr 2022 06:54:27 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 r129-20020acac187000000b002ef358c6e0esm5282906oif.49.2022.04.05.06.54.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 06:54:26 -0700 (PDT)
Date: Tue, 5 Apr 2022 08:54:24 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com,
 zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com,
 sre@kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <20220405135424.GA20@wintermute.localdomain>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
 <20220405131228.GA20@wintermute.localdomain>
 <ac2b29c2-b3ec-eb03-595f-b0328e40015c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac2b29c2-b3ec-eb03-595f-b0328e40015c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_065430_294392_07A0CF32 
X-CRM114-Status: GOOD (  30.31  )
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

On Tue, Apr 05, 2022 at 03:35:04PM +0200, Krzysztof Kozlowski wrote:
> On 05/04/2022 15:12, Chris Morgan wrote:
> > On Tue, Apr 05, 2022 at 01:16:55PM +0200, Krzysztof Kozlowski wrote:
> >> On 04/04/2022 23:57, Chris Morgan wrote:
> >>> From: Chris Morgan <macromorgan@hotmail.com>
> >>>
> >>> Create dt-binding documentation to document rk817 battery and charger
> >>> usage. New device-tree properties have been added.
> >>>
> >>> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
> >>>                                       sample resistor.
> >>> - rockchip,sleep-enter-current-microamp: The value in microamps of the
> >>>                                          sleep enter current.
> >>> - rockchip,sleep-filter-current: The value in microamps of the sleep
> >>>                                  filter current.
> >>>
> >>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> >>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> >>> ---
> >>>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
> >>>  1 file changed, 48 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >>> index bfc1720adc43..b949d406a487 100644
> >>> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> >>> @@ -117,6 +117,47 @@ properties:
> >>>          description:
> >>>            Describes if the microphone uses differential mode.
> >>>  
> >>> +  battery:
> >>
> >> I wonder why do you call it a batter while it is a charger, isn't it?
> > 
> > It is a driver for both the battery and charger. I'd argue about 95% of
> > it is battery functions and the other 5% is managing the IRQs for plug
> > removal/insertion and capturing the incoming voltage and current. In
> > the BSP kernel these were two seperate drivers, but there was so little
> > that needed to be done for the charger (and users probably don't need
> > plug IRQs if they aren't using a battery anyway since the system will
> > shut off on a plug out event due to no power...).
> 
> What do you mean by driver for "battery"? Like some smart-battery
> system? with embedded battery (RK817 comes with embedded battery) Or a
> fuel gauge? Judging by power supply properties it looks like fuel gauge.

It's basically just additional registers in the rk817 PMIC. The PMIC is
controlled via I2C and contains multiple regulators, an audio codec,
an RTC, some GPIO, some nvram, a columb counter for the battery, and an
ADC for measuring input current/voltage/temperature (for battery or
charger). This driver deals with the columb counter, the ADC, and a few
bits of nvram for storing battery values to retain backwards
compatibility with the BSP kernel and bootloader, and handling IRQs
related to inserting or removing the charger (curiously my
implementation ALSO has a charger sense GPIO in addition to the PMIC
being able to sense that).

The driver itself is named rk817_charger. If you think I should change
this from battery to "fuel gauge" or "charger" let me know and I can
resubmit. Whatever makes it clearer for everyone.

Thank you.

> 
> "Battery" should rather be used for the node referenced by
> "monitored-battery"...
> 
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
