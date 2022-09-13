Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38D98C6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 10:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yJD99jwinjd7CCyvbWPFtOVv102eQQOQHg2fCOFcfQ=; b=cgIqn4mUSSVq41
	crd+sgnDAbCKTGeT8q5dDENekPMa5bljDj0h+arNhqcOgROK8lUzZVFmRAApcyj1qnQirpcPVu3BG
	t273OjGv0PCNvkF+AyoyA2x0khCZC6SWa9N4qHq8lpr2ig/tWpYf9osrgCKm7tUNMaIKmzCdFbcIs
	2elsyO65h56j1ZzpV88payE1+9Kzf6Wym9suoro61JgYq1xItXUnOVpq3ACFeHBsQxhOZCMG3f8da
	TKEw9DyVuePDx8hnjqdANJHhkilIuID10K44Iu2Uer38rKcITXzHSbncxL2j36HO1qcYWwncL5pQ3
	I+qo0E3NXVScRORZml4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2tR-006H4K-D0; Tue, 13 Sep 2022 10:11:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2tB-006GVr-Qi; Tue, 13 Sep 2022 10:11:35 +0000
Received: from [185.122.133.20] (helo=phil.access.network)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oY2t2-00041R-Ez; Tue, 13 Sep 2022 12:11:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v4 00/13] ARM: Add Rockchip RV1126 support
Date: Tue, 13 Sep 2022 12:11:21 +0200
Message-Id: <166306385296.157212.75916596782039579.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_031133_914803_E4273B98 
X-CRM114-Status: GOOD (  11.28  )
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

On Wed, 7 Sep 2022 21:31:54 +0530, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> hybrid operation and computing power is up to 2.0TOPs.
> 
> [...]

Applied, thanks!

[02/13] clk: rockchip: Add MUXTBL variant
        commit: 30d8b7d43c840f5907c0e688d41093f176ba8ac1
[06/13] dt-bindings: soc: rockchip: Document RV1126 grf
        commit: 26d8b279392ca93d9b725a3a05f6058db514b244
[07/13] dt-bindings: soc: rockchip: Document RV1126 pmugrf
        commit: 614ce48b63c80ddfb627c21f936675a702498528

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
