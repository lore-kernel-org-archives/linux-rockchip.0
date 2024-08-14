Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0473BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 11:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppf8ZAiM2p3zfQYWJetnw3sLYRrQAMzEEVocz59B9wc=; b=pA40J0WSSzVnQl
	AuEHqjM+8UIlvze1S/S+J56VMFQuzE9/OsQ+B75b1ht2KdPV2C72CNQPZLk+fi88dRSFGiiNlqwOf
	2yUVq2y7C9GqgUhYRjccoeICjT8sp1fL2gXDsOEGohuJNx/41UAlzjAdVthpohpi8lXyTwNvgMDcL
	HGITMm8HXWi5Mdr08CTvnOZjAzUVOpvJqIxEhsyTuM+h7WH5ML50YsmiRa8u5P+hlmoU/3vxl7xxu
	5CIBBWxy+2dSFdQdbUqPLqb9AevWzVYkuAxIeVIRuY+g7SdhtRmeX7YsNnYzuIiaaJIL2CNzyW2ns
	FqSaju+j45V9ROUzPaOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCDm-00000006m7M-11DQ;
	Wed, 14 Aug 2024 11:31:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCDV-00000006m2R-1DuU
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 11:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=1vJ/c7is/oxKwfCZwRETqtSm9eSiB8Og7CBk6i5XZAs=; b=AsdCN/X7W60B8c7+rpiEsdzWe0
	niFgyLf5WuqicpCX5WV+jR7aX3MQtXk7bdDxw3aZxDjxqlT3iC7vr38JuaX1fGcFVF6wxH1rNgmQt
	XULkukUaMY7NASlAS7TsNaI67U5SXOaGttGjJS8KGnnjrYdXXSHqkcydTukjnD4HoxlnyC8BsOBqB
	v/PUUyFw7JeePGHIaTGibSHYbr/R0Jrh9QgDBbtP1JUPqutsnG8wJiAdE3OWXXxGdXHEpiKKytOz3
	uHnmWZ8FkeWTK+eZ/LT9f508R1lRKR0/yy0tGtj1AItHGg0+HoOhyLO6L7dy5Og/GXksDduBBeTnt
	ZSwesKNw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seCDH-0002iV-Uj; Wed, 14 Aug 2024 13:30:47 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi
 E v3.0
Date: Wed, 14 Aug 2024 13:30:46 +0200
Message-ID: <9908246.lRi8OiJO2u@diego>
In-Reply-To: <20240814095727.1662908-1-naoki@radxa.com>
References: <20240814095727.1662908-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_043101_503679_B1EB90C6 
X-CRM114-Status: GOOD (  17.40  )
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

Am Mittwoch, 14. August 2024, 11:57:26 CEST schrieb FUKAUMI Naoki:
> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3328 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - update compatible string for OpenWrt
> - drop A-b tag
> Changes in v3:
> - collect A-b tag
> Changes in v2:
> - fix typo in commit message
> - add missing --- in commit message
> - add new section instead of new item in rockchip.yaml
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 2ad835f4068e..1d426d4e1928 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -790,6 +790,11 @@ properties:
>            - const: radxa,rockpi-e
>            - const: rockchip,rk3328
>  
> +      - description: Radxa ROCK Pi E v3.0
> +        items:
> +          - const: radxa,rock-pi-e-v3
> +          - const: rockchip,rk3328
> +

Please don't add a separate entry for the simple updated version.
Instead group it with the original Rock Pi e above.

For how to do it, look at the Radxa Zero 3w/3e .



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
