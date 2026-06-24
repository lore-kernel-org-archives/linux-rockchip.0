Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3969BCDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 15:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH20nXa3xgawTzYHVbp1f+DbeokNzGlKenBSoureYOQ=; b=2B3rVrqFFaCcw4
	bm4Y7qqYiHQef5Ip515I6guWCBhuWWhlRlg1rnIcMdBmXFRjOwpBdm27WscCtDgUVvLPXbsHIXMQb
	cY03DEd8SxqddGTBzQflogtc924Q+UijaCwaC66DCHTqi0jMYEBjx/XcU1AlZmYMXiKmvVqYd/kM2
	RkcqpzMFiGB9xm9JuaKVlwb63SC47NC2TCEND5JMTXB6Wy8hTQyg3WWJ6lRviHE48PZjAU72gn9zr
	x9j5YQJTT8R78NQBSc1rKJa92I6/76/OedbesBcf2GR9T8kowwnt2shgUV8MNiGZ8gbBRv1BFpEoY
	TeppdM9lU9KlhI+CzS9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPk1-000000081ad-0tmM;
	Wed, 24 Jun 2026 15:42:17 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcPjz-000000081Ze-128n;
	Wed, 24 Jun 2026 15:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=xPpByjy7W5L7XpVcP76WXAwInbwRDBlAjul1A4H6MFE=; b=w9F4ID5ojrpJx1Mc3AY1BPTJS0
	Y5BQyHlaR0t1aG7fVvGNnP1lQ45Mw+Pjq4pqi2GQg0gr+VtY9lkQe3rrNDymgupHQWD1MTmLVLTNZ
	s9aMhTef0+LCMRs+rh1lSAw+ELiw2UoO87AomQx71ltMD20iNUrwlcSSVh986rFQeNSU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wcPjq-0096u7-99; Wed, 24 Jun 2026 17:42:06 +0200
Date: Wed, 24 Jun 2026 17:42:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Yanan He <grumpycat921013@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	David Wu <david.wu@rock-chips.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 6/7] ARM: dts: rockchip: Add RV1126 I2C5
Message-ID: <1d1d3618-b73f-4c38-a817-b7d053687497@lunn.ch>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
 <20260624-rv1126-alientek-dlrv1126-v1-6-5aef608a3f64@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-6-5aef608a3f64@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_084215_304431_29C553EB 
X-CRM114-Status: GOOD (  10.60  )
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

On Wed, Jun 24, 2026 at 04:44:43PM +0800, Yanan He wrote:
> The controller is present in the SoC and can be used by boards for
> external peripherals, such as an RTC on the Alientek DLRV1126 carrier
> board.

This has nothing to do with networking, so please post it separately.

What i would actually like to see is the patch adding networking
nodes, because my guess is, you have the RGMII delays wrong.

       Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
