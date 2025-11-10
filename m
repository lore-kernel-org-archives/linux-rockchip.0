Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE862CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 14:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fz9WG/x92R0BfoP1E1yTa078o9ZY4ZguF+YkFQuFzj8=; b=g99/s8woaqzNmy
	TJOBRefWeaduVZ7WWxSkmywbdPidSdyBl9ZM86wmBWmR0zRjQmWG25UVwfqRtWJUtLiP76V02/tuE
	6246nuIwJm1JAiLFRjKP6aL+FyzSQJ2P4GBrkqh/Dhi8+pcwcM0cuIOiYewUj9m/iHCwF9WD5P9cN
	C3vEt9nIqiYtiw2oyWZsdF2xV7uW423eWH+Hkf2LoobzByL+K96XsjSZy/9LhsWBgi+2nig2p+8qC
	wxfIzLB3xZ4XGB/1Iv5TzryruDjpcZmi67UYU4BX5nV6cDiR0BJY6nqoYFNuYNt5Y8Hi9VtA2W6GO
	unF9Ty2uCZYDkFa5jTRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIStZ-00000005aaK-4BX7;
	Mon, 10 Nov 2025 14:29:26 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIStX-00000005aZU-1yP1
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 14:29:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 91B0640ECE;
	Mon, 10 Nov 2025 15:29:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762784960; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8IJ+GdjgSUS9M7XEGST99otZUUAl1fQhD66tQyW2u/M=;
	b=oH0TcgFApjfrGxk36DlqTitgnrFS9B0uDtTY9l/5GJ40IXcHdTK5Is/YGLc9NWOu8nQwwU
	s7SkmOUCGMdQWPSOfmz84dgsQtbEQ8+uaADlSyeOTsv375OBu1OXvcpbh/MjfpB7EFBBvz
	45lAR68YBO7gJzqzOmZK+ZlPFAqlOgypKcoXow2UDQYcm1l7ksFrVKNIQmfcPHkqZeMFN9
	RrgLVwHhuOD/t7u0ZDvbyfxciF8/9Ve6DcLCTbdysyuCzHVusXTYDUVJVxPxD0rBERSTcw
	XQURLQ7HYRuAXacp6wet9/Yl4qj5CIa6Ov1rTFBNCtSiGUhRt8bW6hbFvPD0PA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <51135107D357A73A+50c2300d-7cc0-4f0d-99e7-8b67c0e43dff@radxa.com>
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org> <51135107D357A73A+50c2300d-7cc0-4f0d-99e7-8b67c0e43dff@radxa.com>
Date: Mon, 10 Nov 2025 15:29:15 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io, damon.ding@rock-chips.com, sebastian.reichel@collabora.com, amadeus@jmu.edu.cn, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <4135cb30-25f0-b202-765c-7343e38e10ac@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Make eeprom read-only for Radxa ROCK 5A
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_062923_742881_B7553D15 
X-CRM114-Status: GOOD (  15.71  )
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

On Monday, November 10, 2025 09:03 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> On 11/10/25 16:38, Dragan Simic wrote:
> > On Monday, November 10, 2025 08:05 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> >> arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
> >>
> >> Make the EEPROM[1][2][3] read-only. Board-specific data written to the
> >> EEPROM at the factory includes, but is not limited to, the SKU (~
> >> product name), BOM version (~ board version), and MAC address.
> > 
> > Thanks for the improvements!  I'd just suggest that the opening
> > sentence above is rewritten like this:
> > 
> >    Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and
> >    5C SBCs [1][2][3] read-only, because they contain factory-
> >    programmed data that isn't supposed to be modified by the end
> >    users.
> > 
> > This would also be perfect timing for Radxa to officially release
> > the layout of the board-specific data that goes into these EPROM
> > chips, so the data can actually be used.
> 
>   https://github.com/radxa/u-boot/blob/next-dev-v2024.10/drivers/misc/radxa-i2c-eeprom.c
> 
> The actual data in the EEPROMs of my boards has some content 
> inconsistencies with the code descriptions, but the format is 
> consistent. The SKU, BOM, and MAC mentioned previously should be available.

I see, thanks.  I'm wondering could U-Boot's drivers/misc/nvmem.c be
used instead.  It seems like the driver linked above includes quite
a lot of code that's already present elsewhere in U-Boot.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
