Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB692C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 22:32:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96E5160F11
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 22:32:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 96E5160F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OcwGky3X0DMPYM/i+qxpfRUiB0Z11cHIv4ljMp6wIE=; b=IRnVJqPv2VhF79
	/ZJ0v5EXl5iuKRPIHlA7sPWnn+f+Wdb4Eo+HVFJSm5IoX+3e707Yj3RbEOlfoG6mKzwwHgfcJlPeM
	LH2dIGuf1jsVLrNbnMfXo1Zp2H+5Tu/uAFNHUoU/kDWETE0H/NcZ5epV8erUjPZqd7f/PaSrQ2s8C
	Sbs29EbmbiG2eyQMW5VX6NRXQGmU2Fa4AdFMZ+vQCYx43fyc7MItukeRknq9dJOnJnWNftvh5k2a3
	UHLsw7YsMxK3abTUv6ZlWIz5Q+vpYmC1zrntBoW7be83L1mPfy9larHYDe3fPr8mEskg3ajR1ViJD
	tWu78bV1GMaabGzlOQnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mamnJ-000sFX-0X; Wed, 13 Oct 2021 22:32:17 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mamnG-000sDV-0t
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 22:32:15 +0000
Received: by mail-lf1-x132.google.com with SMTP id x27so18156860lfa.9
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Oct 2021 15:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T/OomM9w2GusTbCVdWitYQJgC9/Z986cg3wMugLDkCc=;
 b=iIn8C5md7RBiGzfnw2bAipABPt+03zPtv/DOq/HLswL8ElO65blVWNj9Xi0OdYbSVO
 Eo4zFMFHuevfXEK92pXYjENk6eY1NWcLNe4lFjx75z+2MjgoQUkSqqpAoqRYLhfEJddo
 5uMzn/mOrXGlBg75XlWecvyBlqKFxEusfRgLWijGHPegycDKaFJbFlOBnqxtQXv31lGb
 d0X+r94JhCIkuxRKm6yBj/ouq7toJNfJ9SkyJwwK87fhNSxEja+J8JtvsDm5t5fZlr3/
 8tCIWi0WipX/kw0TTbIFGX0BTole/YW5bn6Vf3U8qbZhUTt3MFm/9LjEEtqjcFKoV/sP
 +PfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T/OomM9w2GusTbCVdWitYQJgC9/Z986cg3wMugLDkCc=;
 b=MVUiUsMo4o7FSwHUBHPeWunFeknOyy6LLwhAj5abmTnZh7zKGRj4yaGukhU85GDK4I
 j/D2NPG4eidF7en2a28i/GVdxQHgSglOR/+yLWJJGCvYzdU4A3eDVOb1RUQ1I5wg3Rc5
 k4exFHnCRK8iFRjW+RtCbK4wuP+3SDxLZp0G6cNXlhbPGavCLZQf3CKo+yUtr93D5mup
 1PdTR72nqvKws2k5v7sOxEPeZl2LLlb11HviyAQmc2oS7ErVltsoJ3r55cZFVZCCMxND
 ufGXO+5K46uhN/g7r0ymUTzazoXyJhQj0UR5pfxFH46eWBAtOZF60F9LEZhgwiqlm8E4
 ueKg==
X-Gm-Message-State: AOAM532ZtpmRKVRlmCD2Rj6t83h81r8mwRS34SGZqCA+5soXg34On3c2
 qNHbgl/YT8QDdfymo34RmHnztE9HkzzvLrnu2wjyTg==
X-Google-Smtp-Source: ABdhPJxBSo+RJ+XSsLVvldxL70PplGkXVK8P4+WfUMNkYtB7Bu45xbhCyoL5p3gR6ii06cEdUwToJESL+JN7cP8U8Pk=
X-Received: by 2002:a19:c10d:: with SMTP id r13mr1679243lff.339.1634164331067; 
 Wed, 13 Oct 2021 15:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <20211007144019.7461-1-jbx6244@gmail.com>
 <1633661172.660863.1409603.nullmailer@robh.at.kernel.org>
In-Reply-To: <1633661172.660863.1409603.nullmailer@robh.at.kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Oct 2021 00:31:59 +0200
Message-ID: <CACRpkdYArdPwEVf_5pwsROKPjbnVAtU3mf9v1z6WXGPoBb=SZg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip, pinctrl.txt
 to YAML
To: Rob Herring <robh@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_153214_096084_001FAD9E 
X-CRM114-Status: GOOD (  12.80  )
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

On Fri, Oct 8, 2021 at 4:46 AM Rob Herring <robh@kernel.org> wrote:

> On Thu, 07 Oct 2021 16:40:17 +0200, Johan Jonker wrote:
> > Convert rockchip,pinctrl.txt to YAML
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >
> > Changed V3:
(...)
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.

Rob can you tell me how you like me to handle this?
Do we merge the nice new bindings and deal with the
aftermath or do we need to fix the DTS files in the same
patch series?

Thanks,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
