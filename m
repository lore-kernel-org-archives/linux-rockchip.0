Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC9B7EF99C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 18:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KE2dweM1/GqYcTvcuBEWZVVxYdb1sk+8xoMasm4HrY=; b=z6ClRNLNWlsU0X
	13u5BVQxlUOGAmcB/9opcpe/4Gzif0l76HexbA3KSziSYQYjO4W8dgAmzmDFbMDP3tVmIHfII9x4N
	GP8HTBNCOmo6Vvw/A7EC1WLzRM7GFHaS9d7jQ05f/aD0WEmdNftSYkEekLPhJLZICD+CZCgkSm5d+
	ZGGlM2VBXd1XDYmBwHOnYapaw+QW6/iiXjPlNNXSkaqYX+9xFuAxBCIPYDsAsgLi1U7TlICMV22tZ
	/sJ4K0/DU8aodJ75Q2IfS9torAorJqFEl8+1ROKHRWohZKu/SMglmzphgEA4EOdlxRY36JK/icJsp
	PLjYnG4diyGVgBB6zFeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyCh-00000003nkx-0yiE;
	Fri, 13 Feb 2026 18:47:47 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyCd-00000003nkS-39ey;
	Fri, 13 Feb 2026 18:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=75dVsMxQSCtUUOY53Ie7fIWd+5uJDH3ZUDCTQzFC4E0=; b=Uw3nfuQk2vnBKDqEE0hg49gaGP
	jOFooSYkHGRmG1wuaPpOukxKzyUbS4AH/11S8n/03zr+ibncYMYo+YxyX4MR8dq4FnBaKVMyMeBPd
	tv2nXH1JbMp9Vy4z2PMyr02z3CLML3I5NapbP3aDJKubc4BF5nfnJ8xBEQY7PI/4p7OcItYaBlmZk
	IwcX/rf7J+ftwQFedzA7b13Dqy794HJxpbySNBpBKyb/fIP3G6NB/7rBHLytqjkNZit8MHeXyhdp4
	Qga9tk9lYwTWVb7s12Y+QUUM3j896xk+e5wEUTzlF9b8Ztkv2ACGfGTiwUzkDegKWIQhLWb44azds
	deqmxpQA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51324)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vqyCF-000000005SA-1E56;
	Fri, 13 Feb 2026 18:47:19 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vqyCA-0000000060W-1oGw;
	Fri, 13 Feb 2026 18:47:14 +0000
Date: Fri, 13 Feb 2026 18:47:14 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Yao Zi <me@ziyao.cc>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: Problematic understanding of phy-mode in Rockchip DWMAC driver
Message-ID: <aY9xsslT56D9LGLe@shell.armlinux.org.uk>
References: <aY9s5PXP4zZ7R6fa@pie>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY9s5PXP4zZ7R6fa@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_104744_104917_0A9D1CB5 
X-CRM114-Status: GOOD (  10.11  )
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

On Fri, Feb 13, 2026 at 06:26:44PM +0000, Yao Zi wrote:
> Hi folks,
> 
> I was looking through the RGMII delay setup logic found in
> rk_gmac_powerup() of dwmac-rk.c, and found its behavior is strange,

dwmac-rk is very broken and is unfixable thanks to Rockchip not
understanding the RGMII interface modes used by the kernel.

It is what it is, we can't change it without causing regressions.
Please do not try to fix it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
