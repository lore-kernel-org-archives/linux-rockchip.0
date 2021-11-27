Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EC29C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 15:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7luOs9oVKBBtuZqE0E2AeZPvBaNUkjuO2wMqqqmbHI=; b=Xz6dxWV21EKmKj
	DsKaCdV0h+1zX6YrbNRTA2tS41e54GRjQ/K/wiIwJb/mLSYDiQmguNmNi/8oyMtV52d/0lQKrRVUW
	sAQGT9UzEyP0+e7CWKOpVzKYMrk1Mf21ZWLptimx79pI2y7RPr0hEwwVKI0HjWx4c61DsT4lYGQvM
	72KXwkOxbJlGWP99d/Kdo+BKYKauXvY4rhzaaQjQvsBEGdXGfZnoh/xDbVT3dEgo4eg/D5eKo2cPh
	lgfpWMw1TV4Z5nei8TpjmOgBB5isnXMHlqAs/OjLRKV28WIT+6ZbkDSbVcIwu0AHk20Y+Y5RF//Bc
	R4s2vT1Q11h5bRPa48YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqzom-00DwQW-H1; Sat, 27 Nov 2021 15:40:48 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqzoZ-00DwP7-RB; Sat, 27 Nov 2021 15:40:37 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 n33-20020a05600c502100b0032fb900951eso12937402wmr.4; 
 Sat, 27 Nov 2021 07:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IC/TlGTWkhJl4qcceepZ/CYaq+BBm6DPEjqCKhmnCsw=;
 b=GmzyqzXEbqYqGI9eVUKMe0UNzDtUmA4nqzsKU6AV+sLw89kJG9jR3U/d/MPyhkDBo4
 Sa86RIC0VNB2qn+yThFmo8sXr9mLmrrTLlhbNH1y3FJjf1LfdmwZ5Ddn1orqYsQrqLMt
 L1d3d1car9BsTzbz+4v01BwSPjrGkoz4ywbWyEJ/GnOddX94typXdtSK4QBfGUXOeadV
 bj+9OfmJZ1ZtAq9gcVXuvhiF9T2tTQIeEwarADNst5nx0++Ew1ob4d7yRRrWqfl92KbD
 +XYqw3mpJyMpTFpDEiN25SFMWsD1bUGTSEaqqHppMMqm42JTfZp+VsV/mb94P6qyAKbs
 E4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IC/TlGTWkhJl4qcceepZ/CYaq+BBm6DPEjqCKhmnCsw=;
 b=d62VijhCYr2vpQ1tR0UjSC9bkcxbOvFfZiJkemLm53iEGDFGPlPxNNs9bircHbfQLi
 qP9ZTgtFr0fRll8hIecCTpHJ5FMuWmuD/tQxTJPMFi+WE9TK05IV8JVxjR67B1O7uENc
 U+Nwe0BbuQFkdvEJfMJnwo6pyBfdJeBarL9ExTyaYO25OUApJ8co27FLriuuAqm+JRjN
 otlhH5SER7tS3nyefxjTnHJKFyNJ3MCs0Wi73vJYQFKYCNFFsgsw/HE8kMTS0hTXr5IF
 NSPPcIqBoo4fMIs5nJYnyX/gX5vyjAvB7DubBwGbZmv0J2/w0RzwKqnW8LtCn19A7hfG
 cxSg==
X-Gm-Message-State: AOAM530F6xZ0AUOeSOUtBhDTHcexXUFz4GKts/P3PpSos2VLiw7hjH4b
 ru8sO94AfncYAA5A+1zUjfY=
X-Google-Smtp-Source: ABdhPJwHt9yyL6r5ZW3SqBbrC/vI1dL2cN7oRt6Sg68+OORzJCNZKs6/mZOH3anYctkkZTctKwGblg==
X-Received: by 2002:a05:600c:3b27:: with SMTP id
 m39mr24321389wms.132.1638027634111; 
 Sat, 27 Nov 2021 07:40:34 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id u23sm9200634wmc.7.2021.11.27.07.40.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 07:40:32 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add spi1 pins on Quartz64 A
Date: Sat, 27 Nov 2021 16:40:26 +0100
Message-ID: <3750380.Q3bl6Pheio@archbook>
In-Reply-To: <acbd0e0a-b194-7b17-148d-49fdd348077e@gmail.com>
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
 <20211127141910.12649-4-frattaroli.nicolas@gmail.com>
 <acbd0e0a-b194-7b17-148d-49fdd348077e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_074035_917917_7B8239F7 
X-CRM114-Status: GOOD (  21.94  )
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

On Samstag, 27. November 2021 16:29:33 CET Johan Jonker wrote:
> 
> On 11/27/21 3:19 PM, Nicolas Frattaroli wrote:
> > The Quartz64 Model A has the SPI pins broken out on its pin
> > header. The actual pins being used though are not the m0
> > variant, but the m1 variant, which also lacks the cs1 pin.
> > 
> > This commit overrides pinctrl-0 accordingly for this board.
> > 
> > spi1 is intentionally left disabled, as anyone wishing to add
> > SPI devices needs to edit the dts anyway, and the pins are more
> > useful as GPIOs for the rest of the users.
> > 
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > index 4d4b2a301b1a..166399b7f13f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > @@ -509,6 +509,11 @@ &spdif {
> >  	status = "okay";
> >  };
> >  
> > +&spi1 {
> 
> > +	pinctrl-names = "default";
> 
> With the removal off pinctrl-1 the pinctrl-names property is already
> correctly defined.
> 

If it ever gets re-added in the future, it no longer is, so it's better
to be explicit right now than to risk one board breaking in the future
when the SoC's definition changes.

Regards,
Nicolas Frattaroli





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
