Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A968C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 12:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLdowI+NmoOKfuxCllOzGkzP776X0gCxHdmDDOSEt3Q=; b=Y3DsUej0lZaDgq
	exCPBwzt9Jlmmc7tr0qqZrJo479DbC9vED9SgCYIH9IxtiWIoNbWQh/k+ALa+iVjoql8a/o3mBkg3
	Hc78K+B8JqAGYBdKqTd/nZNKD8x9GF7IhshalfnbrmWhvnIz9+HWqdf/l82WQ0D3wtM3JRYL10G+Y
	rreIttT6XDPXVIniHOH06zqEGOf8pQxw/his+ipSYHoj0WSD7/JTiCjvEYIQo5kiAWv1PJHCKemPL
	0vykAvTIbS73TM7j/yq8Wc/00Tqr2FqXc9RHBOk00lNYnfIVLt6tcgTJZ7UYUUBA8YOprvxGEQ8b0
	mJJxmYRlREa3OSTTwrqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuWHX-00000005utj-0H9J;
	Tue, 18 Mar 2025 12:42:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuWBo-00000005te0-3rl0;
	Tue, 18 Mar 2025 12:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1742301419;
	bh=6qoZMEmzx/47BCJQ6g+WIstQGf/YZGDuhnsXE9nnf8g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=D9COcNKUcRBqXtXjhuDKWL29T3/oc/NhjU9THGXYbLF29cKPgsbxTjk9QL7bmVyyt
	 Dj7w8mgJUohyoGqKyKOAbn9PH3UsHlwjDw4fxp5ZH344pEWi+2m0kFE4pBRA+ur51L
	 i1vtvWm9/O0j8TbLd3t4wcmsY6CdZFxVhLUJ3SvoozfkNxEX1m3Ai0Td0DJ+RpUYKp
	 2h+vqvHwQ+bCodxNHGaJZNGA6jZY1c0STmJL0b2N1esXv6+YfC0pW/rucRuPW8Y2Ka
	 6HgX59Wdz89Q0CBnKuaIGESpzyLtQPutKqX2JWNvucM2cBh7NWTA7SjmIa5q2Bk61K
	 aIHWlHGsslqaA==
Received: from localhost (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 2481617E0FCC;
	Tue, 18 Mar 2025 13:36:59 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 18 Mar 2025 14:35:36 +0200
Subject: [PATCH v6 02/14] phy: hdmi: Add color depth configuration
MIME-Version: 1.0
Message-Id: <20250318-phy-sam-hdptx-bpc-v6-2-8cb1678e7663@collabora.com>
References: <20250318-phy-sam-hdptx-bpc-v6-0-8cb1678e7663@collabora.com>
In-Reply-To: <20250318-phy-sam-hdptx-bpc-v6-0-8cb1678e7663@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_053701_138181_C863AD6A 
X-CRM114-Status: UNSURE (   9.25  )
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

Extend the HDMI configuration options to allow managing bits per color
channel.  This is required by some PHY drivers such as
rockchip-samsung-hdptx.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 include/linux/phy/phy-hdmi.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
index 6a696922bc7f29af63d88646701b2c0fcee5c885..f0ec963c6e84f1b7728acafc824dff191c6b873d 100644
--- a/include/linux/phy/phy-hdmi.h
+++ b/include/linux/phy/phy-hdmi.h
@@ -9,11 +9,13 @@
 /**
  * struct phy_configure_opts_hdmi - HDMI configuration set
  * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
+ * @bpc: Bits per color channel.
  *
  * This structure is used to represent the configuration state of a HDMI phy.
  */
 struct phy_configure_opts_hdmi {
 	unsigned long long tmds_char_rate;
+	unsigned int bpc;
 };
 
 #endif /* __PHY_HDMI_H_ */

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
