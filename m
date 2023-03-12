Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E6CC6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVHlp09cx8E9TQW+JbzCorznbfjzatYnwvDeW+pX07g=; b=mEzaOQTFSfohCr
	O0E1h1JShIP135Hbji9u2SSpVuBWzm4aGfOaOfjnNlOtP0HHQxIyqxufq5gICNJTFIFTK3mLF6r7D
	guhpoPs8orRCoEphrClwA2PWORe/tcTDFGYRN9OGB8SSUoO7cmmpwNcOJ4MFTC4bruwFskgVCq3Rp
	t7Ml2i/ZYluL1Th7wUY8OEKzB14QF/VaLIam3bxo/5xuwuxRmNGWITPvQqS8P8+iHMdqq4FsNYI7A
	pbDUPQsiyul+Ko45vmrU4dNRqLKC/cilMqlQPcrrM8vtEszRVx4uvE5htny8jew5fRQO4tdQ29QuE
	wdL+2kGCxfAsWDPm1xNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLW0-002IPm-8M; Sun, 12 Mar 2023 13:13:32 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLVw-002IMT-VJ
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:13:30 +0000
Received: by mail-ed1-x534.google.com with SMTP id r15so11312300edq.11
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mjvZGlI9gqxKHJb6Zb5Fkc5S1/fsh/NgaCfi/T9v11Y=;
        b=lKlYxxhYCKn0JxPwkYKx3vASmrkH+srcYSRHily2tzLUxFl3QklS8Q4NAB9udLBZho
         dDGPZTBINPga+76lbL33R0Ue0ftkVUUQLxJzi4w9KwBDni2xOXZwaZzbSux02prlPDHP
         vJ7nGGelocPKxiZAPsodErx2JPF3u6mnEqcDFc2Wm/P0mWtV1EylhbCj0fTAm6z6v6t4
         CdJ8Mm8qbbJwTOuhYW9bDTdnFKTImZMFdRSyvSmbjiOQG5UwzZqJrRtqjTlrTWLJdknY
         zHGpr1crUtQGblfLv3akSTMscNClIduQLP5C6mBhyVCwurXuWWNgdYQ93BE30x0tKpwz
         Z2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjvZGlI9gqxKHJb6Zb5Fkc5S1/fsh/NgaCfi/T9v11Y=;
        b=6Xb59g8Pb6vUGAJ333jRD8M+fsdbOWYkdysWjmgRAl4tLtz4uMB914a9YE9M8HRc+R
         qlvfgLq999l8+gidhyZLz24tz68eQocHVNvHy0IJMzdvkKQ7UYTnIXcyxlkXJBgNsBXl
         90wYUDO5qqnSJweE2RdY3jcK48JSrL543LkMm9PZNcTjSQvfPCsx23oHEEekNbeq7NIo
         o/BDC/Y2nHMgF+4J3IEcAswYqCLdG7k8M9FyGIWvvup2ru1OEriUDMFDUyM1JWROUbTc
         8CCQL7oqmMxYtsjyv01T+8NTc0o8+FrPyXP0VvI3qem+T2YPEvqNLC4JMgnu3xs35SLg
         +VFg==
X-Gm-Message-State: AO0yUKVeQZLq+xCOQorPeuHQsRd8As6XnME+s7taTkCiqrjkoP9E3ML4
	FI7vUSxgf/HbSpj1sAJmbhpv1Q==
X-Google-Smtp-Source: AK7set+EVWjyvBDbBmHCcExD0NtojGt3goUEamDttcbYP3oPo0KNy0WQIuIA/C83vuguDS3t+796Xw==
X-Received: by 2002:a17:907:98e6:b0:929:43b5:8e69 with SMTP id ke6-20020a17090798e600b0092943b58e69mr166365ejc.40.1678626805682;
        Sun, 12 Mar 2023 06:13:25 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Joe Tessler <jrt@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/28] media: cec: ch7322: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:12:51 +0100
Message-Id: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_061329_122435_863921A4 
X-CRM114-Status: GOOD (  13.95  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL21lZGlh
L2NlYy9pMmMvY2g3MzIyLmM6NTgzOjM0OiBlcnJvcjog4oCYY2g3MzIyX29mX21hdGNo4oCZIGRl
ZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Ci0tLQogZHJpdmVycy9tZWRpYS9jZWMvaTJjL2NoNzMyMi5jIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS9jZWMvaTJjL2NoNzMyMi5jIGIvZHJpdmVycy9tZWRpYS9jZWMvaTJjL2NoNzMy
Mi5jCmluZGV4IDM0ZmFkNzEyMzcwNC4uM2M2ZTY0OTZhMDAxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L21lZGlhL2NlYy9pMmMvY2g3MzIyLmMKKysrIGIvZHJpdmVycy9tZWRpYS9jZWMvaTJjL2NoNzMy
Mi5jCkBAIC01ODksNyArNTg5LDcgQEAgTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgY2g3MzIyX29m
X21hdGNoKTsKIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBjaDczMjJfaTJjX2RyaXZlciA9IHsK
IAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJjaDczMjIiLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBv
Zl9tYXRjaF9wdHIoY2g3MzIyX29mX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gY2g3MzIy
X29mX21hdGNoLAogCX0sCiAJLnByb2JlX25ldwk9IGNoNzMyMl9wcm9iZSwKIAkucmVtb3ZlCQk9
IGNoNzMyMl9yZW1vdmUsCi0tIAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
