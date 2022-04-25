Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E7F6C43217
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwjbhI7PK8y2nmpy3IzgyX83i60p1pAFl5y9CD6XxyI=; b=YX0tvEzDpdXS8n
	FdooBSXzxEF0oguzeE6rFhWDSdxVwOHbL8KHVPLcA006StRIpDBaGCFkIBr0sUPrhzZxx/Oqm4i5x
	aH7TphxXLEuTHTEaaxaP1rBunf9+X6EnVKYmp0YhRPxNO9Py54+oWpSK3RW/m8xyYiqBkHS2F0YsS
	t+qhzbKfCBzAZLI0CBWwqoN5AVSxfKHiraePRgK7pjscghtjw+PufkGnT6MfjNm8chSJFxGtgCC7Y
	+oEUTIGmWOZ2ALEs2sb9gQi2Dty+1V79+ZttlSjsdTfk28nBqpwqCM4MYjTMhQgHbkh8ioX47bA19
	nkxK1EFRa6ikOVVZvkJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5E4-00BBUF-Lp; Mon, 25 Apr 2022 20:22:28 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DE-00BAuo-Hl
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:38 +0000
Received: by mail-wr1-x42e.google.com with SMTP id i5so3424685wrc.13
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=cjdUL5ziwMdVVzxEZfjvHaBI6lZy+g4kq+A+FnrRkmEkrc1OCo1c8EOePImy851jRh
 VtX6/UqmPqERLcaYk7hQUdHDg/s12FxN3i5UtlSfCAkMklTiyFCXjfj42xGgCic9g/nX
 bUZzne+cMIxyiImXuVpHZWU9rYO9rgS99eCwtWZvNymgjGqQWEqibDQIHjTCZ+lfjcus
 NhZDP6bEC32OZSBmgcQp76ToZliVUG5jBSMPXKUeK7hTUPSePsFXyGNqa56shlptqGQF
 ok0UC9qZerwTR6GhsZ2B4vzKk17v+JS1MM4dO1v2ht5xnVgCrJb3PjAWcCCIG43qYn/p
 p3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w4B/nkw6c+X0giFcf3xLDnzS4+ocxAJWfds+bZ7Txos=;
 b=T2yReLByQP5ohmyaD8DS4NpiUkLvz7cQAvNPYt/7twEnFZ8CfScTztNOJHj0WZWyP+
 jB1fqWoWPG5mm3oTjtL8baunfQEPOz9lhgA4WZ6i7oqqUDVlhk4TaD3joycE1969OmGw
 BcMvf5FoSCQm92TCJz4PqkrFVVPVC2uoKyKgW4j8/tJYZbI9O951sJsp/ZAWzCz0V28N
 YVeXGOooDsGhIagg2VXSXrRy+UAYHv7Xu7m8xOSacJjgB1tV1W4BwhO+H3/o62cCOch2
 NTEhbW4dW8WuxfBwOVtvfYHQMYpTfYxR60yLeOG5NElmXS+o7cMifAjgAvlqZZ4svSwv
 XOsQ==
X-Gm-Message-State: AOAM532KHnCzWcb3j6+C6afsMIt5zLR7f6KectLGLDTD5rePf5k3ApZz
 YPUuU2bN7h53EQfg3DC/APb9AQ==
X-Google-Smtp-Source: ABdhPJzL6+kxK9MVCVjQ4Y/GIq9uyP+e4ezvDNb7cOKbfr1jUlJXTmUrz7NENZTHhyxXzHwxo+k7QQ==
X-Received: by 2002:adf:c64c:0:b0:20a:79c7:4bf2 with SMTP id
 u12-20020adfc64c000000b0020a79c74bf2mr15549306wrg.587.1650918091538; 
 Mon, 25 Apr 2022 13:21:31 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:31 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 04/33] crypto: rockchip: fix privete/private typo
Date: Mon, 25 Apr 2022 20:20:50 +0000
Message-Id: <20220425202119.3566743-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132136_684616_065C91DD 
X-CRM114-Status: GOOD (  10.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This fix a simple typo on private word.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 2fa7131e4060..656d6795d400 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -235,7 +235,7 @@ struct rk_ahash_ctx {
 	struct crypto_ahash		*fallback_tfm;
 };
 
-/* the privete variable of hash for fallback */
+/* the private variable of hash for fallback */
 struct rk_ahash_rctx {
 	struct ahash_request		fallback_req;
 	u32				mode;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
