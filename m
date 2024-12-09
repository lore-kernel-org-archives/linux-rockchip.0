Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB2C1E7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 10:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xExkJnGi0E+3dHEVnXCw53dFs4W6Vzmrro8Ybe9czs=; b=yZ7Hy5Cl2PoShi
	tWSMbNDJszVNlA/IlMLWXqaDmM1MKfjajZGtABBdOCzGw8KYd3T/4MFDo6CG/wX368z6Cq7HDYBsI
	3yXRigaGabBjZ+JECGGsgZ+DeHohkunhHhUbrxDQRq5HuNnxpICCxmfbc+hTZ01rHMMKLhz0qyWzw
	nau5SwOBdnqCkLyMGlGhfOgMR6gC35afjocN85CQEAcvBt/gARlnGnpTLlhpS/S0FcimaR7SgNoZu
	sY1gILgUy3PBN9Tfgl7AZDq12jwBRbh/QLghe3/F7Tt2PRenYFlpHSaQNJ/pWJ/oKxvZUnw3XTJCy
	ltdyVUvQDY8UwCO1rJDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKav2-00000007GrW-246u;
	Mon, 09 Dec 2024 10:23:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKabh-00000007CX9-0IR0
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 10:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=U7R121uLFrazzqIE+a0MoWJrf13NWyWmaYCtY6uatv8=; b=B//pY+PkLMx7uqCuQT4hTHfnFH
	YJf+jXvz3rzmN1+7IJdFyD6t/kPAuSUbhyXLNJtHKuPj2jTfVKXJXuW1iIpJv+Mj2QUDRINThkG3O
	r3C7gjyw/b8nGBE81bp9cRgmB37fSEA4nlDOHyck/YfxATfB6ZlTg155H+fNtwy3C4piNA06rzH6M
	D3yh/8JG1Mpz7GbjGbjKeLOe6o5kzfUBC+FNdWCBiMGWDGTz0JOaFrgk5VpdpxAiJJF80vc6y1t2k
	ILIyHyLHygoT2YG6ayVtcfmIL+pdaNm0y3sdcMHysq1nyngeNHNGmCP3mWJP5HWUYqNDkmjG9IVre
	1I4EVRPA==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tKabd-0006NH-7H; Mon, 09 Dec 2024 11:03:09 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Update rockchip company name
Date: Mon, 09 Dec 2024 11:03:08 +0100
Message-ID: <10907239.zapYfy813O@diego>
In-Reply-To: <kwx76ihsftsgw3u53l33z4kodihyfcvpqpl2a2nk7aedgnr6e6@2324w7s7zmio>
References: <20241205082258.857018-1-kever.yang@rock-chips.com>
 <kwx76ihsftsgw3u53l33z4kodihyfcvpqpl2a2nk7aedgnr6e6@2324w7s7zmio>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_020313_132847_9902C621 
X-CRM114-Status: UNSURE (   9.66  )
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

Am Montag, 9. Dezember 2024, 10:42:50 CET schrieb Krzysztof Kozlowski:
> On Thu, Dec 05, 2024 at 04:22:58PM +0800, Kever Yang wrote:
> > Rockchip company name has update to below name since 2021:
> > Rockchip Electronics Co., Ltd.
> 
> Some reference would be useful. Wikipedia says:
> Fuzhou Rockchip Electronics Co., Ltd.

I did go digging a bit:

their main english page [0] at the very bottom (in "very readable"
light gray on dark-grey ;-) ) says:
  "Rockchip Electronics Co., Ltd. All rights reserved"

Similarly their about-page [1] says:
  "Rockchip Electronics Co., Ltd. ("Rockchip", stock code: 603893)
   established in 2001 ..."


Heiko

[0] https://www.rock-chips.com/a/en/index.html
[1] https://www.rock-chips.com/a/en/About_Rockchip/About_Rockchip/index.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
