Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8022C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 11:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=am80qoptm+PhE+6dGAEiYKbCITq9Wy4ml8MXbMgnq6o=; b=TgVUEv3SS8PGjL
	SrISec82HbFapSvADEtrVwnJPn7NgJmEV87yBvmRyFaahglra2LoiIAQySGtYtTGsWlr66+wxHkeP
	rqBJ8S4aGu3siM89aFt39mZL3yVxHggDn0wOTuu/Ffqwy72zxOSqgXdKmUkk92r3xR+8YH8ZaVznJ
	46DjXbHKN3dDM4tjrajllPMb+ACw7FBFh8BlSngTSxZPte2pdWl/MCI5MOkPGtID1g80GO2GBvJW0
	QIW3TJOIa1OQJh21o9cWL5hrTAHsk9n04KXPzPCHl+noawGR0ipwtvlfo8bSDb+Y0br0eJqlfUPII
	xwg8f8lbPIXJ9nfDwMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngljd-003085-I2; Tue, 19 Apr 2022 11:09:29 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngljQ-00305f-Te
 for linux-rockchip@lists.infradead.org; Tue, 19 Apr 2022 11:09:19 +0000
Received: by mail-wm1-x331.google.com with SMTP id q20so10419004wmq.1
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Apr 2022 04:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=k9SQS6DEx7PcK3aZSt7NFnPshwNlUhuY2vj8QCcgdU8=;
 b=f8jTBzdCgR6gZoEBSlPxq90yrNFz+cJET9rvKb4SBbgJ3hbal36VvgdomSIglGgnO2
 3m52LyW2/NdxIy6Gtfurhq600ou6nWq7Vo8VlhKKUxdcfpzNbNSLAAfHScLAiqIPJnli
 D04SCxBNOYYZDuahNhtsJDUlWB5unMRdTrn/kJnFc31Ui5htITjZeD61zi+pb1l97IW/
 9L2Qo1bthVeE7l1MPTQDaeETEDSUvtMflBQ2dm1j4rDzIRWNfzKlW/Uw0sUAHMuob9pS
 l8EMODJrZvsH0VNyDN0nBwcr4Kae1lvAroCpPCxGh5764YFDnTKwa7A2Abu/qUz8uQLW
 /tNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=k9SQS6DEx7PcK3aZSt7NFnPshwNlUhuY2vj8QCcgdU8=;
 b=lcOSyrNReNoGZbwjp/pmHdVLtyfyx5uV8N6y52OOZAINFlp9UE7YmnnJljHzOVuVwC
 /cl97KA1oPfQWX3UlMFwruyvqc0rrurQ/iktlGdmW8mMjBqFzXR9PYl+Y/7/XnvxKAkg
 mUuegcdIGg3P82UGOTCCMSqppoWzAQTgH0qKoJ3FOmnMtVBBC4X9U8owrJGj48NtJJIz
 MAxkPede416Y/31w72f8prCZcX38+zrYUSHKWVyayoCrSSsmGSz4aHVugnQIc2nF29RS
 XelWDX7OyNoR37+lXKwXmzI4sKBajGKdiBqP66Sl0zj73hCRPCh/HCDRnPkHQet3UsVv
 SYTg==
X-Gm-Message-State: AOAM532HEYh/4OL23RRnjmFmfWTtyfiOa7TFPFemz8DQxHxyjpG/jFr4
 eNWVbD8BPHXst4pkAwbies9iGQ==
X-Google-Smtp-Source: ABdhPJyom0pejQx9+muBJ4LXKjDgivoBsIZxgzm1mENjReqSKOE98rUgPTpWVyVn3NH52/xaRjs95g==
X-Received: by 2002:a05:600c:4f87:b0:392:9236:3c73 with SMTP id
 n7-20020a05600c4f8700b0039292363c73mr11110988wmq.158.1650366554533; 
 Tue, 19 Apr 2022 04:09:14 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 7-20020a05600c024700b0038ec0c4a2e7sm18549936wmj.11.2022.04.19.04.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 04:09:14 -0700 (PDT)
Date: Tue, 19 Apr 2022 13:09:11 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Message-ID: <Yl6YV9nLVI4qYsPP@Red>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
 <20220413190713.1427956-25-clabbe@baylibre.com>
 <44efe8b6-1712-5b87-f030-2f1328533ee8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44efe8b6-1712-5b87-f030-2f1328533ee8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_040917_184905_B638F584 
X-CRM114-Status: GOOD (  11.64  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Wed, Apr 13, 2022 at 09:31:13PM +0200, Krzysztof Kozlowski a =E9crit :
> On 13/04/2022 21:07, Corentin Labbe wrote:
> > Convert rockchip-crypto to YAML.
> =

> Thank you for your patch. There is something to discuss/improve.
> =

> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3288-crypto
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    maxItems: 4
> =

> This is not needed and dt_bindings_check should complain.
> =

> > +    items:
> > +      const: aclk
> > +      const: hclk
> > +      const: sclk
> > +      const: apb_pclk
> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    maxItems: 1
> =

> The same.
> =


I forgot to test the intermediate patch...
Before I send a new version, does the final document is okay ?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
