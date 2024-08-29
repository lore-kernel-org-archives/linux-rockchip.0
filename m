Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD8FC83F07
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 11:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jm94Dz/xYKAPOfVf/eAvk9p2Jog7a6fO/E7US+K+8cg=; b=1CryprAuD3H1Ik
	n0rfi8Fjm5QSz9G+/7i+CB6RInxeJdh6R4s22i0aLdvM4dWfLRHCLmuisEMNg0RL2xP45aYBkGN/n
	mZjTMfgZ7cp8abGN2tz5hj72WRrU4ZhWfqB74iJ1C398e4MyY3fdvvYEEobWvAvbSO9b3Z0Wsi42z
	Oi2tLuReuX1QAr8oQxOH9oojDrWqNAtACUNy7JX89crXMVKnNh6KpXt2wApYq+XmA/Iw2FvSv8T2Y
	YhOF463ISDQDa7R/DV/W8PS1WBEB9SK6OEBeQ2R6QEqy/dptluuFX3UTfz/dFdzF+QHJsbbsiq06U
	jNBCApp0Jahiq+qCmUhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdYK-00000001mvc-25kU;
	Thu, 29 Aug 2024 11:43:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjdXS-00000001mjj-2dIe;
	Thu, 29 Aug 2024 11:42:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FJSZahwc40ZHt4JyXqSTTDfaFMrVzETSzLCNlx+UK3g=; b=bTJjLA5ckKx6GUELjopKDUZ56B
	ZGQu5BZgKWmE1yYHFzp64o0YhCoCdzLqrnBGZRMK7uY36Xi4tD7L3lM+SEEP9lPCstTTNOQ3SrAda
	nxxl/4faVYNB458Ru5qDawcLuslkZjqBWtMhRikYeoWqi2eMIh4UZFOuBQqvCCMMK1RsCfd+D/aB/
	QlBfYnmWylCbhlo7P2fSIz8aDFDgk5HbaNpZcAOqtNpjg3ECztszmqqeU/0CkY81SKuhdC+Cmc5RC
	wi3D9FLL8TBcTToPIN2FjARC+H+nvHQUU2hYgCA6qVIMhwOLNrKzqIPZj+lIf6czom5U7rApowgXg
	wzUb3Lbw==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjdXN-0003Yq-3K; Thu, 29 Aug 2024 13:42:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v5 0/3] Add dw_mmc support for rk3576
Date: Thu, 29 Aug 2024 13:43:17 +0200
Message-ID: <2596461.otXNkdZ6W1@diego>
In-Reply-To: <010201919996ef8a-db8bbe89-3c18-4dc3-bd0c-6498f09d978a-000000@eu-west-1.amazonses.com>
References: <010201919996ef8a-db8bbe89-3c18-4dc3-bd0c-6498f09d978a-000000@eu-west-1.amazonses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_044206_699445_335C8559 
X-CRM114-Status: GOOD (  17.61  )
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

Am Mittwoch, 28. August 2024, 17:24:51 CEST schrieb Detlev Casanova:
> The SD card controller on the rk3576 SoC stores the phase settings into
> the dw_mmc controller, so the code has to be adapted to implement that.
> 
> Although the feature can be detected through the USRID register value, the
> decision to use it is based on the compatible.
> 
> The compatible for rk3576 is added in its own group of compatible to mark
> that all devices compatible with rk3576 have internal phase settings and
> don't have the ciu-drive and ciu-sample clocks.
> 
> Changes since v4:
> - Drop commit that ignores phase above 270 degrees
> - Use a bool instead of int for internal_phase field
> - Fix pahse typo

Sending through some Amazon thing broke your message-ids in this series
too.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
