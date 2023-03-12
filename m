Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A946BC6FA99
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+JqVuMCQr3O0nloN458Uz642D5oBI3YNPYN1DQ2Dn4=; b=l5ZK6F1/47E+Wl
	+I85nynKX0Guu9C0sd1blN450gBFX9thbCzMMedWodwIkx65E479HQqbTSt4TPdZl6oodSAj6AsYO
	/SFmDvtxgemt+cyniyb37P5DozwH5DCPLKBFJrhcEugwl7GF0nzjlhrEKCCFmBumbTXtb/5bir9Ht
	tdrFMBHSh1zs1xZOBtHyyQ9yi+ulJyNbBWuLPW8TQmeGrgvaQllmqlOm/TgwzGqSLsUwiZ7R1EuiN
	tqp58VeipRyISIBvEjdvdiQU/YSsm8q4uPGIv7NW3bt5UPDT5fxS5NRJ4X3hBHXKdoYt+Rz+3rgFZ
	mskaCjEtuusu6g5geHYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLcK-002Loi-1h; Sun, 12 Mar 2023 13:20:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWK-002IfD-1d
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=htfDeYfzO9faOo04zE1zbbujaGC8tJVc0LLIWYl/0E0=; b=Ib2k1lBQ/FEWjsWqBvDLkOxyA4
	l4NkQPRFp9KVXEDMDX0nCEjN/SUKWa6bvAp4m534SAyCrSH/LKZxIvnuS/0JpZ5lPoBAMTwS7yWOe
	VBaw/B89lZD7hZOIQ7DT8xO+XDWoWKDkguxCOB3nyYsT3cajFRtm8dpa3jUbMQp0yJGZiXRKR4EAR
	HAOLyG+usr/Y2IqGHyPFoyua90t5WymXawDsFdicZikiOMKh9Xga3/v3vyLcyxuVoSw2XAEyvIfUM
	L4vzoF/RfIzuYGE//MQQ70KMve6EvdIKTth/1j2peQ9q9eW/8qAfgaDE+ypFsUuJG5+79UZzpeZiq
	g7ipChFw==;
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbLWF-00B3eS-8h
	for linux-rockchip@lists.infradead.org; Sun, 12 Mar 2023 13:13:50 +0000
Received: by mail-ed1-x531.google.com with SMTP id x3so38433269edb.10
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=htfDeYfzO9faOo04zE1zbbujaGC8tJVc0LLIWYl/0E0=;
        b=tWY5RRrl1f9P7YtLpyoXwinY0arcCPoS91VIZamWggOmJA3famcby5+OZgSd6D+3Kd
         eCD1W8dLgS+FdEzVc+bFFH/FHIRuGvvJD4r5wyOs9K3SqnlcXv2Pyztgd4ay1djF+lM+
         a8t+bz5kIbyuWGHoN4lV0N1gIwWkDD5MJJKQvznugy0sbFLCTV1ZL6gVO+8oOav3hUya
         khEHKs6qBFkXPUX+JbMR5N7HurufkoAZ9eGkLnCr88gbiFg1n3dRqmAlnsPFAD8f20Uw
         /KWfOLBYYz6YW1zCZ2igu5mQ5/plPLyE2zQRCvIhjOFZXsYHGYEV4R7EwsQjMFRUaukp
         k9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=htfDeYfzO9faOo04zE1zbbujaGC8tJVc0LLIWYl/0E0=;
        b=k5MyC5PSU0xK1kwuZlxi/mkexJtCb8Ha0ipXDkhRJ8H3YcvEenf84bwC4QRMCcKoo/
         KlhzHfnE4uw9sTpsDWBtKbPhcFmZl+18Ya/2JKd+3yvW4QrCQTgCe0Yfy/NO2TgH8fk/
         Xp44tQymNYBKYTgkI3ASobgglVZHOBiNChOuC0pqvr6V1ZOCDRqPM92u3Gf+TFtbcIKY
         gtaljWHRfzh1ggzUzHGykgO9Nyk4PuQZaymkQY31V5N9+sq465VVEjolWlVZdfvDgZAC
         je3ycU1DtMZTM8KW4x4/fTYjGgP0ZB9zW9xgMEb6xe28hrh9DA/MBHbp0jpC6+LRsptg
         JVRA==
X-Gm-Message-State: AO0yUKVG20r/qG9zKvICLgXVbRjCa6mxE3jNigMJNVBjR907/EJr6+gC
	+s/CSYvIUfjiNLfnTOcFwirxdg==
X-Google-Smtp-Source: AK7set8sFYEVlwjj96yBoYEcUC6q6umvvTijNA5/w5cBj5OSXSMnBWa3ubt3+oomwUIh2AE5fhzWng==
X-Received: by 2002:a17:906:d28c:b0:8e5:88ca:ebac with SMTP id ay12-20020a170906d28c00b008e588caebacmr31563524ejb.40.1678626823445;
        Sun, 12 Mar 2023 06:13:43 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:43 -0700 (PDT)
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
Subject: [PATCH 10/28] media: platform: sti: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:00 +0100
Message-Id: <20230312131318.351173-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131347_826703_148B7DAA 
X-CRM114-Status: GOOD (  13.65  )
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
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2M4c2Vj
dHBmZS9jOHNlY3RwZmUtY29yZS5jOjExNjk6MzQ6IGVycm9yOiDigJhjOHNlY3RwZmVfbWF0Y2ji
gJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0K
ClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0L3N0aS9jOHNlY3RwZmUv
YzhzZWN0cGZlLWNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3Rp
L2M4c2VjdHBmZS9jOHNlY3RwZmUtY29yZS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdC9z
dGkvYzhzZWN0cGZlL2M4c2VjdHBmZS1jb3JlLmMKaW5kZXggYzM4YjYyZDRmMWFlLi42N2Q0ZGIw
YWJkOGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2M4c2VjdHBm
ZS9jOHNlY3RwZmUtY29yZS5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3Qvc3RpL2M4
c2VjdHBmZS9jOHNlY3RwZmUtY29yZS5jCkBAIC0xMTc1LDcgKzExNzUsNyBAQCBNT0RVTEVfREVW
SUNFX1RBQkxFKG9mLCBjOHNlY3RwZmVfbWF0Y2gpOwogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgYzhzZWN0cGZlX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewogCQkubmFtZSA9ICJjOHNl
Y3RwZmUiLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIoYzhzZWN0cGZlX21hdGNo
KSwKKwkJLm9mX21hdGNoX3RhYmxlID0gYzhzZWN0cGZlX21hdGNoLAogCX0sCiAJLnByb2JlCT0g
YzhzZWN0cGZlX3Byb2JlLAogCS5yZW1vdmUJPSBjOHNlY3RwZmVfcmVtb3ZlLAotLSAKMi4zNC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
