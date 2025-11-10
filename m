Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915A7CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 05:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4BOT//ano8hgb5BjEfSMCyqvIRHTEGTbAbsDjy5JD4=; b=NVb/8pKzhpJa8d
	EIa2GUzukl+1BnRZdvEavNbAl85wX2IcEj/h5Z/MKm4zKCZGED1+s8RCa+O9tcD9OtVVfLUkBelV9
	Q7Nt65uMztodKhzv63/GTkj3dDGK4t1gQT8Vj/jtDiKf0qA+3g+rMryxNiNsPL7z71MCIJe/7hPX4
	m+JLzh+nTTQiPnfgzS0wyHqZXeVtQfu0mtdeS92tV8krSw8jSpFxBRND8LMKzCDUDCfw7ksONMNlL
	UAP2KUvfJT/ZWFHTn3lyj1XsXUxl6myzgSxus/hPVH442IfWGJnG4sn3CskFvHY4QUazA9+OqLbCg
	eLkJJ8Ps2RsBqjprD/dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIKHW-00000004lfu-1eYr;
	Mon, 10 Nov 2025 05:17:34 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIKHS-00000004lfE-1XLI
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 05:17:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E55D940ED0;
	Mon, 10 Nov 2025 06:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762751847; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=cPcmnHCET+IM59wp4CqA8GWt4g4p7k4oj5TBdF6fF3w=;
	b=mdfoj30oqTMDyw7oUaRvbxJlgnDpF4EYkuqEUC/1X1Ra6skHOBRquxbzSGChg+npcKfDNB
	18V9qJicX6BLzZs+V0f3a+7fmC/xgO/kGj2xRZr6+CTPtNmKHQ73vgLUOStxUZI87z201J
	804QWUwx1Mm4zl6IBdS80BWp39P/7ILflPO4FtZMLjQcgRjBWDogiFfK3rXy+I4NBfV6+M
	m4QpJDp3PvvVlqE6eN0U7ybUv9MypZTR8GvxbZv5mqoeNag5r9P5kLnlwDVfodDvTxlD7N
	syNEy2dRJruyF9TDIz+s5i4LlHES+6cBCUNwLNkglyqGZ1ci7Qu6bqYu2t052w==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251110035455.839863-2-naoki@radxa.com>
References: <20251110035455.839863-1-naoki@radxa.com> <20251110035455.839863-2-naoki@radxa.com>
Date: Mon, 10 Nov 2025 06:17:25 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_211730_552277_DAA1B039 
X-CRM114-Status: GOOD (  14.29  )
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

On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> Make EEPROM read-only as it may contain factory-programmed
> board-specific data.
> 
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..ae7b03488c9e7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
>  		compatible = "belling,bl24c16a", "atmel,24c16";
>  		reg = <0x50>;
>  		pagesize = <16>;
> +		read-only;
>  	};
>  };

I've checked the board schematic and making this BL24C16 chip
read-only makes sense to me.  However, I think that the patch
description should be expanded to contain a better description
of what might be found in the chip, such as a factory-programmed
MAC address.  Also, providing a link to the board schematic, as
a reference, would be a good idea.

With these remarks addressed in a v2, please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Additionally, it would make sense to squash this patch and your
other patch that addresses the ROCK 5C together.  They're very
similar and having them together in a single commit might actually
help the people browsing the repository understand it better.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
