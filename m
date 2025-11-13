Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6802CDB463
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/fkxGtxBXRL8qqLKQWTe2SkxpQPZVTccLRbv18L9v0=; b=xsBGzAXvz3gAfS
	waST2dFmbKvW7zviz2XBTeRObpRMAn5TDs4YXqmXF7qC76N3mI4pqScY31/Yb7MUbeFyQD7tsUGi0
	9uO9cTiCwUm/M5hxMWk2J25Y+57b+cdZlDFSqneev7qjhsAhlmlT908BWhp2Qb6Yic3PiU2hn+T5+
	WWpxGNGAS/3Td6sMecDWrAoKnptvdjmS1f/MKcfV5F2qmi7hzVdweRP70ZkufRmGPl/zXQhbJ65XF
	KbZQNkY5cA1AlYD7c2KLILPqtLiXMW5HnJ84yNpqe7U6OlSLCr6oqKd36ds8ow5px48X491METFDY
	9lq/wJNbqCOb6pXTEy3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgoR-0000000BIR0-1i9h;
	Thu, 13 Nov 2025 23:33:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgoP-0000000BIQ4-1Qt4
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 23:33:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VaB4D6cmMS4TpSFZJtPVkpFazADQ5RqzwvwJgwOJP/M=; b=VNK64hbvrt55u2Lh98X9BEZdTt
	EJi7ton33DSveRCiRWTtKqAVzhQXXytXZoxDHLc8RJrMVAcqWxO8yg9q65CfOOVq7U5oh7Rm+waPo
	Nw6+t57IsiPRlWWqV0KXpEsrB+VV8frRgKwcYmBx/jOFI77isj1iiS4OJAvenyOJWeN6lavDCMXH3
	ukW3KHrzIoHbCXqQdgs+7qj64hGUTpdMaMnTqrJy7pJBK39chGxhyRpnewiU4mHdWUck5F0xqY9jI
	2z20Yjn2l0hYfRiANvugzLPGVQVF6dnHVLB+egIGeFJZ25dc+eQqak9UKaRPMi1Dns7Cy1JdPABs3
	tbZ6y6ng==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMo-0005bo-AF; Fri, 14 Nov 2025 00:04:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Remove sdmmc max-frequency on RK3588S EVB1 board
Date: Fri, 14 Nov 2025 00:04:31 +0100
Message-ID: <176307502894.495066.3909828296621273696.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1762844673-123776-1-git-send-email-shawn.lin@rock-chips.com>
References: <1762844673-123776-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_153309_376412_42877C0A 
X-CRM114-Status: UNSURE (   8.49  )
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


On Tue, 11 Nov 2025 15:04:33 +0800, Shawn Lin wrote:
> sdmmc on RK3588S EVB1 could work fine under 200Mhz, no need to limit it
> to 150Mhz.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Remove sdmmc max-frequency on RK3588S EVB1 board
      commit: f151b74eadc65b14a60577d3d186385d69c4d79a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
