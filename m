Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E39A6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 12:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Om13qMSZfGKLHHTxPFkvJFumogZzAKnmt4slQeilLVM=; b=ImIhawTslQueSu
	C7K0QYXqaFcDWIrwePWdlN3X8u7XYFSOTxa/SGA5TA/PjJpyLXu3vqxAj8t4CdX0Bel5cRLeau+go
	VtLlOW/H04u+ULLb4dNcj1meardq3KnEDMOucB3ceghUwnnkp3MrtdZqGxmaN9UtAoT6L4B32Qexa
	z7l9pjdNZzWeFZyshT2LliD7Q36I7z9wV/soMSUh+ZiEyL2nTYwucCmkWdrU7hjwMBv7UJ/PONjrr
	Fw/SBJLXkST/dWOMXAfbC2vBA7Af5AklZ8/ZEcSuP6/vwKJHereTTzSonmxws0MU0KzJZn89jTTIa
	tl8KNIV4W1VarOMcZ2Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmERb-00AquD-Tt; Wed, 04 May 2022 12:49:27 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmERP-00Aqn5-JQ; Wed, 04 May 2022 12:49:17 +0000
Received: by mail-ej1-x632.google.com with SMTP id bv19so2671480ejb.6;
 Wed, 04 May 2022 05:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bZOr4HtGpaWrCWq6twhnfSIMm+TDbavFaWLE4oY5Z9c=;
 b=nDXrvhpETmVWGr629uSMqiX19ijYfRXKXMhGz8o5tIvCP8S9zxByN1mXXSY4xpoyTF
 jIY9vEofi63VivguJwzrnZNRqBW7uDuHVGNtAWDnzg4vNj4H2/zyrb0QptxtKV8gLC1F
 dv0FOA9BnfulRLlZab66QXb6HOMz27lWvJIcOv3yF31liu7NCeh+j9BrInw3No6No0Uz
 d9qp5fioReOska3ktJXacTPQ6LTbdnbYSe4vg2Fe96CAXuIjRPmUXLKUB9znlaVBAAot
 UW6WNL/GzCT1Ezrs0i+ltz9xZUWqgynEtu3Y55k7MXOS1CqpSn6V6FWrEpjaVq8skmIW
 9LlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bZOr4HtGpaWrCWq6twhnfSIMm+TDbavFaWLE4oY5Z9c=;
 b=ShTvdepLo8NiAMClg8DkkfeQx/dH+/UrDgck4tUpM2R7qDTvBfx6Gn3mbUU4x1I0ID
 zXMlUzqolq71IN351xE30cNKnOtdsVs3WwVhWWTVLnjMJu677z5/FqFUWPGAwkwZ/p+u
 BZQbjPvPgZs5jK3g5jwh1+Kk0bQ+P5507DcAkQtPUPDT4kk2cD7PxhXfHNWrJxhv9Yzw
 thavtgtcLqjsjpV9AG/9OWI7ZJKdFMKKE6S79YSpERutttOFh7q9aQw3PRb6LCD94lJb
 SqkQy3BVCNjqfLln4HS1zcTTvvzUIsDTu/7kQok/5pmM6c+pqaQ253kIJ2Y3rOXJywAK
 /+TA==
X-Gm-Message-State: AOAM53234Lj4osNB76wI6faQKCjRVxNo0NZFA5eccTgf+dWwALmP1/kW
 RxMwHAsar9RCH3Dz9grhyZKlpmHID4Ta9w==
X-Google-Smtp-Source: ABdhPJx71yCTi6az8xLbfEKhVrgKgdLuPPk5NgAYoOUVtjv92KGGf6NaeuVDVDWbkMzcbOmU89I5iQ==
X-Received: by 2002:a17:907:2d24:b0:6f4:3152:3d1a with SMTP id
 gs36-20020a1709072d2400b006f431523d1amr15972250ejc.324.1651668549151; 
 Wed, 04 May 2022 05:49:09 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 qr48-20020a1709068cb000b006f3ef214e0bsm5768686ejc.113.2022.05.04.05.49.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 05:49:08 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>
Subject: [BUG] New arm scmi check in linux-next causing rk3568 not to boot due
 to firmware bug
Date: Wed, 04 May 2022 14:49:07 +0200
Message-ID: <1698297.NAKyZzlH2u@archbook>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_054915_667791_F51B3FEE 
X-CRM114-Status: GOOD (  13.13  )
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

Good day,

a user on the #linux-rockchip channel on the Libera.chat IRC network
reported that their RK3568 was no longer getting a CPU and GPU clock
from scmi and consequently not booting when using linux-next. This
was bisected down to the following commit:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/firmware/arm_scmi/base.c?h=next-20220503&id=3b0041f6e10e5bdbb646d98172be43e88734ed62

The error message in the log is as follows:

arm-scmi firmware:scmi: Malformed reply - real_sz:8  calc_sz:4, t->rx.len is 12, sizeof(u32) is 4, loop_num_ret is 3

The rockchip firmware (bl31) being used was v1.32, from here:

https://github.com/JeffyCN/rockchip_mirrors/blob/rkbin/bin/rk35/rk3568_bl31_v1.32.elf

This seems like a non-fatal firmware bug, for which a kernel workaround is
certainly possible, but it would be good if rockchip could fix this in their
firmware.

The user going by "amazingfate" reported that commenting out the
  ret = -EPROTO; break;
fixes the issue for them.

I'm writing here to get the discussion started on how we can resolve this
before the Linux 5.19 release.

Sudeep Holla has already told me they'll gladly add a workaround before
the 5.19 release, but would rather see this fixed in the vendor firmware
first. Would rockchip be able and willing to fix it and publish a new
bl31 for rk3568?

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
