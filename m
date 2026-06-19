Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A247CDB466
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 15:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W40Xmt57IwHCHwqs1K89Iwy3A6K6bAd3FQczBRo7suA=; b=dSLsJsuQ8PWDOQ
	4RW4K5vY5tbQrYv1UA/54wIWgsYbSKyZdatEAhKV8VBgfBgfCC+EEl1giRMcBQJtIqhROEAecAwz+
	Cw2wwsqFOD19KsoUWo+q1tn2yJdj+mBHR56ROIjwPzyii2cWqdatq7JkR43jKwn/y1SB/n1+oJSWe
	aSEnEskS+6RERyCjk8zcXSvTn/rf+N71yQLtWz8N7/sjhMfx1HbIpuJYY446+XlwefwUzmFiy177D
	ioOCMcqRgeClRVuh+X0ZRowjpe+fmaAIYqw6Uxv9XgiS7RiT7rFzCch/JWBKU6cZYYaC5YwBsbhF9
	0YTYOnwDav/5bCoEzTOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabEo-00000002gT7-22WA;
	Fri, 19 Jun 2026 15:34:34 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabEg-00000002gM0-04LM;
	Fri, 19 Jun 2026 15:34:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781883263;
	bh=zdz0qSNvUbyDNxpGPNeOCdVRwIgtCiqNQzxi12no7Ro=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TAs9IHGHXkV3qj0OdFdj9LuRkzRKFQh6LVrsWCoXAbD2s14KSxgTUmlTxwaGUIUrL
	 vO4KFhFYlj2UhSnK7HhgnvB5n81OuT80NtNzuyhOPaWiK41XCOb4Q+ZOdBWglZfme6
	 Szldph5i1M9Wp/zs9cMzncrxsg2kfxeuwaPV/tOLQ+tcuDiKCC2XZ+W+uJcN+VjQPI
	 shD/hQ8cuB5RDa0OfxkX26Iq9VNQe1SbdgfncqmZT+6t647esypOYpsxJn07lI6Ml7
	 WNgQ+JLzSYhJKHx+GqUsb8O4RpZH25Zm0iC8O4dvk+gk6bUt+/kA1WeeH+KLpuJtSh
	 pEr4trg/Dtg4g==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 778D217E0416;
	Fri, 19 Jun 2026 17:34:23 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A29A6480062; Fri, 19 Jun 2026 17:28:57 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 19 Jun 2026 17:29:09 +0200
Subject: [PATCH v6 18/23] phy: rockchip: usbdp: Re-init the PHY on
 orientation change
MIME-Version: 1.0
Message-Id: <20260619-rockchip-usbdp-cleanup-v6-18-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1257;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=zdz0qSNvUbyDNxpGPNeOCdVRwIgtCiqNQzxi12no7Ro=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGo1YDlch9XO/NguQ7E+yR+lATAcZGRn4Xgw8
 ExBLQPi7D21HIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqNWA5AAoJENju1/PI
 O/qas3AP/ApgK5e9KfU9SnpcT43qYfF0oXyZuj+U44QI66Xq0qOl0vI926AkuV0NVqhM1jKaLWc
 GH77x2qwAeTpP5owYTtOEQ38Gnz8yEf2sxMAeEXGRr/PG6e060tS+DMTwQWzo4hekex6satUki0
 d0xopmghBig39To1Lx3eLLWn9y59S0zTTlmryEIoC3VdiEgD4cZfDGYQQJiC0O6TJkEqdh1Qtsm
 3fF0bAjfo8vFYyWhx3QLPKIGMxgt5Dhi002T6NbmUkGctseD0kdeTgxSY4yJBhaSzQAuZFKdOLb
 BRjIApZXJknwPYoaRaoFqUEf1xFa+7kUMJfa63yRINxlChjZMNBTLtc3aOgR+0QpwQ/vYEstUq7
 wI+vgGFcJQdAOvwM+wezEQWbCm1aJvxlK78g6ffFWj7L7FsANtgMTireE0thNtS6oJOVQun2PUu
 1NAtARGtLftT2F5+ZNKeE5JRbrf+ikitnmd+BK+QR54ruRAEXRniZCqSFgZtgMuTdEpzEYNuYU3
 0IlzELjZhPbSDU/meUYoUpFWpl3hMFAEJn1yP2afv7bGPXEmRfeUmMhyQg8T/v8ZlSn0k0nGv6e
 Cj2dTn8tRDgRWf/CcmDrik+yfhSQnd/xd9lONihXDcyOJMXZl4QNg0TEYYZ0jVIOUr3xFVCe68s
 4qi3SpuuStd5ku1wZU6gmaQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_083426_249536_9B1F8CEB 
X-CRM114-Status: GOOD (  10.57  )
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

Changing the cable orientation reconfigures the lane muxing, which
requires re-initializing the PHY. Without this DP functionality
breaks, if the cable is re-plugged with swapped orientation.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index c210aaeb283a..402f3cafcf0a 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -622,6 +622,7 @@ static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
 				 enum typec_orientation orien)
 {
 	struct rk_udphy *udphy = typec_switch_get_drvdata(sw);
+	bool flipped = orien == TYPEC_ORIENTATION_REVERSE;
 
 	mutex_lock(&udphy->mutex);
 
@@ -633,7 +634,10 @@ static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
 		goto unlock_ret;
 	}
 
-	udphy->flip = orien == TYPEC_ORIENTATION_REVERSE;
+	if (udphy->flip != flipped)
+		udphy->phy_needs_reinit = true;
+
+	udphy->flip = flipped;
 	rk_udphy_set_typec_default_mapping(udphy);
 	rk_udphy_usb_bvalid_enable(udphy, true);
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
