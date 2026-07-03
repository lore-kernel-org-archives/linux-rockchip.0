Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11BEFC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 20:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X5Uf5kjDowOiOj/ksKZCvempPkwznx3+dWKPLIcGsiY=; b=uod2Ma1Mo8doRO
	9XJnhojR9py2hybkEzjhprh4k4YwnY+4ZC1dBPCCDVE2sokAHNlBBgWon3ogl5k8XcPiWWCPzJVdt
	gEZvwJKXh79TzFv6ojKZGxYng9G9du5cPf/WPQlMrumf/MlDhwFwnO+nqXD5pcuatIDCC+v+fRjs8
	OBqAUB6UiWCCpm741dFLvOHAPLhZOgCLGvNCpO7cDjvNtIyz5Am3xat/YaIOqvg9NfjU7P+wEK7Jp
	PvJfrlg5dNtTx55gjXtGsYJ1ylqw9kpNVsMRn9oi/scPnoSwNQ35RZAdN8RYaNFyuD9MIotEo7y5q
	vugYvQUpkZmPRMxjAgfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfkQM-00000007q7g-3KGg;
	Fri, 03 Jul 2026 20:23:46 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfkQK-00000007q6u-03Px
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 20:23:45 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-846970f0acaso819674b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 13:23:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783110223; cv=none;
        d=google.com; s=arc-20260327;
        b=I12MzpYUPNrk/GsMP44kH/2gmbaMU6h3pOYWVobxXxtr5SwldPZP9QlAp3ToqOrzCf
         otuS+xpsZWkViQgM3QEBfH5OhqT+5ZVPMfImDqsZudYNgIFiczabWaQrxfN7p43KEvAK
         edK5Smdm29NrXrBfls7qHU7nYWU59gyqm+/KJA62DXe/6nAvTNAbhxk8CC+UUHUpyf31
         pO+udy42bs/CqIJcDOZ/uc8EidPGVPPCuMeHSGt2dvj40RWzJRJlk/eEUf7ZcmWidq9H
         8x4xdjbVdWdraBGm6L7Jwf6dt9sjiqsPH3Jgs3hEbfm1En0vKJJ5DxECdzun5H3zGloq
         3BsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mRs+IJvtl+S/Pu16c/TYvy9/SL0ko1Fkla/ifix+DNU=;
        fh=00p1S7Ceuj0pXm2e6IoT0gp6HaFFPuGJ58DX+98hOcE=;
        b=pOJrCVdKF2Gm7won1DWfNRVAJeKeILrdZA9JW7QjN2Cza2T+pT0NIsIy+iihjl2w7K
         Z3vMaettDNfkU1txTtsJJGDayXpTMdv+ZtphrmFE1SBgpXCMltGIHWLWsqfDyL3gfL8x
         G/eNIIN1DnetD8vEj9EqtMNJ5NOck4hfZfBW32QmN+KWm11p7DLp85FPi6SfnoBtXgX8
         zOKRyuLduC2OQIIPwQLfJi/Y9xJJl4teDAdeDUzP8f9wK45S+G3lxAJk3IRzuUGJGGMy
         YpbFf1ktSZyyCDFzzcabu30rQiWLVusSo4JV5pbl7X7x/dSl9rqE8+ocLmq3qCfYg+S1
         kr6w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783110223; x=1783715023; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mRs+IJvtl+S/Pu16c/TYvy9/SL0ko1Fkla/ifix+DNU=;
        b=k3Iluaya8hJrN7cNlbmRU0xGKGa2o1waN5X1FTHdfKjpaujdg9g2dPw2sFA1NPMalg
         d9f5zcK5UNnWIHwSEKZfu0VZkF5ezJlfZIKaKw7rmWy0XXveUCr7xcgaGUbvG+QO6dMQ
         bPSqSi/MJ8kmoQi21lX1sdb7BEevkpSaETFLClDehOPvjX7T7CLTF/DxB4Je8P+d1hsQ
         TmKLOx+VNpW8h98NJW1lXEYYJmCUoR8zSu2QRYhJBYhpQusfClY3Kb/jJCCBTrhmkKVW
         gwQRhPFefg1Fs0+j7V0oS9SRruHIGk3wmONfIRabkopF+3tGOMBZCLtvHwOGpv4teW/U
         NInw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783110223; x=1783715023;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mRs+IJvtl+S/Pu16c/TYvy9/SL0ko1Fkla/ifix+DNU=;
        b=CPOM1uvfp8n81wkjiRlYCIN/vO3/6M84dcdMVpv6zfZYofxsLxu7EQnBJYohgrGvhT
         9LbfdmBEblrXbwG5EhhFMuDRd+W4lVtDYDGu+E9f60N4U7QvUvJuNnj1J0z4uU7z/Kv/
         lZP/zf357L1JWE+A3Wgw96Fo+pACt9nZ7kzvYNthpByCCg8mXbEyIhhQqw4czqDLIf4v
         JGmDAxU7djA04yBt/LZnEYNSdnFfIF4KaTIzvnr+PBmbuTk9ssUIJdpV9Cbm1PLYW/jU
         jdpqprdd04HjK3amRjKd+iD2aPI9zj0xfGxCosDzpbRPd5NuC6XH5jqvzdwT/soNKXH9
         PuHg==
