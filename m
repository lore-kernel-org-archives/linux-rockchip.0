Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534BCC63797
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Jan 2023 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOwjEaIhLB87XWosriz32ROdEP3ro2ruqTkR6GYKIU4=; b=OTvFemPIet/8gi
	MHa/t+ZjOrZ73jzfK6d0X8Lesz1xakZ/0Qw/R1rFYrTalG1RaZvJ6Ac90necvGymePPoXq4CqY8Uz
	eYEwFczmCsxjT7lkryzCicV6EQetfWUmCsw+zBuvz/ldc0+3fU6NCaqsC6nhLbzKQ5B8E2yCRjSRH
	K7YNz0eMXfB+KpuHimC5JW2Phur3z2445oZt0UVBcOt1d5nNbDUKruYkBn1Cb9lCe7/9jw3UR/fwj
	2muuhkSudY8aWwlgLnzHEPJvNPOFNDN2GK0TRyTKSMPXZDBUW+FMKBQzZYcKVZL2dZgnpmekMsqg1
	lP6qlIefvmSHDOdwS9cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4I2-007TfY-H7; Sun, 15 Jan 2023 14:47:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4Hl-007Tba-F5; Sun, 15 Jan 2023 14:47:02 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pH4He-0007bK-Dk; Sun, 15 Jan 2023 15:46:54 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Lucas Tanure <lucas.tanure@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix RX delay for ethernet phy
Date: Sun, 15 Jan 2023 15:46:51 +0100
Message-Id: <167379396100.36245.4453692262088268079.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113130220.662194-1-lucas.tanure@collabora.com>
References: <20230113130220.662194-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_064701_564752_4176A92D 
X-CRM114-Status: GOOD (  10.45  )
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

On Fri, 13 Jan 2023 13:02:20 +0000, Lucas Tanure wrote:
> Add network PHY rx delay and change type to rgmii, so
> that it is applied. This fixes packet loss when more
> than a few packets are exchanged.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix RX delay for ethernet phy
      commit: 0b86f9570e7713faaa32f2775eb04021d1213018

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
