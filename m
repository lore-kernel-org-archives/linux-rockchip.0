Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12655C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:20:46 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4D5661285
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:20:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4D5661285
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zf4vqD4W9/T0b0GVcq9Dxwn+Y7VOt8922N2DKC6Y/h4=; b=U4gQwGHxdkg0ddKN2LCNN79lH
	aNqoQrmE/1gnrSDLvp/EVNdZ7x6ijMAOm0P+mJVJdYF2c3duwndbc83yEIZwV92juNSV+iE6hrsrt
	jKD0+P0fgpvwLtheUzPmWfQApMkS1tCUZgVrmtUgxACGivj+eCcjDzb4ZoYbTws5xvHgMAj0h4sch
	xy0hgHG/wXujDwByrdJQfoCf13N84D/ux8z5Une7lLFHipSyj4IoBbxbbcQi3Gem70BMpPbgbIRAE
	audmBUn/3OMEMcpZW/qpMSCiTJ50LF6tYkoANwa575pwp11OPAC98hHJcBcsp/7GwjdB9lULc+IPB
	Yln4jaz+A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWo4-0080c7-6K; Fri, 14 May 2021 12:20:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWo1-0080bY-Jo; Fri, 14 May 2021 12:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=eBoedcs+Y8Vr1rUBCV60wkOdCFHTdOxClgPfN+7qKnU=; b=jiPN/ZEmSqeR3vnGRRKXj3hVcv
 7Y1m3kxYpmDxIh4LKP6R1oZU9E5O1aifjXll+AV9LCbQG5PVF2bmp0DOAZGlGjnTisXsxyCIioTxT
 qFQNbzsVpqYIJnhOqr9f5QcRJ11Oz1bYquwIzIPWJk9LBE7WN2vNHRZypPfpvuGeNFzUkYUkzeZMW
 Hi0Sg9fWAPrJWyqhih/Y9oSeOUnuTEnmYwvl/KUoDFNUK7jt91puoSqvp05+jW6RFvxY09TDPcgrQ
 E/rN+C2ERR7lOgwwHNAJEf1o1X/7cByR5qaDNU51FIh1JArB5oU8mI9Zs2RxbG15pG24JNjlKNMIl
 g12iyE6A==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWnz-00By3D-9T; Fri, 14 May 2021 12:20:36 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhWny-0002bC-00; Fri, 14 May 2021 14:20:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix regulator-gpio states array
Date: Fri, 14 May 2021 14:20:30 +0200
Message-Id: <162099477649.1967349.15932194686004438889.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510215840.16270-1-jbx6244@gmail.com>
References: <20210510215840.16270-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_052035_348031_95B330DE 
X-CRM114-Status: UNSURE (   9.44  )
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

On Mon, 10 May 2021 23:58:40 +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> /arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml:
> sdmmcio-regulator: states:0:
> [1800000, 1, 3300000, 0] is too long
> 
> dtbs_check expects regulator-gpio states in a format
> of 2 per item, so fix them all.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix regulator-gpio states array
      commit: b82f8e2992534aab0fa762a37376be30df263701

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