X-Forwarded-Encrypted: i=1; AFNElJ8gkUr/5Ev6/onRg7ARZQWeD8JoGPKw5WktPzL5y55isZE4QYF/NdkdcZeRMqFdX6gH1bCfVTlcn5zmkUFHuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxLiEn3QaX32rlR/Eyj4cxXAg+PVEs6bo+ty3SM24B9ADIMgGCt
	OPBhI4kzx/WYrQ7AF5EI61sxIrR/EpLGWhQf1VN7eQuDbQX4g41oy6cZ+KDiLcMKKduAILYymX9
	btRqEnYjJQhOd2RCIMjJLjT54/CIHR00=
X-Gm-Gg: AfdE7cleW06REfa6fGDrwzr4fhHxsllgHgHxhPed36yx5BPLkNTo00KBpMDhwW/Qzgk
	qFL2+qw8XmNya3/+SixoDjhLhJQyTmbd65hc/zG+Iji7NpMXN3a8GK5P5eZGj82vzEZvuCnqM0O
	2Wy2jxVOHo/Y4pVTWRpeng1BsiMaS9qcQEEbQPmTTw6TCg6DDXzKkZ7c0EVZyxrPYoUxuBNQRGf
	6/bBSjfFi7xpgea2RyIxtuMGr6mOjx8u2CHpL7Zx6xXz7Q/B47fomiZOxEfPmEbejsm9Xtf7F7r
	1TuFEeppNxPQKEvnVeqcOkczZdyYGWxEeGO/aT8KSnbiyAfrjbTmFWlSDERVTEg=
X-Received: by 2002:a05:6a00:1f09:b0:847:80f5:c612 with SMTP id
 d2e1a72fcca58-847f6dac812mr791279b3a.15.1783110222915; Fri, 03 Jul 2026
 13:23:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com> <DJOWHH5K7P76.3JPJVO47K1SZE@cknow-tech.com>
In-Reply-To: <DJOWHH5K7P76.3JPJVO47K1SZE@cknow-tech.com>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Fri, 3 Jul 2026 22:23:32 +0200
X-Gm-Features: AVVi8CckAXJDSb96QzP_ICWB4DkiCnysZhniMzHMp6xtZ-2xIzGSQUlvFXbFqdo
Message-ID: <CAPSPb=tZ1FenNfEM5P+DWcksKvpQjyQQjAWTRdyxb7=YYxY_rw@mail.gmail.com>
Subject: Re: [PATCH 00/12] arm64: dts: rockchip: Add NanoPi M6 board
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_132344_046380_8C40FB47 
X-CRM114-Status: GOOD (  21.13  )
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

Hi Diederik,

On Fri, 3 Jul 2026 at 13:30, Diederik de Haas <diederik@cknow-tech.com> wrote:
>
> On Fri Jul 3, 2026 at 12:07 AM CEST, Joachim Eastwood via B4 Relay wrote:
> > This patch series add support for the NanoPi M6. This board is very
> > similar to the NanoPi R6C and R6S boards which are already supported.
> >
> > Main differences:
> > * M.2 M-key slot with PCIe (Also present on R6C)
> > * M.2 E-key slot with PCIe and USB (from hub)
> > * 1 additional USB 2.0 port from an on-board USB hub
> > * RT5616 audio CODEC
>
> This seems to be the M6 (2405 aka 'V1')?
Yes, correct. This patch set is for the original M6 board. V1 if you like.

> Because there is now also a M6V2 (2603), which uses an ES8389 CODEC:
> https://www.friendlyelec.com/index.php?route=product/product&path=69&product_id=319
I did notice there was a new version, but I hadn't given it much thought.

> Is it useful to already take the 2 M6 variants into account with this patch set?
Yes, I think you are right.

How about this setup:
rk3588s-nanopi-m6.dtsi
rk3588s-nanopi-m6v1.dts
rk3588s-nanopi-m6v2.dts
This mimics the setup for the R6 series boards with rk3588s-nanopi-r6.dtsi
and rk3588s-nanopi-r6[cs].dts.

Note that I will not make the v2 board part of this patchset since I
am unable to
test it. But as you said we can take it into account now.

If you have no objections I will integrate this setup into versions 2
of this patch set.
Thanks for the feedback!

> https://wiki.friendlyelec.com/wiki/index.php/NanoPi_M6#Schematic.2C_PCB_CAD_File
> https://wiki.friendlyelec.com/wiki/index.php/NanoPi_M6V2#Schematic.2C_PCB_CAD_File
I did a quick comparison of the schematics and noticed the following
differences:
* New CODEC; ES8389
* A new "User" button connected to a gpio line.
* Different USB 2.0 hub: CH334P (may not be relevant for DT)
* Different USB PD power solution (not relevant for DT)


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
