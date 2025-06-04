Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 555B1C5B543
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 11:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cPeus33PCoBR73Q7vCQX41uPVRHJLm8wjM8YYX2VIw=; b=s2dE6MY1F0keD3
	iU+oq0dRwDvKmSLWHn7xlRTZuoCPnpAtpFT6eDx9M3qYVuwh6jaeXIIqH1mmTi3ZCxha6PypBhsVN
	Qoy2OkdKsrqbiIODMXJKSFnU+deKKpF8MzK2a/D387tCUNOrrmmHsM4tTM0R9w9ZwnSNXwZG0CYhl
	cScgxRxiNaFjfrnhcZxblRp4etIViSbMg5WtbC95kgc3fZDQenRl+lVFRYYzC8y+qpMRk94ijXBqu
	RY8S/uayx2fotD/xsZeN+BqiLV5iUfQyyYcQVz/WCTz8OUkwhDuGJA807BQCGw2KTEH8wABK3/Pn6
	FaN0jhKMC4A/s19yGu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmRR-0000000DDzr-1gT6;
	Wed, 04 Jun 2025 11:37:57 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmRP-0000000DDzM-0Lye
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 11:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749037074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8yGTTsgiDWY8J2g+V2j1fiTS+GMay2l9LmYid1VFYpE=;
	b=UBBOEj0PpSHSjl0GNp/qTOLD44OWiwHa1djifk12uWHWlg5uef9wQA9PoSqPYvujmQwgdj
	vzT8fwB6IBlDqYUwC04SAafwtCt6jLR5ln2c1gp2JJ7HWS5vlrnhkCfIJmf16KQGA5Vjxe
	qcL2nsxCaGTOHTNE9O8IfOaljUjLT1Y=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-225-insZyEfmPe--IwycwsoFuA-1; Wed, 04 Jun 2025 07:37:52 -0400
X-MC-Unique: insZyEfmPe--IwycwsoFuA-1
X-Mimecast-MFC-AGG-ID: insZyEfmPe--IwycwsoFuA_1749037072
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-39ee4b91d1cso439198f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 04:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749037071; x=1749641871;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8yGTTsgiDWY8J2g+V2j1fiTS+GMay2l9LmYid1VFYpE=;
        b=lkfc4U2a5o95DI7vASTDR0XprK/nF9wzbEHpHJSraM6klYSNiYUHjvipYfY5rgCR+Y
         rS6UB6g20/uDOV3CMLx57jKqaNwFB0gpCx/SFaU9cIMb7iey4h3fpiEdpghfHPro3qtG
         V9FCGPFQRYFhJ032o7L/d3mhdWGmKpZyRkA0Rp2tsWuCgiC1yVIq5FFBha+9qCf3lse/
         jNhOj/BGl91hbFxP1rxd8Nwo0iPczuNmZ8/kJJQty9B2Z8Vq9ts7+9AyJ8VjRd2AFzn8
         ZT4qSHvOAI3m+9hZSBiEYLGguIC3m//uEO5eGGgPY8fdJGq0RVjrnXpTSdNO3Y26ssOJ
         bDhQ==
X-Gm-Message-State: AOJu0Ywc7hQqogZDTLdPu4Cj7CKYrHtwJ3b0cBT+YKMu12/SrghTXNED
	wJWKmrWDvJIzAxLs5/yIniSXHihB97C3W3OLmK7rLVBvjZHspoWKq106RBe5mO8qBkPqQEQVqTq
	/ucsMcfQYFzLZYKktmZcRwD6CS2ISH0jKTg9MGgXTMDQkNgeaDd+atNzRZt4B13lckmPpkF31Fw
	==
X-Gm-Gg: ASbGncvFZvumrnd+zOSS0OPCFS5k6Fh8rnNhUnpkUJBxUNeBkgpuIemfWxGmpuVd5tq
	VvBS6HrwpljFlhMOazLdfJH3jBmFm3llFxxkKpAuvlb9yTBry31+N3FMqaEmOOeHsTgNC8xmX2t
	9brYaRhncUlfQZzB+EnGBc2MoUCtZCxGjBOsLPBRpjoVXY5uHzHf2mF+OcpfUYnSxyubVLS11sY
	EegKLEOdIfmkeQ1me6ZqsFws/Dpxby2qMAwKeep3o3eYAfNb0Zoadgv1WqvQyiua7T9BLsIOxLe
	Cml0mo4QZIyKhQthXHz6rUtulcxXraSv/Oi9JJuopcnD3FXU8hXqKLaKYdwis6djfXIc9w==
X-Received: by 2002:a05:6000:2204:b0:3a4:e624:4ec9 with SMTP id ffacd0b85a97d-3a51d507a12mr2123886f8f.3.1749037071512;
        Wed, 04 Jun 2025 04:37:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv9JPJbgrjB229TymXofASXM6iZs/ATYKLOE2MEqqHr8KFbOvdQ2US8CPOluWqVOJ3OvEbgQ==
X-Received: by 2002:a05:6000:2204:b0:3a4:e624:4ec9 with SMTP id ffacd0b85a97d-3a51d507a12mr2123854f8f.3.1749037071124;
        Wed, 04 Jun 2025 04:37:51 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4f009748fsm21172908f8f.80.2025.06.04.04.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 04:37:50 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add DSI panel support for
 gameforce-ace
In-Reply-To: <20250603193930.323607-5-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-5-macroalpha82@gmail.com>
Date: Wed, 04 Jun 2025 13:37:49 +0200
Message-ID: <875xhbagaa.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xYZ4ceV6C1_ooMXP0oSl6FeR8Iy_BV-8telkkRK3egk_1749037072
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_043755_195319_DBD5FFA8 
X-CRM114-Status: UNSURE (   7.49  )
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

Chris Morgan <macroalpha82@gmail.com> writes:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Enable the DSI controller, DSI DCPHY, and Huiling hl055fhav028c
> 1080x1920 panel for the Gameforce Ace.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
