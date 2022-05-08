Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ACE0C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 18:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fs8vj6S6uhvNqbGOgapWtNQ+fGRjKaQIOf/iqZ6OLA=; b=c9ROvnetdaWiVm
	3iSrx7yHNge28jRFNLnZ8Pp16SwkW42uWyb0Xkj/jSFLGGciaGyIzUnUTxCeWP5DiNKTWoJUt3/S3
	hEff+VM4jcdix09z/ZpEdPj38Gei/yVWiwqQSOo71UztHDrV38lavBA5gaVL74EEJE5jgD4Hada0b
	hXRIoEflZSAfRKXEJp69LGo56n9mTk98xrBGD2sRZmmxxtxxgLYGhkp0E5jMVR4ysOtmuZL8Q9hPB
	fslePTElnCTvu0F578NxPQX0A7/aujhMbpDdd6wgPs9PgtHLRxoHv0zldgmhYZNW8+ksaOIMS1uuI
	fjtydbIdkZ2Mt6ozVdcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnlXe-00Ar84-RY; Sun, 08 May 2022 18:22:02 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnlXS-00Ar4u-Su; Sun, 08 May 2022 18:21:52 +0000
Received: by mail-lf1-x132.google.com with SMTP id j4so20405872lfh.8;
 Sun, 08 May 2022 11:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=gyfkQnrJlNHhAn6+9MG49Hx9MQwFFjJbOEXow1boMqI=;
 b=PJBywVQEh/EUzbIhvMu64wUdOWF2cmbXHh0JnXzJXkAuV+42wjQglPMCE1qFVdXWYF
 vmFGr2Wn/YHIfRy1BJQK7GiQq37gSfM9tGVwtxvn67nKjMHD+HkYTxXjUZLd69FImpv9
 upbo2GbF6LHXoioPNPUjeE4lsjqASAe1FUwBXU2cIJrKF4wegJ3aUA6nfp4t+gVHHjn9
 5kqFazBC+8Xhx1jbEZxNIphfhxQoO0ZszDShCfPyRSGJ0UpaXCKT4729FK5NUuygIxFK
 2xxBXVvwTLnBBDyFuaMCPhIlYenWhcGcL306ddr0iaj65AUVI63976wAqqwKbXEblEDz
 b88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=gyfkQnrJlNHhAn6+9MG49Hx9MQwFFjJbOEXow1boMqI=;
 b=CrrVs5bKUr+S6uLU5Y25Vg1AQ5iq0IpbPvnUlcp+jCLXrZ1f4RB4ZU9td4MdSdbuuc
 Hc/1S56LBCqI620if383CJQLipaItqVOE5h3laH/WJbGRc4GXEzw/QPsGOSvWzq9cX7X
 Qx/jVrYjtyctawtMGdC4oUkGLNmXdB3J5W7aRX1s570KNb3+6Bj3yAEHJT6iWCPRyCyP
 h/w5r4E+cQ8DU2yiNlQ1WsDdZS5yd6iEf0DdQ0LioqoLw3p5hAgf50YEnJ8wUuhp9dPg
 TWljklnd0DsZS5jC9JJ4PDdbAWtmXVq/0D3pY3floKkTBXJXfl6ynbmcLW8LweeI7BYk
 7VIA==
X-Gm-Message-State: AOAM5332CeM+i44BHHXuBxju9799IVAlumwIPt+a+W4D3FbAYfA+BUZf
 5c32xsA1Y5dNBiHZkDCuHiE=
X-Google-Smtp-Source: ABdhPJwHID2ULTkNdIKhwTDRPaqsf8010Sn55bgPPznVD4x9VKvT+I0iZjMERyNXkPZlng4SwMwzdw==
X-Received: by 2002:a05:6512:3090:b0:473:a636:dbee with SMTP id
 z16-20020a056512309000b00473a636dbeemr9917513lfd.119.1652034108135; 
 Sun, 08 May 2022 11:21:48 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 h10-20020a2e530a000000b0024f3d1daee4sm1447782ljb.108.2022.05.08.11.21.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 May 2022 11:21:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
Date: Sun, 8 May 2022 20:21:44 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_112150_972466_E098C718 
X-CRM114-Status: UNSURE (   9.21  )
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


>> 
>> I think i have this already (pls see L231/L232 in https://pastebin.com/67wu9QrH )
> 
> I see you have hdmitxm1_cec as the enabled pin. Are you certain it's
> the m1 pin and not the m0 pin?

It depends on board ver.
pls look: https://github.com/radxa/kernel/commit/c1d727692e85c0a265913a72e517cf2bd71131ba

>> 
>> Maybe i miss something but adding:
>> 
>> &usb2phy0_otg {
>>        phy-supply = <&vcc5v0_usb_host>;
>>        status = "okay";
>> };
>> 
>> breaks working usb3 port0
>> (so none of usb3 ports are working)
> 
> Please pass along a full dmesg in this configuration.

Here it is: https://pastebin.com/uArtBLaZ



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
