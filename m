Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF44C6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 21:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbcGkX4Wzd0/lXqxQ+otR6vKJbQxyqdxs9iFUXqV/+4=; b=45C0kSuvcBRBV1
	WPSov8ZtQAN534pZy0jjOuLC9xf5VMsyesKLbdWcyBU/zebv1Z9TIof18WYrMICwXsHrMtuuqBAla
	kNYSkTzFUqL+dQj+xjdTMfnIF7Bl2Fi5daB7dRtdIyo+V2+42UsgNIBVv5AFVQGzenVWtY5F+8Ukd
	oevV8LZpr4WIeXgnwo6MQKNEpMEwosRfsiGCg6lzMe56yqLQcwrKPBGxDcq5EqL7nTPQS3dRGOwzA
	KIyJQLuGf23fsSkWlnZByOP0QOabAMFeN/DwPbLeKQZaTfAToXtlUP58yZj7haRaSo8VLy9m4beFl
	J2UZb/zj40DdSH7gmlPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phdiS-001vcg-0w;
	Wed, 29 Mar 2023 21:52:24 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phdiH-001vY3-31;
	Wed, 29 Mar 2023 21:52:15 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id cf7so21268035ybb.5;
        Wed, 29 Mar 2023 14:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680126731;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wh1B0599Qis1A5KRvW2arbaj6Q9+dYZeQ7c/+45Fju4=;
        b=PtV8HQIdwUFDt74n8e5c6Q2benaGSLK0mtdGGhQKbgzaTBKH4NN74bLPdx/6Hf39bB
         /S/q00tjqZwETDscT3yb3X7cqI06LMq4LfxQVT8LexgvRC8e+8StVXtc3gJD/7Qr8Hi8
         J0U92283Z1S8xuUf26T7Ao0r1ORsSmofG4ebMYJlwxfRSrGO5HMZH1l2flfqmux/+eTQ
         HzTEfqcOaptBh8p2R+TvJJW9GH9uOe0jzPu/Pj1uNJsgc1vil9v/8goS2LOjdfuDyps1
         4wm8p9Y+ya1dMYw3wI0EBiXtK9ygbZq3m3xZsmhY4ptKpjHwJiqVFJezk1gpo8x7il6p
         rdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680126731;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wh1B0599Qis1A5KRvW2arbaj6Q9+dYZeQ7c/+45Fju4=;
        b=D3L+5EHHukCg3LFMtaFfbuvIbyyO0VVDWhyh4Psob8YnCmVJV9/vBew57DQ5FhdbgL
         TRn4u5cno12WcAkfPOBQ14PQuLJ85XlkXOus1Q2qS4dIvoi7vvcJBhVxs2/PVX9z4zJc
         Hfz9Og6yvKElDOqtMnDb3fB6NK8npeSnbqtCMPK01C03kG+oJVePyXtTf7zfruHPanSS
         Fr/GoVZvo2ddC9veG3W7tQp0BY4hmmpIYLTiUqXMtnKkKVlo83rWYjynN3k2bsEn2l5b
         viWSVCztSbWzFNamDi+bB2EKrbDEJobf10nwwrb9vzVz8nAjnFWukQTMGtkMbj2S4BI/
         9f9A==
X-Gm-Message-State: AAQBX9fSVSAxMAz7cGsMOHk8ZdmtZqxnv/v+Xf4K2+pqFvXEXT73wp7F
	Ru5TNrjrv/TPhOttN2BjpsQ=
X-Google-Smtp-Source: AKy350bi4OXB1GzOB9yXEI/9SI7hN/blDYvOoj9AynOzMz7+0VnDJGXWeYDXayBQznPtopkd6xXdQg==
X-Received: by 2002:a25:f826:0:b0:b6d:5e86:7ed2 with SMTP id u38-20020a25f826000000b00b6d5e867ed2mr18841698ybd.36.1680126729127;
        Wed, 29 Mar 2023 14:52:09 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id v130-20020a252f88000000b00b7767ca7490sm3721007ybv.45.2023.03.29.14.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 14:52:08 -0700 (PDT)
Date: Wed, 29 Mar 2023 14:52:07 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, wim@linux-watchdog.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	jamie@jamieiles.com, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: rockchip: Add
 rockchip,rk3588-wdt string
Message-ID: <b3bfec84-b8b4-437c-82e8-37c6812deeeb@roeck-us.net>
References: <20230328210048.195124-1-shreeya.patel@collabora.com>
 <20230328210048.195124-3-shreeya.patel@collabora.com>
 <157937fd-0af7-4ff5-8430-2f956c7aafba@roeck-us.net>
 <4256207.ejJDZkT8p0@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4256207.ejJDZkT8p0@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_145213_991335_4B2ADE33 
X-CRM114-Status: GOOD (  10.99  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Mar 29, 2023 at 03:04:52PM +0200, Heiko St=FCbner wrote:
> Hi Guenter,
> =

> Am Mittwoch, 29. M=E4rz 2023, 14:47:34 CEST schrieb Guenter Roeck:
> > On Wed, Mar 29, 2023 at 02:30:48AM +0530, Shreeya Patel wrote:
> > > Add rockchip,rk3588-wdt compatible string.
> > > =

> > > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> > =

> > Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> =

> just the usual question who is expected to pick up the binding patch?
> Should I just take it together with the dts-patch or do we wait for
> a watchdog-maintainer to pick up the binding alone?


I am ok with you taking both patches.

FTR:

Acked-by: Guenter Roeck <linux@roeck-us.net>

Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
