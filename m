Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F38CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nz8mHjJRd+j17pw+APr1a0UXb+XmSDWR4TJ6WOA8pM=; b=EL6oX2c1VKFn3t
	DTX1LQwEgZKzacLM0PriI5+6G6RdYVUqhc/w2g97Q1K3gY/AgWu8VymO2R6HuFB1wXLyFZkGl7q+c
	L2DIbWVzrxFN1EbOwH5OuLhzRDizAFlmR56l032N3+0COoYMf83GvKuKsdeR2Xp9OeyBQ/YtgRF5n
	t/GwpFW18BYSIQlu86JsmKuqMN5l4j0qYbx/L7jkYyvX+JumQxXO8wEoiqdfnYA9PQZIueXLQJX7h
	XSAiLA8wQ+XPYqvjVAgeFDXVi/UjxtfuFxPRpdhJMkFdIBiLWRTUQNulFAJoWda49PEmQtmCPCv67
	LHUpMt1yDvVKoQmAtV7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpdO-00000007LBv-38VP;
	Tue, 11 Nov 2025 14:46:14 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpdL-00000007LBU-3dES
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 14:46:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 21E4840FD6;
	Tue, 11 Nov 2025 15:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1762872368; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/cagrh29ibSMDnOPkSSUd4ZdK21ny+AueZuffN/Jim0=;
	b=G3d0+EMG73jPS0WH3iKtHHxP8zXOpKZrItjFxxZBUlONnVc00VCnmutHicq1znRNBrx0EG
	DdK10bxJVcl0kNL/WbXzB07oGNW7ks3GAlEYkd2atKAZ3jvhp8qzJdYe2ns2BqFhYapxJn
	pTEo9Hw2CCEtFl3LiUAUdfZmjgcmU1n3PeZYN4HnuFTTrLS62DQrJGxgDPnHw+CnXT6r4j
	yt8q1L0ISDdjKXUMYMyr+QFWhVuHyCtzvm3lz1/52bklS8DQXL7YsbvyDxdkvT6kQhO2rA
	h6uQ6wQCDv/N1LC+0tVg6ct+3HSD2CToSUThIrj8/6Qf5E13m02at8hPIS8UtQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
References: <20251111054112.55505-1-naoki@radxa.com> <DE5W0143QGG2.3C7SW89IJKZ4P@cknow-tech.com>
Date: Tue, 11 Nov 2025 15:46:04 +0100
Cc: "FUKAUMI Naoki" <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jbx6244@gmail.com, pgwipeout@gmail.com, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "Diederik de Haas" <diederik@cknow-tech.com>
MIME-Version: 1.0
Message-ID: <516e919a-42af-8707-4e75-a808df8971fd@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Turn all LEDs on at boot for Radxa boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_064612_111763_DE6D785A 
X-CRM114-Status: GOOD (  13.11  )
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

Hello Diederik,

On Tuesday, November 11, 2025 14:07 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
> On Tue Nov 11, 2025 at 6:41 AM CET, FUKAUMI Naoki wrote:
> > Radxa's boards turn all LEDs on at boot(loader), but some boards don't
> > have `default-state` property in Linux kernel tree but have it in
> > U-Boot tree instead[1].
> >
> > This patch adds `default-state = "on"` for (almost) all LEDs (with a
> > few exceptions which should be "off" such as RGB LEDs on E25 and LAN/
> > WAN LEDs on E20C/E52C).
> 
> I'm missing the *why* these changes would be an improvement.
> 
> Personally, for both 'heartbeat' and 'netdev' triggers, I want them to
> be off by default and once it gets a 'heartbeat' or a 'netdev' trigger,
> THEN I want the LED to be on/blinking.

That's a good question for Naoki.  My own preference would also
be to have the device's power LED turned on by U-Boot as quickly
as possible after supplying power to the board or turning it on
by pressing the power button.  I'm actually not a big fan of
having all the LEDs shining for a couple of seconds or so, which
may actually look like some error condition to me.

Having all that in mind, I may suggest that just the U-Boot's
behavior is changed to turn the power LEDs on only.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
