Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7C6606F2F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vBWhwklj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=J7kQ17dy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6IDe5Rt7FNS9YHhOLE7tEs6lADZ0Hi3oGQ2GCbqykHM=; b=vBWhwklj7KBn+nNPQ3b/Q5Bmv4
	YVNSJoXyUNlwCH9CL+DkHjaH32I4cfso1akSnz9PTsa39w3uiImcsc8joUh4RsJI9sgLlU7GsFim9
	3SP6PNxS2cftD8aI1dUbVqwI3DCFE1LC++vtXfa9u+zfzDIJ8Ib3atKim1MR8Wj3fnfE6LMPp03iT
	hoiiszHR3dQix2VZ6kZ4vbhzf8W6iVUvf2z8dIRf3QtkgEiJK+O9zTtHz6lFw8vvkcm55SaXSpV0B
	fQt8+dXJSG3T/DHzUYp21+ixZEfV0a/mrB4pHSs5jR4awRDNt70LHkZUpWLRkTlza7P77s353m6LC
	XI6gr6bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqY-0000000Ezei-0CP1;
	Sun, 01 Nov 2026 22:16:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdq9-0000000EypO-49kz;
	Sun, 01 Nov 2026 22:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wv1ABuR7Ob1gLZHZ2qpyHBZVXGvor+J+W/F07nCfMhU=; b=J7kQ17dyQsTsAEHG6ajo+xgzCO
	CAaNzQK8q+FqqOxfFCRVLMxqVh8dfcyNgha8Ma+cvRRBkZvFVTnx33fcIjA1ULi9aodpNX5yYrZUG
	Su3u7GDWgBLF5dJdSME3kryro7FPb93nBPkGJP588b5otHQkNxSQxAdmJVh5TUFgg3dbyZIHxH4HM
	KUz+znBW3GKmQHpJvfWOibYLRa/A/JUzY1ZJ6xXRaI1lLUuk83Q0jSbnRS/hrhkl/N5xUOj2OsOzU
	rVhknn3WovtpDtWH3paOls/PrZvs70uCXo6ARaaWTahdX7WIKWmtsKJH65XMBKB12G8i6gxaMLzT8
	ecb0JEIw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pufan Jin <2254650260@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable the NPU on LubanCat 4
Date: Sun,  1 Nov 2026 23:15:20 +0100
Message-ID: <179357131388.4107717.16646264299235456794.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <tencent_9C3151C59C077D547095ACDC1F08B481A50A@qq.com>
References: <tencent_9C3151C59C077D547095ACDC1F08B481A50A@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141550_035468_12348F47 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 06 Aug 2026 00:57:06 +0800, Pufan Jin wrote:
> The three RKNN cores and their IOMMUs are disabled by default in the SoC
> dtsi, so the board has to describe the NPU supply before they can be
> enabled.
> 
> This board feeds both the NPU logic and its SRAM from a single RK8602
> output on i2c1. The vendor DTS makes that explicit by giving the same
> regulator node two labels, vdd_npu_s0 and vdd_npu_mem_s0, and then
> handing one to rknpu-supply and the other to mem-supply. There is no
> separate memory rail to describe, so npu-supply and sram-supply both
> point at vdd_npu_s0. The binding requires both properties.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable the NPU on LubanCat 4
      commit: 77026e98dce776dc45ca7bc77c3d2ba95c39f6ca

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
