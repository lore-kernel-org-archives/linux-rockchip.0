Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFB42C636C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:45:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B6A1611C0
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:45:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8B6A1611C0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qLkw79+OtlgV0gqxeAjwEgKH80CuXwmqdSr57U6tMRQ=; b=qxk+bVh+c8WPto
	eEykwBevIHmvEqXI+kJJc3fBBll+jPsOYNxqxjUU1i1nUAnZtZBwVa4QM4cjvN2s7lucpeRf6B4Vq
	QIxr2sx17iHUpk0g2jFBPx9Sq2Nj9lnd0BnPffaK4iB4SBH0KhRxvKO4FctDE+ERe3M8gPqJ3AAhY
	5phY5bEbDtQWa/i65bDOPuOLk0571tkXd1BS6iGN0UvVmWeyLQI5AjQZDbSlvA3vnPw1y4IpchZnS
	Bu85AzcIvtlbWIaSMKui52Q+m2n20CY5yzDGN/MkQsp7i+t5FrVOKHbo3tVpFrF/byFdkfYOqKeVn
	qbX27VgFhNeU+tp5P0Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A6K-002Vdt-Q5; Thu, 15 Jul 2021 22:45:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A4M-002UlV-RB; Thu, 15 Jul 2021 22:43:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A4G-0005t7-9k; Fri, 16 Jul 2021 00:42:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: "cl@rock-chips.com" <cl@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, lee.jones@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jbx6244@gmail.com, linux-rockchip@lists.infradead.org,
 zhangqing@rock-chips.com
Subject: Re: (subset) [PATCH v1 0/3] arm64: dts: rockchip: add pmu and qos
 nodes for rk3568
Date: Fri, 16 Jul 2021 00:42:48 +0200
Message-Id: <162638886252.651069.1161379837751983635.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624114719.1685-1-cl@rock-chips.com>
References: <20210624114719.1685-1-cl@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154302_915790_F019EBA7 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 24 Jun 2021 19:47:16 +0800, cl@rock-chips.com wrote:
> v1:
> 1. Document rk3568 compatible for pmu and qos nodes.
> 2. Add the power-management and qos nodes to the core rk3568 dtsi.
> 
> Liang Chen (3):
>   dt-bindings: arm: rockchip: add rk3568 compatible string to pmu.yaml
>   dt-binding: mfd: syscon: add rk3568 QoS register compatible
>   arm64: dts: rockchip: add pmu and qos nodes for rk3568
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: add rk3568 compatible string to pmu.yaml
      commit: b1c64924df5d2caedb8714148ce177d3384dfafd
[3/3] arm64: dts: rockchip: add pmu and qos nodes for rk3568
      commit: d178bed180ef7e7ac16d3c586fb7330b3cb8fc4d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
