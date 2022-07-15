Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77488C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 11:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCLz7Kb5WV9YrEjoDPsMaygNfJXPNWzUVtFbL2Fdp78=; b=OKOXKrZCNDdj8e
	D3x9lIR6q0q83ufCHXkoRALWVJhHNggkyoo7cY3Bt9We+fOyApdGdTNSp3EoxUHD/iqXWg+gGRRyd
	401f7uhVSaidrsyGz2TnT1mlkAF941CG1NQlCqfWi5NEVM9B/CYJJ1dEEb2WxYkcTrkM6qCdNT3H5
	0KiKQJN6O+yB2IJrXA9ZuHapIpCFDNemWM8slmWEHO3eMtCK/LNqt8ye/GimvtG8f8zpiH7R0pziP
	K1jFtqZCWMXHfveLOcymeYRUf0Ksc6lu5PQEcB2RYyAelRggQ3Us+QUNYm/grJd6MA+uTGUALyW/b
	rgWukc4OYoQ3yyH9IP5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJoU-006j22-5C; Fri, 15 Jul 2022 11:48:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJoH-006ivM-9s; Fri, 15 Jul 2022 11:48:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 1FB4BCE2E9F;
	Fri, 15 Jul 2022 11:48:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED09DC34115;
	Fri, 15 Jul 2022 11:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657885716;
	bh=mKWhPThcZmP1RLWqrhqBF+ZhH0KatTGFVjzBtLtdpu4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eERiyrRXCg7lr+J2REf2VMzZc1HPKXbJtpBbKd+r+lOBbsWRGYbwiN1+jREtEsA3M
	 RSGqId2uDmoYE7OmEa0udZULdp+WAYVYIHTFP3aiNYz9K5TXJgkhUaFKaAdi80WmFN
	 VrJDjMHfKUFYKf1Hw7MjZt5WPmLSlg+XJeLxH9QRO4nx6T98It2tAAilvmf6FVx1f3
	 CHcdv96gAldK6MS9LUfRSGpkFkyNqxRopxjXPmdrddqs+Cgp4DZYmxN1T7hFMS8hEM
	 trd5cCVZd5XX5+rg8ZsUo93P2lyvkuCwajbIFzu3PnEpC8XXdHrY76jAT6c1nB0KE+
	 tn6jiZAlXd3+g==
Date: Fri, 15 Jul 2022 17:18:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Ignore OTG IRQs in host mode
Message-ID: <YtFUEGgOGEQy7duZ@matsya>
References: <20220708061434.38115-1-samuel@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220708061434.38115-1-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_044841_583728_F7AF9D21 
X-CRM114-Status: GOOD (  11.33  )
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

On 08-07-22, 01:14, Samuel Holland wrote:
> When the OTG port is fixed to host mode, the driver does not request its
> IRQs, nor does it enable those IRQs in hardware. Similarly, the driver
> should ignore the OTG port IRQs when handling the shared interrupt.
> 
> Otherwise, it would update the extcon based on an ID pin which may be in
> an undefined state, or try to queue a uninitialized work item.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
