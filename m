Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8559C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 00:09:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8836260F38
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 00:09:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8836260F38
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QrBpvMQOOirl5J3Xhe0OMslmZaxEHGy9gd84KZVXs0=; b=KLUYp3islAlY1B
	RY1W9kSAJgOZcyk2GT3yb1a/+oCuoURCWpUut21iy5Kh35nhBdhuyAo8K/H8vH8zLBnBRh3rjl6Gx
	ca65q+RDi4QvWxIN5bxzpVL0/DiT5f+F+ueqtCsgkZWbFFkYVZFO8jVLF48yMZzM/2utSow0mWNWD
	psHv7p3pgvfRU6l43QQgebVpg79VOavVE+/8iYa9a0Dy/Bk7QZzYTtBlKdHOHd+VGQdCWne/N9sO4
	9gvWlr9yT4BBYIqQPT8yQBw81agiJ7VhO/bqZ4o+AoS8tz9c1mp8/k4A1rsLRI+xDb/aU61kT4pBV
	wKGUgqPRNkGTj48PlW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgFSC-009KgT-BG; Fri, 29 Oct 2021 00:09:04 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgFRx-009KbQ-DY
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 00:08:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635466128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ke1RR/yh2Lw9wS2LgxkSgK8p4zl57sqmHmt240T7mE8=;
 b=dTew1eGEyK0j3YxK6KfrZGQAvgsYsSJmpSGP4FTcJUbwawk7OKOTPYpte1PkzCxVjTIy/X
 kzNjps2vjcN7kFM3/eBeuv6+9NIccsecSZXvmkJ3Hf32UTJfI/lAli6q5xiuH6UeIRhQeP
 LgndWC4WaoWkTLQRpDtSGgGBRBxzP8Q=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-2hyZSvVtMci37B3zsMYGxA-1; Thu, 28 Oct 2021 20:08:46 -0400
X-MC-Unique: 2hyZSvVtMci37B3zsMYGxA-1
Received: by mail-qv1-f69.google.com with SMTP id
 gs5-20020a056214226500b00382f5609124so6379152qvb.8
 for <linux-rockchip@lists.infradead.org>; Thu, 28 Oct 2021 17:08:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ke1RR/yh2Lw9wS2LgxkSgK8p4zl57sqmHmt240T7mE8=;
 b=i5QyT6dynNKhUlKvS6VUneqC0YpGxi0MqXUJTgcSP/csElF76KgJFsaDyAbwRaS663
 p3MzgnyaXReHTZAyOpf1nxzSBlpaJrSF0djM4hK5s+Bd/Ojjx53Cp80XT0CpB6h8AzO/
 mqmuTGH2VnPl9596ddyZNMqh1Xmk1GF/CSrRPv62LAJKskNr1kFfQvTFmcJ1u7FJbFYC
 iXj2gpotBku3uFXovRhO+MelfcOCjfpiIEKCUXH0+0PC7rHF9AUw67shEJ7Jz+QZ8+Ru
 /zq8qMjK52JVlekD26wSxh5uPTiRDwYTSpfa13AdKrKOQfEjI03GdUUiteZoeVNpGES1
 uuig==
X-Gm-Message-State: AOAM532aiCnrpu5EU5jxJFm9IxlsnLt3y76sl8Z1aoDjyxdBcL6HdrU+
 Rx/lZR6ILqt7OIcrLY1HBhnb3OYWOzk37d2qSIMfDmvXYaCR34cUmpe2O1TuU8rQiSgLeIc5/IG
 cgjpJb76m89xn3U75p2lZKcmoEvCprG9o5dXEUjsy5gAGj9ch
X-Received: by 2002:a05:6214:2608:: with SMTP id
 gu8mr3538035qvb.18.1635466124338; 
 Thu, 28 Oct 2021 17:08:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJylNxarNV97CLBKGSh04boGFTKqTFzoyBWJzfMvavg7iSpapV71rVFB8MJzAYfXc/7HhcAXXFMvY7OmwJ17Vrg=
