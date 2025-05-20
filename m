Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 568FAC3DA6D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 07:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpiBqPEOP4HHkESeVsT1gPE69l3FqiErrERxXz9Qu4E=; b=ktPqDR/QUP40xF
	i3gma4fHJwOFRWWcH9uQjDY13kJdkMmzioCB3MQOKuOUdB1woPHhB95VeDfyPu96pZmWx8CliCvPI
	RDibqLvICt8p2O/TtmwoZOLEmfuPdzkxwa5ccF79bAYZdZXr6kB7yjJgGbWKxebMRG+6qG/65GG1Y
	UaJ/0c1iTRytAWHXbq+RHreSw0zTJUZLAw1DseUtXRBNbjPWYbEjnxKKNjZsgWJB2idXT6OAc7/PJ
	tdN0Le39eJ8I2cpWMHdrTcf1NiJ1/7pjfRO8jOpT/iYaCVEpQtu8ptuUjVAwSlCqnXo/T3EgSUizZ
	pkA0jq+avTuM3YwHTWZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHJD-0000000BqBw-1oBg;
	Tue, 20 May 2025 07:22:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHH5-0000000Bpmg-2YCH;
	Tue, 20 May 2025 07:20:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 172EB49B55;
	Tue, 20 May 2025 07:20:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B04AC4CEE9;
	Tue, 20 May 2025 07:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747725630;
	bh=5pfW76gzsZFj7G6lA9ya03YxgKxR658S/A6U1aae8yA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CzksAmSc4WrKjvyZ2M3isCeiTFwYp9AjNBsOsXciiiYrDr5mAYU3pADnvkXIGFOMP
	 UGu7XfQnUuq64tXk4O/SnlGIceW8W3yH1ZG5RgTjDnoKdAZPDhIDM7u4zqY86Dh0qt
	 ZlTnuOH9Dai3iAuxh5Ht0Og3A9BnR1yObnJxFhzLB85L7gNO7JOfvPlFQFe18p8jZ0
	 HdVJwmu9Xw0dkBROtUyJ6WgLY9GOnCs7MOQtdLGj2nTgQn2ay096Jfz/FFnkdm2c7n
	 fX08CvBEjofIgSUjRArIWCBZVT0GlAMrAVNncPc+lImXwb+j3xtLmvSETiTuDzSGtH
	 p7zDyuGgG6Hew==
Date: Tue, 20 May 2025 09:20:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
Message-ID: <20250520-sexy-pronghorn-of-tact-f9cddf@kuoka>
References: <20250520024718.142-1-kernel@airkyi.com>
 <20250520024718.142-3-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250520024718.142-3-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_002031_664017_04E81A4F 
X-CRM114-Status: GOOD (  10.23  )
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

On Tue, May 20, 2025 at 10:47:18AM GMT, Chaoyi Chen wrote:
> +  interrupts:
> +    maxItems: 1
> +
> +  phys:
> +    minItems: 1
> +    items:
> +      - description: DP output to the DP PHY device 0
> +      - description: DP output to the DP PHY deivce 1

Typo here.

> +    description: |
> +      List of phandle to the PHY device for DP output.
> +      RK3399 have two DP-USB PHY, specifying one PHY which want to use,
> +      or specify two PHYs here to let the driver determine which PHY to use.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
