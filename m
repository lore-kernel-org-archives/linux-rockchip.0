Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12301CCD194
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 12:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUIDD5X87fSUtbDm4Ik5GLptTELDCXmpyZ05TTKYk3s=; b=YoYCSPGbfsHiky
	t1HUL6AnUjIKd8kjzOA0Hiovgq4+ohBv1Pr3VRr1DT0ryzuXCqrhEmzSXgAL/TueZKiyMukk7srgh
	u0UMBDn2MeteebN2/TXh/4BtYSwAadLKzhKbIqu5zcNcegxiOkScET0vJWCMtRrUqwKbfkYTt6xMo
	BzCvsOlXVIBQiFtRb6j4nnxQIaaFQ3GX73O5X3T/Aw+0DMSGOnV3eUpsDQ2n/pfIboEJRwxvyT/iu
	swncT8NTHvdmfHbN7mgkkMy45Gs8CxfGirKtoW4v4xvS8gOtbCxsP7jI9fg6/BlouPzMKX6xgT30y
	x1C5d/L1ezC9VCHRJnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NLA-00000004m9M-0koo;
	Thu, 16 Oct 2025 12:44:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9NL7-00000004m8y-42Rb
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 12:44:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9FF8D44175;
	Thu, 16 Oct 2025 12:44:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8EC5C4CEFE;
	Thu, 16 Oct 2025 12:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760618657;
	bh=UiRMtD4HrkDHeIc4FGb7iyKCK1GPw3RQ8DKO8RCSw5E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lCFKqBBxtc6cr2E4/WHp9X+Dzi6MJkbJAQ+uGPYm0MhZ+op0QysqkVonP0Jt5Mr/U
	 6kSxCU7N/D+1N0FB0QlP20qeBjt4zhXci6QO4xfSzp3/M929nLo/dQVJeR6rWMdvJ9
	 hVvNJXMnOrRc3h2RSqaCvYYE+iEPz/nntSDPXlrTD0PUgljaxOTg2C8jQq5xwJTsqj
	 28DodsnyHG3d/Xuh7PVG1A2okfgLqMOz6gemfEBe8DiitEBXUaRfU0fc8HrppWRxu+
	 EfNW7uAWbvSy7/TFVC/PMg/vNbwadAhE31W+isieJeDlUU43LuivccbV1vmPeXdxrh
	 pfzpgvEENwWnw==
Date: Thu, 16 Oct 2025 13:44:12 +0100
From: Simon Horman <horms@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, stable@vger.kernel.org
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Fix disabling
 set_clock_selection
Message-ID: <aPDonJRMVKjsC6g7@horms.kernel.org>
References: <20251014-rockchip-network-clock-fix-v1-1-c257b4afdf75@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251014-rockchip-network-clock-fix-v1-1-c257b4afdf75@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_054418_039313_DE9C9E9D 
X-CRM114-Status: GOOD (  11.52  )
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

On Tue, Oct 14, 2025 at 05:49:34PM +0200, Sebastian Reichel wrote:
> On all platforms set_clock_selection() writes to a GRF register. This
> requires certain clocks running and thus should happen before the
> clocks are disabled.
> 
> This has been noticed on RK3576 Sige5, which hangs during system suspend
> when trying to suspend the second network interface. Note, that
> suspending the first interface works, because the second device ensures
> that the necessary clocks for the GRF are enabled.
> 
> Cc: stable@vger.kernel.org
> Fixes: 2f2b60a0ec28 ("net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Simon Horman <horms@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