X-Received: by 2002:a05:6214:2608:: with SMTP id
 gu8mr3538003qvb.18.1635466123884; 
 Thu, 28 Oct 2021 17:08:43 -0700 (PDT)
MIME-Version: 1.0
References: <20211020095926.735938-1-flokli@flokli.de>
In-Reply-To: <20211020095926.735938-1-flokli@flokli.de>
From: Dennis Gilmore <dgilmore@redhat.com>
Date: Thu, 28 Oct 2021 19:08:32 -0500
Message-ID: <CAJesf3Opx3KBPgBdQbKYTdBkoWhuuvphKm6BoVoaqrs_JBz13g@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable HDD power on helios64
To: Florian Klink <flokli@flokli.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Aditya Prayoga <aditya@kobol.io>,
 Rob Herring <robh+dt@kernel.org>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, linux-rockchip@lists.infradead.org, 
 open list <linux-kernel@vger.kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dgilmore@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_170849_576522_60554EA6 
X-CRM114-Status: GOOD (  20.70  )
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

Tested-by: Dennis Gilmore <dgilmore@redhat.com>

On Thu, Oct 28, 2021 at 11:37 AM Florian Klink <flokli@flokli.de> wrote:
>
> This adds the hdd_{a,b}_power blocks present in the armbian helios64
> dts. [1]
>
> Without those powered up, no HDDs will appear (except one connected via
> the m.2 slot).
>
> From https://wiki.kobol.io/helios64/sata/#hdd-power:
>
> > The power delivery of the HDDs is divided into two group:
> >
> >     HDD Rail A (Max. 3x Drives)
> >     HDD Rail B (Max. 2x Drives)
> >
> > Helios64 implements a power staggering approach where HDD Rail A will be
> > powered up first, then few seconds later HDD Rail B will be powered up.
> > This power control scenario is performed to reduce the inrush current
> > during disk spin-up.
>
> In practice, this power staggering approach will be included in the
> bootloader (not in the kernel), as we might want to boot from a SATA
> drive.
>
> From my experiments, if the bootloader doesn't implement the power
> staggering, only one HDD will get recognized (probably cause the others
> didn't boot due to few power).
>
> Still, it makes sense to expose this block in the device-tree, so the
> kernel can ensure both rails are on (and this can be shared with
> u-boot).
>
> [1] https://github.com/armbian/build/blob/744ea89a589d62cb6f409baab60fc6664520bc39/patch/kernel/archive/rockchip64-5.14/add-board-helios64.patch
>
> Signed-off-by: Florian Klink <flokli@flokli.de>
> ---
>  .../dts/rockchip/rk3399-kobol-helios64.dts    | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index 738cfd21df3e..93745dcc2af6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -82,6 +82,30 @@ led-1 {
>                 };
>         };
>
> +       hdd_a_power: hdd-a-power {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> +               pinctrl-0 = <&hdd_a_power_en>;
> +               pinctrl-names = "default";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-name = "hdd_a_power";
> +               startup-delay-us = <2000000>;
> +       };
> +
> +       hdd_b_power: hdd-b-power {
> +               compatible = "regulator-fixed";
> +               enable-active-high;
> +               gpio = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
> +               pinctrl-0 = <&hdd_b_power_en>;
> +               pinctrl-names = "default";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-name = "hdd_b_power";
> +               startup-delay-us = <2000000>;
> +       };
> +
>         pcie_power: pcie-power {
>                 compatible = "regulator-fixed";
>                 enable-active-high;
> @@ -422,6 +446,14 @@ pmic_int_l: pmic-int-l {
>         };
>
>         power {
> +               hdd_a_power_en: hdd-a-power-en {
> +                       rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
> +               hdd_b_power_en: hdd-b-power-en {
> +                       rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +
>                 vcc5v0_usb_en: vcc5v0-usb-en {
>                         rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>                 };
> --
> 2.33.0
>


-- 
Dennis Gilmore
Multiple Architecture Portfolio Enablement
T: +1-312-660-3523


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
