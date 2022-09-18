Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D57C32771
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Sep 2022 08:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZxLKOluoq5kZGTW3fGUC2gDA4zNzJPVba9K57T3dd0=; b=LzAfoVsoPhD0oJ
	RTmOKn1W+LD2y/j/lXT5Ei/bEhARAHR5f/IkCQknl11rXts2dVyDwtPYErPGJr7pWrZHAKMm8vcZs
	rCFG7QpebkSdiicTNQBNwpe6aX/YZHFeQKLj0lFC2c//vyQ/3yLjlZhPqHGORYxGdMAaPzqq6q8+L
	i6lYSsriHEQRg+7VeKd2mELF8qXJQzg1pJ+Vpdjg6xTCMRzCUd+Bzf6D68P8JHeAT5RMgKndErmC+
	gtNm285Bj72tQb8vSMHGpIrjjPbo3hi2N9f3SP6dXkrsjRx0yWqe5/xhNxLCaTjjdgcn/sVr59dD+
	UObQ/JNpfw8qXBzzjhEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZpwP-00DwMj-W3; Sun, 18 Sep 2022 08:46:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZpwE-00DwGZ-HP; Sun, 18 Sep 2022 08:46:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZpvx-0007GZ-He; Sun, 18 Sep 2022 10:45:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/6] ARM: Add Rockchip RV1126 support
Date: Sun, 18 Sep 2022 10:45:47 +0200
Message-Id: <166349073672.276038.15633796567950746138.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915163947.1922183-1-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220918_014606_613979_8318DFFE 
X-CRM114-Status: GOOD (  10.37  )
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

On Thu, 15 Sep 2022 22:09:41 +0530, Jagan Teki wrote:
> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> especially for AI related application.
> 
> This series add left over patches from v4 [1]. The dts patches
> will send in another series as we have some naming convention
> updates.
> 
> [...]

Applied, thanks!

[2/6] clk: rockchip: Add dt-binding header for RV1126
      commit: bc35a430dfde16462feb4428bc9b42c0647b5b84
[3/6] dt-bindings: clock: rockchip: Document RV1126 CRU
      commit: a1f65e64c6a3aa920b059aba5c97598cc0d17978
[4/6] clk: rockchip: Add clock controller support for RV1126 SoC.
      commit: 7f2f620daa88e72b04efd2f3da84abea0b5ca1c7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
