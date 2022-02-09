Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21E99C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 07:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi89DI3Ze5m7Eu0X+P1FznLjS6hCagss6nEYjlCASPE=; b=Y3QXtfovGKABZA
	PYXz9YKSR2+8FkRiH+MjtAkUuOirZuHMzRX7yZM2ZzhIodEH8QiRTjJT/USQfOjAwvDhSwpuexR3V
	bqRwyvLQl7EVTemzLvqjxyJkkJVirS9I6LazXngrEmUqqAmUCz6KpSvzAn/2RR9OmfzeDYWcJSphU
	SLhTwQXR9dWncK97fHZdseqhdVL1YAxQUdCp47ie42heuVVnNHU5w7z4rKULsZ61jW9VicYN5j+AE
	9k0hS1r8XWLoFt8wIBQsaQFaIHL4f9wNEEcXHsIGI8YIwJqW2V3cxDSzsb9a6hBhr4IULO/4wekn9
	fyQYNEy9XkEkvQ5s/DjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHhDR-00GS35-PK; Wed, 09 Feb 2022 07:16:37 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHhDF-00GS0t-GY; Wed, 09 Feb 2022 07:16:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 31C5FB81F2F;
 Wed,  9 Feb 2022 07:16:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2928C340ED;
 Wed,  9 Feb 2022 07:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644390982;
 bh=DReAQp+QqHzrEB5qGcTuwyqcPYfSigCNnvRF5cN6be8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=juHw1gKCLF/oLka4lwOY4t4xWNquKti8kFLTsiW6Wz3fwhAmY51dLG0cBII85uYGd
 3U13C8IdQeU9hsp0TcmMj+AMk7/LWwL26kSdWsisCg2yNgztMK+2PTSURbTU5IkWYv
 2C7+bzg/QdeU/4h6uBgCb1mPNjOoYeFOlrHMniuvWX7MToF8GNeSW6koXk8cNfBn+t
 9xCEZPU1VcP9RKF1PBYrzrVyzb7M1/WkvGHuy3kNDHwlmDosqVUCcqPNZNI0XHTOKw
 nbotjLdRRf6gTq3jxEZkGvli8KDbmx0dsy9MGX5D1jMKZybApy8cFiTBcS6s3qb6/G
 uz5irB2xh+SUw==
Date: Wed, 9 Feb 2022 15:16:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, aford@beaconembedded.com,
 cphealy@gmail.com, Lucas Stach <l.stach@pengutronix.de>,
 Rob Herring <robh@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH V4 03/11] dt-bindings: soc: add binding for i.MX8MQ VPU
 blk-ctrl
Message-ID: <20220209071614.GD4909@dragon>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-4-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220125171129.472775-4-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_231625_701128_82D82570 
X-CRM114-Status: GOOD (  10.41  )
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

On Tue, Jan 25, 2022 at 11:11:20AM -0600, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the DT binding for the i.MX8MQ VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
