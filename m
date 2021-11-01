Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA4EC43219
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 09:47:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D07A60F42
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 09:47:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2D07A60F42
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flokli.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CiDecrjHXiqpDnn9wy3CBvfpot8wRPttE3e3D/eQYrM=; b=SKNBYYAbFWktXYwfbZXjLopcv5
	zSuVi/1J4aH/AVe6Fx54pu3bXrXMTEsAE6LPjBgHHcCPl4a1MgN25hzL4saa/NmmEu5fCOCpXAENX
	8wvqhsTdGjLVayoNpXodIYfDvkVT0mjw4r6igBM8/cfuBLWdnAU3EGc/Vk0xLYxPCB7hbqNkLpjX5
	z+989NKSXY4O/D5Uc7rNwIZYGefE9tMRLQN3kkA2uptl+liLaraRX2AfF1cLtAKaUIvDqLBIu6Csd
	XOzxIV00fVrTEdGTggswLRN/CB5kSYF8NVPO4OLPmHCW/dL0n3KQ4qI7GvXGb3w/tYIWxWoWI+m2B
	KMKWNMJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhTu9-00FrJt-NC; Mon, 01 Nov 2021 09:47:01 +0000
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhTtw-00FrGG-Vn; Mon, 01 Nov 2021 09:46:50 +0000
Received: from localhost (dslb-094-221-236-183.094.221.pools.vodafone-ip.de
 [94.221.236.183])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id 34FFE11E59DA;
 Mon,  1 Nov 2021 09:46:42 +0000 (UTC)
Date: Mon, 1 Nov 2021 10:46:41 +0100
From: Florian Klink <flokli@flokli.de>
To: Dennis Gilmore <dgilmore@redhat.com>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: add variables for pcie
 completion
Message-ID: <20211101094641.cseo7fvrzyzh2pkl@tp>
References: <20211029005323.144652-1-dgilmore@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211029005323.144652-1-dgilmore@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_024649_218924_5A96FFD1 
X-CRM114-Status: GOOD (  11.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Acked-By: Florian Klink <flokli@flokli.de>

On 21-10-28 19:53:19, Dennis Gilmore wrote:
>without ep-gpios defined u-boot does not initialise PCIe
>rockchip_pcie pcie@f8000000: failed to find ep-gpios property
>
>additionally set max-link-speed and pinctrl-names for completeness
>
>with this patch and the ones from Florian Klink applied to the dts
>file in u-boot sata drives show up in both u-boot and linux
>
>Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
>---
> arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
>index 9c2b45012daa..1e4042a7fdc3 100644
>--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
>+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
>@@ -534,7 +534,10 @@ &pcie_phy {
> };
>
> &pcie0 {
>+	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
>+	max-link-speed = <2>;
> 	num-lanes = <2>;
>+	pinctrl-names = "default";
> 	status = "okay";
>
> 	vpcie12v-supply = <&vcc12v_dcin>;
>-- 
>2.32.0

-- 
Florian Klink

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
