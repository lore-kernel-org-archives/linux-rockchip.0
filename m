Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7884C369A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 15:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzWl3xFOkc6tcQZSuP6ps1qJtYpUono+iwvrmvhD14E=; b=2w66S8RJDcgcSH
	Xw7ecLDAzsM9L5ofAjiXecRGMRuIlIPlY/9mSXoCELPprQwBDbFDmYF+jLMtVgywzaiaptk4uFSjG
	thSot8F1N30c512rpjvjHqjeya1V/SHqVTmWabRzGj62UAys3kIj2KpINeDIrGKVhnvJ+6On/OikW
	zHr7pUauJxz4w/HoTrdItjsOhS40cUKW+IDOrApJYuwA2kLB0yD0dmkXrGyjUn3MzjTugcP3A0gYx
	OZhrrk6t/aaHdPliiE+U1knV0eU+TcQ37OC3Th34PPfEbDeZXqUDFi76EWJbG0HfPA7o14W+UQi/W
	u8z5hbXKT2sUvgs1Sb+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2tzL-0000000B3C2-3wTT;
	Thu, 10 Apr 2025 15:38:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2tGk-0000000Aue8-2tbx
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 14:52:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dveFduEAR4wcUxntQQKa+u55nEh007JPx8uugieZS9s=; b=mS+kGmyfQU950a6RkZkU03uziY
	ejMomVXWT48ZAI+mOhdQcexZaR7YFG+inYXvayYGqT6OhFRrMaGefJpuO5MFfWgfFdkzSGTfX6d9Y
	O61H3JcXrUK8/FRVXnj3/bYRsXUMlKPKgMYRAdhgkeU6MdtReKPoKGlrMmNuv4TbZhD+/bmHKHMiJ
	Uhxr1sv/afTKRNprZvd4t7JBeZaqfB6IhZf12mmdt8gZ2nLVTTM5m5ZMpnQv9RnWo1yKeBe9If9uE
	ypTkMTHkkUdVU+0675SzHPFi2oXhBjCYYs+BHsscqOWxinfJbQcRiXnXVWDEOLIWLYsxzPE6wMOti
	LdTbznOw==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2tGi-00012N-Me; Thu, 10 Apr 2025 16:52:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Rename vcc3v3_pcie0 to vcc3v3_pcie1 for rk3576-evb1-v10
Date: Thu, 10 Apr 2025 16:52:28 +0200
Message-ID: <174429674410.910874.1345384910546779704.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1744079475-211962-1-git-send-email-shawn.lin@rock-chips.com>
References: <1744079475-211962-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_075242_731571_4FDCA2C7 
X-CRM114-Status: UNSURE (   8.30  )
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


On Tue, 08 Apr 2025 10:31:15 +0800, Shawn Lin wrote:
> It's for pcie1, correct the name.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Rename vcc3v3_pcie0 to vcc3v3_pcie1 for rk3576-evb1-v10
      commit: cdba8e71599a1a1cf9ca6e9573c243c9a21f899c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
