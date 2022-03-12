Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBACEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 03:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+K3MUkm6YoAYW39mrmfqkigs8KHrgtNZSbydbxvNnf4=; b=zVLubSg3W35pvq
	RBBQEukiQZmI+SSSQXP5AVxpXz9+n6KQjeJ92XZVe4yluPsY4URLWBCCt6nVh8e09Z8NZvxx/cJSn
	mq4D5Nch6uHd2hxFPJ+y2Cequ3xKysG5Et4xc1ZWi+htt7D+/d0aFLfTAoJuJZlmCSvjsf0ifdg+9
	k98MnBCnBy4lBMpILgx1iff5mJkpX92rr2NDOsNcc8k9Hesr0C27tUlKLaV0VG5BgjCG6gqC8XY0J
	fKYPPIoHqeqUAgiMO+RpWAW1TllQ29rXlzJIR4tcMbGfDclofChaWBE7xf5UIJZduEV9WuacuBN5/
	ilLriQ17jlmtnSnOH74A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSshV-000h0j-50; Sat, 12 Mar 2022 03:45:53 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSshF-000guT-Fs; Sat, 12 Mar 2022 03:45:38 +0000
Received: by mail-oi1-f175.google.com with SMTP id 12so11496206oix.12;
 Fri, 11 Mar 2022 19:45:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F+svWGiQPbj6b5eqrrYsXkkVUBwPXGhMy9dOFM1Y7js=;
 b=2sjGrnzvqvwiWW/OxoJRITa2efuRteXA+wD0SFIis43RzfKaSZzcLQ5jxUAPRtEqWQ
 6SqH9TxXh2cIdA24CldxN7Hruy/hde5cDXsAXIajsnDstwrVVG7PQS6QuQr8+yTTvCcX
 leBrnqkVEcgLOFkLAvF28i+SERiPPK1N13lEZED2Ox+jFDoMGQd7BmLcfpKbBu7PHtWi
 6rhoD+Ozt2uYCXGGVOKE7Q5ACd+2eSi+ihmcdyEU/5CdxvLmXKB++3UdziLFkaOlJwB2
 AiCLWoqp4Q2K+F0dRccv+AT13+cqx2ln2DJGsZ4xftpLoXQ/hQhUSkqiLOcGOPrFPrVP
 ZZeQ==
X-Gm-Message-State: AOAM530GBR4vApHImN3sJZG0KactrlNvwQPaOLUn0stTwwBSdmtKG8UV
 1+VJH2cO7pv2I7QshMYOQQ==
X-Google-Smtp-Source: ABdhPJzk4+0YFHC3Pb78/3qG1BRW4mUW3u2Py+qjT/Are8jNXsASCtST45p8XPbSbImBaTWkD8R3KQ==
X-Received: by 2002:a05:6808:130f:b0:2da:3ed2:68ca with SMTP id
 y15-20020a056808130f00b002da3ed268camr9481487oiv.216.1647056736564; 
 Fri, 11 Mar 2022 19:45:36 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 y8-20020a544d88000000b002d525da014bsm4392686oix.42.2022.03.11.19.45.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Mar 2022 19:45:35 -0800 (PST)
Received: (nullmailer pid 730669 invoked by uid 1000);
 Sat, 12 Mar 2022 03:45:34 -0000
Date: Fri, 11 Mar 2022 21:45:34 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>, Frank Wunderlich <frank-w@public-files.de>,
 Andrew Lunn <andrew@lunn.ch>, linux-ide@vger.kernel.org,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 linux-rockchip@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 soc@kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v6 4/6] dt-bindings: ata: ahci-platform: Add
 power-domains property
Message-ID: <YiwXXl61xODMuGlW@robh.at.kernel.org>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-5-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311210357.222830-5-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_194537_550557_FA35B05A 
X-CRM114-Status: GOOD (  12.17  )
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

On Fri, 11 Mar 2022 22:03:55 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Some SoC using power-domains property so add it here
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
> changes in v5: added reviewed by
> changes in v4: none
> changes in v3:
>   - new patch
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
