Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859B8606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 15:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xmdOgUc4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UQTAu7XD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BYsQbe3KVE330Gz3aM3Vc3P0O+19AyUNzTqc3JjYNK0=; b=xmdOgUc43NB7twzzP5qMrQJx8S
	WX9JcHtwvEg+iOK7OG0Tj+GDiM7TlT2tD+fYY1avTW4agGJN1UbDtq+/UodNBDEXk2ztT85J5jqOy
	RqJof404lBnBKkgNN2gaZQOagLgGKfLcL0qLL3+0bWvwfF+zYHqsUma8BbX1XARzkSWXb0c6YEeAd
	OBHsl13ekB5ZzAVLL+nd8+g4BhY9DAb7yF5dWdJ3DHCOdUJTIy+zeSqOthZ0EiCjidnrWd6fFFeAM
	UngOaoj99atoL4Efz7AR+O4wZ0lL+4G/GzLC3kP4v5+GMQcugIFtcMEebQqzEb6fIyoo8+VaZn7MP
	NDI3kUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMogm-0000000C1lD-36Is;
	Fri, 30 Oct 2026 15:38:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMogl-0000000C1jr-238A;
	Fri, 30 Oct 2026 15:38:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E91DA601EE;
	Fri, 30 Oct 2026 15:38:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BBC61F000C1;
	Fri, 30 Oct 2026 15:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793374722;
	bh=uEkdquko9VR4gRZhJYW+RWvIiAuc7lgxpha8X3M0roc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UQTAu7XDwiexZUovqY842fH+4N6aw5pL0Xe5ubdGhxbFLYsR18H7uvEOJZ/RCxXC3
	 ITRSlklkZIVUaOp5s+rF5lbb4y+SbmCTs2wnmg/Cg3XZ31zI9DuTq2pCn9lwVpx2o2
	 Lv1Jb/BgwpWKSDLNAKcVyhaPlBUS8EZzMwNY3/JCR083DDhniQyeaKugadbKR83UZz
	 d4V8khHCDck4p43mYLRcyV3iVFkIVoPAavAedeGvu0Ui51x7y1h8l2wCDWaNQFWhBO
	 3+zD07/HLClTnjIsm4w9egQphEgdjOlGttSDnKamoJBVLZiLaecptRzdTkaBgJPvk0
	 1fkM09l/K4ZmQ==
Date: Fri, 30 Oct 2026 10:38:39 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Igor Velkov <iav@iav.lv>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-hwmon@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Guenter Roeck <linux@roeck-us.net>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: pwm-fan: Reference the common
 fan schema
Message-ID: <179337471871.91953.13659250524662558962.robh@kernel.org>
References: <20261018-helios64-fan-label-v1-0-69a3f96d4efa@iav.lv>
 <20261018-helios64-fan-label-v1-1-69a3f96d4efa@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261018-helios64-fan-label-v1-1-69a3f96d4efa@iav.lv>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sun, 18 Oct 2026 07:54:59 +0300, Igor Velkov wrote:
> pwm-fan predates fan-common.yaml and repeats several of its properties.
> Reference the common schema, drop the duplicated properties and keep
> only the constraints specific to PWM fans.
> 
> This also allows label, which the hwmon core exposes as the label
> attribute.
> 
> Link: https://lore.kernel.org/r/20250106173805.GA501301-robh@kernel.org
> Assisted-by: LLM
> Signed-off-by: Igor Velkov <iav@iav.lv>
> ---
>  .../devicetree/bindings/hwmon/pwm-fan.yaml         | 22 +++++-----------------
>  1 file changed, 5 insertions(+), 17 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
