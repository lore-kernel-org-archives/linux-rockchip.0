Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8F85C4829E
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 11:04:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r91F3LVkLviG8SfGGCNFXoogpPRZ4AqxvUWRNyOt61g=; b=1IopAR+AOsB33g
	JqZbhn8tIdVH4dsadNFUFJeZgaYafiR1+lYA0dA10UKjNBVfoSo54ZQGnKuXkWI2jGm0u5u58OIkc
	W0tSHGBgejCzPRP3vOwzqgVdQUQdqggvEo2x3JJyw53et9MKWoxjRz7SAu5BebiKTbL7UgjoJFzL0
	OVJV+v04nwTYea926vVTuA8HUDySjQMWtVXImmsPhLa29nZHerpU7hvnZ0ka63xHfrtM0LhoyNcJF
	dTo7IlqhBFtd0ueUVygGx5sKnkOCdCcWdVgr883PyzLJvSkF3x028VcayTl+/ZE62qBEFw/rlFUvM
	u9jrMr7mFEoKe3bgtzWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZXr-0000000FwEr-05Pw;
	Thu, 15 Feb 2024 11:04:47 +0000
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZXl-0000000FwAN-06vw;
	Thu, 15 Feb 2024 11:04:44 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 1F28011400F7;
	Thu, 15 Feb 2024 06:04:36 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 15 Feb 2024 06:04:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1707995076; x=1708081476; bh=orAhrN5tQs
	DXbvphAeqrgPill/y0dP9Y2EbQICt1uWo=; b=Ggu6prDg4x0ShAuxim68z5iUbD
	cr4CaiuOpZcs1TjNWdQHpznuKCoH3WT1VwkM3ef4goac+Fi1dr+rPACf8Bz+zugS
	VG+xT4FABA2HCfCCUZMi/LUev2ovqEhXXCBU3YmF8V9gnazo7FR7mQhsREqvWRWn
	dEm/1cQJxdq689LfOmMjPa6gExg3bBJYM+bE7K07iNKkwps9oagDOaJSwCbd9Hrl
	W4yusGNHg6XnIV3+Ad8MK9qEx1lLWlT0Ekuxj+huLmw0VLJsIYBc0m/1/KUgYigK
	O5KGD/m9kNIh7BXZ2nVh/G6SY8fUskqWzbzEHuso7M0PXoxUxIZufHEXY7zQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1707995076; x=1708081476; bh=orAhrN5tQsDXbvphAeqrgPill/y0
	dP9Y2EbQICt1uWo=; b=b0vnoD0WgyQMyv5jfXcEwD3TNBmS3HyTjeYoIzSd62FX
	bhgALGKTGr2qU22gfztZE5Z434L635Sr8PqNoRtxPQo2ut2WcReVRoUCmJEZVyEI
	Wq4S8SStCCE11VIfh70LxdEsagBp7lMlTK+MMXfN81nSory+LR2vl8epxG1Sd/YG
	ar5Cc2JpAq49ZhNN97VXYBq4WlwCvD/M7JAuONXFrrEk4imWIDLr1+m2osBWsUwH
	yHhrs0lL2JjA1raNEoiIM87F/mw4f6G1EpnrD9ka9DfHWYSin0K0K3FIiEFBlXTv
	nwqkPhivCnpu8DwnOM8c4umqnrtiZZjUFDGVlDVOVw==
X-ME-Sender: <xms:wu_NZXr-8RH-TLFNnrHYIF-Hw6QShUOmLJz63JnBZGdx26lCXlL9GQ>
    <xme:wu_NZRoSGbvCd0AjQw5eJrvEOAfxS1PzjbeJddRR6cKlDwqeWDTKhUXboMakmrQxM
    iG5Bb4ZKw>
X-ME-Received: <xmr:wu_NZUNpSGM2o7zhuGJNCIDRKScx4H_3EdN1hmjplPfOgcdj4Atdtg6cHWFG5E2bUyaz65p7mnk9VxKTjCM927wiNAPqS3NQ1rE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfnuhhn
    nhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnhepud
    fhtdevueejjeejffeivefgtddugeefffevudfgteetheduveetheetgfeiiedtnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfhgvrg
    hthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:w-_NZa5vDr0NOxTJ61bEs2mVMddU34KSH1BDyPyhiOy_yjtyzq_iow>
    <xmx:w-_NZW6lJ4xNKTSLd5q9sJkmQwHDK6GPzIr41Zhx3oizPvmiCFKW9g>
    <xmx:w-_NZSjg0LHwppK0-sBYcc0nqo9FVFFrWocQw85Cs0TqJ6xURltJIA>
    <xmx:xO_NZfHXdhUHCCE2UE0H9_Q4Gp1W_PaKvzhDoFYYY-aEXp9RqX4ivw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Feb 2024 06:04:31 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Thu, 15 Feb 2024 22:04:27 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] dts fixes for Sonoff iHost
Date: Thu, 15 Feb 2024 22:04:23 +1100
Message-Id: <20240215110425.934740-1-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_030441_578503_77C6259F 
X-CRM114-Status: UNSURE (   8.43  )
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

A couple of tweaks to the dts for Sonoff iHost.

Add aliases for sdio and sdmmc to ensure consistent ordering of devices
on boot.

Tweak sdio properties to improve detection of the rtl8723ds sdio wifi module.


Tim Lunn (2):
  ARM: dts: rockchip: mmc aliases for Sonoff iHost
  ARM: dts: rockchip: Wifi improvements for Sonoff iHost

 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
