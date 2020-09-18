Return-Path: <SRS0=OGSP=C3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A055EC43464
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 14:04:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5923F20878
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2020 14:04:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1rdvUq0x";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkoxVra2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5923F20878
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8340eXd4AJqSYOKLzjLXu8rMEqTIdO/gjGByhxcEkPk=; b=1rdvUq0xcWlGkncJiOB9qr7ux
	9WnZQL8viYJpHpUbiw0maCQBWB+kI0A2Ev/vbT+X86O4/h5FDHhHO40uI/RGehblZF2lWNkYmNMYM
	GL5ol9n2G7yi6c2SYPxM4C6zxzZLQJsaDdD5MoCQSMy7xfBEUgSEUJljmybs7NO240Ydb3/EwfMA5
	gLvFWeoftzJ3PecJKenwcbvQk80EfFhX4jirdMjw6rfaMmyp7JG/6nOoCo0LMy9wZ5ei6l/ejdI2V
	jN7FpMjLnOIXfI8B4xitdXQ+lSXJNheyrm0MpN7zTP/ihdfjtyCCxkQomTtt5ykEknvkA6FWGj+Ag
	2lK3BL8mw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJGzW-0008FG-3R; Fri, 18 Sep 2020 14:03:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJGzT-0008EY-Lv
 for linux-rockchip@lists.infradead.org; Fri, 18 Sep 2020 14:03:56 +0000
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C953D2376F
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2020 14:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600437834;
 bh=jlUpQedx8lxFnhVYRHD0h2Z+8oE7QO6G9HDCL13E1RI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hkoxVra26u+srB3hgMaWdFmgKHe/+4D9c7Q77PzhLQCLd8LvMoHtcMKBh7PQDncaN
 WhnwOkhrhrLq+g1PHNFu7hThsMHxnIOZOo6nv6qUeAwFwKaEyXyzPYBsyOVWXCMMiU
 xqMhzUt8cjTHWfMlYqdGr9EXabKN1gD6ko272Aj0=
Received: by mail-oi1-f171.google.com with SMTP id c13so7117547oiy.6
 for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2020 07:03:54 -0700 (PDT)
X-Gm-Message-State: AOAM533Sdpeh5YhRp2RqyOuNQT2EjE6G/9Fa+nd3FRn+7hpIsTijuGts
 +QJVCvJJ2RfsZs9YW+EpxypU/dnXbtl6UBhICA==
X-Google-Smtp-Source: ABdhPJw5PYmmyHWV1DhKrLllNfPExtmDPBfDoTPRLpa4UM124TtPu7YW7eKVG32FF/CjBLW9jymuFh3mRGXmtomX2ZE=
X-Received: by 2002:aca:4d58:: with SMTP id a85mr8881222oib.147.1600437834149; 
 Fri, 18 Sep 2020 07:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-3-helen.koike@collabora.com>
In-Reply-To: <20200722155533.252844-3-helen.koike@collabora.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 18 Sep 2020 08:03:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJgJYfT7iyxwfhixrBC3npUGZxMa_Dk4=XjKKN-AV7New@mail.gmail.com>
Message-ID: <CAL_JsqJgJYfT7iyxwfhixrBC3npUGZxMa_Dk4=XjKKN-AV7New@mail.gmail.com>
Subject: Re: [PATCH v5 2/9] media: staging: dt-bindings: rkisp1: drop i2c unit
 address
To: Helen Koike <helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200918_100355_777730_D3758CFD 
X-CRM114-Status: GOOD (  16.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 karthik.poduval@gmail.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Robin Murphy <robin.murphy@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Johan Jonker <jbx6244@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 22, 2020 at 9:55 AM Helen Koike <helen.koike@collabora.com> wrote:
>
> Add missing required items in Rockchip ISP1 dt-bindings example for
> a complete i2c node.
> Drop unit address to Fix error:
> /example-0/parent/i2c@ff160000: node has a unit name, but no reg or ranges property
> Remove unecessary fields for the example.
>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>
> Changes in v5:
> - Patch re-written to drop unity address instead of completing i2c node
>
> Changes in v2:
> - new patch in the series
>
> tmp: i2c drop fields
> ---
>  .../Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
