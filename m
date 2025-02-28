Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC7EC282D0
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRFYIunw+u/KVVnZnquwjtCrCfIBoa6Y7MCzSby86bk=; b=uXyGi7brAwnsYX
	/rINDXQbylYqySoi0P529jOhu5q8Vc500qspxgCi9SGadfGvU0A04BaN5wG7dK2I6wMPyZhvQLMof
	C6or6aSTFL0uSX2Jkx9Gv+1nokEBtcjmx6sT+DnA7uxyyh11cJQdY5X1Vw7QTOjgfQ+tN5h1s5Ljm
	dUcAYIzhSRJDTiWFeBl404oIyJxxKdrL9E73urhOXSEwX+IJirbamOvK7te5lLIlYvnMtpP0UM8GE
	k1fJerMEZex7Q8fx+NDG9nZMQApmUvDXdRt+4ByAoyX0MBxj/WRnkb4MtadTe9YYf38nsvJfCr7PV
	S9bNHahdMQ37gpxMwzsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7Dz-0000000Ce1n-0JG8;
	Fri, 28 Feb 2025 20:44:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6mo-0000000CYU7-00A6;
	Fri, 28 Feb 2025 20:16:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C18AE61FF4;
	Fri, 28 Feb 2025 20:16:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0823C4CEE2;
	Fri, 28 Feb 2025 20:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773801;
	bh=082XE8EtV16kXCGx5pMhPt6eqzhKH8L0hxga2Z++y8Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YYGOir2hYbW0RMZuK4Q+icdavzLYVBTAX9Kgxo/XQWeXUGuud2lOqMt8xs1iyiEqf
	 A2kfWLLc24JCkcIqf+Y7z0irChDWjGsGz3FLTtAIHqzZt73W1QZocn/PPLCbMrYw9E
	 Q9qMIt054bxKGubE+PuNvJYr/mptQvvM9JVdJz04r2oc7sB3jA+NsIWB31CJ4DAWXW
	 1vp6hkzzCkuUPiKgCBOrxubIsow8/EEiJtktnnFQpaC0HIWh69p+8NcSoTCG5uxoba
	 2nRPiFaFVMw3CCrK4puo7MEFMztlEkvRl3TQt4pm08WTSOVxXDB3qZ2/Y6fgITNKON
	 HG5l5uh3hgNdA==
Date: Fri, 28 Feb 2025 14:16:38 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org,
	heiko@sntech.de, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 04/15] dt-bindings: i2c: i2c-rk3x: Add rk3562 support
Message-ID: <174077379803.3586340.1454205623159814222.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-5-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-5-kever.yang@rock-chips.com>
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


On Thu, 27 Feb 2025 19:19:02 +0800, Kever Yang wrote:
> rk3562 i2c compatible to the existing rk3399 binding.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> 
> Changes in v3:
> - Collect review tag
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
