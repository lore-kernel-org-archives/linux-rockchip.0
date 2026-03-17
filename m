Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68013FED9EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 18:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVaKSvLRl33cqB12TH+doyxRr0X68+j7h0ts/t/GSP0=; b=mN1vmjiq4iLuiZ
	IVxtYV6A/mmTUcG5rcfaQTr3P0qSQWD+p6lAnKi5z4srU/YLBxsUujba2J8Vijaf9R5Omd2MIM+ZK
	x5/QsYRvScrFitAjHPz1SoxToMCkd2EezNvw8Vs9RU2Z/fuIlfvpWIFiJ8Y1qrl4vnZwWzLreOujg
	z+/AUjy8garFHC+oAav4Z9hJqqDpUZfqfg5OOmFAlsaA6d6eg3Pqob5mFxrOtKiP5ZO9Y9/B0TUF7
	6n9xDLyZ89qFZfXIcY6IysR+vkiC4ziI2o8ttSLPmbGGR+GxQP3OYTVkJn3FUmbV0rbz306wjTJs0
	/1v8cHZDafPPo3b/BK9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Ypx-000000070yf-3iHu;
	Tue, 17 Mar 2026 18:08:13 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Ypv-000000070xB-1Hvw
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Mar 2026 18:08:12 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-43a03cb1df9so5991690f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Mar 2026 11:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773770889; x=1774375689; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HT1vwWl+a38V7qIi5t2z8SaT/U8JFZY0mnIb8ncq2Gk=;
        b=x51jjyQ6bbCieh4+QR2rfY7/i0fJyBMTKX++3bf+87OqbbU+/WU72B8Lc3FLcwKoz8
         HiMLmBGP8LzXxQvxxB5Gh9UUJhchIZGDg0tCAgIk72VXL8o/3UrejeEWW5OpuFE+nH76
         2S7OrNG3LENN76YmB8q4bmbQHGwSV4j2bw6HQG3p6VEcUofpghdz4PKrINeuyZHB5f5P
         fxgdxgT2uJld8ezFwozageybdJtQeEPmY4YVJtN8TGSq94xQ4xZESxsxCucblAf/K8ZV
         AJb2ROeLlL3bUrh/y2IKiD3Vc4x8eo7cjYC8SJcbCnfYWhAFiQPdqHRD7UnA3GjVIL/M
         ySyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773770889; x=1774375689;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HT1vwWl+a38V7qIi5t2z8SaT/U8JFZY0mnIb8ncq2Gk=;
        b=GohdQD8zh0xHdCbCXmlsIpzxmbesjJMMPg2ZgXlUPykbbjQ7QhrktbGxetTSU21ba3
         f/UFcNAJiutOFC0ShbY4gzXYNTxzM6TRklK/7W+oJ5BiKle0B6HXWibDRGBhf/LWbrMr
         zMGlRiMn/+ESq6jpnHnWpvunFPiJNwOOujyMWT9G64UzP5k2FQmF4RJNfRnq96kNlENd
         Gypc9BLcwzbXrzlmcvu+CxyYtE9T6Ouy7qAvnsq+oEwxrTe8AMLaY/kSC2lyAzVi/lSL
         wWQ7ShnXQkXBF22FrGzbfzWxOkCPxu/CXjGlMaAs+euP/b0qC7z+dLBXO6R5HgR77ibU
         3yVQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6ma+12pOTVyHQoKCLuBcYJoURGqOQY6NX9F22pyKFYcTPqVtoHU7BKvpWSHaYVEAPM9IAbYOqvc8/ZrWHVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YywwLP8Jcx9N2sAchg+ezZhP/NBcBnBjK3e0IokvIFZ2idQgZ91
	IoW1zpKq4FwxMsqSx361qQgd8ZUySotE3MIFb43VFoPvs/LNwN+RzKbq+E5K3EVrkW0=
X-Gm-Gg: ATEYQzy/HtInPIoXYFRSZpQ3pJ45+pbuRJRir5XMOAkCk3x+poudiOvY0e/GYL85TKS
	Z2kRj8W/RvP1lVodMtMHsbB+lbUJJ1Q808FydWmipW1qGwW/ElGDaeToU+zExESk6pvFrz/9QPI
	ahz9CG3gb02khi3iXSrXsnsaGEHhbrELkFpU8oyMsMVJZpq3DfFSF3p74s/TFBl6ek0h4APCPsV
	BYtTSIbu5QWVOlrAbUDMPcS7nRGnwchFLuFQoOkb3dZwL2GknP04nCOn5o0MdX+QRXK1lNSxI5x
	OTAw4i1lWkcGdbAnKoWuOnysvVSvhtUA1IUKrpTTtxvYZ8KYsAlInj/XIbsFR4tTON9U4sjNyvP
	m7BaLspzfd1BnhAXZQ3O1HfgVQPYLDonJ49eUVxS6K9QpqTVsFrcS6cO13D7yjVh+IpyZMVy++7
	ohzVvadr5eKLY1t2E9+crCR9z/XnthAg9r8SILUN/qJng2XMhlsdeyL90N3eUMxR90OwVLiLnpl
	bC9VQ==
