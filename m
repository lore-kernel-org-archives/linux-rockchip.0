Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 230C0C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 12:57:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2B38222B4E
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 12:57:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2B38222B4E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R0gRUx6/1OadBZs9Xf1fhh3eHCAcR1CCYUg3cxQc14M=; b=Yaqy1T7sOic6ahHOz+BI9QFXD
	yaYwRE3I4HKo3oUhx6F/YhmK5eGXT2PcCvD5hnPC9xv8rDXt9GDf2jC+zpHM1u7HhX9rF5dPkdxyX
	4kV2ITnhhEre8INedxB8O6VulTPj7oESga7Ryf1dMbIhFMHmWudElp/HJnngL4XEQ+UXTTn3eDgu3
	btVuMvUOAWvGNE4qK+s+Kul9OBSFiM6ksBhiHGE5nA+/XQRzsyOBurJq/9cYjZNyIbR0HlHNwm0qO
	GcdQbdhfeaCIyNvGw3y+55wehNZrUbp8SUwKUhiZ0NoZcxAiVI08FzzfhsgkeSqhUfqpe5oacnHFo
	gItpk2AXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1U6O-00024P-3N; Mon, 18 Jan 2021 12:57:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1U6I-00022O-Mu; Mon, 18 Jan 2021 12:57:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l1U6E-000424-AR; Mon, 18 Jan 2021 13:57:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove interrupt-names property
 from rk3399 vdec node
Date: Mon, 18 Jan 2021 13:57:34 +0100
Message-Id: <161097370155.287816.107161049165561703.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210117181653.24886-1-jbx6244@gmail.com>
References: <20210117181653.24886-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_075742_808126_B169D8D9 
X-CRM114-Status: GOOD (  10.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 17 Jan 2021 19:16:53 +0100, Johan Jonker wrote:
> A test with the command below gives this error:
> /arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: video-codec@ff660000:
> 'interrupt-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> The rkvdec driver gets it irq with help of the platform_get_irq()
> function, so remove the interrupt-names property from the rk3399
> vdec node.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove interrupt-names property from rk3399 vdec node
      commit: a6b519f5ccecb0a68af788b07fd85b8e91969a53

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
