Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46D8C55178
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:34:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4655F206D8
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:34:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1Bwb3Vmb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4655F206D8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KbR3vzpORUPmL01eVANPupatvfzPDswCKCJhqudtpqA=; b=1Bwb3VmbBUAjLlcLCYnpy3HJQ
	gZlNp5xzwT/hFRZ87YRDG7a31iJtXriddgFKZRqPNnT7gMtj+p8IlIbOa0Qu/z+vp9lxHKqpWF3Un
	BFkrIBKtkpsAZ4mZk+805E9ODHjRfmaGLAxPnVEwser2CHN3n9uRwKK6+tBVsU5+qqy5fxPdz61Mq
	h88onZyowaMbKUgNvIz42ODF5mdUUkyfp4PrsXNdyJlFvyEqVItm5PJPbbrxt/OmA7lx6omIXY24E
	qhLxdbNt19/w/P/swB3mZe9s2UvCtueB4VTUHuDUf89SOpB1tMMpsWNfMTsc5tyI0RwfdKOdSpiZC
	fnKja4hqQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZFMn-0003g2-Pu; Sun, 01 Nov 2020 15:34:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZFMd-0003bw-Gb
 for linux-rockchip@lists.infradead.org; Sun, 01 Nov 2020 15:33:57 +0000
Received: from p57b773f8.dip0.t-ipconnect.de ([87.183.115.248]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZFMZ-0003rS-70; Sun, 01 Nov 2020 16:33:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	Maciej Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH] Fix poweroff issue on Odroid Go Advance
Date: Sun,  1 Nov 2020 16:33:42 +0100
Message-Id: <160424139256.1224767.16555811022678597887.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023181629.119727-1-maccraft123mc@gmail.com>
References: <20201023181629.119727-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_103351_603569_399A95DB 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 23 Oct 2020 20:16:29 +0200, Maciej Matuszczyk wrote:
> 


Applied, thanks!

[1/1] arm64: dts: rockchip: Remove system-power-controller from pmic on Odroid Go Advance
      commit: 01fe332800d0d2f94337b45c1973f4cf28ae6195

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
