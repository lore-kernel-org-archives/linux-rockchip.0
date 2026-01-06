Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C20CEFCEC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQd/mDn3hv1GrhAEWFQhSodXHs70g9DDlCieVwLVLMk=; b=gnQNM5gTy1iGIt
	C4Ydk4zieqPwPLbc2LzNSzAYUGl7lksvE4UUvH93PHdM3Y2KCZtJAuUFkDLMgjNDRtqtIK+2Lrq82
	OPA9WTSdJ17+ijkm1l+6nF2a/A1BNFBkEvPxGbvZqSht5thwSUwt6grawzVf34GKGqgRhM/IxPPug
	p0UU14vt992+HjOFoXjWpvSfHKmbFj1Imm30hMThMuAp87YvCJdu3o3UdxT618WfY3CLWGIrUCzZP
	oV9WiQONZeDq8Rq7B/XM92R3Rf4Bo2h0E3qhou8UbeEJEd8HE4MbIpiyrLY8zo8MAjKU2urLuOM5H
	VHpEWzvSmLrekKw9oVOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0T-0000000DhCQ-3RgW;
	Tue, 06 Jan 2026 18:42:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0Q-0000000Dh9h-2eqJ;
	Tue, 06 Jan 2026 18:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HSEEqzdYtiS1406DqTsJxL8tp85dN4yIu/TBXgW76FM=; b=E4HeF9IcraYFP+HGdkS391KR0W
	heXNUZzpgSYYpOA86sSpnunPco4eNUOQFPeTUZ5aaSMF8KITAiSV1hjjpeSaGYzRi4Y2u2cbYTSUU
	EzN2PllxadUZ/iJfKYGrQSl8XiAC/Qa/6NKoQo1Oc6q7y22fC2hA50rUHhYHQusF6UVyMqepEUOad
	DnOMZrj/donP0XhPCuiS/kp3kVkhPxbACSHxdqVlxa3AtaGb5CFptLzgI1/0tOb+fcbCY7h0wCl23
	9THqENKSq0Kp/sBJsRJ7E5JZnFFKU0Cavo0F+DBMxVWFmkioiui1K9ohUR8hAaFN/q6TZENtD916q
	E70q/nwQ==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0N-001Hfs-JG; Tue, 06 Jan 2026 19:42:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable NPU on rk3588-tiger
Date: Tue,  6 Jan 2026 19:41:59 +0100
Message-ID: <176772487193.3029798.6319873213784779771.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250812085213.1071106-1-heiko@sntech.de>
References: <20250812085213.1071106-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_104210_736341_52F0A6FB 
X-CRM114-Status: GOOD (  12.16  )
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


On Tue, 12 Aug 2025 10:52:12 +0200, Heiko Stuebner wrote:
> Enable the NPU cores and their mmus and wire up the supply-regulator.
> The regulator itself was already defined, but it does not need to be
> always on - the npu can control it.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: enable NPU on rk3588-tiger
      commit: 8fd18d9b7b74bbd5ee5c562c2b94fdb7a356867e
[2/2] arm64: dts: rockchip: enable NPU on rk3588-jaguar
      commit: 843b912c7241ed0259f6234243da05e10ce67c0f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
