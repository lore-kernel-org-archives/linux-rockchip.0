Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C190C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FJ1Y7Y6OpCjELnXMZE0XGAtMlh3NQCaSaeo4eJEC9TE=; b=BQE7gMz1yX6yDILxxp10rdfuFf
	SHe5s88P9bWclCQHFnyXXDAIxnJH84+h08ayOXqUTirD76Lbu70ZwXTrSTJ5AQlemNuLcqHwiRq3R
	U9yqzkjyVNgxobeXxtWMFT/R8zkIe5aKtYGvCaBF2Qzwb68xso1UZRbBgDJYLSj+GiLpsfzY/VU8k
	1D/3zye+WAqzPAnrfGGVvKwmIamfbnMxyz65CHzXqFVf70+9hvELcqxEDz5K0wRkF/unNOY+oPE/1
	nXauOmHpybZLMgMnSWlRAb9SMANTLrDUXzyorf8iD/tbv7iZ6iFyATkOfs685TjWdVZb9hklkhix+
	aERQahzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD04M-00Ej8z-3m; Thu, 27 Jan 2022 08:23:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD04I-00Ej8Y-Ro
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 08:23:49 +0000
Message-ID: <066b38a3-eb4a-c3f6-6d26-2db0ab32a58f@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1643271822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qwqZW37QkuRlkufzA+ayPpkTDdPqUvook3YoetOVbtk=;
 b=OXFMsvA/4RISlSgDsGRd6GNyh86NuSgpcdR4GvuEwqUdKKbcvEU92YGoHrWwQWW7tV1WMz
 MCWvXVltfDfaXBLWyJWUwFB8p80GAeJZroiIJXP7g92tdasHGVWWrMENWUCNSKTqD5kg0/
 NPzi4IFzc+cI5MdletK0Gp/Ryc909Ub0P2ZNrn/JFsLlY5q8XOvA4J3bdLOg3/MaZqa/Qh
 07JBqptP1gUYEbyMSgVI8kKtlhctcm+dq5fU39OeooyllYw28aY6aVpBVp4bJ7JI+i+Gem
 yKOMW02myuJiDOOVH3aVTayYw8bWdb7hfBnJyaLArDE3EL3EWOyiubzm7sZLQQ==
Date: Thu, 27 Jan 2022 09:23:40 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v4 RESEND 0/4] power: supply: Add Support for RK817 Charger
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <20210916194208.10387-1-macroalpha82@gmail.com>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20210916194208.10387-1-macroalpha82@gmail.com>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_002347_422692_2CC3887B 
X-CRM114-Status: GOOD (  18.16  )
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

Hi Chris.

Any chance of an updated series based on 5.17-rc1 soon?

Keep up the good work.

Den 16.09.2021 kl. 21.42 skrev Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>
> This series is to add support for the Rockchip rk817 battery charger
> which is present in all Rockchip RK817 PMICs. The driver was written
> as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> myself Chris Morgan <macromorgan@hotmail.com>.
>
> The driver requires some basic parameters be described about the
> battery in the devicetree such as the maximum capacity, the minimum
> and maximum voltage for the battery, the maximum charge current, the
> maximum charge voltage, and the value of sample resistors and sleep
> currents.
>
> The hardware itself contains an ADC capable of measuring the voltage,
> current, and temperature of the battery (though my implementation of an
> Odroid Go Advance lacks a thermistor for temperature). It also contains
> a columb counter, registers for tracking the measured voltage and
> current at boot, and a few bytes of nvram for storing data.
>
> Changes from V3:
>
>   - Corrected issues in device tree documentation.
>   - Added additional logic to battery to correct for columb counter
>     drift when the device stays plugged in at a full charge state.
>
> Changes from V2:
>
>   - Updated devicetree bindings to use common property units.
>   - Removed unneeded includes.
>   - Updated rk817_chg_cur_to_reg to make more legible.
>   - Simplified formula for displaying calibrated voltage.
>   - Updated power supply type to POWER_SUPPLY_TYPE_USB.
>   - Implemented get/put_unaligned macros for bulk reads and writes.
>   - Changed numerous dev_err() to dev_err_probe().
>   - Call power_supply_put_battery_info() at end of probe function.
>   - Removed unneeded whitespace.
>
> Changes from V1:
>
>   - Fixed a CLANG warning regarding an uninitalized variable.
>   - Fixed a CLANG warning regarding a pointer as a bool value always
>     returning as true.
>   - Added Maya Matuszczyk to the Signed-off-by.
>
> Chris Morgan (4):
>    dt-bindings: Add Rockchip rk817 battery charger support
>    mfd: Add Rockchip rk817 battery charger support
>    power: supply: Add charger driver for Rockchip RK817
>    arm64: dts: rockchip: add rk817 charger to Odroid Go Advance
>
>   .../devicetree/bindings/mfd/rk808.txt         |  38 +
>   .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  26 +
>   drivers/mfd/rk808.c                           |  16 +-
>   drivers/power/supply/Kconfig                  |   6 +
>   drivers/power/supply/Makefile                 |   1 +
>   drivers/power/supply/rk817_charger.c          | 959 ++++++++++++++++++
>   include/linux/mfd/rk808.h                     |  87 ++
>   7 files changed, 1132 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/power/supply/rk817_charger.c
>
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
