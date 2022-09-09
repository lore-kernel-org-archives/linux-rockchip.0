Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42200ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 23:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbzahSzbNY4PfQ73ty0RK7Wn9QuG6/LYP/fIvNu/fGY=; b=AK32UDOor41pEV
	K/ZgwZMbnWeOvlwk2qrjGTKvuYWQd6Z5hi6gvN1mP8BL9r9wtlqUNX6/lFXNxzvRxUPgsmaOSuTkq
	hQUNbqzd19e3u4tzWLnBqNpoA3YAdTXesVVl08tLa6qOsqfvUWSxgpUtLc4fUHMS56fyi7/0IgrM7
	+3ngFhIABkM2ypejC+h1wWJd+L3h1E2h1biNJ19AhLc2k2C2IVXUXE3Ui5t8Z/N/7oYRcUs8M4yqo
	mD4Enu1W9cLreXozrMO6iJNiPbxxcmh3rNxIAQKN+grw1YlXYWjlkOGW0OubKUi/8zklsP+PvSY89
	HdGY06vdsPiwxw71gSrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9a-003iHy-Sa; Fri, 09 Sep 2022 23:11:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9P-003i8t-A4
	for Linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 23:11:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWn9K-0000Qa-Qe; Sat, 10 Sep 2022 01:11:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-media@vger.kernel.org,
	Linux-rockchip@lists.infradead.org,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH v2 1/3] media: hantro: Add support for Hantro G1 on RK356x
Date: Sat, 10 Sep 2022 01:10:58 +0200
Message-Id: <166276502654.27767.16487805522519550521.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_161107_473348_616BAE29 
X-CRM114-Status: GOOD (  10.88  )
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

On Mon, 14 Feb 2022 22:29:53 +0100, Piotr Oniszczuk wrote:
> RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> video formats.
> 
> This patch adds support for RK356x family in existing Hantro
> video decoder kernel driver.
> 
> Tested on [1] with FFmpeg v4l2_request code taken from [2]
> with MPEG2, H.642 and VP8 samples with results [3].
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Add VPU support for RK3568/RK3566
      commit: 944be6fba401639e5bf2a8bc9f5e781e6cc4b4d4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
