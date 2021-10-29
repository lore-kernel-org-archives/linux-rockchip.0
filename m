Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59429C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 00:08:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06EA86103B
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 00:08:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 06EA86103B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4w9FiE3WcCQcFF1AZ8X8GceyP8d1Kk2SjduAbSoLB4=; b=jm34/vQlWKdemr
	GD8C/pHwDDjjLRixr02sIA1D2bZ+6pAgRF1EenqfA/Kf5ugFrEPRkxg6RR85/wtfoj3OAkWqAiH6Z
	3Nx4vEKeNlt6dPYfAEHwykG/JzeAMS2MxtX6ZI0urnwWwWDj2UanumMJ+T2fUAIK2tRqXyR7e0im/
	1CTCqKfFh3Lz5Njao5JC393sIiRy+qhA9kwZDasNa1BjRo4AyK02KSLh5Pv0KsMZ7mLBQyy8Ynqpj
	hJ0m3oHnVWKjqhMc+e49H2N3lc/vzZSAlethqbyrZso7eCK2QOJoevvyVu9CBsgiKzwzrM5S+Q9a0
	XvpDCdD0mfRdMD/ES5/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgFRY-009KXu-6U; Fri, 29 Oct 2021 00:08:24 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgFRU-009KWM-Kh
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 00:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635466097;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2dXWLir0xySSN/lNTgQ/kSLAwhiL9BlluDCsS0xaJJw=;
 b=WvdiC6ePaKFEXvmzotZsBPIlvhctWkXGDt33OoBPSTkxE05vqfiJqAS4+op0KKqbq4VqrV
 YAZwgzIzZXtC29gUFBDN2+LRa55+KwOgm9/S520AKbjVvvn96T6U5oz9EnpBEeUKvy3Pw0
 H4Zb1Z0/AWXncPntNh7wFssOjVOnK8w=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-5HTIxfIeOOu2J9NT2VAX-g-1; Thu, 28 Oct 2021 20:08:16 -0400
X-MC-Unique: 5HTIxfIeOOu2J9NT2VAX-g-1
Received: by mail-qv1-f71.google.com with SMTP id
 q9-20020ad45749000000b00382b7c83aa1so6350840qvx.11
 for <linux-rockchip@lists.infradead.org>; Thu, 28 Oct 2021 17:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2dXWLir0xySSN/lNTgQ/kSLAwhiL9BlluDCsS0xaJJw=;
 b=5i66HfqbI5zunVdPeDcQeztouKGiiGDouowBsMizvWgEMHwk4A/66QHW93FUp5tNUk
 chzvf7ZspnrDqQXTOLONi4797MyOFvAfbHcF1pZ8D9U9oZLJrFbtryO9/aUWOCbg5ADb
 Caeqpr/X77o0tYb4K4Aih/VgQzv6AAMWj3yduIxMmWN1DC/91ByvwlmfpTfJ5cKbk7Uj
 bqm1ZGo4aBqS4uJyYkKe8yEmv9zfw/ExWhE3/8WR+QQkMPVyjv1X8eutCVLfZEdUEt1f
 xO2M+0eUhzXmKM1Krc5A9dYSF8z+KBuGOm6DXSohQGaQztGxnoW92nDs0VPOi2fvbKXw
 dCQQ==
X-Gm-Message-State: AOAM531RtnhQXVlDRVb5K4+QDjHuVU4C/3Xzy4jPTXsPSnbGW59vSZxL
 OCOGBusS1BCOE5wSc4Y2IFcx5i3Fxk6t+pANP8fcX8/QE40ie53jeaNL7/afbToy/dbY64mViZM
 hPA6s9pL4BpqfNoTTMl93d1HdgS222SoAaJl4guu3jbIZpKkD
X-Received: by 2002:ad4:5423:: with SMTP id g3mr7259955qvt.45.1635466094764;
 Thu, 28 Oct 2021 17:08:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlX0H3PzRKE7YwLRNiq7Ik8MdJouN/ytTWhzbDMAC3kwJbBebEZkU4mrkC1/tqczLe8cLMAPmNmdhpaAEd34k=
X-Received: by 2002:ad4:5423:: with SMTP id g3mr7259936qvt.45.1635466094493;
 Thu, 28 Oct 2021 17:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20211020095926.735938-1-flokli@flokli.de>
 <20211020095926.735938-2-flokli@flokli.de>
In-Reply-To: <20211020095926.735938-2-flokli@flokli.de>
From: Dennis Gilmore <dgilmore@redhat.com>
Date: Thu, 28 Oct 2021 19:08:03 -0500
Message-ID: <CAJesf3Oenzbtm09YbgfMowWSkJ0OBCVkNq4Fh3rDqN7pW9SCJg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix poweroff
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
X-CRM114-CacheID: sfid-20211028_170820_779587_6077E5E9 
X-CRM114-Status: GOOD (  12.92  )
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
> Adding the rockchip,system-power-controller property here will use the
> rk808 to power off the system.
>
> Signed-off-by: Florian Klink <flokli@flokli.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index 93745dcc2af6..af3bf7800dba 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -293,6 +293,7 @@ rk808: pmic@1b {
>                 clock-output-names = "xin32k", "rk808-clkout2";
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pmic_int_l>;
> +               rockchip,system-power-controller;
>                 vcc1-supply = <&vcc5v0_sys>;
>                 vcc2-supply = <&vcc5v0_sys>;
>                 vcc3-supply = <&vcc5v0_sys>;
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
