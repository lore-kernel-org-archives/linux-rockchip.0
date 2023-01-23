Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BCE3C05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxyL4Zj4KxVXVNkFebmE7qL8uVZMoU+Qx3rrVn9KxgY=; b=JhdouEBPyoqMC2
	IskHvJ4UBDUgKeZgplv+QkSzwVg5WsIIr8PR8qQ0N65qRqKTQJDg/DD3jmMB8Cukw2oTcF/JgPhXQ
	KE1cg0DE9AP6kxAlqS7iMsbci3e+8oiG5eSTzKAtUshVy0JArjMMrmh45JefWq7rCijPcno8ph3R8
	v6E3mcng8XJGXG0h/+eLWeQzbljg42MVpr+DXq46n82a3I32Y5rlQ2Bpze1TVF8u3ArY+NcUpUF/g
	ygIhcKWwaxuH36QHcnURhN2AqXGfUKy/WrkVK+lrEz3Nj2olblAT5Xg6/PKgp3DQuP2wmy6zoKV/g
	bmLP1YWFCRcFCyIW1jeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK425-001TXv-6n; Mon, 23 Jan 2023 21:07:13 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK421-001TW3-Cv; Mon, 23 Jan 2023 21:07:11 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-15f64f2791dso15475090fac.7;
        Mon, 23 Jan 2023 13:07:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CADNFe6R10wkswq9pySVFFUriCC1NhXTNYYz3U5dPho=;
        b=dgsrQFqCTWuEXnRVS+N96+LUxPf2GPUXJSjZs1vr8n+IXwLT0qSEmebJaBMOno89Q/
         WkCxjZCNKz0gmucqqmE5mO/TD/2EZbwWc31QKyJsIVgdlu34iBX7gI3KIMQ5rhI9Wfh7
         Gz3o8hEzRSZEuiPCOrBAoeaZ1tMBcnVIfpSUDZ5VXKZdSfI4nmMWjEnxCdDWwG7fMYtK
         dvKDDt43b+PM+1povtuLKllu9tTtRKZxNFRvSI/aaQBi4wqwMMxZwb4GM1tsm67zqs+k
         HQAiCqpK235lbQyon7iGy/GaJ7WWmP9fO2UUlR3f0byfZddaVa9Z0HgLCJnr1oQi5Cql
         1Lng==
X-Gm-Message-State: AFqh2kpMFcA8nyM0yTFirOelVfW+ZIzvN86f55qeegFINlJG0fNF+7/m
	9bQzcBnGVPeYitSgK3B9BQ==
X-Google-Smtp-Source: AMrXdXtV9ocXW03GZSJCxa5MfMJy/xxFJnzNCrZoRiE/vvrfehKtCq3M2nfTBomny44RX0TFjadxRA==
X-Received: by 2002:a05:6870:4c83:b0:150:14a3:6556 with SMTP id pi3-20020a0568704c8300b0015014a36556mr13995312oab.51.1674508027223;
        Mon, 23 Jan 2023 13:07:07 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r38-20020a05687108a600b0015fa95b00d1sm6491872oaq.22.2023.01.23.13.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 13:07:06 -0800 (PST)
Received: (nullmailer pid 2534798 invoked by uid 1000);
	Mon, 23 Jan 2023 21:07:06 -0000
Date: Mon, 23 Jan 2023 15:07:06 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to
 its own schema
Message-ID: <20230123210706.GA2496689-robh@kernel.org>
References: <20230118193056.673514-1-robh@kernel.org>
 <20230118193056.673514-2-robh@kernel.org>
 <4eca2695-cb73-eaad-4c8a-82dec923825e@gmail.com>
 <CAL_JsqKqiRbBJErkh2Hch+XZyLggGyjYo1rvKWPhxb99pA8mAA@mail.gmail.com>
 <be193659-e97f-23b9-b89c-d02205705db6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be193659-e97f-23b9-b89c-d02205705db6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_130709_453602_95B57847 
X-CRM114-Status: GOOD (  19.81  )
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

On Sat, Jan 21, 2023 at 12:40:12AM +0100, Johan Jonker wrote:
> 
> 
> On 1/20/23 21:30, Rob Herring wrote:
> > On Wed, Jan 18, 2023 at 3:05 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
> >> Hi,
> >>
> >> Some alignment at the examples and the unknown extcon property.
> >>
> >> usb@fe800000: 'extcon' does not match any of the regexes
> > 
> > Does that go in the wrapper or dwc3 node?:
> > 
> > arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: usb@fe800000:
> > usb@fe800000: Unevaluated properties are not allowed ('extcon' was
> > unexpected)
> >         From schema:
> > /home/rob/proj/linux-dt/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml
> > 
> 
> 
> > That's the dwc3 node, but the majority are in the wrapper node, so I'm
> > going with the majority and leaving this one.
> 
> In wrapper code for rk33899 in dwc3-of-simple.c I don't see no extcon activity I think.

So all the other cases are just a stray property and the above one is 
correct.

'extcon' should be replaced in favor of a connector node, so if not 
used, it should be able to be removed. Though maybe BSD or something 
else cares.

> In core there's recently made some changes:
> https://github.com/torvalds/linux/blame/master/drivers/usb/dwc3/core.c#L1710
> 
> usb: dwc3: Don't switch OTG -> peripheral if extcon is present 
> https://lore.kernel.org/all/20221017233510.53336-1-andriy.shevchenko@linux.intel.com/
> 
> Binding status update for that is unknown for me.
> Do whatever suites you best.

I'm going to leave it as-is for now.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
