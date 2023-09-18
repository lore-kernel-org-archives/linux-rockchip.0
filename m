Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B90C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qkxisC1dWcAf+gz1FH1PDLrf2lo0DQg/WYJt+Ko6GiE=; b=iscsdcwLfptRoa
	qjHMSd5v2t28q5MHpn2SSVbfRQItiMoG9la2/TkT4GTXs0pbXovLKHEtVnHXf5Y6o7W/dWBnZzFmP
	L4peV4LxhAKMQZr8hJWCIp6wci/uqb8oOoTTH18dzFRa7qGpcQMZWEm4gv5xmUgvcqm6GDfX70Ioi
	SMLR1mWvjO1NWqxnQpHq0aY4Zv3V27tuHeE7Gg6S1pyMW2F7cFhmJllQ0t4IGIJsOIIUMBgCyE3BM
	/tFuZMglplgEvZkOEwxbHQBotCfVobr4g1GHnLZ7ZS0cqWt7RYqw9r7G+17Vom1UMz3cyBciR5Wzs
	FJjqqi5t7K6yEtiKMgow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF0X-00Fd45-1W;
	Mon, 18 Sep 2023 14:13:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF0T-00Fd2b-1T;
	Mon, 18 Sep 2023 14:13:46 +0000
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6F6C3660716C;
	Mon, 18 Sep 2023 15:13:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046419;
	bh=jUBMzzrZP2ozft5sWOPwadaxJadrsgcEVDuXZaKS9pI=;
	h=From:To:Cc:Subject:Date:From;
	b=EGZdGQ+qidXndDrZjztBDm3QNv9uAzpcV5FLI8O2khxEFKmvGUrRCWbHD7e27dqrV
	 obiniG2FlGTS4Mtu60nA0zPNDOYg30LUhzLLuaAX3SHsI1Fi5Ki1lXb38RegjHwYZ8
	 M36gu+MdtlGtxD4xQdjUHbS3hdtecRAQBdtKXU81ve9ayFFugB65+3ZJ7oABS4ziB9
	 KBYZxnUTu8BAVXoRWFoDey5OQddCjAkwkoYMlrCPXDnpIq30EEyZ/mBGGv+9b3fZXe
	 U7f/PNH8dzMFFQOvbUx9h0/TxxTux1no5Y4dUyI2XDBEwPERPOm5Kr1/HhdcXCm5dE
	 VO/VB/H2d+/MQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7F6A64800CE; Mon, 18 Sep 2023 16:13:37 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 0/2] RK3588 EVB1 PCIe support
Date: Mon, 18 Sep 2023 16:13:25 +0200
Message-Id: <20230918141327.131108-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_071345_667438_297F4B02 
X-CRM114-Status: UNSURE (   8.23  )
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

This enables PCIe network card and the PCIe slot for the RK3588 EVB1.
There is one more PCIe lane being used for a WLAN card, but I did not
yet get that working.

-- Sebastian

Sebastian Reichel (2):
  arm64: dts: rockchip: rk3588-evb1: add PCIe2 network controller
  arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 98 +++++++++++++++++++
 1 file changed, 98 insertions(+)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
