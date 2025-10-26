Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 404BCCCF9E9
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 17:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKvkdNVrNndHgegnIPB5EiFV1fv0mEWVrgRjTxSIfLc=; b=QhiDx8FGFpUADe
	9s+jJPM4bdrJA2q7E/wakREVPQg+huKA5uNkvJ7N3d7cd5CxiUPQYbmZoZfwtLjWbhOEyX0elG81q
	2+VJjprb9+tdGQ1AJd5govxuTyXpUchaPy/7kwNkOAzU8jCsAToPzKjzvsbnkdAWEDP1o8f+sj7la
	IUM38FHxP/Lnc5/63xVUlA7bx6wY3ZkT0THr6qQUlUcaOJhHLZtTJj9Gc9CM6HBhPBUP2kCWq9UYf
	eG0r8y1NOulNjqjK6ZlEL3v+tkSM0bBd6EaQAYLAhXU/EGSVRrWl8qZIH7/y8FjbFEPMJ8VrYaHEB
	7+qrodRWSHbOP5jdDQcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD4no-0000000Cazk-2j5s;
	Sun, 26 Oct 2025 17:45:12 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vD4nm-0000000Cayj-1vmG
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Oct 2025 17:45:11 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761500695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Os2gdwgFgiG/vQXZuUM1r/XXyjqP6W0/g6mR5BtctSk=;
	b=WGObrId+lc+EJHIlJzN+dD7JmH64mJaxToM+He6Bg64ipj7P9PoZ51oO3eVEBKpVmNiPS8
	cKCqohngr3qvrAUcsONF/aT1AmNRoMPz6pmHrX0iTa8h17dzdC507UN3WqA6YW1YuLIYYR
	I0ZgGkQYUtAUvTeWUUO3rCuBqMOhJTOOCcvfq1alots9bWpGPB3ScyVLioV2j+vC3is/cP
	cXHRAem2rR/iS/mFCgVeXHQWCFFl0teHusYHPHYU76GZftHFY+EKoAmwzZ4M3C+Iqt2VVE
	n1Mk4v8P0S8vv50X6ix3myq3bU4MJUwtr0VN3UCIGwIHMGmeauBn9noYt0ASKA==
Date: Sun, 26 Oct 2025 18:44:42 +0100
Message-Id: <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Dragan Simic" <dsimic@manjaro.org>, "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Harmonize regulator formatting
 for Pine64 rk3566 devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Diederik de Haas" <diederik@cknow-tech.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20251026153805.107774-1-diederik@cknow-tech.com>
In-Reply-To: <20251026153805.107774-1-diederik@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_104510_634124_997BF084 
X-CRM114-Status: GOOD (  14.17  )
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

On Sun Oct 26, 2025 at 4:37 PM CET, Diederik de Haas wrote:
> The regulator node properties in Pine64 rk3566 devices were formatted
> rather inconsistently. To name a few:
> - 'name' was sometimes put at the top of the list, while at other times
>   it was (mostly) sorted in alphabetical order
> - 'always-on' and 'boot-on' were sometimes at the top of the list,
>   sometimes not
> - 'state-mem' nodes sometimes had a preceding blank line, as they
>   should, but sometimes not
> - other properties seem to have been added to the end of the list, not
>   in their alphabetical/natural order
>
> So harmonize the formatting by making all properties sorted
> alphabetically/naturally. And harmonize the formatting of the
> 'state-mem' nodes so they all have a preceding blank line. While at it,
> also fix 2 incorrectly indented nodes.
>
> No functional changes.

I just found some additional ones.
If these changes are considered OK (in principle), then I'll send a v2
at some point.

Cheers,
  Diederik

> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
> ---
>  .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 52 +++++++++----------
>  .../boot/dts/rockchip/rk3566-pinetab2.dtsi    | 29 ++++++++---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 51 +++++++++++-------
>  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 52 ++++++++++---------
>  .../dts/rockchip/rk3566-soquartz-blade.dts    |  6 +--
>  .../boot/dts/rockchip/rk3566-soquartz-cm4.dts |  6 +--
>  .../dts/rockchip/rk3566-soquartz-model-a.dts  | 10 ++--
>  .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 43 ++++++++++-----
>  8 files changed, 148 insertions(+), 101 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
