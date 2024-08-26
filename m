Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 744D5C5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 23:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=93X+itlhP3/osGFbX7EB/RARDa4qCmW1LOUeF763+98=; b=gHB6zJqPcpzC0e
	IwDdrZS0/rHJFAeOd0PLSquOk+fdo/1GZt41eFoj6wF46mG8dz0T1gzLyiubt2k+O682A/DIawyZM
	kAqQ9rRPYziRJBFXajyUw8I+y4DIIGfH5SOdh5TQltmIASXf/QG5Cp/1pIa32vkxcymyNflTdOP1W
	p5u4FjB8A+xT89XnHYiAnsgARoynBjeAg0gPlOJ/mbPVBpEfZgM/G3hd6d0nSQDaUKs2wGUWqf1/2
	InL1DXhmVT8dwf5cQ73iviX5RE3NfBAy/6ZRlCqOLMg/f2G247vEFDn5fuD5ACWmdY6dF75SmN+ot
	7dGRk2bxSEtgUcVHnAng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siioI-0000000976X-3bb1;
	Mon, 26 Aug 2024 23:07:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siioF-0000000975a-1aBE;
	Mon, 26 Aug 2024 23:07:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724713648; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=C9IHZ8gRUJHQEjPa3DWNImYwv5b7A5bqNh/zuZVYddWHi/iamz1esQW7PVpDqs5kFhZxuepA26jy+72nczNP4b0+QjVaLzeeuNrW95UY4M0nAcUwj289TXqjCiIaaSqYcNL22l92sES/h6PXs5IvqczCCSL2z85ykiGMBn+0kmA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724713648; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=O4UgvPlxUIocUclKtFW+PPXZ5p2TpKUAXhxXfnHWxSA=; 
	b=epQ1jqub8wIGQXeXOv5a1HmWNU3wQqqUpNcd2XbNamvNN8YOoIck1Fyuj0d5O8pWfjJk/GTiVNsqeMPTKPBXzHCYHCPGNeK3GOaRTXs5RaUB0yrbcEkr2EkM+ldjyopl6Ur4A7luDJ6WqY57RClMzdnn4oHDYS+OA0IQGtZs2e8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724713648;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=O4UgvPlxUIocUclKtFW+PPXZ5p2TpKUAXhxXfnHWxSA=;
	b=J3KyELADNktUDvd59M2fuuGLX6fl3YXdlgXiW3q3HAYqXQFbTWiThuCTISEhBgFo
	oGpS1gNHGH3mCOYyIP5T6/DHkc9grjKbnDhGEe+kbDrPMkS58VA36Hdx2nNl8rWPIpJ
	2PnY08RJFudIQ+ILx1z52m/VfeCnfZYeDGPJODrY=
Received: by mx.zohomail.com with SMTPS id 1724713645980482.61635936819255;
	Mon, 26 Aug 2024 16:07:25 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/2] Fix compatibles for RK3588 VO{0,1}_GRF
Date: Tue, 27 Aug 2024 02:06:49 +0300
Message-Id: <20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIkKzWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDCyNz3aJsY1MLC92yfN30ojTd5PzcgsQSXZMUo2QLk5RkcwujJCWg1oK
 i1LTMCrCx0bG1tQBVm0zRZgAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_160739_503837_05C12315 
X-CRM114-Status: UNSURE (   5.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

As Conor noticed recently [1], RK3588 VO0 & VO1 GRFs incorrectly share
the compatible string, since they are not identical (though quite
similar in terms of layout).

Provide dedicated compatible strings, as a follow-up.

[1] https://lore.kernel.org/lkml/20240821-stretch-scam-09d7adc08a4c@spud/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (2):
      dt-bindings: soc: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF
      arm64: dts: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi           | 6 +++---
 2 files changed, 7 insertions(+), 5 deletions(-)
---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240827-rk3588-vo-grf-compat-4d2c84dc782b


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
