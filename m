Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FA1FD530B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 07:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2keYQuDxoaXPoLsNYeIwTPZKH4jn6zYdISHVcBTLmw=; b=Kv7DIfD6LP7oaG
	MgWAYexDSKTtT/ANAoLXBQqaHcRh6yBXC9x2n/qZCar9Xwyd7ZNCPPr56j7zWUhk1ff/K0bJfu93J
	kC04mR4W3ruKcCQnQOYNiUKLa8Hp76wxZ741Q6ZBarYIjRAxdxjN47F3JH72iTfpuNrrJoV57IuQd
	7ct3gtxbBCQlqe6xs0toZ68jkLrDbzsw/jOE+gZ2++qlxOBc1AQNfRYYstqfNfK7svWjDXlml8o+q
	w/3Ba/hbvHUWuqE+PZbXkvvXhf0nIPko0Eof9dZ1eFIF2C8orCEyfuxCs+fckc7NTjCPFzOyw7A7G
	3onRBN3f7AeNtQ5iR94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvsQV-00000007tw3-1mcb;
	Fri, 27 Feb 2026 07:38:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvsQT-00000007tvN-1elu;
	Fri, 27 Feb 2026 07:38:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B3A241B6C;
	Fri, 27 Feb 2026 07:38:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA227C116C6;
	Fri, 27 Feb 2026 07:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772177896;
	bh=Q+w9iIKwnNfTEdjsizTb6il87jj7/Nj0WRQOQEUYSUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rDziY4WcgDjwUQmVDTEC3X0QsdqWl6v+x2lGYMke6XDP2lfa8pNOLPX+2YYpl5DY7
	 LvSUqYV+o3T6b9XqKOX4DsMN5FPdcj0U/rTkvT7k+AVDkuUjJ+GWtsCvUOFEWMRuhB
	 iYQxDJSRcJTmXKIOsEl16Up0WJjHYbJJ1ONFk0y5mlreKP7jXmH5nUtl6GViJIqg/Q
	 3fIrIBI3oi0IlvTkhq7GOOb2XbXmZ/UYb2uhNKG98iwtzdI8ZpcWdHJla2H64C4YGS
	 RxTtw8XUS9UcWrMo9+XSsKDyuRYgiWh1CKMUgz4M9L7fx4aVLUMLpclfB4Gsv06Ugn
	 v73gb8Opb+95A==
Date: Fri, 27 Feb 2026 08:38:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH v4 1/3] media: dt-bindings: rockchip,vdec: Add
 alternative reg-names order for RK35{76,88}
Message-ID: <20260227-overjoyed-unyielding-mosquito-7bfbe3@quoll>
References: <20260226-vdec-reg-order-rk3576-v4-0-b8d72dc75250@collabora.com>
 <20260226-vdec-reg-order-rk3576-v4-1-b8d72dc75250@collabora.com>
 <20260226-salute-threaten-a3eabb232396@spud>
 <429f3c7aa22eccffedbf8db6aa91bee3dd13814a.camel@collabora.com>
 <20260226-snide-foil-a05e1aa156a8@spud>
 <3d28c699e47f606bad46bb6447785badace37793.camel@collabora.com>
 <20260226-ferocious-saturday-0e1f9bb28ec5@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-ferocious-saturday-0e1f9bb28ec5@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_233817_458549_887F5CFC 
X-CRM114-Status: GOOD (  17.04  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Feb 26, 2026 at 10:15:49PM +0000, Conor Dooley wrote:
> > 
> > 
> > 	if (rkvdec->variant->has_single_reg_region) {
> > 		rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
> > 		if (IS_ERR(rkvdec->regs))
> > 			return PTR_ERR(rkvdec->regs);
> > 	} else {
> > 		rkvdec->regs = devm_platform_ioremap_resource_byname(pdev, "function");
> > 		if (IS_ERR(rkvdec->regs))
> > 			return PTR_ERR(rkvdec->regs);
> > 
> > 		rkvdec->link = devm_platform_ioremap_resource_byname(pdev, "link");
> > 		if (IS_ERR(rkvdec->link))
> > 			return PTR_ERR(rkvdec->link);
> > 	}
> > 
> > 
> > Where for RK35xx variants, it only pick the resources by name. I don't see the
> > bug that you see, but I believe this was just a supposition, that you didn't
> > check the code.
> 
> Busy reading path of exile patch notes, so sniping this comment only...
> 
> This is a bug, not a supposition, and it's that snippet from the
> driver that prompted my comment.. That code requires that if
> ->has_single_reg_region is set that the dts provides reg-names, but the

No, the opposite. With has_single_reg_region you take first entry and
ignore names.

> binding does not mandate reg-names for rk3576-vdec and rk3588-vdec, so

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
