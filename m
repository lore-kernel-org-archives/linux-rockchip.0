Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048B4E74AC6
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Dec 2024 17:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2Zs9G556sNWAMvqxoizmghqIto5Uupcy/7s2cItmqY=; b=g8vC60NNfnqwB4
	5F0Z1pXA+f2kNe1op7zMgL2sAfGhCRdZR9KFWsJSzFi47N+wQDjRyVnvpC/SUkPNt0SWjKyWnk+sk
	+NFNplosA3u/nI+ib+iuslXjxuZrwhdTjTwbutjRRWNO4Pjs5ESiAw+MkvkXT16xMSYKpLXYLGQ5r
	hS/58epjCNt3IX/DqhdBdJ2D0Y5YHUwyvBuEbsH8VRbhzBVyNtAcLq5y1NuHglWaPmDm1RwWQ4/VS
	ms7qXaqYgQDJd69/o0qvTnWwqbDVmReKIbZKZMT4RmZ7UzPWLCTJQSXvYyeen7ErxjU7r7Y/GsEje
	I5uZqo2klDO6QmSUqB6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWHg-0000000AC8A-3cr7;
	Tue, 03 Dec 2024 17:02:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWEI-0000000ABUq-2l9i;
	Tue, 03 Dec 2024 16:58:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 89AB75C6B93;
	Tue,  3 Dec 2024 16:57:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD3DC4CECF;
	Tue,  3 Dec 2024 16:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733245109;
	bh=arF+AUtSeu6ScqKrFJj4z1B2pVwQCLt63eW9K0h113I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YA/+5FUCNsnzc7OLhztiJaztpx3YVhqilIZltxUkySH8DqVvnFKO/OXroDo3LgeWn
	 uE8dW8TU8STjU4G3thzdB8bI2m7LSqs1TlH0rahyfAt2Ok5J0pZO4UMMSRIogcgJh9
	 FI2tGRgC//SEy3MVb/TGxsLK6kahOu3BPmkeZkUmHwUFIfkERsKMN+ZRszO4q6LyF8
	 DRKgCORo7yHFban6Du/ieT/y1Bzi5WI+xhsOwX6zDdR5tvnVdyb2F/Vn+3fEQbT/Q1
	 LUfN4eTq6DIdmmjvfZuHVgQHZVvizSHYxgmD6D/D36aELHM/cDPt6xDUQPxslOU0UE
	 k0d+YW0B12Xew==
Date: Tue, 3 Dec 2024 10:58:27 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 07/10] dt-bindings: display: rockchip: Fix label name
 of hdptxphy for RK3588 HDMI TX Controller
Message-ID: <173324510682.1955832.14077962445640350158.robh@kernel.org>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-8-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127075157.856029-8-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_085830_740240_F251C388 
X-CRM114-Status: UNSURE (   9.61  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, linux-phy@lists.infradead.org, vkoul@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 27 Nov 2024 15:51:54 +0800, Damon Ding wrote:
> The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
> and eDP Link. Therefore, it is better to name it hdptxphy0 other than
> hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml   | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
