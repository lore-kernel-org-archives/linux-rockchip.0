Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81083C04A6A
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 12:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UiLbAiEF780K5aXhoiiQIwk3Qom4mKA0cVGiremzRQI=; b=mh/dg7kfW6TLBO
	UIzv4+4oqcsqHbti9pqdf4IUKBTRIKiou4Jt7/HemUumJU+QYomAAZT520KGEa1vIyq3L0PpxxiaS
	hrgbfmheOEU9rLHPpW6LUSggS87zwy+l5hVxfG8HNteXBD+ZVb9K3G5dLiB9ktP07sRtNvssKDBdg
	WKmjFFCxoXGqshBwln9WfvgTY9OC9ZYSMBdsp3QAZU6j/aCd2asisOUjMJW6gPzqdRuNG7i4pOGgq
	Q0HVclN7tOUvzc7ByslD0KjlwaVlZkwpRTawKJm5SSGzGHH4gYyLXrEcm/QENA3BIzenMUKtOj7lw
	WfsXo6buCnRpIHyhZjlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVtdx-001eBq-1b;
	Tue, 15 Aug 2023 12:59:29 +0000
Received: from forward103b.mail.yandex.net ([178.154.239.150])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVtds-001e9c-2w;
	Tue, 15 Aug 2023 12:59:26 +0000
Received: from mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:17a3:0:640:53a6:0])
	by forward103b.mail.yandex.net (Yandex) with ESMTP id 643BA60031;
	Tue, 15 Aug 2023 15:59:10 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 3xeYJg5Wma60-VVag7b6Y;
	Tue, 15 Aug 2023 15:59:09 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692104349;
	bh=W0sB+Yne05rsYeHXPgw3LIcd/XRPY0E85Vo6QNC1YDQ=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=LVy7viZueqdVlCckBmTTdfAMirSbVmesDdfXgWPE6RjzJg1dGN5pPXiUfYddfRvyW
	 1+Q/F39qaCANTXtp1xiW0Uga/P+1Zg0BSRQL2y7fwT8i2I8EDHguB5KIsWvU7EWK1K
	 0/tsEPqfOg0q1FqbhuTYCHBI1aw5o/LrCguqBb6c=
Authentication-Results: mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH 0/3] Add Support for Orange Pi 5
Date: Tue, 15 Aug 2023 15:58:58 +0300
Message-ID: <cover.1692102057.git.efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_055925_143807_A47CB423 
X-CRM114-Status: UNSURE (   9.00  )
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

Hi,

These series add initial support for Orange Pi 5 and SFC node for RK3588S.

Muhammed Efe Cetin (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 board
  arm64: dts: rockchip: Add sfc node to rk3588s
  arm64: dts: rockchip: Add Orange Pi 5

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 873 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  13 +
 3 files changed, 891 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
