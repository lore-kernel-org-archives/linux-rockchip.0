Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3FA5C77B6C
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Apr 2023 22:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9lK5QbXpyXneRj+LCPbhkVrR/w8RAgjr3fGb3e7/2x8=; b=XEdQm1dAxo/Zyw
	ebNYRVeBiUCL/jpiXlYy5+X8nXlF5YFeWH4HUOf2E3UIcMn7rOusrzDDtIXsWB5bWh0yd3xQ4YVZH
	f0BYKC27uMThqGHQzP6fOPlrG8pCdjHL9nNJ626IKuOT8/rgg6q9v8Bt3l5H1FUG+DMtvqjkfsA4e
	ZbX31gnv4UBGwhL3I/74/76oqssGo41RmGDmGVCjgqOsqpXR0yPwNG+KhNvnXNKlaQOwLErLZr1uo
	zFmT87j+AQMJoAx+xsmfMzAnBWV/owbdREjBWZGVWJx5zLC92Z4KoBJFSIZ7LgRS+u2oKUC4Ett0u
	adGEtn0YwXpS4QN8RDVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmiuN-004XFj-0f;
	Wed, 12 Apr 2023 22:25:43 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmiuK-004XFM-2q
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Apr 2023 22:25:42 +0000
Received: by mail-oo1-xc36.google.com with SMTP id f7-20020a4ab647000000b0054101f316c7so5319350ooo.13
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Apr 2023 15:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681338339; x=1683930339;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oYrVnIdIMe1X+yaSkUK/XlLtFE+N7rK7Y7TTv3bj20A=;
        b=Yxc4rI5GY8DYiY9ZZzMrzHZjduPojUkWA71EQoIZ/Oe+aYS3p59B+TWsnMxXD9As/P
         BPC7AzMns193PV2PG+RBA5AK5g820HmQYb2R1aDLHMNY6uabnnUIngDuAzMczXNUbjQ3
         CWQ0WR0Y8eIKTNPV3GGrhIB8L3uJwJTJby04F9WWWNKXPDc3Yl36L0lqRm1b2Xawc34D
         KH8bKT6+XsSMnUrLIuNLJ80AnrRBkWlgBKJXSFB+JaB67Qw77yjBm+tpzNQneQL0nym9
         51QjoxPLOZMijJ34x/10Hm4tkTaX5gt6vA96sjB4QxhUXVvOwJCTMW91kByNe3aobQPD
         LHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681338339; x=1683930339;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oYrVnIdIMe1X+yaSkUK/XlLtFE+N7rK7Y7TTv3bj20A=;
        b=eDMijp6F1ymWyk3LT8LU0S8aedUVa5fLBYKF856Z9qsRJDkq3vytSJNZuVy2oC0+6e
         ipD0499Az0eHbcFG2DNoM45AyevsmDLYbuSeJYHJjJziuC3Lv9wo2fdVJB0n1aqodA2t
         6H0cBKwSoUnQBlO6YmIjvHWXR5HNLOl2evP7zn/PJVIIuq9I6jyLYystPbNSGKVuJZfA
         CMi0Q2bjvkhlHbtuq3+FzwHr1+8nZEQk0iF1/V+J+Mv2PBNcmM+PHSsbtZqj5mMOd2CT
         hbhMQe6DjV4t2F4WZ9C4AYtvW/sXv6nNTKKnjo/Q6Q2t7LzHKfRH09lJukPP2qU5yOfD
         wF4A==
X-Gm-Message-State: AAQBX9eNBZCROxFw/ciCNnMSBldVI9H9L9H6N7HZT50PutU+JDwNDTTM
	8ox4DBhDNUCrNUv7wiCmcdEKEMflo6jDICWHRQWMoJQUPpU=
X-Google-Smtp-Source: AKy350arbVYXmTgSkA5xLiH93uULCvGa9Il70t6E7TmbbLuDi6p0Oe2ajOzyBUnxasWrTl3J2T0wbZlTun/iSFsADmA=
X-Received: by 2002:a05:6820:198b:b0:542:22a8:dfa8 with SMTP id
 bp11-20020a056820198b00b0054222a8dfa8mr6408oob.1.1681338338700; Wed, 12 Apr
 2023 15:25:38 -0700 (PDT)
MIME-Version: 1.0
From: Chris Morgan <macroalpha82@gmail.com>
Date: Wed, 12 Apr 2023 17:25:26 -0500
Message-ID: <CADcbR4Kvwv8pKnPEzQUFFuQ-7ggwN71_waxo8vwwsL0qEd7=1Q@mail.gmail.com>
Subject: [BUG] Rockchip VOP2 Mainline Resume from Suspend
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Cc: Lutz Harder <harder.lutz@gmail.com>, andy.yan@rock-chips.com, 
	Daniel Vetter <daniel@ffwll.ch>, airlied@gmail.com, Heiko Stuebner <heiko@sntech.de>, 
	Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_152540_940121_3800EE16 
X-CRM114-Status: UNSURE (   8.23  )
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

I noticed a bug on the Rockchip mainline VOP2 driver where it fails to
resume from suspend.

I dumped the registers and noticed the following were changed between
working (pre-suspend) and non working (post-suspend) states.

pre: 0xfe0400b0: 0x00000030
post: 0xfe0400b0: 0x00000010

pre: 0xfe0400bc: 0x000003CD
post: 0xfe0400bc: 0x000003ED

pre:0xfe0400cc: 0x000000E3
post: 0xfe0400cc: 0x000000EF

pre: 0xfe04181c: 0x00000280
pre: 0xfe041820: 0x01DF027F
pre: 0xfe041824: 0x01DF027F
post: 0xfe04181c: 0x00000000
post: 0xfe041820: 0x00000000
post: 0xfe041824: 0x00000000

pre: 0xfe041830: 0x00000044
pre: 0xfe041834: 0x00000000
post: 0xfe041830: 0x00000000
post: 0xfe041834: 0x10001000

What's interesting is that if I write the pre-suspend values back the
display starts to work again. I assume this means something is missing
from the driver that needs to catch a resume from suspend scenario?

Let me know if there's any more I can do to help debug this further.
I'm not very knowledgeable on the DRM side of the house, but hopefully
this is enough information to find the issue.
Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
