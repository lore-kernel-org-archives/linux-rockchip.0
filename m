Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCA24C47DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 22:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnGuGgQXloK+E/uOtdCrgWqD6qFVGl/RJWQ3SD5b7lc=; b=PAsiSt6Z6UFWPB
	6EWjQVqawaF+T+SvG3VTdWRRosVD745X6lSmiDyWWINUgSyucqK3aM4akX3EcxuSFIjMpyWdi0Jbi
	p/1aahQGDykMgQlMNcNR8X2wHzsc73HPZ4K0f7VDqeFVE2TxgJcieA5okle14RssBe3iDZXuzbowR
	UahIF0qR1lbHxL/ALzKWAgT+nedEMmsrq/46PIFIL5bWGtZy3Dmhbv1T8BaCD1XsyBoz6Ve8lozDh
	WHk2u7tbNUNMKX+fLoFnDpRFuh/b1PRvVRgZH0S0FKT+h/kgCcu6hWmtGjolV3MMGW6u8NtQVqBEF
	YJ04NDtnp4tVM4ZlmaVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUu-0000000Dd5C-2vET;
	Sun, 24 Mar 2024 22:39:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUn-0000000Dczd-1Kcc;
	Sun, 24 Mar 2024 22:39:20 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUW-0007sn-JL; Sun, 24 Mar 2024 23:39:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Anand Moon <linux.amoon@gmail.com>,
	krzysztof.kozlowski+dt@linaro.org,
	Diederik de Haas <didi.debian@cknow.org>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x
Date: Sun, 24 Mar 2024 23:38:54 +0100
Message-Id: <171131986742.918919.14022674824297453334.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <2dee6dad8460b0c5f3b5da53cf55f735840efef1.1709957777.git.dsimic@manjaro.org>
References: <2dee6dad8460b0c5f3b5da53cf55f735840efef1.1709957777.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_153917_408305_234D63D5 
X-CRM114-Status: GOOD (  11.15  )
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

On Sat, 9 Mar 2024 05:25:06 +0100, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
> the userspace, which includes lscpu(1) that uses the virtual files provided
> by the kernel under the /sys/devices/system/cpu directory, to display the
> proper RK3566 and RK3568 cache information.
> 
> Adding the cache information to the RK356x SoC dtsi also makes the following
> warning message in the kernel log go away:
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x
      commit: 8612169a05c5e979af033868b7a9b177e0f9fcdf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
