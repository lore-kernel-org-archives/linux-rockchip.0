Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A45FD15D99
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7JhV8uGsTkTKqHTl1r390ArsjT5EkAd93H4LrWKRSg=; b=q9WqorkMlPBr5m
	vJ0sB0jsjT0c9q0/Bjh/I/0aRO6qE8Kq8dpt4gZAZUTk4y+rrWWHwi/2pvE+JIg6MilSWaQTJsI+U
	wm7dO4svI5GY3hWgV5QOYo6SD26BpD6LmjZr/PtTBEJsCVh380LPcXm0yxuvYG0n2nz1sf2oU7I8f
	fGEBLE5vuw5o+QQ+43p6oI0yzyILEPdP1Th1JIMmWIbUJQaG2Z77iajyh6KDYYHEvi4y1kCSxJXVt
	FekM4yMzDffROpCEgrBILLIULLTE3ULuWWn2qM8NdNCBXKdydtf1yrnEHN0dFX4J36WoiLZ11fc8z
	ELdQltzcRQZx0F7El/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2udK-00000007r2v-0gmL;
	Mon, 21 Oct 2024 15:47:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaK-00000007qDA-40Y7
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 15:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Ff+5sBrZg95R+xJP4DVE+fcvbwTRmogHYQPifvspPvw=; b=D3S/KUWldsJVsTTZ/plR59w1t2
	uWV7DLKmPuilUdb9g/sw9uMIQ/zh1qZI/qYpqYZh4nlkfI9orzipUWCGCvBK+AYVeFQGK/zjLNdvf
	2Yzu7Lm5Y9yUnA/ii5q9gnFXQs5CPz71GwEdywmBVNvjlYgKGNT8Ewm6uG15ChE5LYPRHwWvA76uS
	zwAAtxmbM1/gQHUfJe39tbh8MfWXcXAobqQ6UuxIONby2hkQhEhPQfhCBI25IFdgX42UUZUy5b0DS
	YQVu+DJucVrclgy9w3iv+ksjbL+Ln1HVoOlQVHbP5ROmjGDZLhjBjqkJMuxjTLUDY7ybWT7f3lQbd
	5cnP2iWQ==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaJ-0005jR-KV; Mon, 21 Oct 2024 17:44:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add and enable gpu node for Radxa ROCK 5A
Date: Mon, 21 Oct 2024 17:44:38 +0200
Message-ID: <172952545661.1342338.2509380944006136783.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241019025008.852-1-naoki@radxa.com>
References: <20241019025008.852-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084445_104241_477950E0 
X-CRM114-Status: UNSURE (   7.90  )
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

On Sat, 19 Oct 2024 02:50:08 +0000, FUKAUMI Naoki wrote:
> add gpu node to make it usable on Radxa ROCK 5A.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add and enable gpu node for Radxa ROCK 5A
      commit: d7d79059ac2831ce384b89a94eabbf44abfa4f63

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
