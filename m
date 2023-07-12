Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F8CEEB64D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 06:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJXbPJS8t/jxbGaVubhXrECvBJB1kJ1ZiERvZTXx2Iw=; b=S4uUUg0nm0gzKZ
	BtJsUpVHc/BdBVtM/aDr3WEY817fRpL1p00c/x589KgTQOj1Cdp2VPKqQo7VS3n7cWoW+eM/gQ8AR
	TkLFFrYvVUA/392AhepP4XSw1HRaWG0paACSfEuHQ46XmRHnMfQRe/A6jVvpvrjZn9aFL4cOWH9PI
	iXMoZpiPXoItO/TYWDhedpEsGoDuZln9xNFnTnj6yywlOlUekHDTK3adQGSBXyuugaUDCDsimkg73
	fKGNlaaMVWQMNeu7LutI0KloEkdCrffOuCVQfUkbn/PG/gPOsSrDzZEW8YixlCbEr1P9XSwGEN4rv
	Clx9pVkrwa5Waao8XAfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJTdS-00GiNs-17;
	Wed, 12 Jul 2023 06:47:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJTdP-00GiMV-1a;
	Wed, 12 Jul 2023 06:47:36 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AFAA96607014;
	Wed, 12 Jul 2023 07:47:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689144453;
	bh=Low30gJ63IEyEdNBO/LRhxBT/QWObjPCmQcya1NnaVY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GgBlDk3/cMjjM6Bh/5M7ov+twpaWDAeCbvLGegRoMGuXR1+DcC9nZR46j+eJ3I5xt
	 dfVNcNBjHX260jvHatHp59o40kz/0tDxsmjdHoXeiB9Y0MZPUtFy0exrAOwAIQsbPi
	 i/C//Cezb1esGiyoK1smVfLHu2Gm9Ww0wJib/a8RQnumPH3ePKDq6u1AETmsqLLfkA
	 RgcmiRdO6j1/Op7xUTN1cttE9NEXi5R4Oc5RZ55H0q4y8bRz0Tp+T6PhvxOaCLSQFA
	 O7boR/9/YTL1+ZsTKYmjWRhcJd4AF3Ne3wGuh+BRtUKwcT8g9Abmc2KTblUVvjMv9Z
	 gnvqBOYynZ9MA==
Message-ID: <43e8c258-1913-75bb-cea8-99a432d14859@collabora.com>
Date: Wed, 12 Jul 2023 08:47:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: add SATA
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
References: <20230711171330.52535-1-sebastian.reichel@collabora.com>
Content-Language: en-US
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230711171330.52535-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_234735_719052_2D5D2779 
X-CRM114-Status: UNSURE (   8.63  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 11/07/23 19:13, Sebastian Reichel ha scritto:
> Add support for the SATA0_0 port found on the RK3588 EVB1. The
> second port (SATA0_1) does not work, which matches the downstream
> behaviour.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
