Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A859C7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jun 2023 17:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jydAa9ftr5pWods9Aas3Rh0k9H9mLbzYaQW2ae7JscI=; b=2ffUvKCc6JqSWc
	eBMidJPNJ3RJZdbl/6Mq2VX2GSdNtYT6k1mm1YXPyahW5IVQr8UDW+PWhNH1q+BOJ52vb1oP3qzp6
	BI7KqK8pqdMDTF4lhRBQlPv8qiJvcHmelYV/UnByKeuBSVRjGERYEH2z0bRTMrfKnBR5PzjJ+DoCL
	NWJoR25SZg5dxrSL636mIbtPeW94wJQWinRC3YxxpogBPlJq9W5TQE2QD3Xra1DVEV1JUp14g7nJB
	lhq5Vd0LyJRgd24MKrpwH5KsDyDdyHzWpoRz0011+zg9uzf5uEaTk9TRNwPjLdXuLnEgetRXOJyGw
	5UkNJYhRw/I0mtu3ZP4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9W-002XIQ-1L;
	Tue, 06 Jun 2023 17:07:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6a9S-002XFK-1t
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Jun 2023 17:07:24 +0000
Received: from [91.65.34.120] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q6a9P-0001ED-FW; Tue, 06 Jun 2023 19:07:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [RESEND PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add PMIC
Date: Tue,  6 Jun 2023 19:07:14 +0200
Message-Id: <168607097301.1436521.16891300608030740248.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230526172255.68236-1-sebastian.reichel@collabora.com>
References: <20230526172255.68236-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_100722_631892_1152729E 
X-CRM114-Status: UNSURE (   7.24  )
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

On Fri, 26 May 2023 19:22:55 +0200, Sebastian Reichel wrote:
> This adds PMIC support for the RK3588 EVB.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588-evb1: add PMIC
      commit: ec5d218e1e443dd6fea7e77983c3f97b9e09a74a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
