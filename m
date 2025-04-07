Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27819C3601E
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 07:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoSyBHtq9mpsHVb0mZ8SCX7AEro9KUth/JueHgnvCLw=; b=SCGzjs/NIfvfd3
	tfTy1a/gQkC6AtaNtZNtZoh3w8/c+TxTmwYmpBMs7WxNzcyU+kkMsJjDuHIjQN8omGZvRrPxoCeOb
	xanDKm9IijP76UAFBQqsHSWmmEvgvXQMsEaJLFeGld8pmZ6K/VaZxYHV1+k3vmuLlc6tkl3/AdG8j
	xaOkEoFjxnQHuWjiYjWlhzm27UTHUE8gdc8JrAdJLhTdVmgIbq4+O134+d1ut2DZL5shTt+4PWRwO
	oFczkm2wPAQDZqNWZSHk9gQMJQb0234Qf1yTPuVg3JjprN4J8GKTIOVhIa/8bDu8jKWWQNaeaZO0l
	7UnxnitP8x4Mp8UZgc4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gyW-0000000Gn7k-1GfF;
	Mon, 07 Apr 2025 07:32:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gk6-0000000GiSy-2XaL;
	Mon, 07 Apr 2025 07:18:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=E4xhtBk1zbp0lmzvNeEtXeBgukjshEfh4UTaJs1zTAw=; b=2klBk91IQ5W38Y0AhP0QB0s5dt
	zHqMTmLh8SRS/ShbJ1PqaTtztFfDP4qGWhri69ED9g2S5BK+rTV+P90/oQDCK31tEmk6G2OkyXGXG
	eg0/6IFWIQXn3j6KL893B29q0VWPXHrHeaSFSFLPO+TN+RXQPSwfe07011kS/4NHpPmlkEKMJLOPp
	lOdUhd7dJoK9l6DaH3+yOJM3hODvqCIB0/S8zaU6pcOBSll3t9Ac25JTEB5FlmSmXCndf1rR1qHI0
	pn/lLUJfZfnZOyospOebyFpBFx2I/q1Z2hg3xj9XNYignQQOH1nU1MbfzDlqPBY5y2RWSELMUCaEM
	3DRy12Kg==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjx-0000tP-0U; Mon, 07 Apr 2025 09:17:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI ports on ArmSoM W3
Date: Mon,  7 Apr 2025 09:17:43 +0200
Message-ID: <174401024398.372530.8692340789444388220.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250317163240.3083908-1-liujianfeng1994@gmail.com>
References: <20250317163240.3083908-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_001802_637388_38C99014 
X-CRM114-Status: GOOD (  10.09  )
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


On Tue, 18 Mar 2025 00:32:21 +0800, Jianfeng Liu wrote:
> Enable the two HDMI ports on ArmSoM W3. And audio output of these two
> ports are also enabled.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI ports on ArmSoM W3
      commit: 392275203af1b384fd12df2cef6fb6ee8b3f2b68

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
