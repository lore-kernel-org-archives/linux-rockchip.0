Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C11BD2D8FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 10:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvcbM0Fi/g+DylPMrwsc3IQLukeZbWkif6IL9rdWVio=; b=xSVFdXBqsnQCZ/
	6eJ7yDxVt5K20VXFETYQxj+SqqSqMEdp9Tml75ECtcAICRl9Ecav5VGFYKIlqf5q7L8IEzoYw8irg
	CiMM33ogxR/2cmKzB8LDkJY0Q4kpVK/tuxBQ8SYuWlm2ZN45Wro+Bov4vFvaEOy9hnXgXjbD/TRWy
	3Y8/ztOf5b2PXoaGTOpd5KWfi8PYY5AL6Ubqi6TJhRhpHV2zEDLwkodoIi8eTiJ8B+5x4kt+Hq1cF
	E/eOnRnY1tJOEya9LREor9Y0hopy8DKYaZsNET+QbTCI1lavC8q2VNbe7X21ip24+OzASu/lx0xZX
	jfWMHAOG5xn7QbdVxk6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkgYp-0000000E5AN-10AB;
	Tue, 27 Jan 2026 10:44:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkgYj-0000000E54p-3lXM;
	Tue, 27 Jan 2026 10:44:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1769510671;
	bh=amghtbTgMVRqGK2Q18rOlkKA8D2jlojijDT68se66Bw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AXD5bvGpt/F0r9E4jvJRKM/tuEXEAXbY0jvh9xi/Zvgeos+YVfF+94h52HzoRZhQS
	 91hRoX7xzdoMrv7x3LiqU1KEjy/gChTcRQrfJNdXhzquRyiLVEQEw4kcb6x6WUtVDr
	 3/lBoXrOZnJxp+EfqUi5dG6LaYmz4TXBp9jA6N+Hvi0rOrK30pdUuWGbsji3UPpyyi
	 kB3ywe2pnUQziXBiANARrDK4qBCxNgWzFHanLHYhsOBN8M6IAoR/18vEeVwq01e6Xn
	 NpJTOTS4Bmqt0VhsGKGXS4nQNdxTbROXlJbTu/mh5vD0ZS4twVggsXmO8TytBz3mnj
	 aDiIS4MFBqzqg==
Received: from vignesh-thinkpad.. (unknown [171.76.81.211])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 96B1217E1274;
	Tue, 27 Jan 2026 11:44:27 +0100 (CET)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com,
	helen.fornazier@gmail.com,
	airlied@gmail.com,
	simona.vetter@ffwll.ch,
	dmitry.baryshkov@oss.qualcomm.com,
	lumag@kernel.org,
	robdclark@gmail.com,
	robin.clark@oss.qualcomm.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	valentine.burley@collabora.com,
	linux-mediatek@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	amd-gfx@lists.freedesktop.org,
	linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org,
	virtualization@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/7] drm/ci: reduce sm8350-hdk parallel jobs from 4 to 2
Date: Tue, 27 Jan 2026 16:13:58 +0530
Message-ID: <20260127104406.200505-4-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260127104406.200505-1-vignesh.raman@collabora.com>
References: <20260127104406.200505-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_024435_931669_BDABAA69 
X-CRM114-Status: GOOD (  10.32  )
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
Z3B1L2RybS9jaS90ZXN0LnltbCBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAppbmRleCA4
NDE1M2FhMmFkNjguLjA1ZWNjZGE2YmI5ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Np
L3Rlc3QueW1sCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbApAQCAtMTYwLDcgKzE2
MCw3IEBAIG1zbTpzbTgzNTAtaGRrOgogICBleHRlbmRzOgogICAgIC0gLmxhdmEtaWd0OmFybTY0
CiAgIHN0YWdlOiBtc20KLSAgcGFyYWxsZWw6IDQKKyAgcGFyYWxsZWw6IDIKICAgdmFyaWFibGVz
OgogICAgIEJPT1RfTUVUSE9EOiBmYXN0Ym9vdAogICAgIERFVklDRV9UWVBFOiBzbTgzNTAtaGRr
Ci0tIAoyLjQ3LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
