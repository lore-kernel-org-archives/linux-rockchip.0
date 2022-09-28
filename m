Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D0F4C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 14:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6kq4wamTuiV17NHV2w3ZcjwM/Wa8cRCGmrMGZibiFM=; b=xGUS/6K6Tl8Yjb
	DKlOp6Y0RIpvoI4ycSY2TYJO0JZsYSmXJgEvkCJiaUhnM9RQo3rRJH3nxArs0HCFr5/zpO7q1fHMF
	Pi0Fct6s+ifbf2ApKHghnl9/vti7vAArFJ3pIKRrp6FEqNOakrEJBiNee8fGHqMHzcNHxheoro6Mh
	+4qnEdHFXno9YsROSoRBvnXjRWPXDBLgQN+wDDLip9+DBCVUWuX/aml9GO6gtGWAdLGPd8Bp90SPg
	rkNY1noCSBqULRQBh4y5XpfNAiU218A+h/Hf7VGPbjlIwYyid5SyPrqP4biVxJuBup7H4P6qKHjwz
	HwiOZONdAuWkZX9tNNMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXc3-00Gc6c-T0; Wed, 28 Sep 2022 14:00:35 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXc0-00Gc5J-WC
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 14:00:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A685DB820DE;
	Wed, 28 Sep 2022 14:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2FE0C433D6;
	Wed, 28 Sep 2022 14:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664373630;
	bh=CfgEVlx3/Vod/p/OGWDhEcXGvUTDa0gyZyjht1hrHd8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PzI0I2cyUAP140VnRktKSZ9/lSASgoZ2YMgtYJYulUOYJcfy9Qq2P6ZZyt9NX58sl
	 XWs2zVQsGdyDtXqHgHKwRHQtUhK1XHFx3Ur93+2+A9t7oLy/AXyvrG0/34m2+MyRzD
	 dBJ4mdpyzq06XZdQgEq/ndD7Zt5P7ry48efpZkShNeZig9P8oWAwMOOFfvXtUcbdLp
	 LDVwhi+auOPM7JuPWrdd5pwkxQUk0+adTdDIssIYp/zrh5Oulv070380ZhNdkiV2mz
	 IR4sq5q0hBb84w4NI70UXT/tLOCP8UdbP2ZBf7w8CdXlPEBke2PHq12dzSDBExlU6T
	 KCOB/2D3bY9cA==
Date: Wed, 28 Sep 2022 15:00:23 +0100
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
Subject: Re: [PATCHv3 06/14] mfd: rk808: replace 'struct i2c_client' with
 'struct device'
Message-ID: <YzRTd31dKC/RYBID@google.com>
References: <20220909175522.179175-1-sebastian.reichel@collabora.com>
 <20220909175522.179175-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909175522.179175-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_070033_196271_547EED4C 
X-CRM114-Status: GOOD (  13.05  )
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

T24gRnJpLCAwOSBTZXAgMjAyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFB1dCAnc3Ry
dWN0IGRldmljZScgcG9pbnRlciBpbnRvIHRoZSBNRkQgcGxhdGZvcm1fZGF0YSBpbnN0ZWFkCj4g
b2YgdGhlICdzdHJ1Y3QgaTJjX2NsaWVudCcgcG9pbnRlci4gVGhpcyBzaW1wbGlmaWVzIHRoZSBj
b2RlCj4gYW5kIHByZXBhcmVzIHRoZSBNRkQgZm9yIFNQSSBzdXBwb3J0Lgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL21mZC9yazgwOC5jICAgICAgIHwgNiArKystLS0KPiAgaW5jbHVk
ZS9saW51eC9tZmQvcms4MDguaCB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpGb3IgbXkgb3duIHJlZmVyZW5jZSAoYXBwbHkgdGhpcyBh
cy1pcyB0byB5b3VyIHNpZ24tb2ZmIGJsb2NrKToKCiAgQWNrZWQtZm9yLU1GRC1ieTogTGVlIEpv
bmVzIDxsZWVAa2VybmVsLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
