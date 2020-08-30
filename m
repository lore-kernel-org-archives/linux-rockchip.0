Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6569EC433E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 21:29:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 309B92083E
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 21:29:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="sUpyXYdB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 309B92083E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rjQlZ7VHENkFVXSkLkW0i7N997KhuREDBI13mSybXSo=; b=sUpyXYdBoSGG3GlC3SBz/zhZM
	nQ4ADNSY1cHalPQ13wyZI4ERLfPEuNbJdelbGBoYmqXTsp7+iIFV0RNvF7k8AMx9Slt37LzCb0feK
	FJHxmrcdjTUm8l34Z3uHP7hpt4SGhiDRzTQ8KrTHLE2lhviGt53BKV15ryYTKk916zP72lR7MLSBq
	4Ew+01FP9AWUumUqnQVcmF0wkKajleRZ3iS+tqXqsYPI+22wNtFWE8iGmiq9yuDkuUmi5OHgxfYZ1
	Yqnst1huJcLtnre3O8jTyvWMc1yIy7rYBcc4iuMD4KbTakusMgeUslmLedQwpxIlHdwWDkV8tQiVm
	w4gL6VZWg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCUtL-0007lb-H5; Sun, 30 Aug 2020 21:29:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCUtE-0007kq-32; Sun, 30 Aug 2020 21:29:29 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCUtB-0003Bx-V8; Sun, 30 Aug 2020 23:29:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: replace status value "ok" by "okay"
Date: Sun, 30 Aug 2020 23:29:24 +0200
Message-Id: <159882296016.30005.15088296328562827915.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830201112.1934-1-freifunk@adrianschmutzler.de>
References: <20200830201112.1934-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_172928_204494_2100D247 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 30 Aug 2020 22:11:12 +0200, Adrian Schmutzler wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.

Applied, thanks!

[1/1] arm64: dts: rockchip: replace status value "ok" by "okay"
      commit: 9caff35d7eba8e15c996c694a282fd38b2ea345e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
