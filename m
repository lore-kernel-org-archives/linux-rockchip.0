Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF133C63777
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 16:28:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6604206E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 16:28:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bv0FTg7M"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6604206E3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u5AHQOlhWdW2qhVmQuWysvMNb85uPc47aTb4YxvW+t4=; b=bv0FTg7MH+Qg640htYXewXGeG
	7VqPRitDWPn+e+ZKdZO0dWBCnhzqXItwk/T1CisqsyIPAQ7024/l5O8z0SdUWE6BDyS7Zky0y3HFu
	TZMi1jo++c15aNCUBqkcdakpF+aOFwbypHkVQu3gn/+8MYv28VJep6FV1gGei1Kl97EnZJlEBY7Zx
	GOvh6Xzkq/fH5stUCQ9aC1X4yI+uqwhFWA/r0a2Ux9SctjzKLT4QUl609UvJSg+4VJRhQ9Ha+T3HD
	C21vSArQ4TKLtN431iFNU+lpKm21r8FCcohBTkuM7LE5+4kvOqBN0RWAVyI0+5SdTdtLHH0lIfqum
	77egRqFtA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjm2j-0001tf-Pf; Mon, 30 Nov 2020 16:28:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjm2f-0001si-Ut
 for linux-rockchip@lists.infradead.org; Mon, 30 Nov 2020 16:28:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjm2R-0003Mu-Bk; Mon, 30 Nov 2020 17:28:31 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-media@vger.kernel.org,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: (subset) [PATCH v6 0/9] move Rockchip ISP bindings out of staging
 / add ISP DT nodes for RK3399
Date: Mon, 30 Nov 2020 17:28:29 +0100
Message-Id: <160675369960.1150759.2276623622378204083.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201020193850.1460644-1-helen.koike@collabora.com>
References: <20201020193850.1460644-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_112846_609860_7E339E4E 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 devel@driverdev.osuosl.org, dafna.hirschfeld@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, robin.murphy@arm.com,
 karthik.poduval@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, jbx6244@gmail.com, kernel@collabora.com,
 zhengsq@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 20 Oct 2020 16:38:41 -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from Scarlet Chromebook
> 
> [...]

Applied, thanks!

[8/9] arm64: dts: rockchip: add isp0 node for rk3399
      commit: 97a0115cd96a173369ef30eee2290184921b3f24
[9/9] arm64: dts: rockchip: add isp and sensors for Scarlet
      commit: ef098edc9c245dd1c150001e22c78e6a3ffd7ff8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
