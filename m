Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A32AC05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 20:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQ4/Eg4feoKyfAWaRDu6fWoIr3m9+c1MnCBbxjDqlCw=; b=Hxp/dL9TgKLeGX
	ttVqfh11ONz4XNECtAo5u6BwPUz68p2E5lzb+XWr3beib6LPZSCnmfk0TXg7DJdKNEu1cy+RGqgpQ
	5uBXpkGgbYafycxGzMQxdzS3D29gkKheLKwRSZHF0Xp3UFdBdTGGRcXqRaMjPlutZ8O2qnhm8sION
	VzEpnVOi3rza/oUgt9WcPe491I6h55zhQ2kwGEi+c83NpnII9wjNL080e/dOFZDLfAOr2/ilNnvo7
	rurdEAZaUvjrz0m4Q8fFBSpdhludDbb90hrrd4civiCkWmOJuE4CPzdrSNRJMD1lAEKLYya5vUinA
	whnUkNegcFRrKigv/ikA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIy1p-00CHcC-UG; Fri, 20 Jan 2023 20:30:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIy1e-00CHZ2-S9; Fri, 20 Jan 2023 20:30:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6D9E76206E;
	Fri, 20 Jan 2023 20:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFD05C4339C;
	Fri, 20 Jan 2023 20:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674246612;
	bh=MzyLhaguD/F2KdfK/Rr4D39zLsYoYhgkuTcjE6eMGy8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JFSssLD6TVzKUQjdClmg6saIJFtI7jM2/441MzbmG8eGe2HDxMypxAK4Xoi24Q0pU
	 QsYCH/COjT4ajuXpvfsTkX5UbQs2SjPknVA1pN+xr0WOgpPI/e2AHbopIr2u1+X3Rm
	 qDr+RC/6THiBEJLPqhmUwe6wBJhJLre5Ih70R6LNFuyEgNM9b7Vd/Zbk39SFfHp+mx
	 /pJGHINlPLfmhO3t2kWYycli0CPhhxiKCYCnWEveVBlKQNt+g+Pb24vZw0Nr9DaKfr
	 dbw74PbFxbhACF5il/LPw0aI6cXV6IZh72n/N8jYYVNU4ieG/0o3whnCYnn8GMPG69
	 dvi4jUR5i/bXA==
Received: by mail-vs1-f48.google.com with SMTP id i185so6935027vsc.6;
        Fri, 20 Jan 2023 12:30:12 -0800 (PST)
X-Gm-Message-State: AFqh2kpP4tFcaFfa9VU+VHhneAckM37PuZsvItrpvqqp8j3dCLomzf7o
	evfupWqv7gDniCkbpju2GYfATzbwcqG4Lf0ysQ==
X-Google-Smtp-Source: AMrXdXsG6irlFQsfgggKr1c5h4xbn7pWIMYAOvP3OeFbZO0RKqovFlw4I28u65DZ1RDkN1g2cazylQt2MeV9uLFwxOA=
X-Received: by 2002:a05:6102:5490:b0:3b5:1fe4:f1c2 with SMTP id
 bk16-20020a056102549000b003b51fe4f1c2mr2235848vsb.0.1674246611773; Fri, 20
 Jan 2023 12:30:11 -0800 (PST)
MIME-Version: 1.0
References: <20230118193056.673514-1-robh@kernel.org> <20230118193056.673514-2-robh@kernel.org>
 <4eca2695-cb73-eaad-4c8a-82dec923825e@gmail.com>
In-Reply-To: <4eca2695-cb73-eaad-4c8a-82dec923825e@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 20 Jan 2023 14:30:00 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKqiRbBJErkh2Hch+XZyLggGyjYo1rvKWPhxb99pA8mAA@mail.gmail.com>
Message-ID: <CAL_JsqKqiRbBJErkh2Hch+XZyLggGyjYo1rvKWPhxb99pA8mAA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: rockchip,dwc3: Move RK3399 to
 its own schema
To: Johan Jonker <jbx6244@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Felipe Balbi <balbi@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-arm-kernel@lists.infradead.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_123014_989593_63049E3A 
X-CRM114-Status: GOOD (  12.83  )
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

On Wed, Jan 18, 2023 at 3:05 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi,
>
> Some alignment at the examples and the unknown extcon property.
>
> usb@fe800000: 'extcon' does not match any of the regexes

Does that go in the wrapper or dwc3 node?:

arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dtb: usb@fe800000:
usb@fe800000: Unevaluated properties are not allowed ('extcon' was
unexpected)
        From schema:
/home/rob/proj/linux-dt/Documentation/devicetree/bindings/usb/rockchip,rk3399-dwc3.yaml

That's the dwc3 node, but the majority are in the wrapper node, so I'm
going with the majority and leaving this one.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
