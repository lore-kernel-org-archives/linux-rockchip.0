Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17EB1C02193
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 08:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4eoBGzZENIKCIxXCZYyskWY9VUBHycA8evSvkMg4a7Q=; b=vCPTsqEMTBE8j8
	Zi1pOvZpU1Sc+86m6So7lEmWBL7a8FtgEP3IXeWQVRuz7UYv0IXklg4Cp5naNu6ZTYeSbYulO6FZM
	pJmGHJhsDs+k7ZT91o/UJX4MA3s4ep0V00T5L62HA+aMJVWcK/EvFmh8azraznJGXvTm8FEQWwLes
	dE148cT8+AkS8+TRjnrIqr/hPgH5A1p/EbpRP3KyEhJiztCm6uzEYbiA/ok4tX7hb2FVhU/JJejwI
	VlOTTmfqV1MJuBPxIaDTcYthcJ4ao4miOaFAf6PODJGSA3dqIsLpCzLoaTFkrVTgVAW/HOc6Y/krA
	YTr76FGUe/3VDBu9vSMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teriK-0000000EoyA-30Q4;
	Mon, 03 Feb 2025 08:21:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1terco-0000000EnVP-2zRn
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Feb 2025 08:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Aze4aJnrz/2KocFF9cKwONK0uKp48/98fqoOynnEDLE=; b=UOWwfo932gRc9id64bCvCXRNMC
	bqpRx66Sva+jYCjpAdQcH/j0h5bnGS7KAEhmT0Wxb561UamKfr8Osel0TQgSgKYW/+mrGPbYZ+sTT
	QPCTAwWi6+0st1Rj7Ajbtdn23wlzNmthV5JHxMuVPbVze25+uiUm2/cfhiiAn6fydECW0K68kSdv3
	GpGFlr+8hkvNtCEGuCtD8drHF5S7p4NFWl/SrBfsbzZoZyGXnj6W4sKJAhU4djxC6eYdditYIbYGc
	7UGoEYwWvsvys+Z04Zko0GetrVzmNBbbmf7rufP1ruFyL8A9CIuSiBXybY6qPhngutEX2iiiDJECZ
	eCY1ts5A==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tercm-0005Vr-76; Mon, 03 Feb 2025 09:16:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vicencb@gmail.com,
	Heiko Stuebner <heiko@sntech.de>
Cc: jbx6244@gmail.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix fixed-regulator renames on rk3399-gru devices
Date: Mon,  3 Feb 2025 09:15:59 +0100
Message-ID: <173857053621.78657.15997629060990557658.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250116143631.3650469-1-heiko@sntech.de>
References: <CAAMcf8A3Ehi=krZirpuFVpVuQ4T_wwQ5Ss29_o4-BiTaQqsoFw@mail.gmail.com> <20250116143631.3650469-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_001610_751216_ADA5738C 
X-CRM114-Status: UNSURE (   9.72  )
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


On Thu, 16 Jan 2025 15:36:31 +0100, Heiko Stuebner wrote:
> rk3399-gru chromebooks have a regulator chains where one named regulator
> supplies multiple regulators pp900-usb pp900_pcie that supply
> the named peripherals.
> 
> The dtsi used somewhat creative structure to describe that in creating
> the base node 3 times with different phandles and describing the EC
> dependency in a comment.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix fixed-regulator renames on rk3399-gru devices
      commit: f83e377977663fc3f04cf5bb444aa989311110dc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
