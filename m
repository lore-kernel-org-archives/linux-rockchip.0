Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C952C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 May 2022 14:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3eB22qjsUnc86p+ZN8LQvrlI5NKfEWH5kxrtO3HwVuQ=; b=a17PNxtBdPkNFa
	VoapWMjfHQ9bOVfkx9Pd/KhNRhRImceyOVGyMVn/obkGJ+bEuCH0wf1dNWnII5OxL04X7BlaxAzpU
	n8Rv2beF87LB95ZxakzfxW0S2MSlg26iC3TdVUqRPfM5rRkj1BWlPX7vBe8vzdw0qPn3ovA2lUBAr
	6HxyydQPN+ZpWbFyTwIV0/bJK+Y1oBuY9jM99ibJtXJfxlpmanWdZo/QPVIZu4uDvCYEyOGfwFVYB
	wWpDaMGzyuCCJOiYcCurzCJxsAzdtMx8/3Nxn3gIkzaLH3veQdsL54bWk2Dk138nTFzlNdVeIzkaj
	IgYwlZE8Gj7bWROQTe3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqFDO-004D0S-K0; Sun, 15 May 2022 14:27:22 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqFDC-004CyW-P6
 for linux-rockchip@lists.infradead.org; Sun, 15 May 2022 14:27:13 +0000
Received: by mail-ej1-x629.google.com with SMTP id i27so24203207ejd.9
 for <linux-rockchip@lists.infradead.org>; Sun, 15 May 2022 07:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=3lqX7aU3kAbTaAiZDHaxWxMC1d/fz3MRjO0exPuJ6f0=;
 b=KF4w++tVBm2Oj3AgycZ4VvGK/RwGTZhGeirZQ9CoWvCSOu7sua7rUOyqBrLo6fOV7o
 iabiG3qaoxkRqkjiuWSNBKvThJFoXyPFkq3Lt9DNYtEKi4/SgDCaxFmFYA2pZ0uxuBka
 yQdOUUuUKc+WTOwUba1k55rRffWpt00DkxQfs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=3lqX7aU3kAbTaAiZDHaxWxMC1d/fz3MRjO0exPuJ6f0=;
 b=ImcBu0y+j87czkF7qeYYnLP9JI9pFGvY2DoVKZ4YMMUD+YK4vhNBVwABcTIGAuveZr
 woJpBk40PlHcPrhW/445lfo2GC7GXTIYprTMK7xV7j0BGgoOb1sveLVmpgZIblMf4qzl
 fcLsjwMfBzX14bw4khQq2yIVkr9UFui0cAMTgOWAOmXqwWfSNEj4La0ZvtnHgBlUEHyd
 y6BpQcXfqI4SdEyFXU5RvdPZBYLWMbAU4DgYEkKgsI7VS2M8/45/oXph37iw/pLIwnKl
 gmpfL+uRCnN6EnQat/uXkn/bLwG8QYVh0o9X7nljdMFstkh5/4yz6TKgyfDZTcJnGfGD
 DeBQ==
X-Gm-Message-State: AOAM530/YcxEmhB0YYaUmddNmMhTHWoLsnUawZPxWuDRw+ZblEP2pJ78
 zZEZd1cUP8q1ntz7y4QXrRQ5rw==
X-Google-Smtp-Source: ABdhPJxQNfPsnYCJnjzwmJFAODy9Mp4m3uKPr3Ccjujms9epEu+q1g0WgYEUpk/8EWbCWdoCxCHTRw==
X-Received: by 2002:a17:907:a0ca:b0:6f8:5bef:b9c with SMTP id
 hw10-20020a170907a0ca00b006f85bef0b9cmr11827478ejc.630.1652624828956; 
 Sun, 15 May 2022 07:27:08 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i
 (net-188-217-59-245.cust.vodafonedsl.it. [188.217.59.245])
 by smtp.gmail.com with ESMTPSA id
 ht7-20020a170907608700b006f3ef214dafsm2716329ejc.21.2022.05.15.07.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 May 2022 07:27:08 -0700 (PDT)
Date: Sun, 15 May 2022 16:27:06 +0200
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: evicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: px30 evb mini v11 20190507 camera issue ov5695
Message-ID: <20220515142706.GK649073@tom-ThinkPad-T14s-Gen-2i>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_072711_773971_3620C6AE 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

Hi Heiko,
Sorry for the first mail, I send you twice because invalid I set an
invalid Subject.

I'm working on px30 mini evb v11 20190507, in particular on camera side. I
see your patch on dts to support ov5695 camera. Once I have enabled the
right config:

CONFIG_VIDEO_OV5695=y

I'm not able to probe the ov5695 camera correctly. In particular I got
the following error:

[    2.427936] ov5695 2-0036: Unexpected sensor id(000000), ret(-5)
[    2.438224] ov5695: probe of 2-0036 failed with error -5

Seem's that the camera is in reset, dumping bus 2 I got no address
from ov5695:

root@px30-evb:~# i2cdetect -y 2
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:                         -- -- -- -- -- -- -- --
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
60: -- -- -- -- -- -- -- -- -

I'm missing something?

Thanks in advance.
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
