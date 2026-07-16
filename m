Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85FD7C44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 06:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:In-Reply-To:References:
	Subject:To:From:Message-Id:Cc:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQr2gczZeD547CQcaI/DGGnYECTxbAV7ipL4FpbsZWM=; b=Mossoh+RYz54Pt
	wbyEXaptiv26ly1g5xjlFkVW6X38jRJTneo33dokfQjul1nCoJYhEql0w9sFI3GYMlXTUNayodd7f
	XWCNED8CwyrPgJUWj//qO/GA1E5e9EA6i7ZdBwXNDNRsECeM8D2W56fWArpgLPZrU6FD/ptlqoliC
	u6f2mINyiqE+IeoIl7gv9+oGOhFUgKPU/JKqNdCKbI6RZtlRrsd+Z7/b0O9DBz03QQxKagFI8UMkd
	3pJ92WpfLJpbcdBrkd7C1jFTAgTfPpnVb2ad1pXdVDZEJovq6tKABY+Cp5QanDBp8XpOkhDMGkWP6
	qtZ5GsQXAbsgh03YCmUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0d-0000000GaQF-2rFP;
	Thu, 16 Jul 2026 06:55:51 +0000
Received: from gz.d.sender-sib.com ([77.32.148.26])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkG0a-0000000GaP1-1Vea
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 06:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
 q=dns/txt; s=brevo2; bh=7x6aERVipVHaG0xRD6KC0RgCFBCYOOqTbyO/Xpmab5Y=;
 h=from:subject:date:to:cc:mime-version:content-transfer-encoding:in-reply-to:references:list-unsubscribe:x-csa-complaints:list-unsubscribe-post:message-id:x-sib-id:feedback-id;
        b=lnkydKTvWZ3a2T8eV3vb1Qnh78GNJFmh0hiLU7+KW7VkKnebIK9LWasy2NsubE1A6CV4KHMzgfvo
        sz7kWL5s9ugsr1ZYP48xpJL2TsEL3nvYIUfCiOy47y/4nUvnRRlDX2qW9kuSWJPOtRZHI4ihV+yY
        pMwgI4RDOFOT4Kd8pZ8INnIfGKR84VdX6Eow7fNWncAdYLXuFx90bAC+KfWmvM+0dPsY98rIEkXK
        YrEs1uC26hKYlvDfb4stVeoyBxOp0KNv1ISX+l78L5zoNy0gIFp+VxEKlK5ym72tC3a7yE9wBSLW
        E7cUbFAObsXrQZ5vaMJkbUM/punA/4KFVPCw5w==
X-Mailin-EID: NDg1NjE3NDAyfmxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmd%2BPDIwMjYwNzE2MDY1NTM3LjI0NjYxNTEtMS1nYWhpbmdAZ2FoaW5nd29vLmNvbT5%2BZ3ouZC5zZW5kZXItc2liLmNvbQ%3D%3D
Date: Thu, 16 Jul 2026 18:55:37 +1200
Cc: <heiko@sntech.de>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,  <conor+dt@kernel.org>,  <devicetree@vger.kernel.org>,  <linux-rockchip@lists.infradead.org>,  <linux-arm-kernel@lists.infradead.org>,  <linux-kernel@vger.kernel.org>
Message-Id: <d342d362-ada0-4ec4-a0f5-970b18e63fd7@smtp-relay.sendinblue.com>
Origin-messageId: <20260716065537.2466151-1-gahing@gahingwoo.com>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
From: "Jiaxing Hu" <gahing@gahingwoo.com>
X-CSA-Complaints: csa-complaints@eco.de
To: <sashiko-bot@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add ArmSoM CM5 and CM5-IO
X-sib-id: 5HPvo63TsEwEOgq0qy0yIya3xegGFiCNSZ_xSby86KR_PG9ATHJcyldoh9ad3EY__q1mIlvPijXM_oglLuPL7LKIseRVCt4pHaxrgwilncUSnLe4JP5WYYh5RjAaQ2xEXsqdWlbcY9C5T0IaD1PtlMCRpCpcAkGir1yJWkl-nj0MHyBoFxNEPOSCmkPz6S9Yeg
Feedback-ID: 77.32.148.26:11677070_-1:11677070:Sendinblue
X-Mailer: git-send-email 2.43.0
References: <20260716012838.2353939-1-huhuvmb88@gmail.com> <20260716012838.2353939-3-huhuvmb88@gmail.com> <20260716014059.1966E1F000E9@smtp.kernel.org>
In-Reply-To: <20260716014059.1966E1F000E9@smtp.kernel.org>
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_235548_986274_01D9DC5B 
X-CRM114-Status: UNSURE (   9.66  )
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


(Replying from my own domain; v1 went out as huhuvmb88@gmail.com. Same
person, I will use this address from v2 on.)

Thanks. Most of this is valid, v2 coming. I ran dtbs_check too; it agrees
and finds more.

> [High] Type-C DP Altmode configuration errors (SVID format, missing
> mode-switch, and misplaced SVID)

Correct, and worse. dtbs_check rejects the node: the altmodes child must be
named "displayport", not altmode@0 with a reg, and svid must be /bits/ 16.
The svid I put on &usbdp_phy is not in that binding at all (it has
additionalProperties: false), and mode-switch is missing.

> [High] Wireless (SYN43752 WiFi/BT) missing child nodes and unreferenced
> pinctrls
> [Low] The gmac0_rst pinctrl is defined but omitted from &gmac0

Correct. bt_reg_on, wifi_host_wake_irq and gmac0_rst are all unreferenced.
I will drop them rather than guess at wifi/bt child nodes, and drop the
WiFi/BT claim from the commit message.

> [Medium] ES8388 audio is advertised in the commit message but
> functionally missing

Correct. The node is disabled and its compatible is wrong too (the binding
wants everest,es8328). Dropping the node and the claim.

> [Medium] Missing vmmc-supply and vqmmc-supply for the eMMC

This one I do not think holds. Every rk3576 board upstream (sige5,
evb1/evb2, roc-pc, nanopi-r76s, dshanpi-a1) uses full-pwr-cycle-in-suspend
without supplies, and dtbs_check does not flag it.

Not in the report, but also fixed in v2: the fusb302 port node is not
allowed by its binding (the role-switch endpoint belongs in the
connector's ports), and the wifi-poweren-gpio pinctrl node name collides
with gpio-consumer.

Also the PHY reset. I had it as snps,reset-gpios, which is both misspelled
(the schema property is singular) and deprecated. v2 describes it on the
MDIO bus instead:

	&mdio0 {
		reset-gpios = <&gpio2 RK_PB3 GPIO_ACTIVE_LOW>;
		reset-delay-us = <20000>;
		reset-post-delay-us = <100000>;
		rgmii_phy0: phy@1 { ... };
	};

That is the only spelling that works here. __mdiobus_register() releases a
bus level reset before mdiobus_scan_bus_c22(), whereas a per-PHY
reset-gpios is applied by phylib only after the PHY has been found, which
never happens for a PHY that boots held in reset. Checked all three on
hardware: per-PHY reset leaves the PHY dark, the bus level reset brings it
up and the link comes up at 1000 Mbit/s.

dtbs_check is clean on v2, with no deprecated properties left.

Jiaxing



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
