Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 802EFCD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 09:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6rdn+LqRJd8ZcYkyPINHzkfyH/WI0v3NSMdhGax+PE=; b=mPQUb+xTSfuriH
	lkcC9Ebx09vuvdZV5cQMz/jj9Egq+5HEpkzBNITw2PvF4yZJPnpVMqHa/KDvSYt9tvesdkqHOcqAE
	5LE3mNkpZN/nVHlxfXZiNGC3GL1laS5WmtworIWtTWs9V046LoFCGPlCvYoCHOxj+WXyB5+WbcZ48
	VfSBpGjZBPM+OpfdmpVJcdtKj+YRe3ZNDJ8ezwmVT+DQJj4P9hwTNcakdUtRZ1ENhW7xDgYMRLxEp
	9AQvzR/5VPXkJL0SDCV7tEUycdRlDymYnnOyQLUmGnuQpyn1sfiya5vYN8MKk3Q6AdPAkTduLmLPc
	L2s/nq6uAO2PW8aPmt1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXF56-00000007C6Q-3VG1;
	Wed, 10 Jun 2026 09:18:40 +0000
Received: from out-178.mta0.migadu.com ([2001:41d0:1004:224b::b2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXF54-00000007C5Z-1rmX
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 09:18:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781083105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ug7T5MCyWOrBz7+vEzcRwNA8uq82DdVzduyuYbrljug=;
	b=cG5a62YZ/AkUIwamW+e2RmoL/AJIB9UDW5YcxkiElVFBeBc8yyX0u15UgZgPl6GYb1gq/B
	duoL1i1F3AphaV2L68ndc90K4z1ovFJZDbr5WEBf4MYGtuNcwehEDzQHXlSBEp6vLqHhSm
	FssBXKsCLQle0f3fb5n6QW54TmVxaPeUkuaKDOpG3h11kZocmpl5yeP6dR8smVn+zmrnlh
	XWeodjwwjcJDtBaxE4AznxNsYkxpz9h3X3yRXwWgoAjKwBjmnMSlvaJssOPzYKDQXTH0Cx
	ShZWHzhmRjCemulQUUZaAaZd/lK9YORE9Dydo2Tl+rzgfXGPWy02YWfAlV6vXg==
Date: Wed, 10 Jun 2026 11:18:22 +0200
Message-Id: <DJ599LMGW2UX.12U9YA1MOW7O0@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Jonas Karlman" <jonas@kwiboo.se>, "Marcin Juszkiewicz"
 <marcin@juszkiewicz.com.pl>
Subject: Re: [PATCH 0/2] Cleanup and fix for NanoPC-T6 Plus
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260610081400.758687-1-diederik@cknow-tech.com>
In-Reply-To: <20260610081400.758687-1-diederik@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_021838_625312_4E9F54F2 
X-CRM114-Status: UNSURE (   8.48  )
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

On Wed Jun 10, 2026 at 10:14 AM CEST, Diederik de Haas wrote:
> Several nodes were enabled/configured when support for the NanoPC-T6 Plus was

s/Plus/LTS/ in Subject and here ... 

Still working on a submission for the NanoPC-T6 Plus ;-)

Cheers,
  Diederik

> added, but later those same nodes got enabled/configured in the dtsi file,
> making those in the dts file superfluous, so remove them.
>
> The MTT USB 2.0 Hub is connected to USB20 HOST1, so the phy-supply belongs to
> u2phy3_host, not u2phy2_host as that is for USB20 HOST0.
>
> Diederik de Haas (2):
>   arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS
>   arm64: dts: rockchip: Fix USB hub phy-supply config for NanoPC-T6 LTS
>
>  .../dts/rockchip/rk3588-nanopc-t6-lts.dts     | 19 +------------------
>  1 file changed, 1 insertion(+), 18 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
