Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E5F2CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 12:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0k8czbvL/caX2tiSJEa66uwAZ/jB1kq38L4wq3BG5M=; b=Ijm/+2/L0HZazV
	7QGhawMIeKloLyMOh4CMRJTMKqYG8iVX2EM5CVw3HGY88KpHFD4Wsa2B+GbSxodc0dhzkydKr0Z0l
	ZK7lHlbF4zmVBVMhHpvwTj6HxdACsAzFQVM1XrK0TkQPdAn2+6J8bfkjKtU3a4wIZR9omIuPYom1c
	7/Q3xxvX40n70toL517N0tbx/mTaNgrwhkCWWYAKugq0XR7wyKrrURp7lhhbhX0MHY3w51rYUztVX
	ukiN85DI68ybZI8lUIZNZTo8s2o4494FX5crOY+ClZakP8H+c+HCrlQ9uEmjVLUOVm+VfTxifZbPK
	E2Or9ZIfc7dDuuUHwBSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYQR-00000002uDU-2jBJ;
	Wed, 22 Oct 2025 12:58:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYQQ-00000002uCR-1g9a
	for linux-rockchip@bombadil.infradead.org;
	Wed, 22 Oct 2025 12:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LqfpXhH8oikGFpnElT3hOnVI48sa1H9J9/n1+8f904w=; b=q2cfsDGWSNK4lRwUadCsPFkIFW
	OYA2s3qFeqBUDy6uDhexwUGwk2U8W7RQguY246Pl7/Y5cSM6h7ngUuEMTrVYax3RxAvGAqBhh5osb
	fIwRHoRFmlwKPniZKBUP2SDnslNuchSIMcIKEYfyVXf/x0Iptu/C1ff6D3/tSIPHD2hECk/f1uO3q
	Zy4K3GAXXFVJ5JWorbFRydHEWQfrsf0deCKU4zQYdcq3V94wcwMWkWg3ZNDXRkikaKmdVovOyBNqh
	SyceLHecWzO44x4zxIsWVzk3HaeCqpxaP8ERu8/BOPlsHaaTI1rPBGISvXP23R3YWf5cFawQ1cc2v
	s7e6vrdQ==;
Received: from mail-yx1-xb132.google.com ([2607:f8b0:4864:20::b132])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBXYg-00000000YXU-2ojf
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 12:03:17 +0000
Received: by mail-yx1-xb132.google.com with SMTP id 956f58d0204a3-63e336b1ac4so1644895d50.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Oct 2025 05:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761137919; x=1761742719; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LqfpXhH8oikGFpnElT3hOnVI48sa1H9J9/n1+8f904w=;
        b=QWU/89x2yZ6iDU18TFH6Tz9cCxvTP0pdnW3dgSyNpM0sXC3jmjUd5t2CZGiJgA0a6w
         deKSIq1Ev4Dw8LdvKgvEn2cEKpWL6vnI0kjS9WBkF2j4CzRghOLoPLqRW2g9aVRH4jmm
         F9uFIY3eBvO83iobMvcmdtTkuI7QI+nCMW1HgOX288gN6EQF9sUWqrzQE/chsfcaAsV5
         9dT6SLscrwLGfBUmf6HoRSZgZR9XLv5d/urSpWK+XD5wDKzKH057BYosorIyGTjNjwSq
         dCLQsQqTVjRn6uhBH4u8l0tTbr+dO+PTi2rUNVZmFtMPCNgMvGxuX3pPoLCygvzZbsoq
         D7lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761137919; x=1761742719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LqfpXhH8oikGFpnElT3hOnVI48sa1H9J9/n1+8f904w=;
        b=KQK/x+gLmc6SNvrLwMPbDELCCyso+wVEGjAbAvpzLNGR7BqgolPOXJhS0wkZA4N5qB
         xfI7zlayPTD0dJl5FC/b7WuzmKWPqb1zD/39+/q82XUUBGE1CApc5Dje0yy2UjjRvTTf
         rh5CtfhO126RFAL6NQsvcTr3sGSim/gOOXDL14TNam2kHFn9d7qoUVVK2FvnQ5ALsjoE
         32MwIjHN86AQpdzN8CjuaU6FM6qXPxVTNV3QBthZX+07wHy+v/5CN08hdjiTH3zoyOiK
         LHc9GD9nE3xZxxnU1QbIDS9cUe/c2JZeAggoJ/NmyCLdHGMfcbQBoqfTubsd9TejG1f1
         HxyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBW9PeHRd1HS+QlXLFRDwyoGuAztitVkKgedCbUewIRBw+c5OdflWVKfglM9XtppHm5qmNozNHVJdGTtdutw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyM0I+2lSJ8lQYZGC6UyolQc4+Drtc3Kg/GFQL4HJZBF0wWumv7
	yi0yiiRAxOvn4y1CMw2G8WJqpZhwLzr/WNeYkeRsWxpyN1ApY6u4wnXhLDDk12+HSY9gd/3/9bH
	jsSZ/YzddlMQbLDfc2U03FCmZTKz4Rjvvy13J3U711Q==
