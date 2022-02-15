Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57802C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 19:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/S3GAR0DbSnaxMjbJm7SmOv5oOpWQqtnbjFNeHej8A=; b=zbe+66O/TMltBn
	d+/LBA2Uqi9Yu+2pcLen8Qab23KtZpkcr3WjFpwtXzfJQxMeqCEN0bGGr2FLB5X1LwCKlSk6qFogj
	Ih8gs5GgVVFHq90EAroFiisAJvSmXC6Y66HLWhCuFQ7D0zOvIDJVBaSFKXBTbZeeqr4Yf5fLy0ji9
	JMff6OVQREp0vB6XXR59UOS/5fPeDzvPO3V438PMvO5MyM/3lDJpQ/shaz2FTnVnu4HIKFIywzYyy
	W0YH8LP78XhEYMZdqd0JIMWBE0BH43dxFeriK81eFkLy5gO5sE/7Ntco9jVmeIkOMhoIDNq4m1X2u
	2t7ecvljduYqJHfk9v6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3qk-004Q7y-T9; Tue, 15 Feb 2022 19:50:58 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3qL-004Pyk-Gk; Tue, 15 Feb 2022 19:50:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 52A861F44D43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644954632;
 bh=WaWP9B+un5FNgYWQUCXJJ7L6AqvP7oAE4hm3PmmoYiw=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=mIO/s3MoJtz1pHhjjGx2jxDwW8VPPhtT7dhTTqvxj8RdEjinbeHun6FDsSVL3U7pf
 Co32UM1N5zev3UtXgOnrOF8K9M7lCkqbJMmp5kooHK3/lebl3xAeyH77wIt1+b8tCN
 PGFpkJ5YWHsZyK8A9lsjynyYxH2oT8Xeu9nKRi5/G9DAZhCuwnv2tCihL4a+DbshyB
 jCkPnrPecjfVBn53/XRi18UVxDTF0zR2k2y4+jJNDv78mkEDVMtKJj7R8wEOyYJDW6
 wAKLD8ukNwunAaCQ8iixgNq8CNd5N9wLkybnpPo2kvp5cYR84NFGCMI2WUom6Q8SFt
 qmVUk6KPPwFNw==
Message-ID: <81997cce-bd63-7c95-0f5c-9b4c9bb7699a@collabora.com>
Date: Tue, 15 Feb 2022 22:50:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 10/23] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-11-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-11-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_115033_719111_6707424E 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

MDkuMDIuMjAyMiAxMjo1MywgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gKwloZG1pLT5oY2xr
X2NsayA9IGRldm1fY2xrX2dldChoZG1pLT5kZXYsICJoY2xrIik7Cj4gKwlpZiAoUFRSX0VSUiho
ZG1pLT5oY2xrX2NsaykgPT0gLUVOT0VOVCkgewo+ICsJCWhkbWktPmhjbGtfY2xrID0gTlVMTDsK
CmRldm1fY2xrX2dldF9vcHRpb25hbCgpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
