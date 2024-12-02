Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA61CE69E99
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 23:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqCfe2U3LVKtyAZdW+W+iJzcu4D/MP1HKRjG+Lvli+k=; b=uLdu0DwBBrwFt9
	i8arY3Rk4uAKDkNlD/4xKGAarSSuA2GyJKtYb48qjUcwPKV7ox0ttubO676uRON7Tq5AEjIQIRETH
	e1+vA5DHvaQpmNzYX5BcWLVFynXU4vl3LZ7/fr2hvdzjm7P6/wzwoE9kx8ut9VwtTRO9hnmi/oK/5
	W//36pmj+bUf1FW3axszYfD1pgVBCQZZH1YnDJyqo8b0iJOZ/zAaosFyo/gFC7VnLUCg7DioGAeii
	zgLT/fKMySXOo//9ZS0AsmO8LtyP3gjsucAHsdXsRFBOm6i21N+raPErL685aTU/Hr6ZJnVBeoCJo
	MdNcS2KI7Yv1TJusPADg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIFjp-00000007iCL-31lQ;
	Mon, 02 Dec 2024 23:21:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIFio-00000007i6l-3Gsw;
	Mon, 02 Dec 2024 23:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=N6vyL8Ww4bPTUOv9DIPeCa5gM8GLcmb1GkHr1Fn8DNE=; b=uN0nDRuQTjvIw5epJuIZ9QDMmg
	FK6dqrZAUcD7l6uMahWgsecPc9jm/8nhUvuhoqDfN4+OA7Qn1gZQ0Gk9LPyCz5X6S82cRFpPoIYi4
	WCVq7vU43JRbj0e94qBBy5xmufyBUZqOX4TT59ynoLSHL1a+OSZy2Hc4g7ZSzz2Ldz0c54sg/Dmp/
	JNf9ehEwe4ktg3rT/2e37TxQa3C65p3jw1KjZCUToRaqPv7bLZEXWr+QBTGDTyYMHv7pxFzgF7dVM
	ZxWAU839M74cJTLUdZ4Qtb/fZ+mdBdjkuIMMrylR0sIQZUnhiKcze1NPOKrXicmftMNOvPZpwnmou
	OqL31Lag==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIFim-0000FU-Ft; Tue, 03 Dec 2024 00:20:52 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Remove unused and undocumented "num-slots"
 property
Date: Tue, 03 Dec 2024 00:20:51 +0100
Message-ID: <7106426.18pcnM708K@diego>
In-Reply-To: <20241115193424.3618568-1-robh@kernel.org>
References: <20241115193424.3618568-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_152054_845903_07B84CCA 
X-CRM114-Status: GOOD (  11.61  )
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

Am Freitag, 15. November 2024, 20:34:23 CET schrieb Rob Herring (Arm):
> Remove "num-slots" property which is both unused in the kernel and
> undocumented. Most likely they are leftovers from downstream.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

this was already fixed in 
commit b1f8d3b81d92 ("arm64: dts: rockchip: remove num-slots property from rk3328-nanopi-r2s-plus")
at the beginning of october.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
