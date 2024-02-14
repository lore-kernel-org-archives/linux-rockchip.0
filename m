Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6AE3C48BC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 11:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Vb3nlacHaCfNQx7dY5gRPupco/c5EMKP+Ond9O9rVg=; b=bke5tQkQN6j/tt
	GZgZ2VeTKoWC5UquNxv/aXDU0xfBpW5cjN1CH8QzDtmkmOoM/ZVnvQLquUOIMJxYM4BZOS1j1Rds/
	9wuXZqZBv+I152jZM6qSDwg3h/gme+0yeGuPgqX1xEil7l9NTPUj6IGhL47dkLxsd1Bj0tunbN/8f
	UV7Bh/FtEVMN2HCdBY3sLz+0kBwwIw6Jn52mqnHg6sJ/cSLiDFrQqOjGySC38BakUx/HxcL3ffu+z
	VIaShEvrJa5vZqbKu1SqKa007DLrqTSYdXfunLCWVIQjf/jS5TCQOBWbYnFno/VAIfs77gnKdY2Hx
	0xifbH207Da1LKI9iwLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDmU-0000000CjfW-0Wvp;
	Wed, 14 Feb 2024 11:50:26 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDmQ-0000000Cjeg-0ttG;
	Wed, 14 Feb 2024 11:50:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707911420;
	bh=UV55yHN/roTnMfLmzppeeG3H21jw4yoeweDk3pCOXIo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kQRzdMSiaLwXvu/OdGfdW+nZXbQkTl8hppD2CGCn1aGIKvqa3Ss8QrGbvDBJzGuG5
	 rkRMs66mdImOpcpMPQynDnIKTKKoRMXObBcRa7kwFIQpcjexM1wswBG0uFBLAE5LJL
	 GZ5uDW0z23zCQj5SwN6uKeXb/IRlAqwtmSXhfVdpydyMuQ1+zBM5lcW6z0IsAwuHna
	 dhxxk15TchX7OOwWEkhIZB8uXuAZJLgC0+75NjlfhzE41kSlTBWhl5adwZB5TbCbbd
	 e/vsBwwboqGM8nuKQgeVbBSOzSaNKd6k0p894PdmCpjeerW4LhLlDuz/Rs7jhseukD
	 Wf+A7E632SsRA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B1BDB378045F;
	Wed, 14 Feb 2024 11:50:19 +0000 (UTC)
Message-ID: <87fe0e42-d4b9-43d4-87e2-0d054283c7b7@collabora.com>
Date: Wed, 14 Feb 2024 13:50:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: rockchip: Add Samsung HDMI/eDP Combo PHY
 driver
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kernel@collabora.com
References: <20240212-phy-hdptx-v3-0-2cde680cd024@collabora.com>
 <20240212-phy-hdptx-v3-2-2cde680cd024@collabora.com>
 <b89552bf-cb04-42b1-94ac-5529205b3be1@gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <b89552bf-cb04-42b1-94ac-5529205b3be1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_035022_415207_E13C36BE 
X-CRM114-Status: UNSURE (   8.38  )
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

On 2/13/24 01:29, Johan Jonker wrote:
> 
> On 2/12/24 19:52, Cristian Ciocaltea wrote:
>> Add driver for the HDMI/eDP TX Combo PHY found on Rockchip RK3588 SoC.

[...]

> For Linux FTRACE filters it is needed that all functions in a driver start with the same function prefix.
> Currently there's a mix of hdtpx_* and rockchip_*
> Maybe use rk_hdtpx_* ??? similar to for example rk_nfc_* in rockchip-nand-controller.c

Done in v4:

https://lore.kernel.org/all/20240214-phy-hdptx-v4-0-e7974f46c1a7@collabora.com/

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
