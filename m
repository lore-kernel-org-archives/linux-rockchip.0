Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23FFCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 16:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PQPUfVhsHGR7DImChdp1Nk6dwSPdH9CDxPFQHuf8sw=; b=MtICPzCt6Oc5hX
	IgzB1hcGfsutYH7Xle5tO+1XM+LOoj+7XSYF7KCbYmN9VxjlX5H9IyattemS6cka5oPS2cniGZV45
	gbXX7jkQBzoxih6u7N/hysTGAA3T0L1NerbwW3scnFw/iINfEpHkBiM10cEZf1Nuqa6Nsi6ud+BkZ
	BFTElpaC4XF6ghwAMRMoEQmAUUgDwz10LGA6ESeJ6o9DSMTFSb24uIZDId9HUBwcp/8FrhaCMWowG
	41J9BIoqGNuUitB2hSbex+/c6Tw9gQq6CfOXKz67htEQEn4lctxasDSPr3u+SCGraQUGnK3YkpPKY
	JoV7Nk3TKZ4+WlXtbGIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIr1X-00000007RGv-1NAA;
	Tue, 11 Nov 2025 16:15:15 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIr1V-00000007RGS-1ptw
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 16:15:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E73104103A;
	Tue, 11 Nov 2025 17:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762877709; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ypK6JFMXH7rdUq8xKNFAFRuU1aci1uCJMB8XA5wcY0c=;
	b=ni8QxMAcQLfsc4ybYFggj+QjnqvFDx+IyrNEnuiUgxSaku4Ib/W95NjOj4gBpeTsnxnttk
	E1dEyU1mUzGNXJIFUvixOrqFQ5r2iyPpWcSNbfsxxbUtaG5gv37Ew6O1rOy1tnN0pCyFiY
	iczdamJxxv16R3yvuUt6jJfUlW19Nw5UkacaGOjhTDXKRVKmu/kd/oUqebyjnWMDVc6tl5
	jjhmkqNn5RhCwKogAS0gUirM7KhMUlx1mrojLNXDiadgS5DDNsQ54S7Ehvdhi1tJ7dNZF6
	FvZ3E43RbB+4m05JiZ20rQsbd9U5+q/nFPUxod76t+LowU2DjN2qrt4yjZuSXQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
References: <20251111054112.55505-1-naoki@radxa.com>
 <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
 <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org> <B0C8C5A69B9F465E+ba0ad139-d3d9-4492-ac9a-cc58f8f35074@radxa.com>
Date: Tue, 11 Nov 2025 17:14:59 +0100
Cc: "Diederik de Haas" <diederik@cknow-tech.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, "Quentin Schulz" <quentin.schulz@cherry.de>
To: "FUKAUMI Naoki" <naoki@radxa.com>
MIME-Version: 1.0
Message-ID: <41275775-9e6e-9202-4c79-6140a56e41d5@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn all LEDs on at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Rspamd-Fuzzy: 353964b4aa81b40cd03c1b2d1c0fcc256fc021e471e67a0e96575b249708300ad6c39d864be65764762b049554b2d83e735ffeeff8b5106fb54ec43fc733ba8b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_081513_731021_8A36F55C 
X-CRM114-Status: GOOD (  24.30  )
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

Hello all,

(+ Quentin)

On Tuesday, November 11, 2025 16:32 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
> On 11/11/25 23:46, Dragan Simic wrote:
> > On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
> >> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
> >>> Radxa's boards turn all LEDs on at boot(loader), but some boards don't
> >>> have `default-state` property in Linux kernel tree but have it in
> >>> U-Boot tree instead[1].
> >>>
> >>> This patch adds `default-state = "on"` for (almost) all LEDs (with a
> >>> few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> >>> WAN LEDs on E20C/E52C).
> >>
> >> I'm missing the *why* these changes would be an improvement.
> >>
> >> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
> >> be off by default and once it gets a 'heartbeat' or a 'netdev' trigger,
> >> THEN I want the LED to be on/blinking.
> > 
> > That's a good question for Naoki.  My own preference would also
> > be to have the device's power LED turned on by U-Boot as quickly
> > as possible after supplying power to the board or turning it on
> > by pressing the power button.  I'm actually not a big fan of
> > having all the LEDs shining for a couple of seconds or so, which
> > may actually look like some error condition to me.
> > 
> > Having all that in mind, I may suggest that just the U-Boot's
> > behavior is changed to turn the power LEDs on only.
> 
> I can't quite explain it, but...
> 
> - 1st (Power) LED
> 
> The 1st (power) LED turns on automatically/immediately without software 
> intervention. (On some boards, this LED cannot be controlled by software 
> at all.)
> 
> In DTS, this should be described using `default-state = "on"`. The use 
> of the Linux-specific property `linux,default-trigger = "default-on"` is 
> unsuitable for non-Linux environments.
> 
> - 2nd (Heartbeat) LED
> 
> The 2nd (heartbeat) LED can be controlled by software. It should be lit 
> up as quickly as possible to indicate that the very first software 
> (e.g., the bootloader) is running.
> 
> On Linux, usually this is used as `linux,default-trigger = "heartbeat"`. 
> It indicates that kernel is running (regardless of the `default-state` 
> setting), and its behavior can be modified in user space.

As discussed already in the #linux-rockchip IRC channel, [1] perhaps
the best option would be to have the power LEDs turned on as quickly
upon powering on the board as possible, and to have U-Boot pulsate
the heartbeat LEDs using the LED_BOOT feature.  In such a scenario,
no other LEDs would be turned on early, and the LED-related DT parts
specific to U-Boot would be migrated to the kernel DTs.

[1] https://libera.catirclogs.org/linux-rockchip/2025-11-11#38997824;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
