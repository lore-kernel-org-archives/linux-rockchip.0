Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF69FEC0FC
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 19:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23wTPXIlNn+cOStG8ICgLbNCSY40ce+e3RsLnoDFSRs=; b=LlBigHki6SgBPe
	HZOMulH2tK35lM/k1cTdPkgYztT1Ivhzn+5mLaAlNjeJr8HOO3lAM/yad3wZmuTbIh3St8ZTXfRI+
	XLVZ08Z/1a1c3Vz9oCIqh1eA2hb5AhS3HUuWdNYRgwzxWInmEpmjvzsUTYuNaG7QUvglkQLd4Iq22
	s8v3ZTP1ehxrnMniXl06/cb2RenHMmYYbO91E3jwdj0EDB+D6BA/dj9CxTBNJ5o5Dqr4Yh3mCqLGx
	xBZ1/kvx0o2LMrQ57ZDvh3Ui1m01bArgq7E8mVabuTn8NOyLl5CE1AQtigJJ/0UBoMz98ffXLd4FF
	A9JAoDaAdRUw/JNkJSLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pd-00000002BEV-3M35;
	Tue, 24 Mar 2026 19:54:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pK-00000002B4Y-33pO
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 19:54:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XRQ75JEC4lEZf0LNuwH7roqEET7G0WjlKuKX+lmjVGA=; b=kl5kI6VW12dmU54GhINOFG6vV3
	+TCsoFdIKVxw/wGgp71wQdRgxvRcwyWWjM+DqRfTOujHEj/T2NmjN+KTAOppknmUdHcYFBlTzBLdN
	UQhXeGANNJxZfjjdBzbWfhnh8B6cgP/tvi6AHgrpjZ0hdUyESTQWxACVLJEn1KJfMAixAMKVjzuzw
	2IWU2sjVqMAu6ojQCXdEuCTLaR189Fts6+m5dkOYdgisiKhHullA//4P7IxK3CcA6zCbhsZZ3ll1i
	9eSAhiAteOICqIgNoDuAWzDeXIzKlx7BD/vy4pGg7Eh2SmhoXz4HachxUZcbYrMBz8Ab/MildeSuc
	tqoCoG3A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add mphy reset to ufshc node
Date: Tue, 24 Mar 2026 20:53:57 +0100
Message-ID: <177438200691.818857.16673715835676850239.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <1773277913-29580-1-git-send-email-shawn.lin@rock-chips.com>
References: <1773277913-29580-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_125410_774722_E77C38BF 
X-CRM114-Status: GOOD (  11.09  )
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


On Thu, 12 Mar 2026 09:11:53 +0800, Shawn Lin wrote:
> The mphy reset signal is used to reset the physical adapter. Resetting
> other components while leaving the mphy unreset may occasionally prevent
> the UFS controller from successfully linking up with the device.
> 
> This addresses an intermittent hardware bug where the UFS link fails to
> establish under specific timing conditions with certain chips. While
> difficult to reproduce initially, this issue was consistently observed in
> downstream testing and requires explicit mphy reset control for full
> stability.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add mphy reset to ufshc node
      commit: c7f415cbd53efbc30f9ec16e9c96030a23830a6b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