X-Received: by 2002:a05:600c:1d0b:b0:485:30f7:6e88 with SMTP id 5b1f17b1804b1-486f4577061mr8194215e9.31.1773770888892;
        Tue, 17 Mar 2026 11:08:08 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184b8b9sm1436536f8f.1.2026.03.17.11.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 11:08:08 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Subject: [PATCH v2 0/5] Add HUSB311 Type-C controller
Date: Tue, 17 Mar 2026 22:07:57 +0400
Message-Id: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAH2YuWkC/zXMwQ6CMAzG8VchPTtDZ2DqifcwHCh20sSMZcNFQ
 /buDozHf9Pvt0LkIBzhWq0QOEmU2ZXQhwrGaXAPVnIvDbrWbY3YqOkV6YSo9AWJCAdjTAvl2we
 28t6lW196krjM4bPDCbfrz9i2fyOhqpXVDY3UnEdrTWef4j2Ho+MF+pzzF7urctmgAAAA
X-Change-ID: 20260115-husb311-291bbb1a7776
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>, 
 Yuanshen Cao <alex.caoys@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Alexey Charkov <alchark@flipper.net>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2698; i=alchark@flipper.net;
 h=from:subject:message-id; bh=akAl2/DG0rdw7GlbNngJ+xuwwxnaipw/AQYp8maIV00=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTunNF6r7Z+eZ2E4oJ2I+HNT2ROywbkLzbi7/zRrbxM4
 o/qsqxLHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEy1LBcjw8nDy1/9mst7L2zPdOOAlW2RyZm3DoeVcTIVL3mslC5yOYvhn37WtUW
 BX4vqPti9vzJPwm3qHTN+i5oTzdy36vprLj4X4QcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_110811_366922_44CF10CF 
X-CRM114-Status: GOOD (  14.17  )
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

HUSB311 is a drop-in replacement for RT1711H, used in Rockchip RK3576 EVB1
board and some other boards closely following the reference schematic.

The existing RT1711H driver seems to work fine with HUSB311, and publicly
available documentation does not provide enough information for HUSB311 
to identify any meaningful differences, so this series wires up the
existing driver to treat HUSB311 in the same way it treats RT1711H, by the
way of introducing fallback compatibles in the binding and removing
unnecessary VID/PID/DID checks from the driver.

Note that patches 2 and 4 are on top of commits by Yanshen Cao which are
currently in next but not in master. Maybe they can be squashed in full
or in part to reduce churn, if we agree on using fallback compatibles.
From what I can tell, ET7304 can also be used with a fallback compatible
alone and without driver changes once VID/PID/DID checks are removed (I
don't see it used in any DTS in either mainline or next yet, though)

This also enables a bare-bones DT node for HUSB311 on RK3576 EVB1, but
currently misses the connections graph for the USB SS and SBU lines, as
those might require the USBDP PHY ports schema to be updated first for
proper DP AltMode support as indicated by Sebastian.

Signed-off-by: Alexey Charkov <alchark@flipper.net>

---
Changes in v2:
- Changed the binding to use fallback compatibles (thanks Conor for the suggestion)
- Rebased on top of recent next, thus also adjusted the binding for ET7304 to fall
  back to RT1715. There are no in-tree DT users yet
- Removed the VID/PID/DID checks altogether instead of endlessly multiplying the
  list of matches for new clones (thanks Conor for the suggestion)
- Link to v1: https://lore.kernel.org/r/20260311-husb311-v1-0-f25bcb58cff7@flipper.net

---
Alexey Charkov (5):
      dt-bindings: vendor-prefixes: Add Hynetek Semiconductor Co., Ltd.
      dt-bindings: usb: richtek,rt1711h: Switch ETEK ET7304 to use a fallback compatible
      dt-bindings: usb: richtek,rt1711h: Add Hynetek HUSB311
      usb: typec: tcpci_rt1711h: Drop unnecessary VID/PID/DID checks
      arm64: dts: rockchip: Add HUSB311 Type-C controller on RK3576 EVB1

 .../devicetree/bindings/usb/richtek,rt1711h.yaml   | 16 ++++--
 .../devicetree/bindings/vendor-prefixes.yaml       |  2 +
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   | 20 ++++++++
 drivers/usb/typec/tcpm/tcpci_rt1711h.c             | 59 +---------------------
 4 files changed, 36 insertions(+), 61 deletions(-)
---
base-commit: 95c541ddfb0815a0ea8477af778bb13bb075079a
change-id: 20260115-husb311-291bbb1a7776

Best regards,
-- 
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
