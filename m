Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CD1C6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyjF4qhejDBvoxDRZahyxT9F4hK/vJRqKt+gzOl1N6E=; b=bZ2F5JZXnLisdq
	UTxgJFvrfnVAqKsD68OtAMkf1rN9rjyhES0FYTv4VfXseBMBY3P2VgivHkOmi4xF36yWcT4OoATat
	rmv42zxd3JwaR/ogeK3AaQl9dbbyhIgIhCJ9xcOAMKrwkbD1GIj3in7PemOd+k6muZCL4ew8FdIX2
	ktcUVtxLpiYNpwomhwf3+uHkZcfuNsYw4csXxu5RLIQJ6WE7VkDBb0CoDS2fh4Xpp4AabogfXdUdt
	hfkDjFADkZz9VgYv+hycV2TN5eApFNtavlSgv41oRTbjChdjfiMZ1kjgpax84jZ4aUemqHIPakLt3
	0gSzrqunvB66rzXwBePg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6cd-00BLiG-Qc; Tue, 13 Sep 2022 14:10:44 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY6Yq-00BISK-6c; Tue, 13 Sep 2022 14:06:49 +0000
Received: by mail-ot1-f44.google.com with SMTP id v2-20020a056830090200b006397457afecso8130575ott.13;
        Tue, 13 Sep 2022 07:06:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=zoPmw8JW/Le55KAdfImgxUs7YtJIEgve1VGjOMzTQeo=;
        b=gC3QgrnFDax8267WsQwsgUSEK661hTbw76TKkqx6iZrm/tnHRKMiOzEj0lVQ/QXEXy
         dInLTjYwaKVWMmr7a98N7c7gsEj1mgF4MsDmOo3Rpjy/G0Ku0HyB1DuB2rnamNG7J+jw
         5Rbpmu9YsYzDBlMSUTFVaxp4PzbNvkz5aOuEQTBaAFwSl/e00RYTeB05OLHkqI/2TYHm
         JRkL4JPU2Sv05YGYKyXv+jbnuvXshGsRNmX3nka//OR4wENF0EpZdWLmYQDdLgAMJ4pX
         JbY/Ml0zNXxuiGXpnWFsu1nYI1UbR2VZpVUMlMwrNBCcvBP8rvKMzUsvp4lFixlJMms1
         KdrA==
X-Gm-Message-State: ACgBeo1LKENYMhNREjY/t/eY4LirfFun6UZXmNA2tMsoP1dw5uYcHcDv
	2WP+RQ7XydqtX37I5H1f2A==
X-Google-Smtp-Source: AA6agR5LFvgkAS1RLpwP+MalfrYVSYShfCYdO8clZgU1WUU4EmFpEH8pJbpxErYAZmbdlxR6vK8NLA==
X-Received: by 2002:a05:6830:91b:b0:655:f7a3:61ba with SMTP id v27-20020a056830091b00b00655f7a361bamr2961087ott.226.1663078006506;
        Tue, 13 Sep 2022 07:06:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o8-20020a9d4048000000b006370c0e5be0sm6155675oti.48.2022.09.13.07.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 07:06:46 -0700 (PDT)
Received: (nullmailer pid 3593540 invoked by uid 1000);
	Tue, 13 Sep 2022 14:06:44 -0000
Date: Tue, 13 Sep 2022 09:06:44 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, linux-i2c@vger.kernel.org, linux-mtd@lists.infradead.org, linux-watchdog@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, jamie@jamieiles.com, sjg@chromium.org, wim@linux-watchdog.org, vkoul@kernel.org, ulf.hansson@linaro.org, heiko@sntech.de, linux@roeck-us.net, thierry.reding@gmail.com, miquel.raynal@bootlin.com, philipp.tomsich@vrull.eu, kever.yang@rock-chips.com, vigneshr@ti.com, broonie@kernel.org, zhangqing@rock-chips.com, devicetree@vger.kernel.org, u.kleine-koenig@pengutronix.de, linux-mmc@vger.kernel.org, kishon@ti.com, linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, gregkh@linuxfoundation.org, linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org, richard@nod.at, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v1 06/11] dt-bindings: usb: dwc2: rockchip: add
 rockchip,rk3128-usb
Message-ID: <20220913140644.GA3593492-robh@kernel.org>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <dfb657ab-85e5-ac47-810d-133c7e8dd823@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dfb657ab-85e5-ac47-810d-133c7e8dd823@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_070648_333900_2ADEE268 
X-CRM114-Status: UNSURE (   7.73  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 10 Sep 2022 00:02:01 +0200, Johan Jonker wrote:
> Add rockchip,rk3128-usb compatible string.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
