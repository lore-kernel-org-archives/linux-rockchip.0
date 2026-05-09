Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F171CD3447
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 08:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Message-ID:
	Subject:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZ+hcD18NDjaVhGg3OHNI3qCZaXAJPRRJVDNe36LhF8=; b=3u/TbhxhzgZjcc
	1PtwST99XYEpDJwaakFK4E0UXRLt9Nv/O25NTLCrfHeOMd0wJlYE3ANeX+EXGiVcQIWPsZlGXMwTg
	IY38GFuYAgaheJvntNsXRlVVb0PV4yIm1blN5M4PN5Uls3grOwIFQtR45vI7r5kNYijAOotOcS5HO
	D2HMmabZ76UnLjJLZUt0zHTYkeFnJAo53Bjay//R+MZ2h/4NPfnetkFhnICij9agFjPxtc2LEhJaM
	AuC3FAiq6dlzCBvhF7caCjNziQI/NB4C9NVgnSH0Y0AUYqU8R2+5N/e7dAgzPGbG42UpSf3KEGm6h
	YOoKx2fEEev56OBfmAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLd8h-00000008aon-0XGk;
	Sat, 09 May 2026 08:34:23 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLd8b-00000008ai4-3cXR;
	Sat, 09 May 2026 08:34:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=7nY8bbpnmeu2LuUe3UlRYz1YYTlxMg6MG2wDblyfVdk=;
	b=eo6iC6XZoS/6m/5V3TfBOQnc1CEVw29zSOqtekSAG7lfcV9/aJ3jzZfa90LWM7
	lJqpEMs/Btmx+tsK6eJXIqJjfvyWmrt+V2dX/yBhvJ9oeaIN7vKJ1aMYu3cH2FZe
	HIiOAQqyV19ubRXBwc7qg+lPQtw8psVmu8U2ZlxHtNW1c=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wBnHxd88f5pRVN0AQ--.35430S2;
	Sat, 09 May 2026 16:34:05 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/6] drm/rockchip: Check return value of cdn_dp_grf_write() in error path
Message-ID: <177831564430.322716.2622130527771792842@163.com>
Date: Sat, 09 May 2026 16:34:04 +0800
In-Reply-To: <177831560568.322716.7926332149561323511@163.com>
References: <177831560568.322716.7926332149561323511@163.com>
X-CM-TRANSID: _____wBnHxd88f5pRVN0AQ--.35430S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CF1kCFyDKFWDCw1UJw1UZFb_yoW8Gry3pw
	4DJ34YvFZ29asrJayxKa48JrsYgayUZr4I9r97Cwn2v3W3Cr4ktr9IqF12qF4fXrs2yFyI
	yF4kJryrJrs0vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jUfHbUUUUU=
X-Originating-IP: [42.63.126.112]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbCzR21CWn+8X0oggAA3d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_013420_167841_FC38E837 
X-CRM114-Status: GOOD (  12.68  )
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

In cdn_dp_enable_phy(), when an error occurs after the GRF register has
been set to DPTX_HPD_SEL, the cleanup path at err_phy calls
cdn_dp_grf_write() to restore DPTX_HPD_DEL, but the return value is
ignored.

If this restore write fails (e.g., due to a bus timeout or GRF power
loss), the GRF register remains in the DPTX_HPD_SEL state. This leaves
the DP PHY control in an inconsistent state, which can cause subsequent
DP link initialization to fail or produce undefined behavior.

Fix by checking the return value of cdn_dp_grf_write() in the error
path and logging an error if it fails.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 8afabe2118a9..1234567890ab 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -425,8 +425,9 @@ err_power_on:
 		port->phy_enabled = false;

 err_phy:
-	cdn_dp_grf_write(dp, GRF_SOC_CON26,
-			 DPTX_HPD_SEL_MASK | DPTX_HPD_DEL);
+	ret = cdn_dp_grf_write(dp, GRF_SOC_CON26,
+			       DPTX_HPD_SEL_MASK | DPTX_HPD_DEL);
+	if (ret)
+		DRM_DEV_ERROR(dp->dev, "Failed to restore HPD_DEL: %d\n", ret);
 	return ret;
 }

--
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
