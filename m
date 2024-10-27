Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761ABD13580
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Oct 2024 20:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EikUDkqWJPoZuVwqJbg/uImKKPEN7CBNIPEGmAn61Y8=; b=IgisU9t1BRTzeW
	8ue2hCpcKvoOJX5xmrqa/d0eMuaNhx5cYmj9uOY2/vuoYmjDMcDHZrG3YctcHlOTWDsMixENbrE6s
	8MnMEZSLBHYKLdOPsankvxEQBhjF9M0hpQFWjuAa16/ThNmW/O2epcfXAf4SCJgxejedilDpw8M2Y
	0gh1IcIp+sEZt0FdHRdAmmyKUC7eqXw35l2DYy8H/4mutWeActG0KXGyDh9s29w/MUuCo3UM7trUn
	zZW5QGBmGjevWQ6GZce7MoV2FAhuxgyyN3VBT3taHGr0EqSnFPt+vKHVBraN/rAvXTHC3eJlIkhFG
	krj3zoGr5CnMp7y1LjjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t59vM-00000008qCz-00Z0;
	Sun, 27 Oct 2024 20:31:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t59um-00000008q7H-0wuc;
	Sun, 27 Oct 2024 20:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YhE6OJbE4zVQRfI6WKab0cFThX0KUKxVPvY6gL/TaCQ=; b=LpOh5+xeN/inEL/dPQJp4tRodC
	na18rzgLHD4nM95QO7Z2L2Of7swBgX1hQAurCzrKqdY1Sibvl+M+9GRZxIcWIo3Gs2rwXSiYPYimN
	v5YhLFFkSKAxZpyePrbZdvq7vzFrm1cCVjIo+1LbwvgJevfOHV1f04Q3lQKrPRpU8O5zfz4wW15Q7
	9n+W7hMh8Vw+TnpGv4vnqbGWNfYiCo9hjZiZmSBjJOYPQt5A19vpGkY5CFsW5kceWM7EEe0cY5sIe
	+CYygv1SM5J+3rffbOjfsvPpvcMeMWgDZOO93sWQCTj/FPURSJJNxnj7AkvYV0O9itGmobBU/kg1I
	/MAgZ0qg==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t59ue-00068h-3G; Sun, 27 Oct 2024 21:31:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org
Cc: linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	andy.yan@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: rockchip: add rk3588 mipi dcphy syscon
Date: Sun, 27 Oct 2024 21:30:56 +0100
Message-ID: <173006096669.97564.15899385543058068813.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240506124632.3621378-1-heiko@sntech.de>
References: <20240506124632.3621378-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_133108_284272_EA6CFC4D 
X-CRM114-Status: UNSURE (   7.95  )
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

On Mon, 6 May 2024 14:46:32 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> RK3588 CSI and DSI support requires the GRF for DC-PHY.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: rockchip: add rk3588 mipi dcphy syscon
      commit: 22e027cc74488dba49f19f943c2da02726261f08

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
