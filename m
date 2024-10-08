Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 600DECF0427
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 21:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/vya8gEnlCnFmrtHlFxSyIxovj+rrAtQpv8TOq++QA8=; b=GAKKaRz4B/g2a/wtqccN3BTX+b
	Xrst99eQ88nY/o2C78SrfgRC/Kbgx3LsfXI2LQyMs8IG/UJrwU+wm+XkzelQyDD6ulTKYkCswBeKI
	t/46f2wj0PzhKZyeMbiRuPB6oG0DtdNmiSdYDGe4CzqZnuNtOom0gepm5NatsJJCKwCDyCHzhU0du
	bCeztG4dZUUzZR512+dcS99ghcPINICS8iJcremm6aoQY0YNkwkX6WrkAS38jyJMJiWe0EhgSkiip
	xUOVOmn1F5S/qJmz6aL+bjuxjhsM/R573u02ycnkcpLyZiLV1SinrxBwocnLFwM8wy6SzVNIPNxtb
	F/Jjsnaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHRy-000000078pT-43H5;
	Tue, 08 Oct 2024 21:08:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syHQ9-000000078a4-2Nf8;
	Tue, 08 Oct 2024 21:07:07 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728421623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=la1BG3rFIOzZP5Sr6HqIczoniGwSsf5hIQpvS7m6tGo=;
	b=VNRTtlNVYyUMUun5lbIbXrm1WPtnBj9sNX2RU9Vxzlq0B/aKWTfbdK6ogJH306k2fmKTrB
	QhD40LcrKLkbj7ijj23ilZDJBiq4Rw1ufvL8H6U149TMIxiR53ikQXwJBK+CVPBluuAfmP
	qGr2988/LYzKI4VdIWkHnPzf5IyNJF4c0KBHlXUdVlTiUqGBmYLJ+pUIvQOv2gFgHhDZb1
	lhj72ngRXWA//utRN+fxZqe/XeL226GEHWGKWgMvRU1ZYeAqSXGJ5dNKWLatjawoSK2fGE
	TZsVT0ZH52pyHJgO6w5ObNk47pORaXgQ/O2CFBbIX0gtoZn0+4GmjI5OW2K1rA==
Date: Tue, 08 Oct 2024 23:07:03 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Furkan
 Kardame <f.kardame@manjaro.org>, Elon Zhang <zhangzj@rock-chips.com>
Subject: Re: [PATCH v2 02/14] arm64: dts: rockchip: Drop
 regulator-init-microvolt from two boards
In-Reply-To: <20241008203940.2573684-3-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-3-heiko@sntech.de>
Message-ID: <0e2dc1883c1287cdb629e8020dc95a4f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_140705_930397_9411ABD8 
X-CRM114-Status: GOOD (  15.93  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> rk3568-roc-pc and rk3588-toybrick-x0 re-introduced this property 
> despite
> previous patches removing older instances already.
> 
> regulator-init-microvolt is not part of any regulator binding and is
> only used in the Rockchip vendor kernel. So drop it.
> 
> It is used by u-boot in some places to setup initial regulator-state,
> but that should happen in the existing -u-boot devicetree additions.
> 
> Fixes: 007b4bb47f44 ("arm64: dts: rockchip: add dts for Firefly
> Station P2 aka rk3568-roc-pc")
> Cc: Furkan Kardame <f.kardame@manjaro.org>
> Fixes: 8ffe365f8dc7 ("arm64: dts: rockchip: Add devicetree support for
> TB-RK3588X board")
> Cc: Elon Zhang <zhangzj@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  Having support for the
"regulator-init-microvolt" property in board dts files, or not having
it, goes back to the main purpose of the DTs, which define hardware,
but, in general, do not contain system configuration or policies.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts      | 3 ---
>  arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 1 -
>  2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> index e333449ead04..2fa89a0eeafc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> @@ -272,7 +272,6 @@ vdd_logic: DCDC_REG1 {
>  				regulator-name = "vdd_logic";
>  				regulator-always-on;
>  				regulator-boot-on;
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -285,7 +284,6 @@ regulator-state-mem {
> 
>  			vdd_gpu: DCDC_REG2 {
>  				regulator-name = "vdd_gpu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> @@ -309,7 +307,6 @@ regulator-state-mem {
> 
>  			vdd_npu: DCDC_REG4 {
>  				regulator-name = "vdd_npu";
> -				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
>  				regulator-max-microvolt = <1350000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> index d0021524e7f9..328dcb894ccb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
> @@ -428,7 +428,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
>  				regulator-boot-on;
>  				regulator-min-microvolt = <550000>;
>  				regulator-max-microvolt = <950000>;
> -				regulator-init-microvolt = <750000>;
>  				regulator-ramp-delay = <12500>;
> 
>  				regulator-state-mem {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
