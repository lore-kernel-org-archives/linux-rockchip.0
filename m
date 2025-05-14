Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E361C3ABDE
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 13:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ep84qq6esUFLQnWTXH0OLe7RCS5akbJHqVA/0K97uDg=; b=Yzq5R1NJOk4ne4
	+KDqJWnm3uGe/ENkN9JM9WCmcywgXABXNoPsiuQhB/Jmwo7AAFiD8SeV+uqBdijcnkZjYhkLsgJey
	XM7TThL76Wa34of+cjZViqwXAi89z5Fe2HnQB4RY94/lf3RsA+CC0OWa2yTCmxrQM7NKHRivctXuR
	B+4dtB1/ITXJri0OSTMSUFKTWL+EEQonLV4qFmw3IR+SXdBHK+FUUPu2jDdMbVwvc3IlNFRqZXYez
	jNBL4Rx4tDeEOw5LbZ/q3GSAQaK2RaobnxWxYgHoJ9BlGCpGvKzo0hmqo0XMzmiJsdECLuJP3V6oN
	NTa+XGcQhLIR1Zd0YdOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYZ-0000000FILf-1Jvz;
	Wed, 14 May 2025 13:53:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQM-0000000EuPv-2Lpp;
	Wed, 14 May 2025 11:37:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F91344DA2;
	Wed, 14 May 2025 11:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3511AC4CEEB;
	Wed, 14 May 2025 11:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222641;
	bh=i533NMeV5GO7/xUYiXrfMLveCBR6FPalyI6+47rPinA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=B5DCbJdDVntyYKsinJJZkSasBRsJRoIJbKDNq0evLfR5lBVlzCo3GjKAMoL5xXgI8
	 6RrU/kNHwaLRNUh/Kc1Va43x0qX8rJCbT5pgsVAHKLNukv8kPSUNWc9Cpjv3Kjm4Hf
	 CFXTEkOaiVAMsS+DmJaMCILJBIa97FDqWmA2xaQ+J+ucod3JSEI6wP9Hs95WL+ITbp
	 6FJRJZdJs72MtXP0gIrsnLKkCKUj+KHQBilQdjtXp4Ok/XMTAqPUNNhA+xVKysVTb7
	 CvO+e1DQYEC3SUoKaAV3ykq3pdevrjaOnrH4qmxuQkvSCEUyGoL+zDg9K03UmNAKri
	 rDsC51GYixY1A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, heiko@sntech.de, Chen Ni <nichen@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250415081200.349939-1-nichen@iscas.ac.cn>
References: <20250415081200.349939-1-nichen@iscas.ac.cn>
Subject: Re: [PATCH] phy: rockchip: samsung-hdptx: Remove unneeded
 semicolon
Message-Id: <174722263987.85510.17860995825685488845.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:19 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043722_621218_5A9890BC 
X-CRM114-Status: UNSURE (   4.52  )
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


On Tue, 15 Apr 2025 16:12:00 +0800, Chen Ni wrote:
> Remove unnecessary semicolons reported by Coccinelle/coccicheck and the
> semantic patch at scripts/coccinelle/misc/semicolon.cocci.
> 
> 

Applied, thanks!

[1/1] phy: rockchip: samsung-hdptx: Remove unneeded semicolon
      commit: 3b2b414927dcbd866c99ec92e3a214a69fc51c90

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
