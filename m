Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 182C1C0218D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jan 2025 22:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tD9dIge791ESu/Nrv6sSc7ijoCGcZa7RaSc3nmN5AYQ=; b=QI2tbhQEo9B1im
	ZYoIIz/mdNRO2/C6kmoZ54rBRKRE+D/HL+kLd0L/RkHWgs9Xnu4wvtMEOQ+5BO3/Zc2DD6a1AXOtF
	k7Amxum1LDoR8mzU9l8rWHwUtP1bYXKh1g1OezNorfTn6oi7/j5xeHr16/09FVjNooK/V+7xza8H7
	2KhsN9U2Yi+m1/nBGztz5thdY4v4bdmh+4tK2FQtJyufq/irWUJqi7H1wcTEvS6yTkRKYj4AsBmGS
	RBwMBpxgChvQExlrWrhG2VavqJFnm/p1gmgeZuDjnayfSlbna5xH+9MHfgqGWYjMQv3PMN0o+CrB6
	dziPufJT2mH1mhLiR2Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcu8v-00000005y54-3Wdk;
	Tue, 28 Jan 2025 22:33:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcu8t-00000005y1j-2ijE
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jan 2025 22:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738103590;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4eOh+r5POEBIZHTbq+nHznMj04j4TeTNMfqN9ncpUe8=;
	b=LFsLAf3+RSy/McjcjBj3KBZMgbdXjP9t0lGRBYsQ/boZlOUSCbqsjQ7H31/PLWjL6YQyuI
	pPcx8VbICkILcINOCy7QNm2UqI//fee6inH2cNt/VmRHPgCBkFWs+QoivSq4vWEue6+ScF
	xm5tH+OtuPhIKPYqbBux4iW7i9/JOX4=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-JJiTDf_rMPiltZe2Gtxs5w-1; Tue,
 28 Jan 2025 17:33:07 -0500
X-MC-Unique: JJiTDf_rMPiltZe2Gtxs5w-1
X-Mimecast-MFC-AGG-ID: JJiTDf_rMPiltZe2Gtxs5w
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C65151800268;
	Tue, 28 Jan 2025 22:33:01 +0000 (UTC)
Received: from asrivats-na.rmtustx.csb (unknown [10.2.16.231])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 6E29418008C0;
	Tue, 28 Jan 2025 22:32:50 +0000 (UTC)
From: Anusha Srivatsa <asrivats@redhat.com>
Date: Tue, 28 Jan 2025 17:29:37 -0500
Subject: [PATCH 13/14] drm/vc4: move to devm_platform_ioremap_resource()
 usage
MIME-Version: 1.0
Message-Id: <20250128-cocci-memory-api-v1-13-0d1609a29587@redhat.com>
References: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com>
In-Reply-To: <20250128-cocci-memory-api-v1-0-0d1609a29587@redhat.com>
To: Joel Stanley <joel@jms.id.au>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>, 
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>, 
 Xinwei Kong <kong.kongxinwei@hisilicon.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Yannick Fertre <yannick.fertre@foss.st.com>, 
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
 Philippe Cornu <philippe.cornu@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Mikko Perttunen <mperttunen@nvidia.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Alexey Brodkin <abrodkin@synopsys.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Jonathan Corbet <corbet@lwn.net>
Cc: linux-aspeed@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 imx@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
 linux-doc@vger.kernel.org, Anusha Srivatsa <asrivats@redhat.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738103410; l=1689;
 i=asrivats@redhat.com; s=20250122; h=from:subject:message-id;
 bh=4vxmIMCntNkLYWUXI5TlhVdnqmm2AsRbVZgcmO441nM=;
 b=5O8Ivj3HJZboc/7qkLN9ieN1tdgZ+256U7GLYJr170ZR/+aEj1nNMDOzAkFeg5anubD5oaxWF
 sGYOK3IPQARAgRjIsuLaaVG0kGOTrTsEWSIShMKxlngxbxGfGebRp+0
