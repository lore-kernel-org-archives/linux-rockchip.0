Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FBD5C02192
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 20:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQ/n8fCyR2FsQXhHRTNa9kstQFS2VeVa4b9t3QfFOw0=; b=wgiWJSegMOj4Y7
	KkSUCQ1Zp5TAYZ07IPfzKshYDcGFUcihV4rqHyeVi/Td2xg+U3NRcq/19OOmm90OBWNp5pP5IXSmK
	haxOUSJxQg/8UeibbTY7QI54lC89SAbkHZQYNlPxug5o0CROuV/P9CKJESGLIsboSd1jOZ0hmWlZ6
	0lsFaNJecIVW3Ct2ytTG8QWVotlCef+MpZOUA1QW1YBj97ySnhuL+c3sW6AQPxCA0W+s0Zl/1yAMW
	5Spd09ZZowK+mFF0nm1e3DSOdXRChVyAsVjdldMvuSYKIjk4LBzvps4Zl17KVKE+1SLu/OiUcxqao
	vOH3GyIGHCblWlgyGwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfljf-00000004VoM-21HM;
	Wed, 05 Feb 2025 20:10:59 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfljd-00000004VmY-2Hbu
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Feb 2025 20:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1738786256;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t4JTcbNp+Wagg2SIneI8fYXiMNdF7Wii2BuVH7MOT/o=;
	b=HJ4184X07IS/xlUlI9bOuLeypdTHVSH7Agd8KVyr5LfSVUzLQpAG8hRp7WcNwj7vIp91vz
	pyke8GcH5iYEBdOOOZBfkqfELVOiFbx1JDSjQ925CfQlfqvfy1QS1O4wsTIBIX3TCIsvI9
	nPA2FEkJJw/gQT1fJThBgrgqlNsPLME=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-217-J9TRc9eAOW-bR9FCGXQN-w-1; Wed,
 05 Feb 2025 15:10:51 -0500
X-MC-Unique: J9TRc9eAOW-bR9FCGXQN-w-1
X-Mimecast-MFC-AGG-ID: J9TRc9eAOW-bR9FCGXQN-w
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4FEF219560B9;
	Wed,  5 Feb 2025 20:10:46 +0000 (UTC)
Received: from asrivats-na.rmtustx.csb (unknown [10.2.17.21])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id EAE6519560A3;
	Wed,  5 Feb 2025 20:10:35 +0000 (UTC)
From: Anusha Srivatsa <asrivats@redhat.com>
Date: Wed, 05 Feb 2025 15:08:04 -0500
Subject: [PATCH 08/12] drm/stm: move to devm_platform_ioremap_resource()
 usage
MIME-Version: 1.0
Message-Id: <20250205-mem-cocci-newapi-v1-8-aebf2b0e2300@redhat.com>
References: <20250205-mem-cocci-newapi-v1-0-aebf2b0e2300@redhat.com>
In-Reply-To: <20250205-mem-cocci-newapi-v1-0-aebf2b0e2300@redhat.com>
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
 linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, 
 linux-doc@vger.kernel.org, Anusha Srivatsa <asrivats@redhat.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738786137; l=1618;
 i=asrivats@redhat.com; s=20250122; h=from:subject:message-id;
 bh=Ic1nlkPD6Mj8TJZ8m8wZ6mlAKj2uSChvdOZ/TLjamAU=;
 b=adLjfrtU6tC9pfV0EExepCHd/cHlwcDiR8sbt1XjWIwBum8LAHOiRxCD/EMVGcFQQXziRnb29
 x8JlJrZjb8PAYAdaE1cgkvNZAkDkmELMURVlIvw+29XV+XY1nLcY9NG
X-Developer-Key: i=asrivats@redhat.com; a=ed25519;
 pk=brnIHkBsUZEhyW6Zyn0U92AeIZ1psws/q8VFbIkf1AU=
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: beA8BoLcB1l5kZ7atczLbLwSzgbYsr-kUJy_EFKl1M8_1738786246
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_121057_648785_E8DA51CD 
X-CRM114-Status: UNSURE (   9.97  )
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

UmVwbGFjZSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UgKyBkZXZtX2lvcmVtYXBfcmVzb3VyY2UKd2l0
aCBqdXN0IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSgpCgpVc2VkIENvY2NpbmVsbGUg
dG8gZG8gdGhpcyBjaGFuZ2UuIFNtUGwgcGF0Y2g6CkBydWxlXzFACmlkZW50aWZpZXIgcmVzOwpl
eHByZXNzaW9uIGlvcmVtYXBfcmVzOwppZGVudGlmaWVyIHBkZXY7CkBACi1zdHJ1Y3QgcmVzb3Vy
Y2UgKnJlczsKLi4uCi1yZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwuLi4pOwotaW9y
ZW1hcF9yZXMgPSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoLi4uKTsKK2lvcmVtYXBfcmVzID0gZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsMCk7CgpDYzogWWFubmljayBGZXJ0cmUg
PHlhbm5pY2suZmVydHJlQGZvc3Muc3QuY29tPgpDYzogUmFwaGFlbCBHYWxsYWlzLVBvdSA8cmFw
aGFlbC5nYWxsYWlzLXBvdUBmb3NzLnN0LmNvbT4KQ2M6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBw
ZS5jb3JudUBmb3NzLnN0LmNvbT4KQWNrZWQtYnk6IFJhcGhhw6tsIEdhbGxhaXMtUG91IDxyYXBo
YWVsLmdhbGxhaXMtcG91QGZvc3Muc3QuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0
c2EgPGFzcml2YXRzQHJlZGhhdC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMg
fCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zdG0vbHRkYy5jCmluZGV4IDU0YTczNzUzZWZmOTg5MDIwMTJjNjAxMjkxNGZhOGM2NDgyYWZm
YmQuLmJhMzE1YzY2YTA0ZDcyNzU4YjlkM2NmY2Q4NDI0MzI4NzdmNjZkM2EgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRk
Yy5jCkBAIC0xOTAwLDcgKzE5MDAsNiBAQCBpbnQgbHRkY19sb2FkKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZGV2KQogCXN0cnVjdCBkcm1fcGFuZWwgKnBhbmVsOwogCXN0cnVjdCBkcm1fY3J0YyAqY3J0
YzsKIAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0YzsKLQlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsK
IAlpbnQgaXJxLCBpLCBuYl9lbmRwb2ludHM7CiAJaW50IHJldCA9IC1FTk9ERVY7CiAKQEAgLTE5
NjYsOCArMTk2NSw3IEBAIGludCBsdGRjX2xvYWQoc3RydWN0IGRybV9kZXZpY2UgKmRkZXYpCiAJ
CXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocnN0Yyk7CiAJfQogCi0JcmVzID0gcGxhdGZvcm1fZ2V0
X3Jlc291cmNlKHBkZXYsIElPUkVTT1VSQ0VfTUVNLCAwKTsKLQlsZGV2LT5yZWdzID0gZGV2bV9p
b3JlbWFwX3Jlc291cmNlKGRldiwgcmVzKTsKKwlsZGV2LT5yZWdzID0gZGV2bV9wbGF0Zm9ybV9p
b3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwogCWlmIChJU19FUlIobGRldi0+cmVncykpIHsKIAkJ
RFJNX0VSUk9SKCJVbmFibGUgdG8gZ2V0IGx0ZGMgcmVnaXN0ZXJzXG4iKTsKIAkJcmV0ID0gUFRS
X0VSUihsZGV2LT5yZWdzKTsKCi0tIAoyLjQ3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
