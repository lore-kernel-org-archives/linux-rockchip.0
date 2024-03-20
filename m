Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36BD9C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 17:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLqhgQ4I14kosxdEFM4JonjJY/L6UM1EABSygfc7jnI=; b=Bo3gmAnh745llk
	Ki4oeze2LO+9bnhSdWNYJn/Eix3buQiw/uh5XiSbO3mZGCQm7ordhVQ+O3NuBGGAUgsxCPiJUU+hw
	NFtDJhPXDaDBp2y9zoddwg5tn8Ud5PwglIjCFE8vZw5FaioOEiYBeaAo+sFsZBb0aQAmy7r6saw/8
	xyT4TPFORtgLJ8qYJh1/QH+2guDev+37JMp6PigWhSnp0qW8d7mXBVIGdkGWZ5qwnpLcEWZL0e3ET
	ibzooi3XdgBZiFNwg3EkWiZBLoZwTqwFfbdO9YedcbSdMtnnl7RnOSq04B+suIZjz4BwDdW3aOFEC
	M5XJ2YembOEGxOr8pbqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmztA-00000000VkA-1BxR;
	Wed, 20 Mar 2024 17:38:08 +0000
Received: from [2a01:e0a:828:c7c0:e2d5:5eff:fe2d:8e8] (helo=luna.linkmauve.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmzst-00000000Vc8-0YiK;
	Wed, 20 Mar 2024 17:37:53 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id EAE16FDAD17; Wed, 20 Mar 2024 18:37:44 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: linux-kernel@vger.kernel.org
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev
Subject: [PATCH 1/4] dt-bindings: iommu: rockchip: Fix rk3588 variant
Date: Wed, 20 Mar 2024 18:37:30 +0100
Message-ID: <20240320173736.2720778-2-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_103751_344937_578DF9DA 
X-CRM114-Status: GOOD (  13.80  )
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

VGhlIGRvY3VtZW50YXRpb24gZ290IGFkZGVkIGluIGY4YWE1MTk5NzZiMzhlNjdhYWUwMmQyZGIz
ZTI5OTg1MTMzMDVlODAsCmJ1dCBpdCBoYXNu4oCZdCBiZWVuIGFkZGVkIHRvIHRoZSBkcml2ZXIg
c28gaXQgd2FzIHVudXNlZC4KClNpZ25lZC1vZmYtYnk6IEVtbWFudWVsIEdpbCBQZXlyb3QgPGxp
bmttYXV2ZUBsaW5rbWF1dmUuZnI+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLmR0c2kgfCAyICstCiBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMgICAgICAg
ICAgICB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKaW5kZXggODdi
ODNjODdiZDU1Li4yYTIzYjRkYzM2ZTQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy5kdHNpCkBAIC03MDQsNyArNzA0LDcgQEAgdnAzOiBwb3J0QDMgewogCX07CiAKIAl2
b3BfbW11OiBpb21tdUBmZGQ5N2UwMCB7Ci0JCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4
LWlvbW11IiwgInJvY2tjaGlwLHJrMzU2OC1pb21tdSI7CisJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTg4LWlvbW11IjsKIAkJcmVnID0gPDB4MCAweGZkZDk3ZTAwIDB4MCAweDEwMD4sIDww
eDAgMHhmZGQ5N2YwMCAweDAgMHgxMDA+OwogCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTU2IElS
UV9UWVBFX0xFVkVMX0hJR0ggMD47CiAJCWNsb2NrcyA9IDwmY3J1IEFDTEtfVk9QPiwgPCZjcnUg
SENMS19WT1A+OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIv
ZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCmluZGV4IGRhNzlkOWY0Y2Y2My4uZGEwZTkz
YzEzOWQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKKysrIGIv
ZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCkBAIC0xMzYxLDYgKzEzNjEsOSBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBya19pb21tdV9kdF9pZHNbXSA9IHsKIAl7CS5j
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1pb21tdSIsCiAJCS5kYXRhID0gJmlvbW11X2Rh
dGFfb3BzX3YyLAogCX0sCisJewkuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUi
LAorCQkuZGF0YSA9ICZpb21tdV9kYXRhX29wc192MiwKKwl9LAogCXsgLyogc2VudGluZWwgKi8g
fQogfTsKIAotLSAKMi40NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
