Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B75FCCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xkp57RMI1/U5qOs35IDlPQ+9U4aHDeq7TjJXufQVYew=; b=P6AfiLAgTpsiX6
	Y/XRSjdF4CILll3yLmeacfmAfaEvYuvG6hHuX8jF2QOL61weMkKYRb/Wt3/BwWapphnAdwp0XlDYL
	ZDz87F5Jb82/7swJtF5okY4IogFTtWlrREVjBnZAaljcp4j6qtA30AXwsgsJH0IzovzGSmhcmOqcv
	b7tFiEjS07JJ/2dLwj0UkY6HL1MzqTINFgg3AST9nUVOhdbiO5iMw710TnVHpyA56IFFLDg4gopDe
	57I6YPg8zC+3nTqsg6MnhGsCeV2gtvhJNbq//jTShurihsTgSEiPqudIdctkN7N7H7n5Q5ApHLuVB
	dni5QUfGwIehHOfZWXHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIh4B-00000006ZNl-44L6;
	Tue, 11 Nov 2025 05:37:19 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIh49-00000006ZNP-2Kn0
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:37:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C3525404BB;
	Tue, 11 Nov 2025 06:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762839434; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=qf/MrRR7g4WMSz/OzX2qYEW5Y+Z/pQl4c5xRFA4/jWM=;
	b=wm+ldcssn6BdC3o7VWqTpteTSLg3pUTz+WA1VWPjIjBKwyOcJcUd/6Mte2pDId1CFf3avd
	Z2DUuavT4b6dYUr5d8gEJNyjLzVOsat9JOmES/Ib+Xw+0H0Vbg5k12MHrExsrepjCQXDPk
	kMOCBPX8jHD8OJ9UWN1uP2kALFYtwJdRHomOxpkw5/aCIIM2gWQwM0IHD0/6zYnOrNWK54
	H3YsY2JiNwIQoAvB8Iwn1hlCM9H6cvIB+yfiVTIYC7k0X3BxzoqHj0Vlqi+LdMEbTG65k3
	uVTbdLkJPy5P5Kf6o4oZsyUenRKX9YQ24kAf9TQT82j//6KKVJNPI0aeDDgU0Q==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-4-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-4-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:37:12 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <46ca3fd6-4513-0a0a-41b6-8fffae9b3242@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add eeprom vcc-supply for Radxa ROCK 3C
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_213717_812123_1E271286 
X-CRM114-Status: GOOD (  11.47  )
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

Hello Naoki,

Thanks for this patch.  Please, see a couple of remarks below.

On Tuesday, November 11, 2025 06:09 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> The VCC supply for the BL24C16 EEPROM chip found on Radxa ROCK 3C is
> vcca1v8_pmu.

There's no need for a line break here.

> Describe this supply.
> 
> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Link: https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf p.13

The same suggestion about using explicitly placed references, from
the patch 1/4 in this series, applies here as well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> index 6224d72813e59..80ac40555e023 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> @@ -466,6 +466,7 @@ eeprom: eeprom@50 {
>  		compatible = "belling,bl24c16a", "atmel,24c16";
>  		reg = <0x50>;
>  		pagesize = <16>;
> +		vcc-supply = <&vcca1v8_pmu>;
>  	};
>  };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
