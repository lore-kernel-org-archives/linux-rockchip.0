Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 361E2CD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QifwohxJ7Dn0GHbHS8PPD3E6jIgEfaD7SfC/Gv5tekc=; b=z1h9NC22x7I3y1
	KFbN8nquNTVG4Bs2hB6XlCSK/dlmZBguNXUtrVUHGTnNWmHiluRN6q+G5fEeRgXLwUjLXBg0RKzIc
	Ee9iTdltz4b4nkay/AeQuI2JA40p3lO05XcwD2zvgmfjC59mFTaE3gaSHVTCqTUPnCAjcxJb2pftA
	5YLRU7ys7i9JugNCaPczp+HKBU6rHQm4uhOYhhNtFIvE2Xj62DgsCafmM6ZWca13j14Lk3gIjfjMt
	LXi4OseIc7gXmFXWWQI2d+06qu7bdLt/rXDVdluMcgEj8qlSMOS+vmCzwA3HZoAgk5AxJLkepw7Gl
	odoJLsjcYgbkeO+gIvug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmDT-00000003eOn-1dDJ;
	Wed, 04 Sep 2024 09:22:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllgA-00000003VP9-1J09;
	Wed, 04 Sep 2024 08:47:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qoFZgLgVnrovJxCSL6kRla7wvSjvRIxlgDdGXEy63CU=; b=x876MY7lZBy2oep5/nnHQ1se95
	sQMt37m36ZHal0a5GYHe0u04Sl4A4XCuAA+Kec0o8Xyg8dqTib8mYGWs3DEG13gDG3fxXICD+eyjv
	j/BeqqnvkNiArF0pNd0fVtcHSw9pJGLNHF1tmCMATcPJ5cUwJwXauBko6vN4DW5T98OiQoEkgIz9L
	YGecHiN3NHPKb/RclmaS7HSrNUzmPznYAEEuVtLiY5gwDuJ/MEvTuJrXNkPFNgE5FFI22UW4/X9om
	ed4r6R9rqkzOEaxzRjf6vDqb1p+Q+btQrkM5KNjHbOE6YVPJT/KAMDVlAD8oJW3KnyPvy/15EdO2W
	vkpzTkNg==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sllfr-0006XQ-9V; Wed, 04 Sep 2024 10:47:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 David Jander <david.jander@protonic.nl>,
 Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
Subject: Re: [PATCH can-next v5 01/20] dt-bindings: can: rockchip_canfd: add rockchip
 CAN-FD controller
Date: Wed, 04 Sep 2024 10:49:19 +0200
Message-ID: <4326989.Fh7cpCN91P@diego>
In-Reply-To: <20240904-rockchip-canfd-v5-1-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <20240904-rockchip-canfd-v5-1-8ae22bcb27cc@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_014754_416136_7EFFC2D4 
X-CRM114-Status: UNSURE (   9.92  )
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

Am Mittwoch, 4. September 2024, 10:12:45 CEST schrieb Marc Kleine-Budde:
> Add documentation for the rockchip rk3568 CAN-FD controller.
> 
> Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
