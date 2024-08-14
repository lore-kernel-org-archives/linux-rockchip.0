Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D8D4C52D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+yYNAtTx7o9snooUOZC+7nQDS4kj54RmyyokAef+Ueo=; b=c+waKex+MHMko0
	Ic9Df7aSJYdv23dS/skrslb2Z0vPmNc3ysyxs+jX3EZJZPFkGTqbJZettRCqnL+xSzKNFbknCJJNW
	32PmrwkLXRNFjT1p6Kq5sj9ASrYMZQMLwlzkXma3J1vaSREaQV0hvzPFBwj5/2qIhBoX7rL18J66W
	v4uG0cuZ8XIV67lZE9XKT/Ra+ziouUaV0Rz3R0shC/2MVWb8MvnFtf4a23inATmEdOdvbWXTsR4g/
	tJCOTia4S/EHlRKbjnuMfvTjmYleNNfvHVaUNn+ygDFcMIzqaCWO+rCPpqEnct7BtUFEj3nM+Mrgn
	ExsdfCYtTGcCVQfyybSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMWH-00000008SYJ-2Gvf;
	Wed, 14 Aug 2024 22:31:05 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMWA-00000008SV7-2voI;
	Wed, 14 Aug 2024 22:31:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674651; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CaoKoabb2x/8TNTE75o1EYoQEp6sNXjvWwW5UflBEnjD0kBu6Xbb8eXcEWH1ayTwasPzcj413QyfNm0a9wirt1etiX43xQ6KlLtg0Fbt0VmKHguMR1Bn3eReggNWqyq+IN5CKKCLiDoSHPSQISK9lFG176XYVSNVs1wfS5xIw+4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674651; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pP9o4Ggk0/aQzpPcc0l1T8SG/bLefUOPqdiVZtqQK/Q=; 
	b=RKmV9S1yDaEUgc4BwcRUXq0WDuoNGuYWNWcJ93aWLMlv/d2kLxjQqkywlDcB3+MYDTjczqxMM2MAqlMJxKanstWDZ2R0OgjjzmyxJfi215ZPgQoSsbvy59LdkDyUy7DZ5hjuLjVzgoXoFxfnNl95x6FZWjqMBdXvIBfbAsujQNM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674651;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=pP9o4Ggk0/aQzpPcc0l1T8SG/bLefUOPqdiVZtqQK/Q=;
	b=hNS8MiwfGxFQkZGeNQmFUxcmsyg93fs/5OFS697z8NBnbA/Fsbxfawttu4wwb3gJ
	UnTyqQq0oC+07Mg4rJYFo3ProFng76kgNqkctE4x9W+HV8n90sazs4tozbJ3wzE+kw6
	A8I+J4khO2fEvYLVB3t4QB8OGxrIkcL5ZhIPWY+Y=
Received: by mx.zohomail.com with SMTPS id 1723674650458476.4613063280085;
	Wed, 14 Aug 2024 15:30:50 -0700 (PDT)
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
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 0/2] Add pinctrl support for rk3576
Date: Wed, 14 Aug 2024 18:30:37 -0400
Message-ID: <20240814223217.3498-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_153058_814680_A75667A8 
X-CRM114-Status: UNSURE (   8.80  )
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

Changes since v2:
- Document rockchip,sys-grf field as only needed for rk3576

Changes since v1:
- Reorder commits
- Describe sys-grf use
- Update imperative commit message

Detlev.

Detlev Casanova (1):
  dt-bindings: pinctrl: Add rk3576 pinctrl bindings

Steven Liu (1):
  pinctrl: rockchip: Add rk3576 pinctrl support

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |  18 ++
 drivers/pinctrl/pinctrl-rockchip.c            | 228 ++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |   2 +
 3 files changed, 248 insertions(+)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
