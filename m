Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4C07C46CD3
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 11:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fDttSrdM5NP+bXHbSC5yFLXLg2QxUztq5t6HSz4bhY=; b=rJU3m+0ycc+MI2
	kzi8lmM/MfYTWQu9Zd4q8fR4HaKJM8092xDbdKgB2Xn2/exuICuRZr0u/ymnd3AWCqFRew7hC0JCf
	/F3ZkPHpHM5vRcuqnW3el8MAN9ChHfO3BTtfplHZjeltG2cU9JS673fS4FGuYzOKDqcLmsH/5WxQk
	InuPb0aUbo5y1daONsrDxwKdcN0U9iVAP6grulK7mF7VVbdxynDp5PJPhKXZLWLz7dLspORLNr7qD
	CtQaZpkk6CSDSpqc8UyepU/gIBk4ZYWaPe+8UWma24+feSBiZGb/47RuqpxPSI+TH+yLCxfIFhaRV
	/kaBGUSc6BiDfdtrcn7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJAcJ-000eZh-2A;
	Fri, 29 Dec 2023 11:01:27 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJAcG-000eZI-16;
	Fri, 29 Dec 2023 11:01:25 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50e70b0b869so5013847e87.2;
        Fri, 29 Dec 2023 03:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703847682; x=1704452482; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i0ULouMbZfbNQIosOC2sdx22KVaZt1+H52YT662+sxE=;
        b=JeljwIteNC6rLrxx8ZQ+ovL9QZGhN9RuYlUvr/AQCa+g+YwzbTXUGNPPp5bKemtbPA
         cYmpyXWjHTpH9SVfu+6btxBijTj9ZbaIh5Iph6nPIj/ZdZ/lQK7idTjfJwH/uhyFBN6l
         dRtAVsbwBdqjFIrt375/xFCKwG/Zq3a8HoWQJBBCieBADrWqV2ngXKMxfthYbHBGcwVm
         db8SJILU3sgRUmU/xEmmtOAllDJqh5eTHmEQVVhOfHAcoHBsoJ00GxCNMZcaVNP4cHFZ
         bxKqIIkAr/vuPIXNNoyZxlbILJ71O40l0rVh+5ryXEHW2wEJfzhIqZHL8zb5wlDOvLeq
         b72Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703847682; x=1704452482;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i0ULouMbZfbNQIosOC2sdx22KVaZt1+H52YT662+sxE=;
        b=pmIJdjFedYo2TSTlxn2UWxWKkf0PmY52FJXU68iKUbuo0O/GUGYqG4MTOn5qoO12C8
         DBHjXOru4Oba6cOxsWReOdjn2wUJ/f1QjeLucriWKD4YX+p3H86VUe/iCgACNUKzQmmt
         6Nk0wNYMwWD0WG2um0aLeZoh9t3WsbZsH1nQ9JeyUm6wqkACOhZdyHbc1UvBjoX7UMxu
         4teS47VWhTmn7qofXBijjV5D1m8K9ReSTWnQLt/su+oUFKtpx3IFpO67sAeRGLgUOXMj
         ftWpIBpPJD4X+fhtIhuRW6qHORZQFosVjgjoZ1E6aJujMYHo4Fm4HxOUuUy3aNGkn3lt
         aY/Q==
X-Gm-Message-State: AOJu0Yw/0t1Q8afwYfT5BVqodCGPfQshAJHuPtXb5LN2xlibatxHCeKJ
	QTlzMDI3EiWPD/Os/fZiuxs1XLo8zjf08XfSqfc=
X-Google-Smtp-Source: AGHT+IFYmZYcuaNbniJSBscSzp9FFsmSNpN2Lf6ogu42hEQ/b84GJyhHVpKT54sM7Bzbn6T7OweYzUudjSyuZqxMlQ0=
X-Received: by 2002:ac2:5934:0:b0:50e:7673:54d4 with SMTP id
 v20-20020ac25934000000b0050e767354d4mr2872352lfi.29.1703847681448; Fri, 29
 Dec 2023 03:01:21 -0800 (PST)
MIME-Version: 1.0
References: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
In-Reply-To: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
From: Hugh Cole-Baker <sigmaris@gmail.com>
Date: Fri, 29 Dec 2023 11:01:09 +0000
Message-ID: <CAAXNxMT3f68-ptM7Crhrfmn7iwTyJc9pwz4Beob+5beVODaSHQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	heiko@sntech.de, sfr@canb.auug.org.au, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_030124_380040_78751CB0 
X-CRM114-Status: GOOD (  13.50  )
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

On Thu, 28 Dec 2023 at 13:16, Jianfeng Liu <liujianfeng1994@gmail.com> wrote:
>
> This is the v2 version of this series adding hantro g1 video decoder
> support for rk3588.
>
> Changes in v2:
> - Fix alphabetical order in patch1 and patch3
> - Sort device tree node by bus-address
> - Drop rk3588_vpu_variant fron v1 because that is exactly the same as rk3568_vpu_variant
> - Link to v1: https://lore.kernel.org/all/20231227173911.3295410-1-liujianfeng1994@gmail.com
>
> Jianfeng Liu (3):
>   media: verisilicon: Add support for Hantro G1 on RK3588
>   arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
>   dt-bindings: media: rockchip-vpu: Add RK3588 compatible
>
>  .../bindings/media/rockchip-vpu.yaml          |  1 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 20 +++++++++++++++++++
>  .../media/platform/verisilicon/hantro_drv.c   |  1 +
>  3 files changed, 22 insertions(+)
>
> --
> 2.34.1

Tested H.264 and VP8 decode with Fluster on NanoPC T6;

H.264 JVT-AVC_V1 test suite:
  Ran 129/135 tests successfully.
  (matches FFmpeg-H.264 software decoder)
H.264 JVT-FR-EXT test suite:
  Ran 44/69 tests successfully
  (some failures caused by lack of support for Hi10P and 4:2:2)
VP8-TEST-VECTORS test suite:
  Ran 59/61 tests successfully
  (matches FFmpeg-VP8 software decoder)
Full results at:
https://gist.github.com/sigmaris/d3d8586bfced5ddc021aa9dab94d4ab8

Tested-by: Hugh Cole-Baker <sigmaris@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
