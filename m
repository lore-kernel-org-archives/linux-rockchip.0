Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7BA0C83F3E
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 11:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VF1lykscLC9b63hqnGzLEvuUSkrZRGjK8dkITJE0tXc=; b=U5bgdLai8lva8Y
	wgR/cI869qzTL/sMNiRVre79T9FNrP5Oy8nq4Y8HnTp6EVasUzP9+Eiq1hQL8uK1BvzwNjRdsuDNZ
	0xrGAlxrsrteg6Pr4Ga9qRQQO0+tf6T/Llk+3rKgA38yFVOL7WBYdTmTp5i8LouFzMD1zohQn/D8O
	cUtFMBkOq7dUxHgm2KIuHn6pElGfR7vk2JuVBz7q8XMg4NqL6J2efJcQP/rd+nAQcDcxCC2K5GdXS
	dcwBgIZbkTRmJqt4nN1i0q1ZJ8kxy44w1zolDQyZOoNqTs7CyNC3MxINlY3ZDwrYqylh9TjJHRmsh
	H7owd5U49uL02kRlv3cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucjFL-0000000CQqg-2n8n;
	Fri, 18 Jul 2025 11:27:23 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucijU-0000000CMJS-2nEn;
	Fri, 18 Jul 2025 10:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752836067;
	bh=DcifpRdDner2fj6W9Zx9zgD04arAmO1TSTumNsIisT8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KCNOCUkYes2/54fgCGIHjrDjFy1DHXqXEPSFz0wxCD0pgcCFoq5lNZqMtune+HtNi
	 6m3rrIbFN4ZN8tfSAdotWU+S/NMb0lvy2bQA00sMYPR0JYsmRBeKZr0roUpGRAAn+U
	 6TE+9rqibOHkcRCM5gLQkqwzHnd4d8pRS/7DCRxOsA9pofco1BUulAaICf0dCAtrwh
	 dfvXUWov5cKabLimFYIXktubZEhG3DvI02WUdq3/4iHa80iydeXJmgskUePPROwd0L
	 C/cSdQxVZ5r2pRq3oFPukmGciryaHexfbzdtMF+6+Bn+mnsC0e5f07q7cxCv+HB0qJ
	 GRzkIXRIrW8uw==
Received: from debian.. (unknown [171.76.80.183])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B702417E1522;
	Fri, 18 Jul 2025 12:54:23 +0200 (CEST)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	robdclark@gmail.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	lumag@kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/7] drm/ci: reduce sm8350-hdk parallel jobs from 4 to 2
Date: Fri, 18 Jul 2025 16:23:54 +0530
Message-ID: <20250718105407.32878-3-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250718105407.32878-1-vignesh.raman@collabora.com>
References: <20250718105407.32878-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_035428_844236_0AA866A4 
X-CRM114-Status: UNSURE (   9.99  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIHNtODM1MC1oZGsgam9icyBhcmUgc2hvcnQgYW5kIGVhY2ggdGVzdCB0YWtlcyBhcm91bmQg
MuKAkzMgbWludXRlcyBhbmQKdGhlIGZ1bGwgam9iIGNvbXBsZXRlcyBpbiBhYm91dCAxMCBtaW51
dGVzLiBSdW5uaW5nIDQgcGFyYWxsZWwgam9icyB1c2VzCjQgZGV2aWNlcyBhdCBvbmNlLCB3aGlj
aCBpcyBub3QgbmVlZGVkLiBTZXQgcGFyYWxsZWwgdG8gMiB0byByZWR1Y2UKZGV2aWNlIHVzYWdl
LgoKU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbCB8IDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9jaS90ZXN0LnltbCBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAppbmRleCA1
M2QxOWZmYWFmNjEuLmQxZWYyZDkxZTdkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Np
L3Rlc3QueW1sCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbApAQCAtMTg1LDcgKzE4
NSw3IEBAIG1zbTpzbTgzNTAtaGRrOgogICBleHRlbmRzOgogICAgIC0gLmxhdmEtaWd0OmFybTY0
CiAgIHN0YWdlOiBtc20KLSAgcGFyYWxsZWw6IDQKKyAgcGFyYWxsZWw6IDIKICAgdmFyaWFibGVz
OgogICAgIEJPT1RfTUVUSE9EOiBmYXN0Ym9vdAogICAgIERFVklDRV9UWVBFOiBzbTgzNTAtaGRr
Ci0tIAoyLjQ3LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
