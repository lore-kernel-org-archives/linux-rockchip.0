Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2652CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 14:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l4ov/xuV6sS5oehOlnemDFD6BKGSxGY9J7FkVyrjZ38=; b=0pYtb8URuxpScT
	KkqHHp4ks2+pQYZ4/0LqBkiNJQgv4EzMKJovSypvXT8ucvWeNUBFKeG54986STSomDJBDTJsn+o6g
	22D/+SfMs99fUfbxUru9Ts9rHGOpLJdHEK11zbykFAm4Hy02s0jj6BcX6ZRqwu4nvGHYoLP8FPRKJ
	Tr9f9HidJmJHqjeClJcLx63xyZ7TNW9p1Z/QjbYmw9hxccPsG6jJigs2V8i1xPP1e3XlyudubsmoR
	nzK/Sz6ljsCoMDJ6RZDWyDWdjOEPkFbyJFDZq3fzSNmFNvZZwH0E6A/w9G0VtcKn7ldruuNCw216v
	Ahd45VYpRKNaIgMe6dHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF1j-00FdMW-1r;
	Mon, 18 Sep 2023 14:15:03 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiF1f-00FdJo-1a;
	Mon, 18 Sep 2023 14:15:00 +0000
Received: from jupiter.universe (dyndsl-091-248-188-252.ewe-ip-backbone.de [91.248.188.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3BCF066071F1;
	Mon, 18 Sep 2023 15:14:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695046498;
	bh=eDPgzqzOt8C0tSrqfznZpadr+6u2SSJcGi+WOSLOE6s=;
	h=From:To:Cc:Subject:Date:From;
	b=bU0psDT57KgX+Ugd6nMxTkzKM49BD9cEdn+Kbs/ziEiQfkgBtxVo1mbgK0WxoXEZt
	 0oZdoNpGlC43YAUw0nbUJwwrnoD5AF09FCFLRPsi+uPrmxsF0VE6zvwBLL7o0VZAhJ
	 rLlfjLaSfWFclolrHa6Pms5dNESXkQgFXkpy8AiL3mmCXKkItojagVug4HC1FGc0Lg
	 B9DjBbW0BIUzCqALgw6QQpAI6WdHlNb9tpXj+4UagsZacINr3zBifdVT3to0qKj52h
	 aiGlDgywyn/OxXnI9mwLQPIp4sHpP26F+YizGUSbS+4keItbMUzGM6y/VuVcDoid+O
	 VyYUqtaIvYYAw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7ED764800CE; Mon, 18 Sep 2023 16:14:56 +0200 (CEST)
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
Subject: [PATCH 0/3] RK3588 Rock 5B PCIe support
Date: Mon, 18 Sep 2023 16:14:48 +0200
Message-Id: <20230918141451.131247-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_071459_657673_DDCB2FA7 
X-CRM114-Status: UNSURE (   7.52  )
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

This enables PCIe network card and PCIe for both M.2 ports the Rock 5B has.

-- Sebastian

Sebastian Reichel (3):
  arm64: dts: rockchip: rock-5b: add PCIe network controller
  arm64: dts: rockchip: rock-5b: add PCIe for M.2 M-key
  arm64: dts: rockchip: rock-5b: add PCIe for M.2 E-Key

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
