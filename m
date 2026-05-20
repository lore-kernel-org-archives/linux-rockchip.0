Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54B79CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 16:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BMViyurV1Yv7b39Jdb26/JK14L1+LWFw8CayeBp5ng=; b=fmrjsXvJ7fMGcC
	zaUF2PrJoO7+/81+fWWI+qLdI2s3K+RQ+3chatveDiFGGztx0Qjef3uCLYrFlNB3UWUrcfNfXnPZE
	lRYbkL547PBGcVAoXS2l0KeemVKBM9Y0BgLop/G3sf64tE0kNc2fe19wvla8Fffj5ZdXr28Quc5XZ
	4tXJhZCp+Zb5LS88iyJRDWbRx2oT+064Uljb4rrxnQprDy7Dx93xjwoNlNSRMPmpWOTMWpqnJ6xlH
	fPtBYiRFWCO9x6vCVXMwn8htyQhSKQUbR77fmsXfP8ZgA4xK/OYT+Kkg54mdecY+gJ+gEzbPlrZpK
	msU2dAHn/dwO9u3b8G+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPk0B-00000005CSL-2EOQ;
	Wed, 20 May 2026 16:42:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPk0A-00000005CS3-2q2a
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 May 2026 16:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=GC+j82qSY+zJAwat3LurcWTkfdtSSywc65VonLyYicg=; b=ooy6H2DPo4iUYq55cBWqUBSp62
	aRqyeHqE05G0wnRMKut5h9tQikwpSNqJ+CmK2KjEsF6oABashyxFKylUQfC3TfpU8LjB+USvspx4h
	UXlpIih5t+WbSVFbga5YHdC0gNEdwXLePJINRoCrBFgru3mYOi8GQTlwigPqlSvLH69Y23ipp1/im
	s2oWeRi6aATvDDitBVHu/UEiVO8MPLo6qtRV/vEH1YwIAgDSrpR6wWLIT3dESfTTktZxQXNI7opzv
	xqk7o7ZQSt9jOL9kXJMGdKZ2ckHy1lKD2rM4Mo2feA15vDoe6xBV7Hf3OWoD+UvPAb5cFogyb8D4w
	qxJvxKcw==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPk07-0000000HPcu-0DYp
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 16:42:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AF16E43268;
	Wed, 20 May 2026 16:42:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 738CF1F000E9;
	Wed, 20 May 2026 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779295347;
	bh=GC+j82qSY+zJAwat3LurcWTkfdtSSywc65VonLyYicg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ZDQv/fWpSChLPviHjk6cFBB1XDarcIA8D/EPZDe9bX1KzTHR98tkq8imsKYX6rgKY
	 r3Q23lI+akkmk/Le7vQTS9KcDWs4tONw0AgyWipqtaF6NFict6SrzEvjKxtVRew8FP
	 PCkUCUHjBbClAL9EFA0KjO2Ee3qF+UvHaBA3hRObAfJYP6QPDScRCy6C3Vf1y78/JP
	 niq9lXmiJbgavWbiMum7EN0jnwAI/E86hvd2lZK6kk2hHq6SJUw68Qf2JGU8mPHOWB
	 LhgKD8FjzFmk+L93FeySIhOa491xDnbOh5GSXZBjMQhEhJ8R+zRlYMJJ97z0hltvgr
	 oh3zZOiSJ0fLQ==
Date: Wed, 20 May 2026 17:42:17 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260520174217.6ca98524@jic23-huawei>
In-Reply-To: <20260518200526.458421-3-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-3-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_174231_836038_1141BE51 
X-CRM114-Status: GOOD (  16.60  )
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

On Mon, 18 May 2026 15:05:17 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Note that Sashiko has highlighted that the binding this being added to
has a potential problem.

interrupts are required but interrupt-names are not.
That would be fine but the binding doesn't say there is a default
ordering for the interrupts - so if we don't have names we have no
idea which interrupt it is.

This needs fixing - probably by adding a default

Jonathan

> ---
>  .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> index 9b2af104f186..b69c6bbb6f6b 100644
> --- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
> @@ -30,6 +30,8 @@ properties:
>        - invensense,icm42600
>        - invensense,icm42602
>        - invensense,icm42605
> +      - invensense,icm42607
> +      - invensense,icm42607p
>        - invensense,icm42622
>        - invensense,icm42631
>        - invensense,icm42686


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
