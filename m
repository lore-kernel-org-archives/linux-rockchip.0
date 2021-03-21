Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 475B6C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6753761944
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6753761944
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KmZCceAU3k1uNbokDwUGkKV9JnVtQVBbAP3JabdMs2M=; b=PTy7dA9IcTGly6KRpH59ouexA
	WhAfnusjTTtFrPiNggkEIwoS0XBBXMsf2R5y6Wx9jRWJWY4vudXarRRIUtoZMwuXzymVLhD+FWHYZ
	lE6XnATry4UFeh8KhqtAD//F7zMt8Ziwc7d+ItOi1eSbhIq6tUAcbtH+Aad0EoTNPf7eIBvAp2vDM
	9m710BfdlnQOrypekZ/iNntbsIE1usasS+HjObchdeDu9NkZWpJb5wtvh4z2f+oSX+Ch5W+IhuRp+
	vAyyzkz3jpPShhP9CPaunb2t53gLDyka2j8H+Ouw8BdhxfK/3Fmurb1pxCzJZbpwKoyi0a2t+wzMf
	C+3PBheMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO4Th-00AKrB-Uw; Sun, 21 Mar 2021 20:15:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO4TB-00AKmW-DZ; Sun, 21 Mar 2021 20:14:46 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO4T8-0007Oi-54; Sun, 21 Mar 2021 21:14:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, cmuellner@linux.com,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add phandle to timer0 on rk3368
Date: Sun, 21 Mar 2021 21:14:32 +0100
Message-Id: <161635763248.767241.16202827958833185296.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209103408.2302218-1-heiko@sntech.de>
References: <20210209103408.2302218-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_201444_123890_E525C80B 
X-CRM114-Status: UNSURE (   8.98  )
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

On Tue, 9 Feb 2021 11:34:08 +0100, Heiko Stuebner wrote:
> While the kernel doesn't care su much right now, bootloaders like
> u-boot need to refine the node on their side, so to make life easier
> for everyone add the timer0 phandle for timer0.

Applied, thanks!

[1/1] arm64: dts: rockchip: add phandle to timer0 on rk3368
      commit: 46f86be0fc6900a13bc27138a72cb7188ef6b4be

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
