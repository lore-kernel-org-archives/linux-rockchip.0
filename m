Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134EAC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jul 2022 10:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jt+y6HVoYHW/z23028jktEshO58Wc2Z4NVkBdHG8U7U=; b=JV8Dn2w1rKxFFG
	YesKTec7333KFdUmDTNWUraCE1pa8GlrLIGTyB2oopZ+hhr0PJEaBYDktnI9TJi5TfiUqz2NyJDm3
	FllOZ6uK89MdBnD0kslm9QirmLCmfMSrXtDaRWQRojDC4XV9VtNvwNYF7YXj5Au3Jw3rqgXW4ICVL
	a5o0oyC8zboZ7E19nwK5KQjrLnW8WhQR2QephWgzC59TLOsSO0X3FXxSiBI1zH9h9aJUeGEKDeSKX
	TMovChilQ8yR4Km+jgTqFuZ/dSRXa4R3hlBsG5lEbG2DBqDqAS3KQMCfEcALRo1SPcsQvzItW153X
	eGC56GuHmY6yhx2Fz7ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBDUS-00A5l3-KS; Tue, 12 Jul 2022 10:51:40 +0000
Received: from mout.gmx.net ([212.227.17.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBDUG-00A5XS-TG; Tue, 12 Jul 2022 10:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657623065;
	bh=c/mYNYqyEwH1d8z86lve7tR3491KdxL9/uAjUeWIz4U=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=d1jbbaaqjQDgJv7yKK1aT4BYA6yXEAUnZmk8SnC1TSzFLla4gJ9XaB6aSFhIxrfDJ
	 kCWUwBx167M46fHzU7shs8dlHAl6Qmx5ucCtPk29xjM6Ou5BXoJ1iq5Se/BEd9qXwn
	 WCFtsjOCofVfxHjNF2qvjDeH0EakMzvY9zN7CvD4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.147.102] ([217.61.147.102]) by web-mail.gmx.net
 (3c-app-gmx-bs14.server.lan [172.19.170.66]) (via HTTP); Tue, 12 Jul 2022
 12:51:04 +0200
MIME-Version: 1.0
Message-ID: <trinity-460cb253-7fc2-438e-9e65-5c6da18c8f6c-1657623064606@3c-app-gmx-bs14>
From: Frank Wunderlich <frank-w@public-files.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, Liang Chen
 <cl@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, Shawn Lin
 <shawn.lin@rock-chips.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Aw: [PATCH v4 3/5] phy: rockchip: Support PCIe v3
Date: Tue, 12 Jul 2022 12:51:04 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220619082605.7935-4-linux@fw-web.de>
References: <20220619082605.7935-1-linux@fw-web.de>
 <20220619082605.7935-4-linux@fw-web.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Ggue+5HxNF+HyF06ttMUnhvQbrt1IvmExsTURARRr4aRh8Ks8HyhWhSvWH1y6g+7+ylZu
 vU/tQJJsTkG4WOcA/7HLS8aezW3ykiCrnA/7eDOntz4QuhGJ6BpRrxN+hEAF239FU/w4SUTCb2WT
 0qsFQR62hxWMur5C8Ie+rkfdBdfcKcUU+5+vVEyWZFp248dbQ3yMigghwKPzkg3ChCZ5kE/kairp
 QLLjjLJxnpwx/5IzvCdJbkKH+qzS64xOuwVTZgalpfSIMCLkWKXcQEyTtF54oykWmLjJ14ymQJGs
 xk=
X-UI-Out-Filterresults: notjunk:1;V03:K0:CEts49WrzYQ=:PfqATTz4enB2mCtMa3pHA6
 4ZSug7dqIHMLNvPDFljw3T4N4kcy1v8U2AB5sB4ONneyh9gzSs115+Bp+hDtWfggwwljWe9YQ
 sGzH0np8lnOUTI9Evt2huKVMSVkLGOaQ1uTMWgXX1i9XvQbVP3101CPowrR2lS1Z26XYpHRBc
 Oi5E7sqk1MQ9cEplg20P6vf/deu3vK6HmT+cUI6ALAq8WBXTaBMfrYdY58qfgxVHYWQfyktfn
 vSe9JxhvVPrA8p9FVSQ6eLr5iy7Othm2rouIe7GJshSZsRyYpe2d3qrOeeFsMyHY7ueF1hoge
 dAPRdML/lgoHB7e0SGBz8mzrtqqgmRvp7LEl2uPc7fs5Cqbt5Bnqp1BpQS+UaoAU86VUMfe2l
 jc8ZyyxvlsKqaKuOr8fHESTWdXt2IzI3VaVvFgN31fK/LWFdAc3hu1h7ufXRVAbLh3lqIuLYs
 S/K3YZGm85aar7kQmZ/GNrfnZhsv5KGd82aJVc4pUMYA5ZBD/cX8plK/KF4pdTbqPmByvnlmL
 /jH/vU1VI6HC6l1s4yLNLjmu0XoX7r0JY7VXBq32bu5TDb4zT0kwJhSR+ORVCEqJ+h0PgLyLK
 EFRjrK61nb4DFy6krnEKTLIF6O0oJt+ZNHHxEVRCiPWHKteS2FamaxAmOb95RzvfDpuGWfmIF
 XcBvLsv0bsNtGPj49f62EW9do2UykWtfxh/3QbAaIhJDiNPrgE+r45wdln0THHFX0vN1Xqu8m
 y7bJeW90BAbJLN50psQBMJSfootzyddbhwPdYFlb5LUCoK0d7bYNGEg2ILTSJNF+3R8Ou5EPb
 Ay3WKcE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_035129_311715_712BC865 
X-CRM114-Status: GOOD (  11.87  )
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

Hi,

just a gentle ping :)

regards Frank


> Gesendet: Sonntag, 19. Juni 2022 um 10:26 Uhr
> Von: "Frank Wunderlich" <linux@fw-web.de>
> From: Shawn Lin <shawn.lin@rock-chips.com>
>
> RK3568 supports PCIe v3 using not Combphy like PCIe v2 on rk3566.
> It use a dedicated PCIe-phy. Add support for this.
>
> Initial support by Shawn Lin, modifications by Peter Geis and Frank
> Wunderlich.
>
> Add data-lanes property for splitting pcie-lanes across controllers.
>
> The data-lanes is an array where x=0 means lane is disabled and  x > 0
> means controller x is assigned to phy lane.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Suggested-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
