Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13236C47096
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:48:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 771D46139A
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:48:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 771D46139A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGLiEtVjSVBIzKjO4oQi/LF7/n2Tu0lM+D5zy+rVMVY=; b=uHXY5YuswKRO9e
	0RMpMt0p4UjrJSP0TQ+JsY/Eeq8MPjWp1GnjpqDeamHlQCJ7oSTbhBqOUyxaxNMU6ZCkkXOLk2kGc
	xRD+QcDnFn18XXffY2vPBjwSYcDAXeaGUjjMqyrs2XY3WaQGqNxK4XH64W+/ME8hZGhMis8T9geP+
	paVNqBu4sYfdfZaQtgXTODjZ2Tq1K5hyeRNIkYd1ZLmh06XWLWnuFxWx86/oDHiQ/2YowPxMrrlzk
	1Fc5QA9/Mrmppq5nSLacIIc7t1vd19dFiv0XVtTBcQvrPG7czEO3mhN3D6HafvhrmNqiV25V+eXNQ
	FkcpKPfVf5u0JACjQX/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lomm8-008kUx-GU; Thu, 03 Jun 2021 12:48:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lomm5-008kU0-Pi; Thu, 03 Jun 2021 12:48:39 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lomm1-0005De-UI; Thu, 03 Jun 2021 14:48:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: remove #phy-cells from usbphy node
 rk3066/rk3188
Date: Thu,  3 Jun 2021 14:48:32 +0200
Message-Id: <162272448961.3187654.2931146316551924981.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210603121010.4315-1-jbx6244@gmail.com>
References: <20210603121010.4315-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_054837_860911_5815CF31 
X-CRM114-Status: GOOD (  10.40  )
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

On Thu, 3 Jun 2021 14:10:10 +0200, Johan Jonker wrote:
> The review process of rockchip-usb-phy.yaml was not finished
> when the patch in the link below was already applied.
> Remove the unneeded #phy-cells property.
> 
> https://lore.kernel.org/r/20210512122346.9463-4-jbx6244@gmail.com

Added a Fixes-tag and applied, thanks!

[1/1] ARM: dts: rockchip: remove #phy-cells from usbphy node rk3066/rk3188
      commit: 60fba46d6e7a6e5de4be2ea158aa6134ec7a161e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