X-Developer-Key: i=asrivats@redhat.com; a=ed25519;
 pk=brnIHkBsUZEhyW6Zyn0U92AeIZ1psws/q8VFbIkf1AU=
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0eOxdMuwoFioRcumGZkEQAgznTlAYM7qFBUju2G6meg_1738103582
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_143311_787030_31EDAC51 
X-CRM114-Status: GOOD (  11.40  )
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

UmVwbGFjZSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2VfYnluYW1lICsgZGV2bV9pb3JlbWFwX3Jlc291
cmNlCndpdGgganVzdCBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UoKQoKVXNlZCBDb2Nj
aW5lbGxlIHRvIGRvIHRoaXMgY2hhbmdlLiBTbVBsIHBhdGNoOgovL3J1bGUgcy8oZGV2bV8pcGxh
dGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZSArCi8vKGRldm1fKWlvcmVtYXAvZGV2bV9wbGF0Zm9y
bV9pb3JlbWFwX3Jlc291cmNlLgpAcnVsZV8zQAppZGVudGlmaWVyIHJlczsKZXhwcmVzc2lvbiBp
b3JlbWFwOwppZGVudGlmaWVyIHBkZXY7CmNvbnN0YW50IG1lbTsKZXhwcmVzc2lvbiBuYW1lOwpA
QAotc3RydWN0IHJlc291cmNlICpyZXM7Ci4uLgotcmVzID0gcGxhdGZvcm1fZ2V0X3Jlc291cmNl
X2J5bmFtZShwZGV2LG1lbSxuYW1lKTsKPC4uLgotaWYgKCFyZXMpIHsKLS4uLgotfQouLi4+Ci1p
b3JlbWFwID0gZGV2bV9pb3JlbWFwKC4uLik7Citpb3JlbWFwID0gZGV2bV9wbGF0Zm9ybV9pb3Jl
bWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LG5hbWUpOwoKQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBh
cmRAa2VybmVsLm9yZz4KQ2M6IERhdmUgU3RldmVuc29uIDxkYXZlLnN0ZXZlbnNvbkByYXNwYmVy
cnlwaS5jb20+CkNjOiAiTWHDrXJhIENhbmFsIiA8bWNhbmFsQGlnYWxpYS5jb20+ClNpZ25lZC1v
ZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YXNyaXZhdHNAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vdmM0L3ZjNF9oZG1pLmMgfCA5ICsrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vdmM0L3ZjNF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vdmM0L3ZjNF9oZG1pLmMKaW5kZXgg
NDdkOWFkYTk4NDMwNjM0Y2ZkOGMxZTIxYzJhNGQwMGQ1MDFiYWI3ZS4uZTIyNzMzZjgxNTlhYTRi
MjQ3YTkxNWUyNGEyMzZmNjIwYmFlOTMyYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zj
NC92YzRfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS92YzQvdmM0X2hkbWkuYwpAQCAtMjk1
MSwxNSArMjk1MSwxMCBAQCBzdGF0aWMgaW50IHZjNV9oZG1pX2luaXRfcmVzb3VyY2VzKHN0cnVj
dCBkcm1fZGV2aWNlICpkcm0sCiB7CiAJc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHZj
NF9oZG1pLT5wZGV2OwogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Ci0Jc3RydWN0
IHJlc291cmNlICpyZXM7CiAJaW50IHJldDsKIAotCXJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJj
ZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sICJoZG1pIik7Ci0JaWYgKCFyZXMpCi0JCXJl
dHVybiAtRU5PREVWOwotCi0JdmM0X2hkbWktPmhkbWljb3JlX3JlZ3MgPSBkZXZtX2lvcmVtYXAo
ZGV2LCByZXMtPnN0YXJ0LAotCQkJCQkgICAgICAgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKKwl2YzRf
aGRtaS0+aGRtaWNvcmVfcmVncyA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5h
bWUocGRldiwKKwkJCQkJCQkJCSJoZG1pIik7CiAJaWYgKCF2YzRfaGRtaS0+aGRtaWNvcmVfcmVn
cykKIAkJcmV0dXJuIC1FTk9NRU07CiAKCi0tIAoyLjQ3LjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