X-Gm-Gg: ASbGncuiGOnmMZyJC9wnfRpfPFTrqVthWbK69gafo5Bvw9ZuvFVsTwP2590MNQoQKvA
	Rm2xU2+dDrEZgY9iGlM6Xi4QbGRYA+LACGZHp/7sVRDicENLW09o19jtfo4DgXqNmk/PiOvyYVZ
	3RI96+DZh7SBXZnIHmyUFNQRl92am8mQPE2XAtCZozlXn9rM5XLfQ83Vy+BqZDuRpYnZYeTuPCC
	tTtv6RUBmwlvSW81Mrbox9E2slxKob9gTN9PZ5wSIEQttv6SoHDirUjcJCKWHowk+qGrnv71QXs
	AFjnTVI=
X-Google-Smtp-Source: AGHT+IEjyOT6ZnWjtbuwKFmQbeLCXJvC9+ovHItNxLtceyMzt5RJXygROmaPW1mTzx718f9fX9ymVtGCF2aAo4JR26M=
X-Received: by 2002:a53:da0d:0:b0:63c:f5a6:f2d0 with SMTP id
 956f58d0204a3-63f2833575dmr2112548d50.31.1761137919613; Wed, 22 Oct 2025
 05:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <20251017093834.331998-1-finley.xiao@rock-chips.com>
In-Reply-To: <20251017093834.331998-1-finley.xiao@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 14:58:03 +0200
X-Gm-Features: AS18NWCPlgQ2C3y-wODiJDQlKOeRdWjBY3paMVLSMS-IfDxCiXVh7nLiSG0YRnM
Message-ID: <CAPDyKFrDAmfN16fQdf5en-Du=sG5U61NK7vRhd_CtiSz19rU_A@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add power-controller support for RV1126B
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, zhangqing@rock-chips.com, 
	sugar.zhang@rock-chips.com, huangtao@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_130314_823593_08C1A8DC 
X-CRM114-Status: GOOD (  11.39  )
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

On Fri, 17 Oct 2025 at 11:38, Finley Xiao <finley.xiao@rock-chips.com> wrote:
>
> Add support for the power domain controller on the RV1126B SoC.
>
> Finley Xiao (2):
>   dt-bindings: power: rockchip: Add support for RV1126B
>   pmdomain: rockchip: Add support for RV1126B
>
>  .../power/rockchip,power-controller.yaml      |  2 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 41 +++++++++++++++++++
>  .../power/rockchip,rv1126b-power-controller.h | 17 ++++++++
>  3 files changed, 60 insertions(+)
>  create mode 100644 include/dt-bindings/power/rockchip,rv1126b-power-controller.h
>
> --
> 2.43.0
>

The series applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
