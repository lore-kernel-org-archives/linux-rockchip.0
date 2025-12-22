Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0ACDE674B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqqqxk5CbNVstpYHH7Qjzk7yfaDACCyYeQZQ75HlOLY=; b=pC1FRym2Gycmjo
	yeaZa2cwlw89v2VegmYIaRjpLEu1/ux+yeuUxv0dblw8a9Mkd8PGhhuHDB15oooigMqvebCZcESpW
	HwhexvrJb3MEx5xcolwnAL/3pcEJLoTGgy/TcNniQHJ+635EfotQkuDaO1iy7YM663FLsaBwrQwD9
	gFudoL/PH152G4XYzY8ZEgf6hW+FYZyGL76A9nJs+gzwPJrmJiSYzow9XUR8prazXzhJ5zpJ4rH6x
	7HwmORgLy/xG8nWP0iJsXsbtkRNHkvHjQslSkOzBltXbrD9GJ6AZXSO0up2pA69KF7M9Rk19JfSKn
	W3KZKeGYfSIfMIUWqD2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7V-0000000Douv-0bm9;
	Mon, 22 Dec 2025 13:38:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg7Q-0000000Dosj-0T3c
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 13:38:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wFByVjn8clT30PtTH8YK2XODGTzY5N2XsrRq5lwv2xI=; b=bTdv4WMn4l4bdo+J0BevMAjTwH
	MfT30mF/aAKyc4YXdiD5HMZNkhXyDJPJfNSb8oPOjMkytuUx0xkFW4xni+wq2tGvwUZbY9WNjANzN
	Iwhbzsy7fRQo0T3ACvrWBrdmSCSQ0uO4Ont1PpJWNtk3G16jC3v0QIAGzVzQ52q4tXWRVg0gWha9Q
	ziKu84oTotmJk+gU8wQ8FUfj5MiswRDQKVJSC3uMMNFBJpWa2BzWxC0a5errNNjx5jposYzLzQWcC
	vodosdcJYv843D7Cq95dmSyMvJB9iVeCM8C0bLdb4CP1gqYdU+ISA6BIFwA30PtuDAxqusa/vVgFK
	v8oPAqUw==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg7M-0005s2-5a; Mon, 22 Dec 2025 14:38:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v3] arm64: dts: rockchip: Add PCIe clkreq stuff for RK3588 EVB1
Date: Mon, 22 Dec 2025 14:38:28 +0100
Message-ID: <176641067336.1648325.2657007123532821306.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
References: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_053836_540409_33162CDE 
X-CRM114-Status: UNSURE (   7.11  )
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


On Thu, 04 Dec 2025 08:50:28 +0800, Shawn Lin wrote:
> Add supports-clkreq and pinmux for PCIe ASPM L1 substates.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add PCIe clkreq stuff for RK3588 EVB1
      commit: f8a1d7d136f734e8e20e414eaf8aff74e6e0d55c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
