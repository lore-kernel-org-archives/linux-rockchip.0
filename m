Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1A8FC3DA47
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 22:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmVuL2GkbLZxDNc5cYgqZ/EdBqk0eCcyLvV5GOQ/KBc=; b=SSk2NoNs65fEMU
	0MiBoN9kBOwgPBWNbOZ5EjU8WqmRfrCMMfEWRuoDe6RZhqojN9EQbM+1Jtj+c8avBzNCqs5pGydqx
	5T1FdBf55zRvfasmduWyKErfcZIyshHcXUcizoCWjr3eN6RdGtztPolJ+gNnZfMt8fkqrTHFNkcdk
	vRy5mk3J4tRJBgThSyAhvMBdq71+NPRVwNBiWUt1koqgUFMSzNDgQJZJCxMlThjGv0L/1dXP01maa
	vAab9sH2no35VhbiozgkBRQUj9S/3Ld6sUcO6+bN7buH1UZdSNYx+W2wBbH6J3i6L00hY9rZ02ewQ
	fJhWUAvjj4ZJqCqPry0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQx79-00000005FgT-3cPv;
	Mon, 08 Jul 2024 22:45:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQx6s-00000005FcO-1Uqm;
	Mon, 08 Jul 2024 22:45:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8AC4E611C2;
	Mon,  8 Jul 2024 22:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F14FAC3277B;
	Mon,  8 Jul 2024 22:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720478725;
	bh=7YHz7y+T/d/K9XBn3bDo+/LX40FSv7Jm/vdn58aKRkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BI0wlKY81Q579BFKw8zWMWC1SIwNd/gVSKkx7IsVlekVsv3X7cxz/TUVpSKqP9dxe
	 5/c1ZyOvWy/q96QswErv4pQOumxSPIIxhTbehYXPi/bV9fY8BuhUHqkaMcEU94IgyI
	 hPHVQwF7oo3gUOSCe5etKokUMLKT5tepIOBSmPCEmnUvCClWm1cPXnQme/B726qrAf
	 KZnckvtI2EiIHhy9sB1QKfM5AychhQBbEmhEdXjZejk9ZnCoW0Ep40AiLTAaEJaAFX
	 nnCkCaNxQa/zeY//19pq24YRvXay3/oM6zBeFsvWQC2HRA51Tt2JgI71FYd0iXy6G3
	 F9eS93ChH2lJg==
Date: Mon, 8 Jul 2024 16:45:22 -0600
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jean Delvare <jdelvare@suse.com>, linux-hwmon@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Guenter Roeck <linux@roeck-us.net>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/8] dt-bindings: i2c: add support for tsd,mule
Message-ID: <20240708224522.GA4092671-robh@kernel.org>
References: <20240708-dev-mule-i2c-mux-v5-0-71446d3f0b8d@cherry.de>
 <20240708-dev-mule-i2c-mux-v5-3-71446d3f0b8d@cherry.de>
 <172045906545.3469012.7420722768425918930.robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172045906545.3469012.7420722768425918930.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_154526_482156_35E31FC5 
X-CRM114-Status: GOOD (  14.96  )
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

On Mon, Jul 08, 2024 at 11:17:45AM -0600, Rob Herring (Arm) wrote:
> 
> On Mon, 08 Jul 2024 18:12:14 +0200, Farouk Bouabid wrote:
> > Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> > among which is an amc6821 and other devices that are reachable through
> > an I2C-mux. The devices on the mux can be selected by writing the
> > appropriate device number to an I2C config register (amc6821: reg 0xff)
> > 
> > Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> > ---
> >  .../devicetree/bindings/i2c/tsd,mule.yaml          | 63 ++++++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/i2c/tsd,mule.example.dtb: /example-0/i2c/fan@18/i2c-mux: failed to match any schema with compatible: ['tsd,mule-i2c-mux']

This can be ignored. Looks like things went sideways here because patch 
1 subject is a substring of patch 3 and then it got marked as 
Superseded.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
