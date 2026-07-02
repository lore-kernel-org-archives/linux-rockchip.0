Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BD0C44506
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s+cgmkNnK/CFROn9I1Vgc/K+nvbjSMFaP1kfP6m2Syw=; b=Xr+s4l1Sg1MLM/
	tepsaIqHI7B4/KPsfr15HwPlRjACFBl8Do5ojS6RwFzdiFf/1/1+lae9Z2LQmpB6czf6bhf0fkp/Z
	356NJXiaqrA9qHtb0ZodiAeN4zFo2DIOtY7G+9ehQe53P95Z1mf0SJiz+meKaKMiEYG99GFtVNgiv
	mgpwbPCNBRjKeW02yKV+SVVyvhHu0FgBAybptHa7EJIf6S5MwJC5yB4pfd1BqnHDpk6Uw2ZolfoAD
	AnOBMMRPbgjUurY4aztgldEKuURxd6BnmwcAZboEgTJ6+e7g5oA8CrGxZ1G3D4t9VexTPKH2647jH
	jcycSn+h7li/KXPTV4SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7ly-0000000FJNN-1EHp;
	Tue, 07 Jul 2026 15:31:46 +0000
Received: from out203-205-221-239.mail.qq.com ([203.205.221.239])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDeO-000000040Ub-23X2
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 09:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1782984241; bh=D4tG8vGW1AFdbEN3gBoFcfO+Fuu2YWofUBpUET6KUuI=;
	h=From:To:Cc:Subject:Date;
	b=je+2ob0SZw0QA6y3QeZJBf8FcjY4C+Y6ZWJvmY0IAhl184YXqfCaBloAq0duclG3r
	 vPse3QAOL8yDU798m9liEagLUOvf8lK3L+PT0OZgmD90tXTajrululzRlWc65tP0c+
	 J36uj+i69LSBwkl7xU7Lm1Ze2bL1jvM2rNo5TSlM=
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-XMAILINFO: MdmyWVu0InhAZ7rVzEiuBopvB/DXzTveGbrv4Ra3+pz8TH6fpAts73FgMoATRN
	 ewhsO8kWAqwEkhylcTyJx/7CwQZHX8aK9wuLdT9dufDRlg9HFbtz5VAPmnfpcfQvm9awZ8qXMdbPx
	 6dCweUqRP2YMkYoUcodysalji9/fMiZ1CcYRd2va0crHbwPFHsyxPYNlrVq/djVXiUgo7ylNYWlj9
	 25qO0Hl6IrMBDPQpdBxq6GWPoRwcdEBqxVBBUQHX3P08EmB5zkZJMsKdd1lsGpMpLAfaqDRzsdhk8
	 sPb2654G2RvPo7Gf4ClRf3kYdvMNmxUMUlwSia9JeQaYSX5bk3z7PIYyQ03vaH2dc7S9AyNqGkGV1
	 GLtnbRk7YGyCeK0pFRcubwZV4jRJd5d3HbbK6TBDhKiTBSBGVIZBfdxv2FV+PgwlqZvWlLQ8ZJOTm
	 /8RtqJE7T5hUjJbO0Gaq39j1miIGXgkF54hXS4UiPbilmcKmrGL02ACmTFU1J4CNWMiiB3YeY5+FS
	 RbVfuhygb56pdVuXb8jBxHkO8l3MJfl5SHI/OUU9g0B+HExYxmvleonPYUJn8zIYvjKqI9u/TfgLL
	 feJ6XxiWXQqQjRgklYZdD0jt9Oac3TpVZDWOeC/4vFJegx0/4v/eVLE+Y9xGUL3Q1U3rxvZO6ZbK7
	 /zPFmw9rfv5t2TFu6kAe8Iaz1kThhcLazak27uQupWuQGY4YzOVstg7b3pI0MRIJ+hC9Agng4p1i8
	 5ubFn/A+3EWWx0C4Ry8cvcZx7AIMPCThlz+hxofse2Yo8DR4sY1r17Sf+HwBHrlMd5oIMSAOqrjF9
	 6Afuam1yTrzk4QZvoEM5gPip1+2fXelmG1zTFwsSNt0/WM7bZWlPgx1JValr9jEO4DisIp7M+SM5e
	 9aSG2rGZlOmckrIAhXgMIay9NMivpJYacEvZlj1h9JR/BvpAa/yzjjSYpG99xPq38nE3rE+IGakbF
	 E273dQMKfE82lOxTwCwTvL2w/Uu/TgsFNfnnsQZjm71aVg4gTGbK0ry/98xYWkXVYLyoJm9JxMFKy
	 cuk2J1lci4OV34ezDb8+7k+rwQzrCq8DClOF9A7tPHhD4tu3JMs2TG0TCmCQv3gVABpjHaJtRTQPm
	 MQI=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>
