Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 891BAE65263
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Feb 2026 13:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fcv8QMH6H2STtWFnW+BKn1Zb8zkG3OvZCiNO/0JiP8=; b=LwjNqs+0EbolfU
	NIcHJdAqfDdiJlwFT0QcP5mHwjXCExyN0/WrGAFQugEdj4h6d6kqi8UzE+hfZOXhuvNY1VcClimUZ
	HgoT9I/gGaAK64eQ12sbLUb5Y54BmF08sSNOcZEG8y33wDTdiFUofgeYX1NNo1xzzuCMo0YuGnX2s
	qqz3Ob9kJN1jiekMcf/2+Hh2Wk9tAV0T30TLXrJyyFl7jiFLW7wpdeyKuNHYCRp5hOzF8SlwnSfTS
	m1zslyVl/7NwzO1Sunv75Ei0ykebHSa6eBB+J2TpCYP8TqFMHjqi0wI4N1epddM9zrSkwtBajPpcX
	aaOWScMXuToSBiW2nAmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmXco-00000003ts7-2Nwo;
	Sun, 01 Feb 2026 13:36:26 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmXSg-00000003mF8-2MlE
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Feb 2026 13:26:00 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2a871daa98fso22752515ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Feb 2026 05:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769952357; x=1770557157; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JUlbKJ0tAnOBahwTWyLY7mbYAo1LF+unvBDF/GtAc0o=;
        b=Ff+7GyFhfzPlMHJY0d17Za8GEksj+jlLoEYHeDIItvyc8RTC+MWePk9LjFyEArvVhS
         Hl7TSrFBWce2oKMHAeyCTPFycs/3CykEj8uMkpJuQ+RrMtovvKic0Xe0m39GPQCaL4oM
         PDaOEUr92hEUajx3MQ3SBsI1ZJI5phaU5ib8EwFATwhaoHzrbTOUTjZw+O/VvFK3KU4u
         GjGn5tK3ALuxGKRvlhjIJarXN/Lct8f5sKhmgFiEyc2GplSY/SCnr6sZSoMeGNERYcVj
         ABdxjDO/b0queRMo5qwVMB2yJ5N2IAbPEyOsRNV38FNTw24bNMfBlLIZ8X+hX3TXE8Ij
         F8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769952357; x=1770557157;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JUlbKJ0tAnOBahwTWyLY7mbYAo1LF+unvBDF/GtAc0o=;
        b=mHD8Scuv/bRfbBEYpOHEZen7uJXNauLcVC+cabEcGg2OUzHgm20A9lj3tYMfd3vmYP
         wTBHZvq4tS6bMevDOh7yQdNcw5of9Htdo2R3D01eE+MrUQOs/v3sz06LxlxQfm0p4rUZ
         GHv7uSuiLQl6bwVcKCe9DE71/ZyZTU5PgiQo9cc5ekbFgB/LvlTj3dPRsabmEnQW7li+
         GRJOY7q1znOUs6OAvO0xLaUaprKpSRxEXAZjJZnC0jkWgCLLlhnuvA6s6mWKrrg734iw
         EzCK8wzyVdBQZvISKnq2JrCd/vWUR1m0ILWonIj2q2Y2np2Gdf5mTVRPw/46TYALhTYy
         sC8g==
X-Forwarded-Encrypted: i=1; AJvYcCW57HvQUkdkF1RiLWXq6V129ztDAMUAReOVRYKE+PsSpevbSZHhUioYo+5k/jXlwUrvvFPleW8oTPPHnTo4ZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUOIvEZKoHBL6LIhmAgbmzQFemRzK1xjsaWyNEnUduBrH13bWL
	q1Cy3C07xN7FaPjJN4yaevnlY7brcnMNPZLaJR4TgoIea9pQjGKVnCYi
X-Gm-Gg: AZuq6aJCIIBhU297UXm3+sg+hI4Q/1x4GduGFmayKvm1U+7GLsdaUDjHezCqxH/hLJX
	2/1jqiDHQoXWkND0FF/Mfor61fZNM6wFK7zWa3HsK8r9qcUUHspjNyeD/KW16Pv7+r11g6xO7H0
	CWZ8W6oqVENpLiXGUxMQ96sJKNtCcmMZhKdL7STcrE1rm/aU4nRPZGmnOF9EYUWRAGPCpVO1weJ
	uuSEljJbaWj3G5qLbnwuxgjP6hu18oYRi+PX2OSBzOrkhr/xU0sSOZvgiKP7ioBcC7VPgXzCKUr
	xaJPyLJdqQPHIBX/rH3rifAnjqGffZnZHaXP/6/I1KPD4COrNoEq/UfW/jbfvFGf9qfHgyRdBSx
	JvEdrWOea37EHnJak6Xl76XKk5sdLW+zgDxqrmzffRbyBLZXVKuacFGY+98spBy0ygQSX9gCBG2
	R7hgkaYnAq
X-Received: by 2002:a17:903:8cb:b0:2a9:db7:4467 with SMTP id d9443c01a7336-2a90db7462fmr9667595ad.6.1769952357498;
        Sun, 01 Feb 2026 05:25:57 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a8b47f4717sm108599565ad.18.2026.02.01.05.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 05:25:57 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: conor@kernel.org
Cc: alchark@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Sun,  1 Feb 2026 21:25:49 +0800
Message-ID: <20260201132549.66244-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131-acclaim-exciting-dff4e7af23a5@spud>
References: <20260131-acclaim-exciting-dff4e7af23a5@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_052558_610010_FE47A53F 
X-CRM114-Status: GOOD (  16.86  )
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

> > Add devicetree binding for the OneThing OEC and OEC-turbo
> >=20
> > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > port, and one USB 3.0 port.
> > Among the lineup, the standard OEC model comes with 2GB of RAM, while
> > the OEC-turbo features 4GB of RAM; The rest of the specifications are
> > identical.
> >=20
> > The OneThing Edge Cube series (shipping with the vendor firmware) is
> > originally designed as a PCDN (P2P Content Delivery Network) device.
> >=20
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
> ntation/devicetree/bindings/arm/rockchip.yaml
> > index ae77ded9fe47..eeafe40e0f23 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -813,6 +813,12 @@ properties:
> >            - const: openailab,eaidk-610
> >            - const: rockchip,rk3399
> > =20
> > +      - description: OneThing Edge Cube series
> > +        items:
> > +          - const: onething,oec
> > +          - const: onething,oec-turbo
> 
> This doesn't match your dts, so clearly you have not tested this
> sufficiently. oec and oec-turbo should be in an enum.
> pw-bot: changes-requested

Sorry for that. Following Dragan Simic's suggestion, I will merge 
these two board items into one in the V3 patch set.

> 
> > +          - const: rockchip,rk3566
> > +
> >        - description: Xunlong Orange Pi RK3399 board
> >          items:
> >            - const: xunlong,rk3399-orangepi
> > --=20
> > 2.52.0
> >=20



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
