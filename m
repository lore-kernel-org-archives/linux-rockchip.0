Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9F95E83EF5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 09:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wERThYjfKCh360KNnjUaAggculu2pZGVdOx+cuX5NtI=; b=IomNawE0CkiBeA
	kkgGDsufvqPCzhMEvhIC/jS2cHfd0JCzCsxr9DC6akPGzWYXJPT1xCTt9II6dmK0KQCAy7JuyIhs7
	qxWt/YhYNIlNH/B2uWM3T3sv9R7gSiI+QxMBHTjDDoEiFMC3sPIuK3yM4jA4QABdgKELIShZwprHZ
	4eHg5iHYPx71RQZUhEkWB6r+IzlymTfP3ecZSvlL2gF61I2VnK8/vWCNNYyDvsX28M/RVo/gC1gFp
	edUElZ0mMGMmm63U0baF+VGnSW1wc8j8/MH7sKNTUa6gio6uErvNbe6zEirJZH7V/l8sFlTc8uqSM
	WPJGZWYej54JEgYUKWzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnYxq-00000008B6D-1jIz;
	Wed, 04 Feb 2026 09:14:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnYxo-00000008B5q-2Iju;
	Wed, 04 Feb 2026 09:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=rfgI8uHxVziU8oOSLUO+v2rLbrhcL05UssJ2uLlEZP0=; b=IW+w5dINP108ieqFJsmJp+pFPC
	UauUq3j7rwfVfSmsIgmDH0P9YmqR+UJquYmk+2OBRoPd340hUVdz2FHnlwQrv2UTgWd2q5rDaoxcT
	BHjawPMJ4jQexXyEpV2dBGpzDGzG8xxr2d4onLCRr8jPrwKVTBM+qVY5kTY1mjix9M+4x4EVIGKk1
	1VrS4A45x+q+llIXcWqjQJSq2ht+ofeLI1nJerxUkIYSyeHwYpLFPg0UWanS8pvjOFvo/MyDTXcqq
	OpMZ2ymeFZ913t6rcmZN+xK3A6v47IyP54GbbCas00L7tBAfo7CyDMQE3sLsvMw1485imjpG5gi61
	6TFh0KBg==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnYxl-00000000C1c-1wrL;
	Wed, 04 Feb 2026 09:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rfgI8uHxVziU8oOSLUO+v2rLbrhcL05UssJ2uLlEZP0=; b=kajOWNFPVlWeSpoF4N72fMN+0m
	SJxR//ThwLdGOlOefSU44xKARWXsQk9+3DbZc5wcaNZLL4Ld1xqM9oPsEnbSW8G7+AHrdt+omE5Lx
	R6KKgV5snYdjtVUm+Ydd9eShC4Vvnul3eMAWVD1CUHEda+3mI0vPYbSeY56R278MHsjXH5llYLJu1
	gw6rCvHg6eOw4OD5aNpz81PS6VPfRn6RfZbebQWF+BT3X0saoMvFyF69dfg7MKLMf5g0Y2YQ5RuIS
	PyL1CdEPX5V9abzYwa7MohYROPsLFyfRd7sBBt93RYB4c0Dn6MCPwcSSg3iUPytvepEDEntPRIhZZ
	IQsy9hzg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47190)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vnYxa-00000000667-1xr6;
	Wed, 04 Feb 2026 09:14:06 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vnYxW-000000005EM-1zQR;
	Wed, 04 Feb 2026 09:14:02 +0000
Date: Wed, 4 Feb 2026 09:14:02 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: [PATCH net-next 0/6] net: stmmac: rk: final cleanups part
Message-ID: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_091417_697207_D75367A5 
X-CRM114-Status: UNSURE (   5.70  )
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

Hi,

This is the last part of my current dwmac-rk cleanups.

 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 361 ++++++++++---------------
 1 file changed, 150 insertions(+), 211 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
