Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79CB7CD4F57
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 May 2026 10:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLopEhBmrVHobIKcXgg2gRnQ7OgQL1KnUYYtGYLeDPw=; b=iabWzr3iPNbio/
	aasPQGeKOuG7UtLK8Wcot8fgHRkvPs5w1YJXzjIjY3SOOaaK0fD1L/lrwWIXnt7DuODFtEKFulsVl
	40E0og7b6rP7m4if5ueVGRj/7WENCwX455JZo/CwPhzsS/FuU/l3CYVV+duj730YaPK9Rx7Kh9qJY
	KqCrosBRDVjweQYjJN+z/RWwig3EX0GFhdcMcUq3O0VmL5vM6DEZnCRigaIw4aQrtEjq9Yo8Ks6D9
	gGfXGDm/30tDrwDZY0bRoXHKpxLJziFgLMbn9Xim6fjyN8wOOSJLyGj5RgQi2JP7TGaN0IoPg43Sd
	D8R6roQHJu9QWKmqGaOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0C-00000001CU2-3glV;
	Tue, 19 May 2026 10:48:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0A-00000001CSN-1j70;
	Tue, 19 May 2026 10:48:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ED4CA435C5;
	Tue, 19 May 2026 10:48:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60199C4AF09;
	Tue, 19 May 2026 10:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187721;
	bh=pYwgcizWQdm1AWKMR2xPjLhV3ZKV0KiLBi9nn172m1c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Bi2M1bxg1RjZCvLiNzqNBm4cKJ+Cy5Dz0SDh7SCigEYxmsVgERVmbzQyf2zZi/ehP
	 rPVFeZN84Qrm8KcmrDmJ6DsQYeIt20gVc4HWBZrTpxSfmj5UIs9Vsv3W2ZeBdg7CSS
	 BPSzHOmVbSmZRd2h4E7yAMCvJf+O/FyRPMN967NEAoIq8BPnxTWBCoQ5h+3wwOvEQS
	 h1ZN8SvzBeiO+5iceuwCdinuPRJUw9Jg2di+RDE0qxmbg8qeDJw28At5PChC5O7RGh
	 yn+/sOKPeHr5kWCNr8wv6QHLtZO7+3IN7kZcTMeeClvz09TFAyHnhHkocZUe30eWZG
	 acIRoxNmTFW7g==
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com>
References: <1777251433-110466-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH v3] phy: rockchip: naneng-combphy: Consolidate SSC
 configuration
Message-Id: <177918772002.269794.4450351142089498526.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:18:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_034842_472158_339CEC8A 
X-CRM114-Status: UNSURE (   6.99  )
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


On Mon, 27 Apr 2026 08:57:13 +0800, Shawn Lin wrote:
> The PCIe SSC configuration for the RK3588 and RK3576 SoCs required
> additional tuning which is missing. When adding these same SSC
> configurations for both of these two SoCs, as well as upcoming
> platforms, it's obvious the SSC setup code was largely duplicated
> across the platform-specific configuration functions. This becomes
> harder to maintain as more platforms are added.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: naneng-combphy: Consolidate SSC configuration
      commit: 0b31f297557fff0941769e8257198151a0fbe8bf

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
