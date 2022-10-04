Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEAB7C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 15:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8zPrsYpQ9KammhNAaRd1SqqUgnV3V6olNNinvjTx4E=; b=nq384xdJBpKafa
	5v+rrHX2D5lWQAwSXeiG1e3W5lpnEVXjEtzCgNWcO0vJf+oRpN5m3+JvCLhYKmDmnllDYgRnyo+33
	YU6L070nxce/jkOc30d1YgmbUu9CxuTzHEsUjxFzK36So7dtqjPw2wQaCXGYGfdDFesShKasZUO9W
	CIhKi7Surd/hA9PUe9EW/C0A6YwAU+bv8YgkKNVyg4XPYepplL5uIpbVIhG1yb+EA1r2DZsKDi128
	fagNmQk0wbBTNwfLm0eOn8wtFWVnje0SwctkkUDXpyD2FhZvlw+4GYBbGcFP4ejKZNf6ERv/XsLFV
	hPPDj2Yor7MVosJu+ibQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofjhn-00A242-EO; Tue, 04 Oct 2022 15:19:35 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofjhb-00A22P-PJ; Tue, 04 Oct 2022 15:19:26 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
	by mxout1.routing.net (Postfix) with ESMTP id 0556840065;
	Tue,  4 Oct 2022 15:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1664896757;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6izbKtpoHFD6qmOo0fCt+lv7soo5yVhz/PTmUqEE4+0=;
	b=Lyn5udvtRruwFzBdXJfjhj0jTfQQmYWgseFDEP2B9x8hJTrVICH7Q5wvStzXDjLFxv/Qgs
	nDpRzmEXrJ6UW9cZE/uRRMY0FFZxIHn2S2oE6XM3HtkjLhayIAbi9owgbD4PhRJE5+LHlX
	Ygzmz+rLvZwIYocg09UwvTYa5ioP0i0=
Received: from [127.0.0.1] (fttx-pool-157.180.227.240.bambit.de [157.180.227.240])
	by mxbox1.masterlogin.de (Postfix) with ESMTPSA id C73B040604;
	Tue,  4 Oct 2022 15:19:15 +0000 (UTC)
Date: Tue, 04 Oct 2022 17:19:11 +0200
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh@kernel.org>
CC: linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
User-Agent: K-9 Mail for Android
In-Reply-To: <20221004150929.GA1506199-robh@kernel.org>
References: <20220825193836.54262-1-linux@fw-web.de> <20220825193836.54262-2-linux@fw-web.de> <20221004150929.GA1506199-robh@kernel.org>
Message-ID: <EC42D2C8-ACA5-4B6A-BC95-534CBDFC36C8@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: b7d83da3-dbaa-494c-a955-e55f0f933e90
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_081924_031203_6E15AD09 
X-CRM114-Status: UNSURE (   6.86  )
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

Am 4. Oktober 2022 17:09:29 MESZ schrieb Rob Herring <robh@kernel.org>:
>On Thu, Aug 25, 2022 at 09:38:32PM +0200, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>

>> +properties:
>> +  compatible:
>> +    enum:
>> +      - rockchip,rk3568-pcie3-phy
>
>The driver also has 'rockchip,rk3588-pcie3-phy'. Please send a fix 
>adding it here or removing from the driver. Are they not compatible with 
>each other?

Hi,

Right,
original driver has rk3588 support,but we can't test it. Initialization and lane-mapping (bifurcation) was bit different. So we wanted to upstream rk3568 first (but have not removed this part from driver).

I see that someone added rk3588 basic support and if he can test rk3588 i can send compatible for it.


regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
