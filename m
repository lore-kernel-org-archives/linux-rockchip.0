Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BABC433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 246F223372
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 246F223372
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0nALc7pNckfFza+KANUcIXBWYUAOh1frSIGJl2xHEy8=; b=LApt0EqPNEzd8/rdHpYwXfRBH
	ipEBfKASZq44XxFOhGTSGqbyDVpk7sSkdd+VCLO1MjbbiAPfYaOqKZnlwEQxrARH6Sl96VL41cPcv
	TJ5g29arc6dNWBy3nzMce2V6dTMTgivy/uMhP4tgm9UsGz+UUuNnu2FJ51hBCr+SV/6IOTMMCUwFW
	pLnUC/0TKbtdstCFrD5IY8P0RdAmbsDi1k51FtCf++VgIqT1Tfvj/qr3dB4MasernYIAqQS1ebuor
	IlanVbOEweud40etB1/JAN7zRsiQyi286Ha0CFxn2W1jEdyeh5z52M1YVrLJRG3hjucIS62AVDb1n
	Yxug3WKBg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyGLu-0000hi-Cp; Sat, 09 Jan 2021 15:40:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyGLS-0000Zx-5l; Sat, 09 Jan 2021 15:40:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyGLN-0000jX-7n; Sat, 09 Jan 2021 16:39:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable HDMI sound nodes for
 rk3328-rock64
Date: Sat,  9 Jan 2021 16:39:51 +0100
Message-Id: <161020678304.3482489.3049942177726573857.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20200802154231.2639186-1-katsuhiro@katsuster.net>
References: <20200802154231.2639186-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_104002_419813_4EDABE7C 
X-CRM114-Status: GOOD (  11.49  )
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 3 Aug 2020 00:42:31 +0900, Katsuhiro Suzuki wrote:
> This patch enables HDMI sound (I2S0) and Analog sound (I2S1) which
> are defined in rk3328.dtsi, and replace SPDIF nodes.
> 
> We can use SPDIF pass-through with suitable ALSA settings and on
> mpv or other media players.
>   - Settings: https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Rockchip/filesystem/usr/share/alsa/cards/SPDIF.conf
>   - Ex.: mpv foo.ac3 --audio-spdif=ac3 --audio-device='alsa/SPDIF.pcm.iec958.0:SPDIF'
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable HDMI sound nodes for rk3328-rock64
      commit: 25572fb5aa986bdbb35d06c0fb52a9b9d9b3b2c9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