Cc: "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?cm9iaA==?=" <robh@kernel.org>, "=?utf-8?B?a3J6aytkdA==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Y29ub3IrZHQ=?=" <conor+dt@kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] can: rockchip: add RK3588 CAN-FD support
Mime-Version: 1.0
Date: Thu, 2 Jul 2026 17:23:59 +0800
X-Priority: 3
Message-ID: <tencent_C422347432620914231601BC882C7E604D08@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmsezb41-0t1782984239t81pl8d8g
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_022404_848181_3A9AF97B 
X-CRM114-Status: GOOD (  15.50  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:51 -0700
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

Hi Marc,

> Is the SoC you're using actually a 'v2' silicon revision? At least on
> the rk3568 the downstream kernel has code to read the revision.

The kernel reports the CAN-FD controller as rk3588v2 rev2.2:

  rockchip_canfd fea60000.can can0: Rockchip-CANFD rk3588v2 rev2.2 (errata 0x0000) found
  rockchip_canfd fea70000.can can1: Rockchip-CANFD rk3588v2 rev2.2 (errata 0x0000) found

Following your earlier feedback, I have changed the v2 series to use
rockchip,rk3588-canfd instead of rockchip,rk3588v2-canfd unless we get
more information about RK3588 CAN-FD errata and SoC silicon revisions
from Rockchip.

> Compile the latest https://github.com/linux-can/can-utils/ and test:
>
> $ cangen can0 -I 2 -Li -Di -p 10 -f -g 1 -c32 -b
> $ cansequence -rv can1 -f

I tested with can0 and can1 directly connected. The CAN clock was
200 MHz, and the interfaces were configured as follows:

  ip link set can0 down
  ip link set can0 type can bitrate 500000 sample-point 0.8 dbitrate 1000000 dsample-point 0.8 fd on
  ip link set can0 up

  ip link set can1 down
  ip link set can1 type can bitrate 500000 sample-point 0.8 dbitrate 1000000 dsample-point 0.8 fd on
  ip link set can1 up

Without BRS, this test ran for 15 minutes without problems:

  cangen can0 -I 2 -Li -Di -p 10 -f -g 1 -c32

With BRS enabled:

  cangen can0 -I 2 -Li -Di -p 10 -f -g 1 -c32 -b

the test only worked when dbitrate was equal to bitrate, for example
with both set to 1M. If dbitrate differed from bitrate, the
controller went bus-off immediately.

So my current conclusion is that CAN-FD itself works on RK3588, but the
support appears incomplete: using a faster data phase with BRS does not
work in my setup.

This looks different from the issue described by the current
RKCANFD_QUIRK_CANFD_BROKEN comment. That quirk is about specific
CAN-FD frames triggering Error Interrupt or Error-Warning during
reception. In my test the non-BRS CAN-FD frames work, while the failure
is tied to using BRS with a data bitrate different from the nominal
bitrate, which immediately drives the controller bus-off.

Given this result, should I still keep CAN-FD disabled for RK3588, or is
it acceptable to enable CAN-FD but document that BRS with a faster data
phase is currently not working?

Thanks,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
