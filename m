Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC51C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 19:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwhExTE5uRJzpYL5Rf3fy7ZAgH6CeaTtkMb1Z8fIllI=; b=ImOMALd9fh6R7V
	+hYHY8G7ypFAXN6Zmy2Fz0q74RsFBILPTA1g1Ovn2OrYRbi7CYOg3UC+8qIvtQlV3WzXBKzkRO3CK
	Odzy3yLr/5f1jHlldtaJJNmd/M1n7kp575y7l0Ozn+g2lFrG4AVilScZRCMTj7wvSV/5sVrNjoYHe
	m6hoy7pwdWijl8f0Q4C1sjkK7uamcsv/HxbwRKnbFovuxeLq1cG7ug9X2M2FtuT1m1mE0JLHYfdLv
	VGaserAbATGKM+Kx/3e3P0JaKBvWfNHNo3bNbmeUiT5OmVz/hzR1AW7CQAR+KWI5lfQ2Aw0vldonM
	N19LFg+WVie3ajtR1xcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHSdo-0000000Dvll-08xd;
	Tue, 20 May 2025 19:28:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHSLh-0000000DtfO-2npW;
	Tue, 20 May 2025 19:10:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/O2GEQZPczO3qpUD8v8+5WOVBoh1pvPM9twx2k6GZy0=; b=HSiHYHx4r9iqZJiOo8GxDZREQT
	TMsOuR+9VyrdruhHYd7Eu7xfCyTEPiWYoxlsT9hVqNDl8nGLNC1soUGu1xcbOQvM79RXRQrEYrTUt
	fm/PTTYCj//iE42lpPCBOPTDeQQ4cPUTpd7RBi4i4FXOm7Z8mu5wd4sAnx0pUx+j6kvQqk2jTZEFR
	5R8zLTDtSVLkAlmR7GGK6wwbgBD/XvV0g7vUUlUhPvTDcFokb6KBVsuVsfSCfDCTjTYXAUeaineAn
	oxwM4Zet8vevjVBuhYHAn5Y0YQ7t1jn7HRfx04i0SfsaxcLFfB0Xwzd1bslVQH9kIKODEz7k3j3MN
	etJvbvWg==;
Received: from [61.8.146.112] (helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uHSLc-0004fK-K7; Tue, 20 May 2025 21:09:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Drop assigned-clock* from cpu nodes on rk3588
Date: Tue, 20 May 2025 21:09:44 +0200
Message-ID: <174776817931.2879626.2353360288998148542.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250519101909.62754-1-didi.debian@cknow.org>
References: <20250519101909.62754-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_121001_711027_31F20601 
X-CRM114-Status: GOOD (  13.43  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 19 May 2025 12:18:28 +0200, Diederik de Haas wrote:
> The assigned-clocks and assigned-clock-rates properties were moved from
> the scmi_clk node onto cpu nodes in commit
> 87810bda8a84 ("arm64: dts: rockchip: Fix SCMI assigned clocks on rk3588s")
> 
> During review of v1 of that patch set, the following comment was made:
> 
>   why aren't you using OPP tables to define CPU frequencies.
>   Assigned-clocks looks like a temporary hack because you haven't
>   done proper OPP tables.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Drop assigned-clock* from cpu nodes on rk3588
      commit: 6e0f32da68fac556327666f8f81dfae7405d1c25

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
