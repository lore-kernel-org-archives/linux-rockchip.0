Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5168BC1B08C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:21:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F45B613BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:21:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F45B613BE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkSO7+3BXBZUDuITZqk1b4RR4YSBQMOFzkKWarnKWSc=; b=U8uRsEwPuxpfNl
	LFvNiTgm3SqI8SRCh5lq7EbPi8TqUYBCHd1Bc5AvxvzbQP/+NT4IA4WIPXQUhX1lJVHRzOJq3Rp9e
	MrW+ldi0qoY4gP6vp40ygoKzwMCSfJVNH8jQ6koTX2jtd+vhThGHiNu5xsmuBYIXdB2fhqsbPff9O
	ZAZC6MC/ug4OiIsWElRQjAoq8zK/ncgZtYjsMdQD07DN1ufOE88UiBAdxkFBDZ+obbR5ky2sZdhGu
	CHXisf6gvXHZvwCvTjzbNUEaPrywX9qmSDF3B3neUw6uM6dNAd73DskpgsrE18zdD2cA3sfGvl4h7
	waIUw/ljpiCPf4JUJoqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3oBg-00GEYd-7T; Wed, 14 Jul 2021 23:21:08 +0000
Received: from mail-il1-f181.google.com ([209.85.166.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3ktq-00EiKg-1Y; Wed, 14 Jul 2021 19:50:32 +0000
Received: by mail-il1-f181.google.com with SMTP id y6so2754521ilj.13;
 Wed, 14 Jul 2021 12:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GXEHJejGn1ciGcfB32iWJ0BIASIbGh0gamjk36RQ2EY=;
 b=h6rP+R2Vg/M0oZR7yePt+h2X/WnhXmPNrslkYO03UUETEYNzquzwHLZN8iUSm8enDf
 F6+x6UUZ2dqrToht5Vk7yLgg0/7nR+9HehTM20ptrs5gonamgZKaApSXYyMETEaS2MhT
 1+jNmZS6MMtXBYKAqz7jKr6WnQ1iWJRev8I4Gsw5j5Udqw1BQPmkkjACf06F29Ae+YaA
 Tw1l0vp/CrIRXBxC4tWtUQPnIUMcH9G2v15eeb2ZltLU7uIwlQ9VOuizgytTD1fo8xmI
 pEiu//ca0U/FVIkcbdRuPFzLjwPN0dCs+RxSUDkbiCtLSF9vCTi5Mqf4BIAmoPInI/rg
 Yx/w==
X-Gm-Message-State: AOAM532P3xOK++7UWZ2XDxlMUylwOVyrb6pRwC1V0r37qdDP0cytlI5u
 f2thsDN3n0s0iHJLjMWv0A==
X-Google-Smtp-Source: ABdhPJwaZdTKTj53AvPt2+MZF0Huyvhd8uH4C19eS4gHeBdEwzGfXu3iI9Gkbo0t/DM4q+x0b2DRnw==
X-Received: by 2002:a92:d84a:: with SMTP id h10mr7537924ilq.55.1626292228919; 
 Wed, 14 Jul 2021 12:50:28 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id m12sm1769891iln.43.2021.07.14.12.50.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:50:27 -0700 (PDT)
Received: (nullmailer pid 3279579 invoked by uid 1000);
 Wed, 14 Jul 2021 19:50:26 -0000
Date: Wed, 14 Jul 2021 13:50:26 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de
Subject: Re: [PATCH v2 2/4] dt-bindings: soc: rockchip: add
 rockchip-io-domain.yaml object to grf.yaml
Message-ID: <20210714195026.GA3279545@robh.at.kernel.org>
References: <20210625111746.6269-1-jbx6244@gmail.com>
 <20210625111746.6269-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210625111746.6269-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_125030_151936_1FC033B1 
X-CRM114-Status: GOOD (  10.57  )
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

On Fri, 25 Jun 2021 13:17:44 +0200, Johan Jonker wrote:
> The rockchip-io-domain.txt file was converted to YAML.
> IO Voltage Domain nodes are sub nodes of grf and pmugrf nodes.
> Add rockchip-io-domain.yaml object to the grf.yaml file.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.yaml          | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
