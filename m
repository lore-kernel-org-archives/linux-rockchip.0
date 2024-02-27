Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D7FC5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 12:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFa6hDWWjClbSfIR//XMVMNm18yAQYepUwwl9//T1hQ=; b=y/cHRr7hkcyLF7
	xMB9/Fv2H/vJx+GBUPM/gswXm9x7X4NaukUadd+8jyKPSU9c7tTEl9C9QlS5zj1Lve6p/G9MirO/I
	12HHi/Cw6McqadgRSvCXDrWghEAQaKwg1Lg+LraUh6gwStnG2UlVY5iIn38neJeCsM8ezglOSVHu/
	0VivamA9aY7VD5VA2hFD2wRbxTA7ZyRLKq03c+HaNQnQdmI6/SzApEeE95NpluzhSzp3hEli/VsDg
	RUARn3c3x4dsMRk55nDPPbKWX1K1Uz0CimwwU4pYZNHdPKh9nVzMoICfU/SKOXgGI7fYsIe4dwIM8
	OHVpOFw5QwZb1vnDDoLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewXY-00000005AxW-3Upb;
	Tue, 27 Feb 2024 12:26:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewXV-00000005AwJ-43wC;
	Tue, 27 Feb 2024 12:26:31 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rewXP-00043v-Ok; Tue, 27 Feb 2024 13:26:23 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Date: Tue, 27 Feb 2024 13:26:19 +0100
Message-ID: <2865246.yaVYbkx8dN@diego>
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_042630_028312_D734495A 
X-CRM114-Status: GOOD (  16.07  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 27. Februar 2024, 12:52:35 CET schrieb Uwe Kleine-K=F6nig:
> Hello,
> =

> this is an initial dts to support QNAP's TS-433 NAS. It's enough to
> start the debian installer with a custom built kernel (original Debian
> kernel fails to open a console, didn't debug that yet) and access HD,
> eMMC, RTC and network.
> =

> There are still some missing bits and pieces, but to make people aware
> there are efforts to support this machine and so prevent duplicate work,
> I think it makes sense to add the dts in its current form already.

woohoo and yes we're adding support for not 100% supported boards
all the time, so adding basic support and extending it later is fully ok.


For people thinking about "following along at home", how much voodoo
is involved to make the device boot said Debian installer? ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
