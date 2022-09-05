Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F8AECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 20:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKAPUK0g0RAWjnbfsT3wjBWizhZH09GL6RLk8n8CceM=; b=pfuxzAi8nqphRg
	UfTE49vmGyVkm15eWWw+wUX+jU/bPuXkNm/xRffnAHiNRs5N+WpnGa/SBcGPuOj0r13s1qge1gl9b
	TRo7UT8Z4KPM3mGnxpYmiOLqlHxqo3feiH7SdrB0AMjbjpY/gXfUReIbrlVZwQk8ERqJtT2fCoK7g
	BTmzn9KdrR8x+3vkN/wXwHEXAKjq7n86qQulALSiTe2UjGay814R3XHKyQ3moaVJiqqFttxmgAtDU
	/il/xzxE+fkFbC3A3B4TIo8sWANx8xUjarewmi3nV3b3bnJ5j5Lpdsd8CiRQxvnUM1O86nEUUAx4u
	zbBKouDDRsxx//fjxqpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVJ6A-00CEBB-DT; Mon, 05 Sep 2022 20:53:38 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVJ5o-00CBk7-Sz; Mon, 05 Sep 2022 20:53:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 380B65C00FC;
	Mon,  5 Sep 2022 16:53:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 05 Sep 2022 16:53:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1662411182; x=1662497582; bh=/E+mnHRRBW
	yX/W5H9Rh/7o3lZ0qxrudPegg0jcNTaaQ=; b=lekK+370pndbyQoVOuQNWcC7cM
	lz7iJJLPFEyOkxqodeUvaG+AMjbotls6QlZJ9XDnckpsf52aOUDrS5qQbxViJ6XL
	2LD17ts4571ZOcnJb44QXJotFIf/HwJsdNGe6l4QsBliDDvJnzWbSc6uItf9/A96
	ADZSzu0PN5OfBBxRpI8JhH74K6P/pvB2toNnIGevY2Yv2mmULs/1r467/e3AWqeA
	pilzVgBllKniVFljTToqzD8CoCWmR7TabfIrx6Lwy3klbxkdCw6UP5LuozUtxqeJ
	dPkE48e+tVZTevDt23wtA5fMFIjhbPhmCc6bI1FY2RzltTGb7/b8+6zL4MwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1662411182; x=
	1662497582; bh=/E+mnHRRBWyX/W5H9Rh/7o3lZ0qxrudPegg0jcNTaaQ=; b=L
	c7Dp+hwgWOJJLffBHym2b8HyncaDXlQyd1H9Iybyyou7Eozc5J9k/8LvOdlAL1Mp
	su+XaOx8sTowjDBaXD7n2ZPpKvy/W9DiDghaC/LYI5/lIsGI/Ca1ZaS8aD9n7cbY
	kRcJLGIeGpVULG28IxdfMErJrFNBtBF5Uw3lRhiHp7yr7Oh0hLw92N30fOyCuuFk
	btEfChtYZN0JTVC6JkdeaFCo0PGFJsm6a6SlZao7PMHKkY28BOSn7X6G5QGAxmIo
	utMQ7pzOMck7P57ekKwkkJM9q/sJtIhq2BUKkL9ZO8Dum33b+oLcJomCgIHFnfok
	SFlXP9QC0GzZ9vXt42SWA==
X-ME-Sender: <xms:rGEWY6qmZAZFohihjKT2p9uBpVh13saLlHHn9ol4BrDfT4WsTR3RvQ>
    <xme:rGEWY4rORX8s_G7VtsEXImBo7TCmqrvwv72h35VvajgkgdjFkSmMVc9leD_s43dVr
    DsMrKa50XPHvzpnyA>
X-ME-Received: <xmr:rGEWY_NE4fI3-Ntko7eznigt-i-cMM_1PrRma_sF-8hl_DiWkm1CAmLZ-BiAyrevKRvh5081EyASF8OeAPsnwJ0N>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeliedgudeitdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfuvfevfhfhjggtgfesthejredttdefjeenucfhrhhomhepvfho
    mhcuhfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruh
    hkqeenucggtffrrghtthgvrhhnpeekueeijeefueffkeekteegleevjeeiteehiedvtdej
    iedvvdelvdffvddvtdeugfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:rGEWY54ZxFy6uKNnZ2tzcFZuOfc_IBmxa3VXA4wVXHF_vyJEOV3f5w>
    <xmx:rGEWY56gboyxkZkWoQfx__ePNsm_Kfo_9ujRo57Am8Vp5Ka7mB81Ig>
    <xmx:rGEWY5jz9sX-9MWwTVHemnk8HATmmyqA_EEEvuUBFjKeX545qScGug>
    <xmx:rmEWY4S0VP1l11CI8IY2nv1G_fgdZrvmOb4AMYYX5GVi8-baPKJTKw>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Sep 2022 16:52:57 -0400 (EDT)
Message-ID: <00406e34-dee8-ba68-f2dd-c0c0634b42f6@tom-fitzhenry.me.uk>
Date: Tue, 6 Sep 2022 06:52:53 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card controller probe on
 Pinephone Pro
To: Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Martijn Braam <martijn@brixit.nl>,
 Caleb Connolly <kc@postmarketos.org>,
 Arnaud Ferraris <arnaud.ferraris@gmail.com>,
 =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <n@nfraprado.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20220904233652.3197885-1-megi@xff.cz>
Content-Language: en-US
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <20220904233652.3197885-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_135317_602701_7BD6A92E 
X-CRM114-Status: GOOD (  10.60  )
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

On 5/9/22 09:36, Ondrej Jirman wrote:
> Voltage constraints on vccio_sd are invalid. They don't match the voltages
> that LDO9 can generate, and this causes rk808-regulator driver to fail
> to probe with -EINVAL when it tries to apply the constraints during boot.

On most boots, the SD card probe succeeds, and is able to be mounted.

On some boots, however, I observe this bug with error message:

vccio_sd: failed to apply 3150000-3150000uV constraint: -EINVAL

> 
> Fix the constraints to something that LDO9 can be actually configured for.
> 
> Fixes: 78a21c7d5952 ("arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro")
> Signed-off-by: Ondrej Jirman <megi@xff.cz>

Reviewed-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Tested-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
