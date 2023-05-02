Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65373C7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 08:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZaEnBep0GR9koA3nsKVPqijk8SLuLVS8nys7ATX47U=; b=gvhsYAESNt+87G
	bnH8IboBqOaPmM0cf4efgdNuc+2kopEuUuhszvNVpHi4RV/bc2u/E0WZ7vgPdPELFycjAYCkoS10o
	aeU9glAKVa6J9RU/bCrqBsJvVLPeflmeHOANPP/2smsYgoD4+TMNE3mBY0ct2XfhEbbBWybWA1X1E
	Bo7CvOb83c5EhBEs659zdEzvdPhp+CjxF6OU1QP3NTQoNOGH1+wHsbJwNslrzi2kLcsMP2BOds6y/
	rpH7kfLFKepN1AN1IR9oh3xXpEy/7qnu9cTw7k24pnyM7fa3ssHzTOneli9PnVl6iOEdKCnxH7kjT
	y14jWY85bfnGpMvu4naA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlkN-000gXx-0F;
	Tue, 02 May 2023 08:52:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlkI-000gWt-2o;
	Tue, 02 May 2023 08:52:27 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptlkE-0006Sv-Q9; Tue, 02 May 2023 10:52:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH 6/8] nvmem: rockchip-otp: Improve probe error handling
Date: Tue, 02 May 2023 10:52:22 +0200
Message-ID: <6406454.LM0AJKV5NW@diego>
In-Reply-To: <20230501084401.765169-7-cristian.ciocaltea@collabora.com>
References:  <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-7-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_015226_907181_FF9F5124 
X-CRM114-Status: GOOD (  10.29  )
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

Am Montag, 1. Mai 2023, 10:43:58 CEST schrieb Cristian Ciocaltea:
> Enhance error handling in the probe function by making use of
> dev_err_probe(), which ensures the error code is always printed, in
> addition to the specified error message.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
