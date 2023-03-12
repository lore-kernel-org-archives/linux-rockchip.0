Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02CB5C6FD19
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbiNCqUQOcET5k/g9E75tW2gd7pW70B+4o1k650lf3M=; b=4Br6sG6cVlQYtM
	Mhy75wq9CYAfZ+yGp2KcXuWODhNd1H8SIjv+e95np/vBTfB8vUC2fG3dRccnRKJnKaePIYnqaJC/T
	ARiaPbv9kELkQTKsSh/kzPeLoO12Io8n9wjzVh3lgD+LzHfqRILxLUJEpn+xgEyhDhQJM+pbSxf+X
	OS7YTmW9/hp0J9fYaCC8HBnD53o7U26MDzfUwzt3LVEJesoSWmIlpI70HFVm+nl/QTAEwK4tvKO7b
	5hhTgFiVemHaXHqJTPi8GgyrpgCjo4H/qoT3815SWK42a7N/yKKP/GNuetC1OT20n3pmK7z20/ZSj
	r/mhtkDs1Zs1dYk4N6Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM44-002Xuy-QR; Sun, 12 Mar 2023 13:48:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM0v-002WGd-A5
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zz58BecKJebSQJXrlMMgq2KIDHoDh3NjA0FUivRICtA=; b=EWs2YCVUbeZs3pZEgvXSbv+bPL
	IzufW6zoz8YY8eJcMvzkp6CxHYhIoUq/Xh9FWsyK8uvyRxnpv4xSvli3rP74VhyLKdPji39qN7uN7
	2d6qHVCYsp1+zXbsI1lzyxc5mH3OcG0EQWB7191Sc9g058VBHix+nmIrg4HLYi9dPuQmhFK+LjLE+
	ljqd67mKSeUMXiFAvYdr+tjYqbTHQzYe0sRM2YBSdMrAH+qIL8Y8hKAeYzfcUnKuzoMoQXh1eEG97
	u2gxH7Byuep4nul3mNuiPQMMR9vACNQgmOH7xSagAyh3V76bVtVXKgF9zSQp/yhBlGh1Pv6n/5QLe
	d+RrsSwA==;
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbLWj-0011C5-0J
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Mar 2023 13:14:22 +0000
Received: by mail-ed1-x52a.google.com with SMTP id cn21so8317387edb.0
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zz58BecKJebSQJXrlMMgq2KIDHoDh3NjA0FUivRICtA=;
        b=W1k9mfbGVEpQdjChyYJDNiJ9VR3PjfpZ73Gq0BDfuM4iMuvTnkBm2I6srbznEPwaJP
         THlB69G1mME7ojXh1+UnqUHgcM8NL3ZZ2wZAuhHFPilxMAer5hLfyLrT4pIdLtcQPfeV
         aXcgs+tx5X26yKopWPTDySMt5uxnpFkncJirZZQ3J8ya+8XQBT1WQwS+7uUljarXpIf8
         QlxnyaM/KalsZOSCpQHfqVfSJqyUGSLwkvQr84rm96y4zG1J7ohxebgv43j44n8p6esQ
         bTG+gP/Vnvv6vBEFNgPDZCQbrGPBjuTxP7W5ds8ev/FiQGo9mQ74eR+q80XVqAmL64o5
         jNuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zz58BecKJebSQJXrlMMgq2KIDHoDh3NjA0FUivRICtA=;
        b=DHuKZw6Qc5PH3++LLcpq47BKhrTPnHxikpOpcwH+i2C3EBaJmFRLsaJoPlscnUTXO5
         YtliCOVXf74eOdxZlyu1aSpQQ5kqdgHVMq+U9yvSFjtc4H3GJe8NXUOPu1q+o4RYuUgM
         s1TgOf++bDIcIxK9NtxU/Y3sgKQBVKXxMDNj/DbQLjZNCF+gpJuUk+UEktwX35EhszQd
         8fowpRHNYYHktpEBRcSrYsxnS1Qf+oo0DffxfATzBQnwr0wy1HsejMSx1ZcV58FXmUtQ
         IPM3AjfPbS8MKJegKPSHhoGbZehCluqxmhcmuPHW13LMLFtHpMheOU+WzC3Uy0tDaawG
         FbnQ==
X-Gm-Message-State: AO0yUKVy+T736kB7feaOAJ6FBOUCe7bABAuoz6lIoeqPxdr8ePiw8WJ6
	FoS5zCi/yI50NnuSLSi97550yg==
X-Google-Smtp-Source: AK7set+m0iyDhLybbQra1Mh0tgoInoxAaZlg1joIRnjfCJVkuIWQPofjhK4P4YWPgVu74VDSkXKUDg==
X-Received: by 2002:a17:907:2d0d:b0:903:9733:5ef with SMTP id gs13-20020a1709072d0d00b00903973305efmr38046533ejc.21.1678626856739;
        Sun, 12 Mar 2023 06:14:16 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:14:16 -0700 (PDT)
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
Subject: [PATCH 27/28] media: i2c: max9286: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:17 +0100
Message-Id: <20230312131318.351173-27-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131420_674552_477DC55D 
X-CRM114-Status: GOOD (  14.29  )
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
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwphbHNvIGZpeGVz
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvaTJjL21heDkyODYuYzoxNzA3OjM0
OiBlcnJvcjog4oCYbWF4OTI4Nl9kdF9pZHPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJy
b3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL21lZGlh
L2kyYy9tYXg5Mjg2LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2kyYy9tYXg5Mjg2LmMgYi9k
cml2ZXJzL21lZGlhL2kyYy9tYXg5Mjg2LmMKaW5kZXggNzAxMDM4ZDZkMTliLi5lZDkzMmZmOWVj
NzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvaTJjL21heDkyODYuYworKysgYi9kcml2ZXJz
L21lZGlhL2kyYy9tYXg5Mjg2LmMKQEAgLTE3MTMsNyArMTcxMyw3IEBAIE1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIG1heDkyODZfZHRfaWRzKTsKIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBtYXg5
Mjg2X2kyY19kcml2ZXIgPSB7CiAJLmRyaXZlcgk9IHsKIAkJLm5hbWUJCT0gIm1heDkyODYiLAot
CQkub2ZfbWF0Y2hfdGFibGUJPSBvZl9tYXRjaF9wdHIobWF4OTI4Nl9kdF9pZHMpLAorCQkub2Zf
bWF0Y2hfdGFibGUJPSBtYXg5Mjg2X2R0X2lkcywKIAl9LAogCS5wcm9iZV9uZXcJPSBtYXg5Mjg2
X3Byb2JlLAogCS5yZW1vdmUJCT0gbWF4OTI4Nl9yZW1vdmUsCi0tIAoyLjM0LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
