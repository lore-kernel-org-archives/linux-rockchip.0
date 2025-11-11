Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68325CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 05:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYSjZO5HBfECcRTffbHAyAfdHp1fmUPC//3qk6PQtAQ=; b=sPvpOnfa+OlAIM
	y/mpuvRT3Tc4ZG1KIJkEidroIdBLFUEdrXXu1CEn3ksYQPGpfQAWOB2kfuzw1zgElEcjbG81vR6eo
	TV5yXYp92ihnxx8ZkKD45LmkonivkVhevBr4jzrZ3/1Y8Z6HGFfQOJ/60Fy2qGhrQdW52o9HkaPTh
	AelFrDcYjwUszDkcomPs8KUa1JcIBzHk6uRT2kJMJp894HdL1k+wQl1MC4THs8sAbUFZmN9eBYKX7
	oJSgHYBWi9wz5bscFAfyN2Q6N6sa16CMRI5whuOOifQqfqq5lI4MjJ/+0DCc0P2a8P43h3zozQ5tB
	kjuqobfjLANrekaD9ThA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgwa-00000006YzI-459G;
	Tue, 11 Nov 2025 05:29:28 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIgwY-00000006Yyp-3FDL
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 05:29:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 1692140FE1;
	Tue, 11 Nov 2025 06:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762838960; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=29v6t3bfWYDbDwxiTAs52f+DDKQxipozunIO/CWxhwE=;
	b=H39ndUoe87WDXHKjqovJrtzffc4ybm7bzNMJQaSP0z5a8pjqH/lbZdBc9IeoJ/iWAkB7j8
	b+Ie2uH+3bgVommDKd/snxyKjwR1v9RtU06vnOCrkDMxPzKq/yqieYnLip5Ev5GPv5wKgW
	saapAVVlfGu8UaOO9iVO1A1cmR6ER1SFHIgiM/iZdQxuL+YjjIrnSr9xKbjgDDSqV3d76S
	UG+6GGcUJUb4D09Lp3hBvPnoUv4vVxsD0FuiUJjSm6oZpQFOKQiwBdYAZoB9to0WAHe32C
	n/c9eKZmfPEoif7hE6lw6tBpDG6WhPjmHDolauTuSXdqMVuuAu496lWJM9guOA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251111050924.54880-2-naoki@radxa.com>
References: <20251111050924.54880-1-naoki@radxa.com> <20251111050924.54880-2-naoki@radxa.com>
Date: Tue, 11 Nov 2025 06:29:14 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, kylepzak@projectinitiative.io, alchark@gmail.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <c0f072b9-ca40-b707-6b2c-e4683ca8aba2@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 1/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Move eeprom correct bus for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_212927_107867_4B3FED34 
X-CRM114-Status: GOOD (  15.53  )
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
> BL24C16 EEPROM chip found on Radxa ROCK 5A is connected on i2c0 bus.
> Move eeprom node from i2c2 to i2c0.

I'd suggest that the patch subject is reworded a bit like this:

  arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROCK 5A

Also, the patch description would benefit from becoming reworded
like this:

  The BL24C16 EEPROM chip found on Radxa ROCK 5A is connected
  to the i2c0 bus, [1] so move the eeprom node from the i2c2 bus
  to the i2c0 bus.

  [1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf, pp. 19

> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> Link: https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19

The suggestion above also shows how it would be better to use
explicitly placed references, instead of just placing them into
the Links lines, because that places the refernces closer to
the backed contents.  This isn't critical in this case, because
there isn't much contents, but it's a good practice nonetheless.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 19a08f7794e67..428c6f0232a34 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -228,6 +228,12 @@ regulator-state-mem {
>  			regulator-off-in-suspend;
>  		};
>  	};
> +
> +	eeprom: eeprom@50 {
> +		compatible = "belling,bl24c16a", "atmel,24c16";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};
>  };
>  
>  &i2c2 {
> @@ -249,12 +255,6 @@ regulator-state-mem {
>  			regulator-off-in-suspend;
>  		};
>  	};
> -
> -	eeprom: eeprom@50 {
> -		compatible = "belling,bl24c16a", "atmel,24c16";
> -		reg = <0x50>;
> -		pagesize = <16>;
> -	};
>  };
>  
>  &i2c3 {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
