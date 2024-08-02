Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D94C52D6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 14:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l7Iy0YRwHFDmgVRZMzuL9p9legb0Q4y2yXXneUGNdKw=; b=mtbxmOdPeDdJJh
	tInSgC5c+0V+ETi9FrJ/Ky2YBR/F7OX5z6KNwpnbA35VQ+jLGJdoLBYzkxYHoiJKqkmKMU6ZVj0bG
	jVucrEWSFUHpBW35sRIsm5nbUkghPf1mXMukaY9Ce/myfL5z8y0OSETB/JthKcgiBJK+ahptrRVz2
	iiD1sye0jlVlatFxsf6bsrWHpri5Kp8b5KVlR7vAfvl+8hIYMJZk7sy02vWU8sCnKjibXjTi4wZ0D
	sMct4tR4qLfvGbt/4CquG224ML669NzxC4uyLVX5tmJmuzb4FEtysnfidYgLA1ztdNfsWpOGa203W
	1i4fTZxA5qIijf72YblA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZtfo-0000000998A-0zFF;
	Fri, 02 Aug 2024 14:54:28 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZtfH-000000098xr-48S5;
	Fri, 02 Aug 2024 14:53:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722610434;
	bh=wMSXbHgdztQ8Vy7EQBiAkB4jPXd5Iv5FFJ65MyOzQ0s=;
	h=From:To:Cc:Subject:Date:From;
	b=rAVzIX6jTydkyx+lqZdV0C/7PPYNT6WeEyxEszG8yQIeXxWdb0LghQYnywHxYt6Qt
	 QaUuowX1GpyzevVA14t/62QpXRSQxbwtWO6Shr4Y8MR4zB+/muWME2GyAUOO0c6Uv0
	 XwgU1n45AeQWHt/SjIytwfuRPqq8pkKztPRz6PR3wIt1dER7SHkpskdVts7BTaXRg7
	 tM8djs6ZQWdzYlAOvATuazh6sv7vg6u19Z5u0FERoeENBDtiABAcAydVaDEIFeZy/y
	 kYCLbxrFU/EVxSddIHbc8ZkNsmVoEGJQzojjRpplpwg5pFp02tI/pZLj1CZ7z2FLG1
	 mBO4Ai9rQOSaw==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BFFD137806B3;
	Fri,  2 Aug 2024 14:53:52 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/2] Add pinctrl support for rk3576
Date: Fri,  2 Aug 2024 10:52:02 -0400
Message-ID: <20240802145458.291890-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_075356_200254_FF244FD4 
X-CRM114-Status: UNSURE (   9.13  )
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

Add support for the pinctrl core on the rk3576 SoC.
The patch from downstream has been rebased.

Detlev Casanova (1):
  dt-bindings: pinctrl: Add rk3576 pinctrl bindings

Steven Liu (1):
  pinctrl: rockchip: Add rk3576 pinctrl support

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   6 +
 drivers/pinctrl/pinctrl-rockchip.c            | 228 ++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |   2 +
 3 files changed, 236 insertions(+)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
