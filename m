Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36B9CD5E379
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12bJwYt+f1Prkil+TH1RSH2zQPgxlCAF9k8ERownKhc=; b=V6RDh3TNIDuHrZ
	WkAiNfM/MiG9ihN1Jtyf9bPSPG+/l5/wbjd4rbbA0QFJLVa2h31FuKu8KwlYSK+7CujWi0bRbKyEh
	dJHpg2vPh6/1klBnWmo2JuSMRJA99IF6WiUpJiQEfAuBYi4H7mzv9NCC7hFqbf54sumIgbCGmcD6n
	veYbn5Qo7xRx2VVZflAlVPuf5h++9ftsDRu/Z57x2G0aqPmjX3Vu2xMNtNjn6cQbu6ktB3igWLLE8
	23FJ44G6QWZAZw7i28bT+XX5TCiqgywFvxr3m/Cjzfr4emFk/308+QhRjPxuuB1bBGefXWVtjGBl5
	zpB4bCRTwkoGIoyqrslQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qSc-0000000Dpnx-0Z4F;
	Sat, 09 Nov 2024 18:45:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qDR-0000000DoCi-1wRX
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Nov 2024 18:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GbJ/b6Z+bS+jmKJNSPj0ideve+jBMnp5h9DQJ+W9g3M=; b=q9jVPe6v52a5XzZymGF5I78YX4
	ReIsjaSStwYueOE/Pbz2knuMmmb1H/MM9/jiSskMmrAmuO7C9pexVZ4ACHLROcrVf1EfHsKZ7ooLx
	zSniNkNQRNQxMgt8Ohmt8geLzVHYZV9Uyz7rLgMslnGNPhNx6AXI1HKnl+05WUTnklZ36a0ISKOSq
	GRY3EKFO607a0qECwMozgeNKAgJkyfrfFRyduOKDd1pObueVM7RRLs9l60TBzpqKz2QHLC5O1Er5C
	gX/T2Z1hSPrPpmoI0vPkQq6oHpPIRs4YjBXGazoPRry+hnPVfeGqnqeMQvRrFAOaZL0dZ+L9yXSZ7
	kbChI7wA==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBK-0007Km-28; Sat, 09 Nov 2024 19:27:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: sort files properly in Makefile
Date: Sat,  9 Nov 2024 19:27:18 +0100
Message-ID: <173117675958.1131306.211010829182074056.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241028072344.1514-1-naoki@radxa.com>
References: <20241028072344.1514-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102945_519810_60BB5BE1 
X-CRM114-Status: UNSURE (   7.81  )
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

On Mon, 28 Oct 2024 07:23:44 +0000, FUKAUMI Naoki wrote:
> sort target dtb files properly in Makefile for rockchip.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: sort files properly in Makefile
      commit: 9f3360b42bb5b0c99073827a3dd81d2568b2a4ed

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
