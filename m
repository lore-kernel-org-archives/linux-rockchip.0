Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 599C9C5B549
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 11:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlRjRYVt7RHB/gOMBrLxmEgF5O5G2DOztOTmUBvvZgo=; b=OUEMgnFBClHQDS
	B7Fn6DWJZv+wKdMCxszohnZ0ZL7QRZolez3g//ae5IeRkfAztOCaxLMMPKdG1sbYJrVeq/k/R6n+E
	Hog3AcB9KYH4Nui3RE5Wf0MKuU2ctzHmGPeKesm+FmZ003e3d7qGiwWGnfLRz0lpXtNkwOq52bAJ5
	rzIUtCMyoz7JcdmCRTAIvrMcPUpv7iW+ltMYaIeGNQno9LWaWPugpt9izkkEkCQZJrfXl70B7kXvo
	PvXnVylHYDCZZshtD6U2oLXI/lNGhOg9mdLuhPylnE1bPhl7t1y/7OCWhfxiRaNdaC96b3udYS7RG
	6LTrhGVa+5jSw3Q80VEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmRZ-0000000DE4U-37RT;
	Wed, 04 Jun 2025 11:38:05 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmRX-0000000DE2v-34Lm
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Jun 2025 11:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749037082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=a4SrfMIm9jFVTdR/mkZH4AtBbhuKX900QP9yhvs/m5M=;
	b=XrTO6sHv/PlaEpxBwd29/6OWu7rC5OGsGe47cO4jD8AqO+Cd4ArYGRX4jtnAoGrCVmWryI
	0jbSpp28zYhPVaVRrhXIt/RI2QyDQ54mkruvygLyfYJDf3U/xfQhu/o3L5ZpEcC2lqb17i
	AugQCaMtE1C3ttANFELfok6hfS8nz30=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-LsTcbjvAPpCpQCPaZp_UXA-1; Wed, 04 Jun 2025 07:35:39 -0400
X-MC-Unique: LsTcbjvAPpCpQCPaZp_UXA-1
X-Mimecast-MFC-AGG-ID: LsTcbjvAPpCpQCPaZp_UXA_1749036938
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-450d50eacafso36924755e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 04:35:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749036937; x=1749641737;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a4SrfMIm9jFVTdR/mkZH4AtBbhuKX900QP9yhvs/m5M=;
        b=ltzUkSVl2YkMFWhUH5aWGJG0R71t27leMrwlK0hyXMsSkhSNjE2OlUzjqOi2R8wap3
         5eOK0BHJmHz32rC4bMS5LILPCvW0ucf8SHvw8PZNfFuvHQvDE93MrKRzLuLdg+LqAj1V
         xq0sEPEopiPv9I2xwzQXvkC6iAMnKr4JV12XBC9gVqEK8jbvUtTHpB0aVSVhfCMF2RNH
         ccT+vu59BE6LN4sSFcQ4ZRbwGfVgtElrTZUs09AOqNgiwxPqtqRVe+41Pn6aRWi2gc2q
         yiQtwPzOdcv1TtTOo1n43CpHnwF7dochcyNOtR4A6m8me0HLb8toKOuJWR7YmqvJshgq
         UPGw==
X-Gm-Message-State: AOJu0YwI8zrwpqB5ewYANDIaBm72QavH9uxRuKWg9XMDCtzoYcbAP3Jg
	uc8xLdJRy6Vtevdybdg3aEA07DEL2NWwvWeFuuMlFZUPjTdK/viUVoDit2kGBol4NY6zjoohiIk
	up/0p5scUVhliACbj1C4bNO1Gye3XZdA+U2P2m6QbVOcdjmxt4+1wG2gTrVwaE9kTu/B3r//Lb6
	OFMEqBcA==
X-Gm-Gg: ASbGncsgynxYl13bD/Hv/gDTbCyM7fCSINW41xY8bJisCn4EXZ/5wb2dBLWero/tWyj
	f+xiS/Sxu/QMwmYI1d5EHU8yzpBIVjduP8+rLy7UoJapjGnpdNbL7RNQOsPyAC2Wqel/AG9bgu5
	SiSbJaHrDRUBEAwVnYtti18HMMcxoPvRWrsI/WIVWfDAWad88qs3RnVpq9A7+P4eaSFnek9oQXc
	7JzRHrYsnKn963Y9etpSb8H5/nmayHRWkGP+5Yp5B5TNKZAVX6X1rIL+v4VM+recESpwpP0JPB1
	zih3KOpR72vTy60LT8PWEHpKprnIRCk83OKTswBI7FOCEgafblfWG8r4F5t+giInzJyzMw==
X-Received: by 2002:a05:600c:1c1c:b0:440:6852:5b31 with SMTP id 5b1f17b1804b1-451f0a76c9cmr26306585e9.10.1749036937671;
        Wed, 04 Jun 2025 04:35:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2JCqAr3AXCZtfAAEbxsPG/hvMjfjjFgOZI2FeVSDsnVIYOAlE1+oc4JeCPXVE9Jp927Nn8Q==
X-Received: by 2002:a05:600c:1c1c:b0:440:6852:5b31 with SMTP id 5b1f17b1804b1-451f0a76c9cmr26306175e9.10.1749036937284;
        Wed, 04 Jun 2025 04:35:37 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4efe5b7a5sm21683535f8f.15.2025.06.04.04.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 04:35:36 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch,
 airlied@gmail.com, quic_jesszhan@quicinc.com, neil.armstrong@linaro.org,
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: display: himax-hx8394: Add Huiling
 hl055fhav028c
In-Reply-To: <20250603193930.323607-3-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
 <20250603193930.323607-3-macroalpha82@gmail.com>
Date: Wed, 04 Jun 2025 13:35:35 +0200
Message-ID: <87bjr3age0.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 31Nu1N9Zvt2aUGU8QsLVOY5DQPXD7lwozGI_dJDcYIs_1749036938
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_043803_837453_7B2F93DB 
X-CRM114-Status: UNSURE (   8.75  )
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
> Add compatible string for the Huiling hl055fhav028c. This panel is
> based on the Himax HX8399C display controller which is extremely
> similar to the existing HX8394. Add a new constant for
> himax,hx8399c for this new display controller as well.
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
