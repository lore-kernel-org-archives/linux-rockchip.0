Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71025C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:41:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BB6221BE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:41:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1CNG6x5b"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BB6221BE5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Eyq0QkJo/1cXDhsXvkn0AJKARfZ+P9BZcdsNTjq2464=; b=1CNG6x5bZOWGr+GNzsmtEsO3+
	yO4LqjwNnI3krj8xWF/XhdT1XEK38Drsr6rBNnpfRdbas7vNGE8rs6N75aAY/L3ZQORy0i7NgVZuR
	EaoeVoRwilIancgrJbRMiEmHsVwRNV7MxRGcrAWnjPJJhTd+nrg7A0nq1uWeW5j7ooRz+caihyyho
	cu4iRFsu9kamdYgNem9MDtGPcR2K91Sf9fHE4NAQzGSX+ILjb6MHpN3GoC1j2dBt+XacFSg8k8U2K
	HCGcqxVef/YBd6OrluwdB9ftJcnCnD2dj7ibCuYMLywJ+3XhT/EZH30Nw6CAu8BPbPAW+wsTo3m6G
	1d50kjZZQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL51h-00019I-KV; Wed, 23 Sep 2020 13:41:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL51e-00018n-SZ
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 13:41:39 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kL51c-0007WJ-7l; Wed, 23 Sep 2020 15:41:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Artem Lapkin <email2tema@gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: add spiflash and ir-receiver
 nodes to rk3399-khadas-edge
Date: Wed, 23 Sep 2020 15:41:22 +0200
Message-Id: <160086843055.2412571.2414906964533987910.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200923130823.1612533-1-art@khadas.com>
References: <20200923130823.1612533-1-art@khadas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_094138_930561_379F1D10 
X-CRM114-Status: GOOD (  10.26  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, Artem Lapkin <art@khadas.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 23 Sep 2020 21:08:21 +0800, Artem Lapkin wrote:
> add missed spiflash and ir-receiver dts nodes to Khadas Edge Board
> 
> Artem Lapkin (2):
>   arm64: dts: rockchip: add spiflash node to rk3399-khadas-edge
>   arm64: dts: rockchip: add ir-receiver node to rk3399-khadas-edge
> 
>  .../boot/dts/rockchip/rk3399-khadas-edge.dtsi | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)

Applied, thanks!

[1/2] arm64: dts: rockchip: add spiflash node to rk3399-khadas-edge
      commit: 5d71f44569941386b419398463166fdf1785f4e2
[2/2] arm64: dts: rockchip: add ir-receiver node to rk3399-khadas-edge
      commit: 30a9a8c16865d37bfc0f1859a398ba1b24eec569

Moved the ir-receiver node below the gpio-leds to honor alphabetical sorting


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
