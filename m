Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30DF9C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 01:30:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0CE4611BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 01:30:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0CE4611BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R7rfQfitGllE7Y5yoKg6fYkXguRYLAu470WdhKWZzS8=; b=ASYq44EzjZbOSc0Wr7KOeDibM
	VYwtISj49RD0HK/C8XFSmQNCKEFDFtjnQbzf5eLnUyomJ/9sPYRVn+ILeedeTrIP6etCz7l7mnXku
	Ic3yXCc19QObvv4+y4zIK3Epv4mU5gOJhtpdRLzT0v/1bP6eZOi2p+vExug3TRl8o1w60+5FHKd+D
	5LbeTUoNYLUO97gYHECwNptSJ0Z5C3St3yjWIy1Tw3o6zrMeu7m+hW+gUTjmUbbb4IVG69lb7XZo9
	691StP2QpCPlwGbHnFg7m9/dQzJO2T/E+DmwQEqsm4hDQ4cna+CVO8sdePpX1UcCVnK0CXYBo7BX3
	GroD6ML5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lioZ5-00GdBq-9j; Tue, 18 May 2021 01:30:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lioYp-00Gd8X-G8; Tue, 18 May 2021 01:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=oiChmmm3c4jQ/mjCqDyUKJLtpixrBak0jzUaVwVqz5o=; b=Fd0u+eejpjVJvPSOA/G9S8IZvx
 hFwqahJQU5TNh726x3Ty0og/38KnUAaG0eWgeadX+POPauPSHPrmc2AvFPgvSSEC3n4XGOzwTBCCK
 D0EZUub5V9vSeP1LsFWOExbbrJRZRiJN1b97n9jFD00Y8nzWQjKJPGxa9P5qk1QOMlRcSkYgjeZpr
 adebslKhAi/1vwsUbkHLAeVgOUyCc8YHQ0QwtVLnQqgWRhp3HQ34NxL+2YbmEfmda1G4R09CNp80B
 uqLNfp7A5Zw/YTgV1JBlIRy2KtWARioEnbp0Gs0YpFNB0L+bFrUb8YwnNkByjwpGPb6jYDjGfFmSM
 1FZc7xRQ==;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lioYn-00EFth-64; Tue, 18 May 2021 01:30:14 +0000
Received: by mail-oi1-f170.google.com with SMTP id u144so8259082oie.6;
 Mon, 17 May 2021 18:30:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oiChmmm3c4jQ/mjCqDyUKJLtpixrBak0jzUaVwVqz5o=;
 b=GdAHSj1SO7pSmO+6qmsQ5SrQwuUPoWMcO/ScianmIQs2Vz0kiJc/BblWRkGGG1x8zd
 uHze5SjhGY50S/cIRjGxSFfKop+xCjDye9ngM9RgZAUpe0ldPMAWhvw/9XL70k5hXi/x
 spUZjCDEbJ1iTtz8ld2RVZJRj6Hf47LHL7hD7InIC6akYXv8e7H1BAUqBWYqzMDc/zip
 yUFQltmp+QYGZ76zqQMjvpO5mXdbBl7z+X3lT6TDxawVBoRjC1TjgQdkkpuCBDlvfDVD
 8/j+rxCJuVHvPnK5u5Qwk3pJ7qrl7jmLHJveSu9afH4/u7Rl5Ddkgm/owHy1S5FATBGj
 yEHA==
X-Gm-Message-State: AOAM532ztsV1QxAvFDrkalCsusQZhVEpO5rC4+d6hDYgCmaZuDmgH0DX
 jgvTALx2MAgVCFPGJn1V/Q==
X-Google-Smtp-Source: ABdhPJyxdV0Mr4rv6ASsJEiOUDxby5DAJBSRvp3cezJZCDJozkHkPwp+yZtsKluvwzG0ue1LMi/r1w==
X-Received: by 2002:a54:4396:: with SMTP id u22mr1504292oiv.118.1621301412607; 
 Mon, 17 May 2021 18:30:12 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e6sm3424903otk.64.2021.05.17.18.30.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 18:30:12 -0700 (PDT)
Received: (nullmailer pid 3604678 invoked by uid 1000);
 Tue, 18 May 2021 01:30:10 -0000
Date: Mon, 17 May 2021 20:30:10 -0500
From: Rob Herring <robh@kernel.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-usb@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: rockchip-inno-usb2: add
 compatible for rk3308 USB phy
Message-ID: <20210518013010.GA3604623@robh.at.kernel.org>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
 <20210514150044.2099298-2-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514150044.2099298-2-t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_183013_242829_8D197BE3 
X-CRM114-Status: GOOD (  10.35  )
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

On Fri, 14 May 2021 17:00:40 +0200, Tobias Schramm wrote:
> The RK3308 features a slightly different USB phy than other Rockchip SoCs.
> This patch adds a compatible string for it.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
