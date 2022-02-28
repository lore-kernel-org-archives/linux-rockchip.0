Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DAADC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2g60iMbn8hCjb+Ka3pYA6C/TjvZBHwtErZch1xVdfE=; b=fWa1sPqPj8i7Zc
	epLtkGJWLqiAiZYT5sERfepCz+e1cO2Jjn0dMBg/qDSJoQ2kfCgZTrV2ulo0bbFOlhnSPhFnig0tK
	UfC1rOyr6Tv6dxst6r7XnzIZ+TzS2s0trRgXScWT0DEs7jgdRcn81VMgifr533PmsqqjSNhA4AuIv
	gaQNrTpS/NJmLi/8Hhi5wK/oBDU+4Gmg2cQGuSPcrtsb172nzcd6uddUj7SoT+Cd9L9gzN/OgW4bY
	gJ4hO8aa8cf7yFnWQNEtvZrc9mzv8jCKhCWq2hNoBy76hjdjSwQrJP7d6e8VWjS4/Xju6CcLok7GO
	zsNiPz9v2VoVwtRAk9fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOm2T-00Ds8A-Vg; Mon, 28 Feb 2022 19:50:34 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOltA-00DnfJ-KN
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:41:04 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 bg16-20020a05600c3c9000b00380f6f473b0so65831wmb.1
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dt2TIAnb0hgPqs5E3ITetwBw03oi/KH3u9qpCDk2YIc=;
 b=CzppBtYiraF7Cxt5R+XptC5OZH8T2dPKrJJAwATivyW9xyYv8ML0Zpo3RRuWvWj1b9
 sbztzFqB0fhBZriWexQYXobqmEYn27dfo2mtBneBPeUY8xoGIm5tqPk0EKcATihU6sim
 FI7j94CdJvpfOj8JJEXQR8FkJw1TSp1IDUdvLFNCsEhuWza8Wd9QGUfUDQwbkRAi9eFw
 ZDv7gSrroAHp2d9LQewq1b5E1hnDwirl8RlAvKWjzMkPXLjN357U5NYIPdhRgypkXnLB
 09LgnjK7rRLBbGsv0vqg02YaDnMI1uoGntf3wbcilLWtye4Fy9lrYqdXg9mkX1jalXpX
 pVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dt2TIAnb0hgPqs5E3ITetwBw03oi/KH3u9qpCDk2YIc=;
 b=SYSIK4n53jOu2AXcv8Hf3XMg+4aP4dtG+nVVRR4u/HQbGI1L0GuaeDv4eRa0d6sSDz
 +PdTj4MRgPfTfuBMUVeeuTxUkPeG7fYcuevHJuzJYqNEzLCWJEkmPuQqWK0lDsujcRiF
 n72KEn0KK3mDgxG3sy0Z0vEh392LnjvoZyc6y6e/bSl8gFFL0/LvNbEqQuRFWL/nTs1x
 uHVoIlNbaxmaM1UJcWWjg/iaPBT12KVMhjmjstQcnIqpWYh7be9Jow2a1HV7ep15ywzc
 p46hdPm4QL/KDpXix/rFlrnlIJycq0vDc4unnQQuCWe9bNKwi2E0M50gV1rQAxTO35Aq
 fMcg==
X-Gm-Message-State: AOAM531zC7ykOWafJQRfVOWfn04zN62oKzM+s/oGDeJlXvo+E6CRzNEF
 RK5xoT21ZGsLpUygpjLjVmpPZA==
X-Google-Smtp-Source: ABdhPJwxapsCu4s5/opiNJQ1tveKgMBQM6nggLxpg5XCcMpIT8JTP2LSc/eToaPcGR8ftKaNzRfOoQ==
X-Received: by 2002:a1c:1907:0:b0:380:f6ec:4daa with SMTP id
 7-20020a1c1907000000b00380f6ec4daamr14950116wmz.50.1646077255350; 
 Mon, 28 Feb 2022 11:40:55 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:55 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 16/16] crypto: rockchip: add myself as maintainer
Date: Mon, 28 Feb 2022 19:40:37 +0000
Message-Id: <20220228194037.1600509-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114056_733387_F2B108BA 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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

Nobody is set as maintainer of rockchip crypto, I propose to do it as I
have already reworked lot of this code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index db8052bc1d26..b1b2303ac285 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16828,6 +16828,12 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/rockchip/
+
 ROCKCHIP I2S TDM DRIVER
 M:	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
 L:	linux-rockchip@lists.infradead.org
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
