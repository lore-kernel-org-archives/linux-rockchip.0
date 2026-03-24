Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61130F54ADC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 16:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zQDXrOWFNKWDuDWlvscB9qlzEI40W3adblzNva8hz8=; b=KHhvx+o6lgJdnD
	xNcN7uSxxpyfrWKyySNuMhhbW1dQYThxCMzFn6CeWLqDLq59qj9Kx7dv/7onJD7Ac9nctxf0v0bXZ
	Z4JiavdTrCUiJEli0BV4n0y5Zvv5rcCwk88Tw81Kzb/d7H9DSRpDGFFO/POTkubJTG7GYMS0lA61F
	YvSQGz2oLoF4Nu1nDTPV72M8fMMLK6aU/FtdVbihwdlCdVU/ggV6uWlltWLak2yP8u+VFPTDpfIQC
	yGh7LHgW1Cdb9d5INKQhWs2Ns/X6vb0icAW0UMI3yfB9pF2mDhScP10ZTkkWPR9WSEagDUqajrZ6c
	5o3nCVcOpM2IgTMezowQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54st-00000001vCt-1DHF;
	Tue, 24 Mar 2026 16:45:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54sq-00000001vAu-1m8z;
	Tue, 24 Mar 2026 16:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MWUHvi50PILEaFiGX4TV4ej6NOVm50IR1cRnvT6w2vc=; b=LgiHxD/ZQb/Bxaz0kS2H1DCN50
	V63I5RKtZW+tgxjK6TDQ1fNN5UoscMwujjRuyJgPKohCvbKdZUWfZodpRatpeZMKRXnuupFNfF/H8
	hzge3Plzcpo7yAyjIUYetars9zkfEWnaWpeZsB07zj8qvyTG6rb+Bu7/KL781kzEMDoj41G94Bccg
	racXiHAOh6Y5rYBGAzEZ52UzofoiaEdarbHjJ99rIkWdwLYJNYx7Qu/jlCGI8kvbQQVGe5VLev838
	fm6Vkd2f11pbMaWJIJHCe6MtM7kL3dODpfgS8gcTX2RIo1JW+JzO4lBryk0sfaZU4+7nzypz329eQ
	VPAY1SpA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: Pass linux,code to the power key on rk3288-veyron-pinky
Date: Tue, 24 Mar 2026 17:45:29 +0100
Message-ID: <177437057316.780275.3596701070961076478.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260323125721.692139-1-festevam@gmail.com>
References: <20260323125721.692139-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_094536_539427_AF0D9DD8 
X-CRM114-Status: GOOD (  10.02  )
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


On Mon, 23 Mar 2026 09:57:21 -0300, Fabio Estevam wrote:
> According to gpio-keys.yaml, linux,code is a required property.
> 
> Pass it to fix the following dt-schema warning:
> 
> lid-switch (gpio-keys): key-power: 'linux,code' is a required property
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Pass linux,code to the power key on rk3288-veyron-pinky
      commit: 94c8dc1fa8e1ad4037084204152bca1e799d7d1c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
