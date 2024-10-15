Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 241A6CFC268
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 06:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLdbmYUHFzDBi4t3mRKV/PztqNmUJQmp+H0F5pgLL/g=; b=uNgY6GLr3abxSu
	eKpeS9HyXnaHBSGCeP5AERAIpmcvknzAcX6kQuCATBa4leEC2ECbuRCdR7QXDwgdv44ISlg+fNuCu
	mQ2uVTDh27neitDbAsmOnrGXwM2LJ26gy27+DOsT4FsMHR0BG4I82S9UoDSbsZFrfJ/7y7AMM+QtS
	f20guGi4IWvgzY6VGbN8xXWzoFVQ2o4hSxsHCcvBFetnr6+qE0r9B0J4KAGqoEskpBm305gi0SPAk
	Yo2QKRvNDwaSxibOD2kIsbtEYT1YDHkmSZB/KT68RqbR3GdVU1HzcbA2f5azcz9FeKe+K2hTp21xQ
	7A85wYHmOPv/fDDilrxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0aid-00000007Ahs-3ZDH;
	Tue, 15 Oct 2024 06:07:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ahE-00000007Aa4-311e;
	Tue, 15 Oct 2024 06:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ASuBcpLVRHwqVESDWXGS90dfdjQqRtTA3nVmTt7XIHM=; b=DC0kyElXnIAgTkVIE9Yb6zwK8M
	Sq02nthbwrp3zH3WKRRKi3FnyYVvFGtVyNJ94Az8FiXPCSGbpDX5pI7S8+mQAGeqDfiPVtM/vKVbK
	MS5WXh2DxoGT5pGXL452jG70HztHWIrcdp0oB1iaczCTAkgQQ/8uyEwB3DdF/BhwRU2ZY1bxnf8ZL
	JEbrM6P63miqJ43+Qw/8rpFa8kHdx4DC6njoCL8pP/FT7awk4ymNuLlFwdCaQrCdTtSGFSmQ5y+rU
	qXDgy5b8GAmioztzwXyoPh+MWIOHzdqlh++3KK1pG1k8ILGjyG+vnSO8a7eY0B6DiyxbBvDiULG+x
	9nvlPh0g==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t0ah1-0006wa-AN; Tue, 15 Oct 2024 08:06:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip: add rk3576 compatible
Date: Tue, 15 Oct 2024 08:06:02 +0200
Message-ID: <3315048.aeNJFYEL58@diego>
In-Reply-To: <20241015013351.4884-1-frawang.cn@gmail.com>
References: <20241015013351.4884-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_230616_815046_F552F352 
X-CRM114-Status: UNSURE (   8.48  )
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

Am Dienstag, 15. Oktober 2024, 03:33:50 CEST schrieb Frank Wang:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Adds the compatible line to support RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
