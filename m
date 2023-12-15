Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA5BFC35274
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 13:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Da1K0XyFVkYED46EIVb8nKYxcMSDn/6ul98RPftF148=; b=rytFXbqCn322mh
	DissD3uHw3JmjLSbLKxkTmLwv5CY7Tu+u5koNxmqYYJVhAffBjb4SlwHx7uxBFe5RzHr/rO2kgJwe
	rBfc9g6t4U76gXB/5kwaBZ3LtWD6gx5AUvZZEDqCTKabuziQTidxKPw3BslgPR+xrNKx/8+2K2pZR
	+AVqk75RZXwEiHxMdBF3naCx4JWKqgM0KxWaOyPKXkA6Jrs57XKzp2i5LdQ5WZ75SeqoUeRGf86YK
	hTzoVbxGroWeGWa0Z9Xh9SQoKW3t7/6XDtNZyy7SjHSRy8rTtN71aKSDSGcNYOj7DZC9KWRFooDNP
	i0mnX0TPsNGYi3gAjmLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8ff-003Rqy-2V;
	Fri, 15 Dec 2023 13:56:07 +0000
Received: from forward101b.mail.yandex.net ([178.154.239.148])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE8fb-003Roa-1g;
	Fri, 15 Dec 2023 13:56:06 +0000
Received: from mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:96a1:0:640:9109:0])
	by forward101b.mail.yandex.net (Yandex) with ESMTP id 81A33608F7;
	Fri, 15 Dec 2023 16:55:54 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id VtlX2gDOoGk0-AaWlqoYh;
	Fri, 15 Dec 2023 16:55:53 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1702648553; bh=ctP5Vc/yFooEeZGOcVWipv3Odg8pHuYf8VwLv1qbbZE=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=OQ1VRyDsx/HCJzpSdi+Osw43AspqBfXaOGFGnpEgTH1WSJ0ixADhzRHfxoZETps/t
	 v9egXvGUCG/xB16HMBRfD1+LBUCF+56YDOyI85TavqA/eBtW4PhcPRkkK3j50gZza0
	 p6htQ//Lk2qpZSUZyfeGbRzdqd0sKbdjUQnr/7+U=
Authentication-Results: mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 0/3] Add Support for NanoPi R6S and R6C boards
Date: Fri, 15 Dec 2023 16:55:20 +0300
Message-ID: <cover.1702647349.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_055603_766426_AE2694D1 
X-CRM114-Status: UNSURE (   8.61  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Hi, this series add support for RK3588S based NanoPi R6S and R6C boards.

Muhammed Efe Cetin (3):
  dt-bindings: arm: rockchip: Add NanoPi R6 series boards
  arm64: dts: rockchip: Add support for NanoPi R6S
  arm64: dts: rockchip: Add support for NanoPi R6C

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../boot/dts/rockchip/rk3588s-nanopi-r6c.dts  |  14 +
 .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 755 ++++++++++++++++++
 4 files changed, 778 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
