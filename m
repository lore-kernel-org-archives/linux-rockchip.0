Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F58C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 15:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eQdsrApXLGrZoKGd5UjCCKijRRp2iJ/5J7zYlhd3xw=; b=wLQIJM+f7xMuSV
	wDfygGz5iAJ3sxtkgpHavfJs1sPxdRIhEXQDhGMdxYGWeU8gcR28u9SQ/DshJKPhk2zKuvEFlHBJk
	VXAtXH80BaMqfe/fkRU6bJdGk8XG5POU1pmUQsJ9zpmFrBZ2Y5cHzKBmoBouNZvWgO08aC4z9WATz
	HLICJdvPcvdeCOGvJQ9YHmoOGTxpo4l9cmdOJ3i/HhjBMnb+fOYLrTW1QyWCVHqvW8zNEJzBvWa/7
	bqSbnutbr7zAQJW7FXRjlDzv9L/FWNWEu+b52txT8jOx7x1aRokDTzEOSit2swsxNfDzjNIbu3VcC
	Tg4UTE2RewO/SSTX0X3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTmpO-005qxV-Io; Mon, 14 Mar 2022 15:41:46 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTmpC-005quT-CZ; Mon, 14 Mar 2022 15:41:35 +0000
Received: by mail-io1-f52.google.com with SMTP id c23so18734992ioi.4;
 Mon, 14 Mar 2022 08:41:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rY4lnGX91BSkoxPaQ5SCRaMmjihX3PZ5V3Bm/1QXiHs=;
 b=49fdq91jk2Vfoq39dTTeDVC7BJtZYEWK7BzDxSgfdkAMzcf10hnR0iMJuckMEkTvZC
 GwjE84Vb7C3gq8GKdxGrotCZb3v9bolOBFXQgOaP7n1NPWz7kq5LIq1FEr25LECIgZYG
 7AFg98b5LZ1cbW+epkZog4mmWeyCv7we3PhwoOM2/df+UO+cG1BB8pkaNhYmWHsFM5qX
 Cgv4YEAeQMFESD/6NZ7eKYQp2ueMlP63cvvMn4pxPn117OSnGbbYYKYEN2eIDshz7yiZ
 gdODSTIPrrMRXvBhifTxFHSb5WgtvjzpclPmws5cBq/IzOmQraLu9YPVYC8aq6+vLkvC
 Ii7A==
X-Gm-Message-State: AOAM533VUYBvIrLY4LphWoF9WYaMcuPI3qD1BHigDg8BwcGaKP0rwAw/
 GziMs5oq477cCiowM4uU9g==
X-Google-Smtp-Source: ABdhPJytlg8Rd17SG2Xpxxb2QPBALLGcdAVJUaxLHiJr4h8bQywp8afLDDXcpMLP4g+TKe2OqcmrJw==
X-Received: by 2002:a05:6638:35a0:b0:31a:d42:1dd with SMTP id
 v32-20020a05663835a000b0031a0d4201ddmr3098236jal.95.1647272492898; 
 Mon, 14 Mar 2022 08:41:32 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id
 k15-20020a92c24f000000b002c79ec214f9sm2189432ilo.30.2022.03.14.08.41.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Mar 2022 08:41:32 -0700 (PDT)
Received: (nullmailer pid 104552 invoked by uid 1000);
 Mon, 14 Mar 2022 15:41:28 -0000
Date: Mon, 14 Mar 2022 09:41:28 -0600
From: Rob Herring <robh@kernel.org>
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/6] Add sata nodes to rk356x
Message-ID: <Yi9iKBr7pPUuzg15@robh.at.kernel.org>
References: <20220311210357.222830-1-linux@fw-web.de>
 <05309a59-85cd-2434-6435-6fd956fa75d6@opensource.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05309a59-85cd-2434-6435-6fd956fa75d6@opensource.wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_084134_449795_F3F66F9D 
X-CRM114-Status: GOOD (  12.06  )
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

On Sat, Mar 12, 2022 at 05:00:53PM +0900, Damien Le Moal wrote:
> On 3/12/22 06:03, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> > 
> > This Series converts the binding for ahci-platform to yaml and adds
> > sata nodes to rockchip rk356x device trees.
> 
> Rob,
> 
> I saw you took patches 1, 4 and 5. What about the others ? Are you
> taking them or should I take them through the ATA tree ?

It's all dts changes, so they should go via the sub-arch trees.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
