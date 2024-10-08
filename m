Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E8F1CF042B
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 00:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9S5EC/1NojxmncOQHYgMKC71bOkCHFx/ircqVJs1FEQ=; b=R/TpiRtbjW7Y3O
	ZTXKdTt1vRWstrQztcikDMU2+CmduQUCbpuOSPXTy2hTV1UUlN7En8n+E8RmcVPT6GWVfmkHAhnb8
	DZwr1WOWvt5nxjmnU3dv8sZUBz/WLRHtjVaWo+rfzUfBwUuVFUfxrYOGGO/PlUI6fzFCioQW0Q0mg
	1n7Y0ehMpq75cK5OI+3vAbhhGr7WyJnWVwMf3pGpaCq/6tIziMCyArLSfwHK3huCIlzWYUIGZNa7i
	MVSAaXjaYCYM6yqf9Ix/0erCHYt5ZsDgH3IsK6ntgHp9235yYPffduPvLS9qdH+qcKpE75ib5QCkG
	V85aor00sEkb+EmDaE6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syKpj-00000007XKQ-4AYq;
	Wed, 09 Oct 2024 00:45:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syJhi-00000007R4f-2wX2
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Oct 2024 23:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=bcHI/yoxqMGYj53GeW2FJrS1QmCjSHPEphh4FYDw95Y=; b=A+d1OrGKIrygyzrbv/qxt8VlZu
	2yxWZuI/V58WFBiCDEWdEsM5f8KKkP18OlWkVu0r13GDXuhHtYLYqn9/cEkEUfkgg684BpUoENNMN
	cfg3R59g3zMsW4BQo50OLJ9dEzWmQ6Bu+XVcR8NWfZb3KqM8sejOoRh6JkNNEnjaGy3QTTFOPBp+/
	S5Xozjmpn/485dnYT3Lw/76ppRFlBc8QmYYWLOQhM+8nhtq+O0nXzJoDcRjQ/s7rNg62/zKQE6Ajm
	MVbpYcU4P1Bs2y58miAbegjpeycGmvDsgthnjt8tX0HRLl+utcXDbDXZlo+fXhAJDvgwk7MON+29D
	rgMcW5sg==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syJhd-00000004kvx-1VR0
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 23:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1728430389;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bcHI/yoxqMGYj53GeW2FJrS1QmCjSHPEphh4FYDw95Y=;
	b=Zk+d/yDhmz51PvNgx72xSSPmCR82Eg35X4vQE/0b2JUGmaIynABIpkPqVlhLFHcW92QGl1
	4Gjei7btRbxRovoMbp0WBMt5D0c2lUzRFE502v6/Q+tK5vmCoK8ifO9oCQhYCRMod/IFXw
	lCCzKxhlSz7jbTk+s6yTb7BBJDWbJVI=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1728430395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bcHI/yoxqMGYj53GeW2FJrS1QmCjSHPEphh4FYDw95Y=;
	b=YR54e0o+Mu2JvcuZ8Td4bwkurSHwRlsCuwbIELzIxJXBQwKoalsqrs/9KZz04fuDxUlruF
	tohI4fTO4QfjH/s9tGD1mcpANvCg5/cOctt9XJFRZw4Q5ghldtJtWVfhicJ4je9CZ2pV5f
	0JBuEGQXeEYP5qR4h/Pl2CWbomX74UE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-219-dafiOI5iOwWYIasgUHIUBg-1; Tue, 08 Oct 2024 19:31:37 -0400
X-MC-Unique: dafiOI5iOwWYIasgUHIUBg-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-42cb857fc7dso53143775e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Oct 2024 16:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728430296; x=1729035096;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bcHI/yoxqMGYj53GeW2FJrS1QmCjSHPEphh4FYDw95Y=;
        b=boVx0wRsNm/XM+/jd+/PumGTdOyv/YC/RKEfcZFFS1Zr74t03erE0grbV3ujH80OKI
         DUGjST95tY/aHCYCMwll8+dBpla6upgaadnK0J4inyWEgk4jXMWDtliccScbk0Waxa9I
         cHMK7471GljF2513z7uzMTDi+PsCGHuc0pA8IPrE1Yg3J3d49ZWx7igGW4sqmfjlVQrj
         6mTU9scRMNk3x8796V6jMzYKhM56yGuZzEaEBHC25qaIy7zhaC5aCKMHYfuu9VShbRBy
         NctV+t7lhPtL8MBMgPBrVlew7kk/TabuNVHqr0x6XW50oHsQgSl6n/CjNp0YJuUM2ZXV
         K66A==
X-Forwarded-Encrypted: i=1; AJvYcCXZ2U5GDcuigsjDH9mV5gC72AiRnphto3KB6XFwPT2qxGyGJaDKrfcte1hDqUSxGUMBVhc6oXllx3n/CPMJbw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0hZp/KaTDQ+ByFdAswoyYiymdz2VoqBeCba7cfIjXluOE3Jic
	9aVpQxeiiAnpgWwvQLZ19XZBGiOJGbzWzXsrcW/bk4QRO+WeSfq2a6OIQK35+oDjt/fiBQgqu1D
	lW4Mhe/45KF90K6hCg4MYk6jUXQxljVpA+VewTxmZ6tuyk3eyPTgrQ7ucjlJSc8ufOpJEbg==
X-Received: by 2002:a05:600c:154e:b0:42c:bf94:f9ad with SMTP id 5b1f17b1804b1-430d748c5demr2212085e9.34.1728430296388;
        Tue, 08 Oct 2024 16:31:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsDCoGsEnLWtBD4wbwe/UtP6akKWGqolcID8v8lmzb3yE09FOD27dIScP1cjciCpbwi3g6+g==
X-Received: by 2002:a05:600c:154e:b0:42c:bf94:f9ad with SMTP id 5b1f17b1804b1-430d748c5demr2211985e9.34.1728430295975;
        Tue, 08 Oct 2024 16:31:35 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4304efc1cd3sm18504815e9.1.2024.10.08.16.31.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 16:31:35 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Martijn Braam <martijn@brixit.nl>, Ondrej
 Jirman <megi@xff.cz>
Subject: Re: [PATCH v2 10/14] arm64: dts: rockchip: remove orphaned
 pinctrl-names from pinephone pro
In-Reply-To: <20241008203940.2573684-11-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-11-heiko@sntech.de>
Date: Wed, 09 Oct 2024 01:31:34 +0200
Message-ID: <87a5fegoix.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_003318_721456_188D93AB 
X-CRM114-Status: UNSURE (   9.06  )
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

Heiko Stuebner <heiko@sntech.de> writes:

Hello Heiko,

> The patch adding display support for the pinephone pro introduced two
> regulators that contain pinctrl-names props but no pinctrl-assignments.
>
> Looks like someone forgot the pinctrl settings, so remove the orphans
> for now, until that changes.
>
> Fixes: 3e987e1f22b9 ("arm64: dts: rockchip: Add internal display support to rk3399-pinephone-pro")
> Cc: Martijn Braam <martijn@brixit.nl>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
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
