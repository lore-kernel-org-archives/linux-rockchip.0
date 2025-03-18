Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F21C4C28B28
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 23:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bv7B09O44WH5QZy6yVPujqqi4pHtfjtp1vyx/2JysRA=; b=FDJ/yLTC/8acvE
	W6KPnOqES4W3OIVFw3kPWPXNzaBlXbIDhr6qMJxD4n/8FuveO2CKqQerbKZWdT5qstQV/Vali16BT
	aLoxoXDk2/2NRJOIQk6KCnDfWktPh8WxznyQzKrEIeDo54IXHRvmyqaFfxY1+LGrHEkLcTTQio5xs
	daBkHUjqWYlCElznNeTdfRIP1+sxw68jvzEBKFMuIOi9vLo2ASGfjBq+g/1XpeGICP8NU0ku0t8hT
	mdmwmuzuytWF9mYGXXminJWOgjKh+SG+Z8l0gNhlZDlmSlRdhtRQZTpfj9sQTuGhSK2WPthOmk6eX
	twxm4u7BFCZJ0KdSErmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tugMC-00000007OHW-4C5R;
	Tue, 18 Mar 2025 23:28:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tugIu-00000007NdX-48No;
	Tue, 18 Mar 2025 23:25:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=uHyHzilSWbC+UBLudukfiL/DOAeWEd7pFysVQd2Jiqk=; b=VTShvNqVa77P/1cqSlIODlnTHr
	Bx4G39CZ8ignG9l+7vyEaKdOLpAeQ8BmHg5Mwm4cvky5/8NNamJ7mcANtct3kA9RLqeNe1kt/ZZ2c
	WYCU+EldRwhbYQNQpmbbWFm8ncPK3SC4zFBREzjueTTHrzhugjNHyglEAJlGy90wnpGbEG35lV3aq
	XmTel4MfmTOYMHxBN1XNfBq2RR34EvsSpNOo7hsfWNs3GGiAhzoe9V9jXMmLmhTjySYUJAdK+Ps9i
	f9ch8EiJE3iFL/0Tl6mp6q7iJrI6SLn7LbHwZkMuCj2KTqI6CmPWJYNZI/h2rWJHYhqYd1D+V4aIr
	TlDMhK6Q==;
Received: from i53875bc6.versanet.de ([83.135.91.198] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tugIf-0004Fw-HS; Wed, 19 Mar 2025 00:24:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org,
	sfr@canb.auug.org.au,
	linux-next@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "dt-bindings: mfd: syscon: Add rk3528 QoS register compatible"
Date: Wed, 19 Mar 2025 00:24:41 +0100
Message-ID: <174234022088.1144821.1552001262318084726.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250317230705.932808-1-heiko@sntech.de>
References: <20250317230705.932808-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_162501_025365_5DF68D52 
X-CRM114-Status: UNSURE (   9.74  )
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


On Tue, 18 Mar 2025 00:07:05 +0100, Heiko Stuebner wrote:
> This reverts commit 19a634195c1abe498798b564cd6b81e6dd4533f7.
> 
> The dt-binding addition adds the compatible to a syscon (a mfd) and should
> go through the mfd tree. And it did, and is part of the mfd tree for 6.15
> as commit 7f3e3e7228bb ("dt-bindings: mfd: syscon: Add rk3528 QoS register
> compatible"), with all the correct Signed-off-by lines.
> 
> [...]

Applied, thanks!

[1/1] Revert "dt-bindings: mfd: syscon: Add rk3528 QoS register compatible"
      commit: cee24bc73d4f3f47344a1a54100a69c72f1db061

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
