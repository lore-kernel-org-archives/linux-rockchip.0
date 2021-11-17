Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FCA3C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:00:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE14161B29
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:00:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EE14161B29
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J1i2gro1IkngVUDGOGZazg4Nz9eBO4w1O+6E5CovbE=; b=WIh3E2Q4S/YK+Q
	H6ddTJb4r83ncqmAloLCDURCUE+lXxcKfUWiYTQGvnCc0rmbxnx7at9YC90f+ZjKMD2O7pvFDe1YW
	slCkoKcbqFKAEPDSQbqcbGmwsqHZWaND6b+EOWTsprgW0HQEntaf2i+N6sLCRtWauLFrG6r4ajm5V
	kts010CCo9SU5mScUqPkdocduwZV3WAjlVZ4gif7adZgqwU3zQkMFnOBWpoblMIyzYCIPIqMMdYjD
	ghkv5hUEmMQG7bIxQmcpsP6Jx/ycElPv7Njy9IwmKSA03VSUfHQswa5C3AR1tYJIZ6B7KnEAy8FQg
	KzeJ5/dmVHDTD/l0HYjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnMQP-005Hoa-8o; Wed, 17 Nov 2021 15:00:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnMKp-005Fel-Ha; Wed, 17 Nov 2021 14:54:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B22A61C4F;
 Wed, 17 Nov 2021 14:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637160891;
 bh=bgjr8yJOWsL+nIbaL9cKsP3o2b2qmUpIgL5aZebelLo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JTd+v5Z6z01TfR/bR9dmTn87qBNRyDSSvXGsI6etW0Txeu2IWFcrwMihng3+EG9mz
 LKecFZeu1/tBJmEol1kk0tGJY+wpza49zFtz0zxD9ncwSonfkgf70Oxdjp2X6g3p7T
 fxfHu+nWTwLhQptBX4c71rHmo6sjpTTuzP9WxA62K19TLz9n/CQYcGVv6h1aakx4VA
 B6aTvz9mvI5L/Q0CN+S7SuD97aCm0chOJC/75/rggKjR8MNq103umV7WwdkQlXaank
 n6+8i6L3FxSrCDuN2UNRGsp3YKneIHfGYkdPqzKWyHrPRQD19t3QDXjbbWTemFj2G3
 vv6FvS3XEMRzQ==
Received: by mail-ed1-f48.google.com with SMTP id x6so722370edr.5;
 Wed, 17 Nov 2021 06:54:51 -0800 (PST)
X-Gm-Message-State: AOAM531KuU8g5Nek7lcHdkkmXxGSzavKXolKaSkluMICXTbzA/LU+F77
 Wa+FwtcbKmtORFK4D5E4fu7+vCkJc7AIfu3kBw==
X-Google-Smtp-Source: ABdhPJw0S7ajbekMY4Kz6agkssG2VWOwZDiRqdiVwjh429yqwO31JlqnTUZtYuiwYFavxe4b0vRatEav0QC/Rq3OPEs=
X-Received: by 2002:a50:8dcb:: with SMTP id s11mr22594000edh.318.1637160889361; 
 Wed, 17 Nov 2021 06:54:49 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 17 Nov 2021 08:54:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
Message-ID: <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_065451_643429_D70DEEE0 
X-CRM114-Status: GOOD (  16.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This series adds initial graphics support for the Rockchip RK356[68]
> SoCs.  Graphics support is based around the VOP2 controller which
> replaces the VOP controller found on earlier Rockchip SoCs. The driver
> has been tested with HDMI support included in this series and MIPI-DSI
> which is not included because it needs some more work. The driver is
> taken from the downstream Rockchip kernel and heavily polished, most non
> standard features have been removed for now. I tested the driver with
> the libdrm modetest utility and also with weston with both pixman and
> panfrost driver support. Michael Riesch reported the driver to work on
> the RK3566 as well, but device tree support for this SoC is not yet
> included in this series.

Can you outline what exactly you want to disable? I don't think
'status' is the right way. I think between the parent device being
disabled, an incomplete graph and user configuration choice that
should be enough to disable parts.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
