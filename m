Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5D76C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 03:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFZ4DqXPSxpTJYxZTwawIfbrcCarNe7e8ev5iOeEbcE=; b=JB4TH/mLnU18fT
	U+QsJhe8AYYMZy/1Mbby1904EDbTeCCvU/qFvKKdm7OPFWGAXgGmzD56QxPNBYplpP6QlmEtqcMbN
	GdPQhBg40TT/rcwYsQnO1jLFwxVz8ZPAVabiaqFj54c5WYWnoWvM8FRuwH3SRh0i/3Ky21YNKMZgn
	Obj2mKdKmwe+0f4orHOT/GuXH26J68geuZ4aUABC4gLuyaPyfeRKD0DoIamb3t/sD5gbrX/YDGmS7
	4TD5H6vKBi2mahhQshSXP+wdVYHTN6u+pWAHhb42/2V5A+yeJMthKuCdcGFB5JCTnG3Uf+L2CKFrL
	B9loNOXxVxebXV540hCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHdi2-00G7MU-Q2; Wed, 09 Feb 2022 03:31:58 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHdhp-00G7IA-TH; Wed, 09 Feb 2022 03:31:47 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 p3-20020a0568301d4300b005a7a702f921so653972oth.9; 
 Tue, 08 Feb 2022 19:31:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2EUDRGuxtVXdjJqKcqAEgC1qrVlM0soEHjVQnLyJLs0=;
 b=h+kbls98iFYSXnFaLy6/xmdUN8eyCJQKsAnyDKzYpOOtJ4Lojo65FXjXR10NDt4oHI
 T+2Z2DSM16KJsAtc5MM+Rw8gv0xey9Dyida+PfJacc5NrsbiZkD4FL48T+gHLGxOqz+7
 l2Ps6EuuNtwCpLHx2WRZ1A6lT4KY0Yu9M1GlGqhLHxX4sdOlKMAlXFnoJ4JHGLqLVVHa
 hutekNAuWPTytxbls0eepS51D8OQy4XbVzQZwkmRXcasOWha9GJWNtshXss45LewFdkH
 cuOAw3HpOxjEi2SwOafTEBMhZxfWWISa97QXy2R67VKPXXBRPCTbVVzHJrpszoMvW4Wr
 nvlw==
X-Gm-Message-State: AOAM530JXzgae3ukZ85Cr0ro1kPnppSUAersCyZCV4Hf7sNVNE9YvkrH
 3TMJssK4Df1FLcI7qEVZ36bKMaaLRQ==
X-Google-Smtp-Source: ABdhPJzZSGGfllJlipqtnKsyZA9CXiQ7dw6mFa1JxouW5CgG7GlwB3WtIzOv3/iC9X6LEldT18lNyg==
X-Received: by 2002:a05:6830:1084:: with SMTP id
 y4mr184049oto.42.1644377502928; 
 Tue, 08 Feb 2022 19:31:42 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id q8sm6374550oiw.12.2022.02.08.19.31.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 19:31:42 -0800 (PST)
Received: (nullmailer pid 3585232 invoked by uid 1000);
 Wed, 09 Feb 2022 03:31:41 -0000
Date: Tue, 8 Feb 2022 21:31:41 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH 16/27] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Message-ID: <YgM1nQ4BiJJdM6Ax@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-17-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-17-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_193145_968026_EC24B651 
X-CRM114-Status: GOOD (  13.33  )
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

On Wed, 26 Jan 2022 15:55:38 +0100, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. The purpose of that clock is not clear. It is
> named "hclk" in the downstream driver, so use the same name.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
