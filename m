Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3255BCD4F49
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 04:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ym17Fq+1vgyF7VAbVfnsX/IPNGs/YptNTJbiRL/m6CA=; b=DvR2JrR+oSkYXE
	Z+p+kdgOfUwUCXr5DD/1enTq7CnAteLW+S1d5x5kfpCes/3jSXZ8a2BtFR7ll4oe8yOqxz4z86Ky3
	4N4CTZLcyl4370JufwgbOjya43SSQoRAPvrlR+NzYB6/wALXy0t5NJPdZK3dFxowy2fR5wrEtJ718
	CnhQyU1YzdOubT64yfBHDRA1dq4qpqndvcAKMItcdOZAScwLNY+8GVEqpYNxUmAMf+9d7vFcgFtw8
	Hm/439jJVPPi8GcE54Rvqix20VA2W6REtf7aE58sxDrDKoklG9uyYf0ShU39ADLSmkT2NBOTozizO
	66ztS01KOSpac67xc+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlQr-0000000BXjr-1rsK;
	Fri, 14 Nov 2025 04:29:09 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlQp-0000000BXi6-1XUh
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 04:29:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C48034109A;
	Fri, 14 Nov 2025 05:28:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763094543; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=JXNS2lj9vXp6+A4+SRh+s9StrTH5fszOw4xwsTKLDlw=;
	b=h+dsdhagY49hGVaTuKwdvu+Gfzy6AeClZfHAo2SsXWkRbkgZvKkvUK16Hm8JBlYC5xretB
	k7dVeKS3H73hMu7JBTsuIAUIoDGvpYrXiUyTcylKb36/3YqIHaHimBT0jT88ijRXCtVb0P
	UgP3C5dEXOSLuw8Ig0O4U/osdtM62algjhEvRgisy+2p01RxdbvhEabnOxCFdJKz+jICtn
	D8U96PAs9mx/A542505wZ6pkssMYsHP9TPRUcBgt/6gcIZxFc2Nh/+3NMeHdT1vNfeK/3F
	GFvKuy2l8KDJQeAs0vH6FqpcZMdh5bdHMjwF022B6UrxFK19Q532KtlyJBDoNQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <7b668c0b-f685-d909-4b05-02778a688839@manjaro.org>
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-4-naoki@radxa.com> <7b668c0b-f685-d909-4b05-02778a688839@manjaro.org>
Date: Fri, 14 Nov 2025 05:28:59 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Dragan Simic" <dsimic@manjaro.org>
MIME-Version: 1.0
Message-ID: <4d94f91f-b399-2808-6ffb-719e688cd9e3@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Remove default-state =?utf-8?q?=3D?=
 =?utf-8?q?_=22off=22?= from LEDs for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_202907_572474_C6176C06 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
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

On Friday, November 14, 2025 05:20 CET, "Dragan Simic" <dsimic@manjaro.org> wrote:
> Removing the properties that introduce the default values is fine,
> so with the remarks above addressed, please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Though, applying this patch might mess up the current behavior
of U-Boot, which doesn't auto-probe and configure the LEDs that
have no "default-state" defined, so perhaps addressing this patch
should be left for after the patch 2/3 is resolved.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
