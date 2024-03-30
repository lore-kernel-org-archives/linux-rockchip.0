Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6121BCD128E
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 11:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmQoy3l6ujwTMnC/mKp2l2YWExM4WsJjfcFzyuS1v9M=; b=cS/5BOut6Gohl2
	0INEfB3RqRmCKrXGq5Z+tN3IzhdJKvYgSfGJdaN5sUsqnWUGAt0IVWUe8C0sWmO0movNqGJj5PeoX
	jQLcwtT5NVUWgxW7wwJy958ahdvpGjrLsEAgs14AGtoTDi5GVlqdekhljkr9C83/3wA09KKaxgyxv
	sDLAcUnV3TMSwnnhfX2T5FJR8fyTUQQhgq46mMr1WZAIj8P/raOp4QdRZtzp3vozHb12KapgfYi7o
	avD3l+RVGWdbFlao2hhUqdOs50PcT/ePi6IeLedzXyMZwawbVASnlSxeDLEwu1M2RUmTGJVM+ymwm
	a8y5aAC69XooXD74/vVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqWqF-00000003MHy-0UTl;
	Sat, 30 Mar 2024 11:25:43 +0000
Received: from forward501b.mail.yandex.net ([178.154.239.145])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqWqA-00000003MFQ-2hsu;
	Sat, 30 Mar 2024 11:25:40 +0000
Received: from mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:4619:0:640:d09:0])
	by forward501b.mail.yandex.net (Yandex) with ESMTPS id 461EA60BBA;
	Sat, 30 Mar 2024 14:25:22 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 2PN5co9OdCg0-dHeX0PRv;
	Sat, 30 Mar 2024 14:25:21 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1711797921; bh=k+xr2CdgZbDES1PB5EMb0dI+5hlK5uhxDTWonGxYilo=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=UPQkPCkMo7OuVDyefhG9qHvu8iT8D4vBlUHzNcUCcbfW8KNh6Q1TMjk3rt0gKJhm6
	 p62vKdOuLiyDOOOcRbzxeJEJtE0mCHMKSVrQW7fdkYU1cOvl/7QJ7c1LVDC0wg/Ldq
	 BwHPerOWEJm40sQuzOO6KS+g6+33jceNMCvOAf10=
Authentication-Results: mail-nwsmtp-smtp-production-main-38.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	efectn@protonmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com
Subject: [PATCH 1/9] arm64: dts: rockchip: Add cpu regulators and vcc5v0_sys to Khadas Edge 2
Date: Sat, 30 Mar 2024 14:25:02 +0300
Message-ID: <20240330112502.223828-1-efectn@6tel.net>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
References: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_042538_886477_954C6A76 
X-CRM114-Status: UNSURE (   5.29  )
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

Hi Heiko,

Sorry if i bother you. Can you review the series? If there is a problem i will send the v2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
