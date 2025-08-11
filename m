Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 166CECA0EC0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 08:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=taXHETJRltjkaHCyM5Vl0QxqFbUbFSVFx9enDGLVwNE=; b=ELQgd5KZFUkSMI
	qisNrjRv13I8mPEMsMuqa06/l6YE/CFXI5W8zj+ps8+GVwm6ogxrOclfW5F3VDOhydKB4D9KBVbch
	mW51VU7AuIG8fLU3qHFWAhB+wBLLcy6s9NA8ZC5bQOYs853mFqm6zBaYWRq/vRH8CXQijVdMw+aPu
	RNFqjpM9l2xIKvRzej5wkKqsrFVNbtojbfktcU9yveV9EzmCo2nyWUQAEg4oa1lkIIaZAau+wQa+4
	hBxCx2G7DewDNf7rfdnpttV1mym9hoCACNRw2nGzrhD2mS/+o9bE2SF0ZMOwbXXXYXXm6v11K5gsq
	fdtXyvCpKuXMO4xi1j+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulNet-00000006opW-1Z9p;
	Mon, 11 Aug 2025 08:13:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulNKT-00000006lJs-3HuG;
	Mon, 11 Aug 2025 07:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lzMhHRGpCbBOS1Zky2Z7cYGjVA23RxQa2SFqJvnsliM=; b=jx5d7NOZopdW4QXZ9Eo13eSGz2
	oYvTgO+cGzBzlwKlI8auCtRDzu1lsOEQrGGpE0U6wAXwo3TIIv+fckQcjk0ZKXijtnvAWAJt34bfy
	sA6nbXHqQrv0iuAU6pw2zwRVtsgy3i5tbbbyzsMefdKg7kX2zVXmqasBljymYOXc4GFiRo+EWfWMj
	z9ZGf88P1G5TXZly8gs4AEIyScHgGmyz4zLvXX64zl5w2B/LAi29C+IrSbZ/MljiNende2E9YARLk
	gU9gzfK1R0LaQKk7YSUduK6BAPBobhTIn+Nb/z/ymv8NpKhdy+CD9vms67fuLrkPvh9ZKeNqqRhn6
	IsS0ivXQ==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulNKL-0007Ro-KC; Mon, 11 Aug 2025 09:52:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable eMMC on rk3576-evb1-v10
Date: Mon, 11 Aug 2025 09:52:03 +0200
Message-ID: <175489870463.808197.10726652758635074758.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250731062415.212-1-kernel@airkyi.com>
References: <20250731062415.212-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_005225_823257_47230B54 
X-CRM114-Status: GOOD (  10.45  )
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


On Thu, 31 Jul 2025 14:24:15 +0800, Chaoyi Chen wrote:
> Some rk3576-evb1 boards use eMMC instead of UFS. Enable eMMC for it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable eMMC on rk3576-evb1-v10
      commit: 6294d0590d5f65725e505b89978895bd04b55650

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
