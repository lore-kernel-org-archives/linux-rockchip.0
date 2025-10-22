Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05B6CCCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXVOekmCjgZ0r4Dp6QpQ4U6Qan3Vk2669m7Tit3+wyg=; b=f4hppojcLH5iYa
	gKtPLh5cbuTUf+jZMl20OiALpeSjWzI3EIajHNHDb3k2+Xx4c+T71tCAWquTb3NKHpORd5Qo1RITk
	ipgpcckC0tY1Z8BaW+0H3ApbnbHE4h66IID2KkzLjvubbgOjOVr1j+Mf75WMH1AqkPslt5wmDx71k
	dcarxlfX47HDBB7d/HlIxKSttQOWg/i0h6uV74fIxX63Sj9htTMUN87GD9vf0y6toLK3FOLSNKwDq
	xNkubXWIJ0i9jGn/uBr87euPG0y1UveS8JKo5RW1ldc3Bhy+kJsGFpDagNqmADWmTn8BHl2h4oMWN
	Ta7hqEmJ3V3Kiv9cmn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZ93-0000000348H-1uYI;
	Wed, 22 Oct 2025 13:44:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZ92-0000000347q-134J;
	Wed, 22 Oct 2025 13:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=tSRufK6a9oDVc+0ldM5aHf45/pLD+eZuh0vwzFzwbfg=; b=W5qBPjBegJw66GADRt6TQRlX6z
	LKF2mqzShXRbqD/Y0BxIX+nikYtJruAAHECIS8HV1FIYZaFkfJlfYIBJbmldL6wJvcrO1kDu8RlJR
	BRi6BPoZKTsTwAeRuiCkDZk9esk/Zkt9E0auHrbOuP1PZwrzzab9Qhczf3AUaWlRw55sB1joyG39K
	4TX345F9J7NFYqOP4Oje972n1vIFbu9QXgMTAvvH/x6kc9Rg2iKLNfwb5hro0AOW5+MqpkQOaT0sN
	P9BmQ8qPlmnFOc3FnhuUtXfklAcqxm75k6ZNRFhiNv8KDbHUUHyl3RJdVWvgqV+clBHgUe7kg1o5h
	S1kkuB+Q==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYHJ-00000000b7m-2e9o;
	Wed, 22 Oct 2025 12:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=tSRufK6a9oDVc+0ldM5aHf45/pLD+eZuh0vwzFzwbfg=; b=kBcU2MviAWFb1wLxknZjZKDlIK
	RclL5i1SHlCX0bO+xwWIiwe5Q09bReDzWJ3GJDlmP/FTVsOcr9Qm6/WNvFItiH1HM84SxUa+GGVEj
	9Fv8bethfL2nxafVxcrWj51kkk4sD3qBayABnQMiY4XPmHNqXg4DWcnQPVHUG7aDJWQk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vBZ8r-00BlXZ-Qa; Wed, 22 Oct 2025 15:44:41 +0200
Date: Wed, 22 Oct 2025 15:44:41 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH 4/4] ethernet: stmmac: dwmac-rk: Add RK3506 GMAC support
Message-ID: <c03fc648-a096-43b5-8f4f-0fd34dfcc8fa@lunn.ch>
References: <20251021224357.195015-1-heiko@sntech.de>
 <20251021224357.195015-5-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251021224357.195015-5-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_134921_753198_26F57F4C 
X-CRM114-Status: UNSURE (   9.29  )
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

On Wed, Oct 22, 2025 at 12:43:57AM +0200, Heiko Stuebner wrote:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add the needed glue blocks for the RK3506-specific setup.
> 
> The RK3506 dwmac only supports up to 100MBit with a RMII PHY,
> but no RGMII.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
