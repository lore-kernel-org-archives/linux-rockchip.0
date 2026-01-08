Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A18C9D185F9
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 13:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liSn4DOQwOvF4Dq1JKLY8mfMRtjH07EcEIW1OfwkC4g=; b=CxW/RMsIG1cjUi
	nulvsEvaYi83sQhoKnPE5/MJoD8vMirR1r7O4SkEGoP/cQyrXOx6xP2xvCrhheLzfQb80gTCT40tO
	yZDw46TpLtOk9njQjLp9wvHjUrvea8h4ek9ax3brdnSL+nnZbHlhM5ZJ55t5liui4T2AFq0qMx8A0
	fzOzXZhqS+wYXkBULt/j7x9TW/F/4cZo/Nz65bQgWDn63bW/3+QuLYAiLWpLnZL3mlholP5jeBMv7
	sYPMEUWvFNroTH2oX5VRohQUYFAudnkIBBDcShNxHBWTRb6ngW4C2V4LG5rGi7Ct7JC4yVy23J4PJ
	Z9lqvn3uPdjP+TJkBo+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdqSP-0000000HEpc-3NR6;
	Thu, 08 Jan 2026 13:53:45 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdqSN-0000000HEo0-09Lu;
	Thu, 08 Jan 2026 13:53:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=uaMs/qkebgishDrmE9uiVaCxWBWh/yvp5BcZyYxgF5o=; b=JVUG4h8hOR453YcHmXwM0S6LpA
	fhoxhP4UM8B7PuVPllxJlG0L/lZ9n9sjmAh91HpRPdZNR+ICv9vsP+Hsotoyk+Qvq7vxJY3aAJp46
	IWulTz4OZHB83nVO3iO2zfeWDKz2zqbfcqMhrFstgibhj9+xnExXF+Geu7FAEa0zNJfs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vdqS2-001xJY-QQ; Thu, 08 Jan 2026 14:53:22 +0100
Date: Thu, 8 Jan 2026 14:53:22 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Message-ID: <7728d9e5-f8c4-4289-9f87-3928314c712c@lunn.ch>
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch>
 <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com>
 <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_055343_092295_B12BE88B 
X-CRM114-Status: UNSURE (   9.55  )
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

> I've also see some dt that use {tx,rx}_internal_delay_ps inside the PHY,
> and compared to doing it in the MAC, which one is the better choice?

As pointed out in another email, we prefer the PHY does the
delay. That preference is to try to make all Linux systems the same.

And since the required delay is so close to the standard 2ns, you
should just say rgmii-id, and let the PHY add the RGMII standard
required 2ns, and it should just work, no need for any other DT
properties.

       Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
