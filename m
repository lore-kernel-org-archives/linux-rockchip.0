Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7566CC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 00:14:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C9AE061377
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 00:14:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C9AE061377
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XoREyd8deaQkQnN0fU25IKHmVnwEcXEZxfoqgCZgqds=; b=cFZWS0udvEr9RjC3Pa9RBrHVp
	JtpMdl6m/H9at3J8xILtjtsyiuKaILyEKJfRr2wMdlt2UovIQcsfCQmCEf5zG6MYWsRA35y8CkTdz
	CFfaIrFEj0U2aG7InJinGgLmv8ShGuHDUAMgpKLMC+tzVv2cgr+/sRh6V1Rs5lYdmKgLAZmnBsZZQ
	ULA4bvdN5VRpJVjtzh/yKSWzYCIoMUUtnwznnoIBGh0YXWdsqV/6/sIf604Rm3XLJG7aLUhfPC27G
	4rFD1/LBLcutqJUpmZgKtedGBMW7YcoWHe4mXsQSYI22e7WqeIsFFu5Gx8bbMbuqn5Wl8I3hNnKlM
	AVr7WYHqA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftYw-00CaKa-9s; Mon, 10 May 2021 00:14:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftXF-00CaDu-Ba; Mon, 10 May 2021 00:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=t/j8GZu+w3a6zmdd5FiIuINxrEf23Snf1lvumCkL87M=; b=J7TJlj+8G0zGNlkyxEbsMNT7nH
 Wx2GIrCs/2bMPMCEsZ9gQc6UZ3gJ6It4jvnQirKdzHIRVDTzuXGhcqmYZ6OT3BgctCutSG/qC73Sj
 5OcE4sxb8DQtUPxN9qHPlqrOztj22MxvrBVJvJyHFDuShX4xVavoSNoTJmC1YbAFAGrVWUtl1Flu4
 LSaoknFvSpmc6jdRrMJpmurb/y/WliaGbUFptmdvjus/hhdcOrZ4lbE0HGX4KpXPX3oiDlSHv1a8U
 wRG07u8iR8J6KmUCxNpzQkQuyjnhgIZtF4SLqJujFdJUsV1GeRycP9zzmmqY6FfmXoRoy6JcmxOHA
 ZTNd3/VQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftXD-008APv-1f; Mon, 10 May 2021 00:12:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftX4-00085c-Uk; Mon, 10 May 2021 02:12:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: xxm@rock-chips.com, robh+dt@kernel.org, will@kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v4 0/6] Add IOMMU driver for rk356x
Date: Mon, 10 May 2021 02:12:20 +0200
Message-Id: <162060552750.1271206.175954480906958099.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
References: <20210507090232.233049-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_171231_108040_D5B63863 
X-CRM114-Status: GOOD (  12.78  )
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

On Fri, 7 May 2021 11:02:26 +0200, Benjamin Gaignard wrote:
> This series adds the IOMMU driver for rk356x SoC.
> Since a new compatible is needed to distinguish this second version of
> IOMMU hardware block from the first one, it is an opportunity to convert
> the binding to DT schema.
> 
> version 4:
>  - Add description for reg items
>  - Remove useless interrupt-names properties
>  - Add description for interrupts items
>  - Remove interrupt-names properties from DST files
> 
> [...]

Applied, thanks!

[3/6] ARM: dts: rockchip: rk322x: Fix IOMMU nodes properties
      commit: 6b023929666f0be5df75f5e0278d1b70effadf42
[4/6] ARM: dts: rockchip: rk3036: Remove useless interrupt-names on IOMMU node
      commit: 304b8fbc950bae102f29ee1e8e8557f2fd08d69a
[5/6] ARM64: dts: rockchip: rk3036: Remove useless interrupt-names properties
      commit: 2bf375982f4a58a95e8b5184565b23677900012c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
