Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAD79C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 May 2023 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmAkgTQ+aGmzK+AthkioS1jpy2IJ5uDBQ5ZOr0yEIh0=; b=EbMHfu6R8cFoNP
	A6J+T4zjr6EH1uK3tgzUqjSxEc1SqBYZvx112PNuQUXz3RbA5TXk8s7tUzplxwfCf7BQ/aRJP68e9
	LMknxFh43+6LYLElFyalI3m/EUmNn8Mvzxi9E2dXCZxfzFMr2j1Wql61Omx37314dBH/q6FOfhVic
	VS/Du4LmuUd5jasuYi0A5QcWjwDLTQMq29l9SIAX9HXvXLbPsieBvcqsqVNuc1StKgqNsVDelQric
	mrKhEQZ1Ua1Dg4Hdu5+SHQ3OLFZgC/Qj0LUWuLiw+wjExCLfyaZ6G0YKUjOvDNPpQz5tjRhLOHCCn
	yuVFobtcpGiD4FHioe9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0gYq-003byg-0B;
	Sun, 21 May 2023 10:45:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0gYn-003bv9-1R;
	Sun, 21 May 2023 10:45:10 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q0gYe-0008By-CN; Sun, 21 May 2023 12:45:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6B
Date: Sun, 21 May 2023 12:44:57 +0200
Message-Id: <168466589374.900480.15227569232227346086.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_034509_505846_58947003 
X-CRM114-Status: UNSURE (   9.12  )
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

On Tue, 16 May 2023 22:04:51 +0530, Jagan Teki wrote:
> Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
> based on Rockchip RK3588J from Edgeble AI.
> 
> Edgeble Neural Compute Module 6B(Neu6B) IO board is an industrial
> form factor evaluation board from Edgeble AI.
> 
> Neu6B needs to mount on top of this IO board in order to create complete
> Edgeble Neural Compute Module 6B(Neu6B) IO platform.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6B
      commit: addc72dc55118a1e80f8c77767a5c94000248d3d
[2/4] arm64: dts: rockchip: Add Rockchip RK3588J
      commit: 8274a04ff1dc76bfc412d389123eb2a5f474549d
[3/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B SoM
      commit: 903cabd3f7b215a49040bf21b6dde23d62240934
[4/4] arm64: dts: rockchip: rk3588: Add Edgeble Neu6 Model B IO
      commit: 9afb9cc4874d94fe27bd8c9040ed8bc9b13bc59f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
