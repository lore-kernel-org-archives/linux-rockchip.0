Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73364C04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fs7seINR2ST/BmCZHD5PEqvVFtH6EKwvWBWsxQ0Co5Y=; b=bx9iYSRuHND37p
	WNkc4yTbzqd4vAFUL00DhdcUtcgy4oXNguEuefyZLR6M+GxGm/zI8aSJm3AFtvieGB2vGIymwDGdZ
	A+dOHcnQMFETtbgc09xKAqODO+H81mWljXe5y1xRJKGO+OzMSdDPtHhgZIYM6cbI8xQXn+7Gt5DoJ
	ZiGO4vddgGhj+4Cfasa5c6YXWmbOxb/lU19V6p1CMTTdPmlFobvKFNQFf8+ncUmb7M69SlpbAAs3m
	0N9OOsyUSSlQNFjkkSE4j07HB3GFxwmAg1Xb0KviP2R5XP9aPkY7vOv2kp1Oc7dGfD9eveOHEddGu
	SYNcmvorEvcVD1+m3qJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXGV-00GVhU-Sw; Wed, 28 Sep 2022 13:38:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXGT-00GVgm-MW
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 13:38:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D928961DEB;
	Wed, 28 Sep 2022 13:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB624C433C1;
	Wed, 28 Sep 2022 13:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664372296;
	bh=QcHofT14wPhfiRplf578gZRladg0Y1dvJweE2jk5O2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JMs0EWanBHAivoc1Ta4sas9yD206ne6HPGvj3K/qgrt2FmiJ9pReyVHPhHsqzrqEU
	 kjoeACatCRQ15WFt5fUXfrG0synhOLkv2xC0qyCYDfnFlV6bWdWSuxPkGci7burnfO
	 BBFLbhzkouhSqELfxqB1no/d2WVMwPL8qMjq54+IrV1WvQIHWXVYJoGndKHQc1fAYU
	 RBMV8psyh59D/ZRx+MuKnPFxdUAAZjlSPZuG3eDb42nh6jQtmmPksq2sCAzP2QGC2q
	 ESMM0j53CnOle0TZeUZ0C7U1yfIbAHYPqjDirRLNaXHWPOrSFSNgPr7lYDPKQ6vXIi
	 VIB2ff0r+VWZg==
Date: Wed, 28 Sep 2022 14:38:09 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv3 01/14] mfd: rk808: convert to device managed resources
Message-ID: <YzROQZ2L1G1ax5Is@google.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909175522.179175-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_063817_788410_AC908390 
X-CRM114-Status: GOOD (  11.02  )
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

T24gRnJpLCAwOSBTZXAgMjAyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEZ1bGx5IGNv
bnZlcnQgdGhlIGRyaXZlciB0byBkZXZpY2UgbWFuYWdlZCByZXNvdXJjZXMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCA2NiArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlv
bnMoKyksIDQ0IGRlbGV0aW9ucygtKQoKRm9yIG15IG93biByZWZlcmVuY2UgKGFwcGx5IHRoaXMg
YXMtaXMgdG8geW91ciBzaWduLW9mZiBibG9jayk6CgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBK
b25lcyA8bGVlQGtlcm5lbC5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
