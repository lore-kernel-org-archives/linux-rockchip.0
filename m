Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39007C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:55:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C64C60C3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 17:55:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0C64C60C3F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyjVYLs7quIGYp7NU8BDBXcxDG5IpyVAaiHQmiqDz14=; b=q6PpP4wjL7+w6k
	mO8qmFL6wTnj7wNz6ph8zfJrT9qA0dQsu96nPZPoBi7mGj5AGW5qpZVj2M38knUjrrP+Wm9PePcQx
	/pOu0y091ws4YcAJQC9AYNPjKT3G0EysV4rZ5kWGAwvuegURWByI3Hm25TOHm7S2fXEA4EKZooC46
	tCWlNqTk3lcuLLDjb4mfEnOJP7MJImbqQKnpnj7QtMFGXsnJ5OklN3Yq1FFjMOD3lD010KQ1N60p0
	+gjWiHljRD+xrvnALmseH7cv2rS2ZZNt96xev64M8oYY3RqediYsc3yRsmDHjfedqPwTIx4IIT5L9
	xHoxEmREFgFSP1+8W/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nmM-001v02-UE; Wed, 28 Jul 2021 17:55:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nm5-001usZ-1M; Wed, 28 Jul 2021 17:55:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=hpRbk0yCaD06IT2pljlpFDQ+YXKte4gavVlH1cev1Rw=; b=3TqZYHyMWBYfoFw895VTj5AHTx
 L059GjKxNd/svHThIWsqVNnhCK/2FDLfwgFKZaKuQNISIwNCjPS6Ftix2BEc8yjgXM481q5PCRqcj
 2AA+3o6sB3Bs8P8H/Bygb8bfir6xaHyHsIAdrm0hWP9oTDx5f58F31Pa9Ne6mwWuAuic=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1m8nlw-00FDLz-HE; Wed, 28 Jul 2021 19:55:12 +0200
Date: Wed, 28 Jul 2021 19:55:12 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3568-evb1-v10: add ethernet
 support
Message-ID: <YQGaAFvqqc7wXrWD@lunn.ch>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
 <20210728161020.3905-3-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210728161020.3905-3-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_105521_132670_7145F511 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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

On Wed, Jul 28, 2021 at 06:10:20PM +0200, Michael Riesch wrote:
> +&gmac0 {
> +	phy-mode = "rgmii";

...
> +
> +	tx_delay = <0x3c>;
> +	rx_delay = <0x2f>;

Hi Michael

In general, we try to have the PHY introduce the RGMII delays, not the
MAC. Did you try

phy-mode = "rgmii-id";

and remove these delay values? It is hard for me to say if that will
work because i've no idea what 0x3c and 0x2f means? Are they
equivalent to 2ns?

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
