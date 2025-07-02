Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AACBBC7EE30
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jul 2025 09:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2XBHGCPfpcsNwim9JQGBtcoAa4FxyhSeTHJGJzdIjg=; b=EgjUrW/Z8efYoN
	ck9LXtIBkgLq1z7FKpNp31fM2egbx3jeuqnBt86bN39DLtAvMtczIoDE3rPf9EN9isP2umoLHuiNO
	1vVDmMu0mb+/WmNTvXAh5UzI+NWR6D0TWEVcRADffbBQeDsJPgm3PUSmqRokCxvRBIqvN3wDYOyEL
	l2Y9Umtwe6hmBtqYSNebQjG/ALk1O2+zJwfKf3H9Sm9Gy0enHzVjNqMzYfwuujLLr1cThsJp5exD6
	VO47I7FFfWsLRJPB70mFkKwkQDw+jPlx0nICyXgGMVqAr4/SZUE3+hDvsGuzesxAKX6AaBYbY3d7M
	gZUYlWYYiw0V8ARI+MoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWtJw-00000007fgT-02Ps;
	Wed, 02 Jul 2025 09:00:00 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWtHa-00000007fV3-3C1D;
	Wed, 02 Jul 2025 08:57:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1751446652;
	bh=AA9AlIrZgAydaDEjjbmsNIEiAQNjOYkPwuQMM7PW/hg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Op8cI2b9O6bAX4reORlcxA7sX3fWm61pByhJs7+IFee02nmz53x0Vk/5v3SQapl2/
	 6lVtnC8O/3lFCmqy2LgNB3ZP6ZpsqnBCBOmPpYmDaC+GwSbTI+bLKYrWIq4oZb9LEu
	 OyJm/uNOsDZDUv6AUwYF139FXcdtIIy3cjz5moAPV8hlwGCGxd25ZdmqznqZvnTE9T
	 6joiDhezFcor9i9fGncK0Cy9NkreimW9JNHkOl5sHB8/UT4J9ij+AHCiT9JdgLR+X5
	 +dxA1Gi9fFQYzcoBsGeq8fuKT2PfxMV4bjRPo9LVr42CotrNDil50f95uTlphhbKYK
	 bOdegJCZ9+OdQ==
Received: from [192.168.1.90] (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CE2B017E059B;
	Wed,  2 Jul 2025 10:57:31 +0200 (CEST)
Message-ID: <53dcc520-fd8a-4c6b-9bc0-cf9daf3e4597@collabora.com>
Date: Wed, 2 Jul 2025 11:57:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add HDMI audio on ROCK 4D
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250630-rock4d-audio-v1-0-0b3c8e8fda9c@collabora.com>
 <20250630-rock4d-audio-v1-4-0b3c8e8fda9c@collabora.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20250630-rock4d-audio-v1-4-0b3c8e8fda9c@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_015734_952240_A22A920C 
X-CRM114-Status: GOOD (  10.32  )
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

On 6/30/25 1:19 PM, Nicolas Frattaroli wrote:
> Much like the Sige5, the ROCK 4D also has an HDMI port, so is capable of
> providing HDMI audio output as well.
> 
> Enable the SoC's hdmi_sound card, and also enable the SoC audio
> controller (sai6) that feeds into it.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

This worked as expected on my ROCK 4D board after enabling
CONFIG_SND_SOC_ROCKCHIP_SAI, hence

Tested-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
