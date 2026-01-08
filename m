Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1BD1D148A3
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 06:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6m2K26wQTogOaJK3rnUjxWXs9hFKGDGQsAzHrlHktEg=; b=JXGcAdTt6w6/JC
	NlZC5NE2Q5NGF9UN6rYlmsuuIZ+h/bEKUPm9w/j2jtfae1itSsrq6AnnpVH2a469v45sjOjv2LDaX
	bPDOfGqv3e19GvjfwDw6ov+QgJhmZLzpQyMAxWx58oSA0/HEW+k4uqnowzNoBNa095pV4Rb+8sKb2
	eI+JrOTB5RRu4SQSg8W4P5TrxVW4HjC+pmOkJcHfAaNlUoYDJqNo1n62gqJEuTEVPT+zsddB7FqVd
	StpDcTVFB11pW3VxKKSlMSe886Mh/wqAiU0Ttq92aXld/IfvJtmXZD2HS3vhe/XLHv2CkUnKv3ND8
	QxLxR4RjCCqqy/DOKL6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjuw-0000000G26l-22LC;
	Thu, 08 Jan 2026 06:54:46 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdjuu-0000000G25P-0OWZ
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 06:54:45 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so4468961a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jan 2026 22:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767855281; x=1768460081; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=t4F2SB9f5d/mNn04/BKllqtDvhQr4G3ijObEiEkrROg=;
        b=Wrn99rEKjmoMiom6bUrZ123VVa/KusbSj+ZJ+xtXB4IOBOqGJwOPrvtCfk1uC/Mq07
         euTZUncvrlEizXa9Lgb3EIrwgt8mUIePsAitQ+jkhEQe54czYFH7CNQHkot+B0vsDcAa
         HMn1Hb4Z8IwGQ88JCck3NBVh9KT/Wpe1f42PInTS3HVCL4bA4uUeqQoisLixBNRwjZ8w
         7FJU4hAnXCQb491tr0xoa/O6TMMAQPexV3n2oMQuU99AkymFl/BRXq7VIJpk1kbIWVZL
         P79t9S7gUKKMNl5dl1nPDHHbMB1QaeiqHJq0fmzbBGXivkknbaR+UPpdXxXDYwsrgNUQ
         dvsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767855281; x=1768460081;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t4F2SB9f5d/mNn04/BKllqtDvhQr4G3ijObEiEkrROg=;
        b=GvfERrfuxqYneXvC0WeL33NM2jRwvwgw6VAVVYi2HKoHA9Z1o+RieyKTBDuF8iSWJb
         7PSP+TNi3h+96S+aH3bchuuM/WALhDi1d4cLnuvpEr0OmEQ8X5QY24Av463VaKcV2RSn
         w8+mg7cZbswi+sm78jNFzn9LyTQ0JF6x0H0tMXyHPVWRrZ3f7SSOwZCK/1YE9tZ46PSD
         6QvuXDwkxH+HW5C4TvV5Hl1RZ+VF5fYX1Z9J9FVZxwzSVb3vincYwdkzxY4RldjsRbLP
         SklxrD69ZlAG1NcaHFe57AzNzt7XQcEv4HMdLld39mIsTX2/tmHSf39k0O0PugbqECt2
         DevA==
X-Forwarded-Encrypted: i=1; AJvYcCU/H51fqW+gtFnmBK2Vm6bb2akiNLBkAmmjPLgQP+cjl05B9n37x9Wj3E/7NcQ8CMkOG+msKn4WvDWruP3dIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPxANPsItRD9kLDtRZIgwShJS1QeP3p3u7z0RR5HALWrWy+Amc
	/OwUrv0p0NVsbRekV1jLmyJinddRKPbPINv1Q7wgKw159i7xqsXn0Fw9OqWcLnVvSlF0mRLR+MZ
	Gy/QZ3cyj9TJwYsJ8gqlaiJkm4gm6JVw=
X-Gm-Gg: AY/fxX7blgb0nW2KsJ4KZfvWehDUwOzNfBjty98UyqhaT2ZxcpAXH3g2Lx/zGOMHBTT
	tJHviqAGSweeIHX6nlFfBNPU+wsTpWyNSZAJ5Lnqf6zZC3qxTCPuAw5U6hmxnTgDAc7eX+yuLxI
	HzPHW/Vn9LIVw3wHry6ymC/ixCQj6zXK9MoLDwlfxrAy+NqwodVLv3sxmVwylwfrdPVM8arX711
	PDaeeW0ybAxPRn6E7cmJKF3n856w++FTxHLiUqXY6yOQ9K4+jkwnD8tVWaDSsScotM=
X-Google-Smtp-Source: AGHT+IGASGpRE5geGPMFFoH+KZfseqKENFRmeBW4XZyTHbSYGX+MpMWOD4bcwRl1hOH7/QKo+S7o0hqO3wHruKhhRKs=
X-Received: by 2002:a17:907:1c82:b0:b83:95ca:589b with SMTP id
 a640c23a62f3a-b8444c4007dmr536411766b.10.1767855281293; Wed, 07 Jan 2026
 22:54:41 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <aVkinPvh_jxdh9wm@venus>
In-Reply-To: <aVkinPvh_jxdh9wm@venus>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 8 Jan 2026 12:24:23 +0530
X-Gm-Features: AQt7F2pq5ftUc3DeChtgdMDzbUbVtPyMHskj6HVuSaMN15yeS4QpeYTTmedIXIo
Message-ID: <CANAwSgS=u3CG_5R21SZ=euEQuqQ=edxZmFp5LhzZN5Lk5ozqXA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] Typc fusb302 powerloss issue on Radxa Rock 5b
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Yongbo Zhang <giraffesnn123@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_225444_154725_C4FBE59D 
X-CRM114-Status: GOOD (  30.46  )
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

Hi Sebastian,

Thanks for sharing the details.

On Sat, 3 Jan 2026 at 19:54, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hello Anand,
>
> On Sat, Jan 03, 2026 at 02:01:16PM +0530, Anand Moon wrote:
> > On the Radxa Rock 5B, the system occasionally experiences intermittent
> > hard resets during the boot process. Initially, I suspected a power supply
> > issue, but further investigation points to the Type-C fusb302 module as
> > the cause.
> >
> > Specifically, probing or reloading the fusb302 module triggers a hard reset,
> > which can result in immediate power loss and a reboot.
> >
> > [root@rockpi-5b ~]# rmmod fusb302
> > [root@rockpi-5b ~]# lsmod | grep  fusb302
> > [root@rockpi-5b ~]# modprobe fusb302
> > [root@rockpi-5b ~]# [ 3389.031608][ T7143] typec_fusb302 4-0022: Initiating hard-reset, which might result in machine power-loss.
> > [ 3390.030444][ T7143] typec_fusb302 4-0022: Initiating hard-reset, which might result in machine power-loss.
>
> If you see this message the TypeC port manager (TCPM) state machine
> reached the hard reset error state. A USB-PD hard reset involves
> removing VBUS for a short time, which effectively removes the board
> power on ROCK 5B. Unfortunately the situation is quite complex :)
>
I completely understand this issue,
> > I attempted to trace the issue using ftrace but was unable to
> > pinpoint the root cause. The problem appears to originate either
> > from the I2C controller or the PMIC reset.
>
> I2C and PMIC are not at fault. This is all about USB-PD
> communication itself.
>
> > I have identified a potential workaround involving the I2C SCL debounce settings
> > for the RK3588 and submitted a patch here:
> >
> > [1] https://lore.kernel.org/all/20260103052506.6743-1-linux.amoon@gmail.com/
>
> This is most likely a red herring and just slightly changing timings
> in the USB PD communication.
Yes, but it's related I2C protocol.
>
> > Please note that the submitted changes address a minor aspect but do not fully
> > resolve the underlying issue.
>
> I don't expect any fix from this series regarding your problem. Also
> I suggest having a look at my talk at the Linux Plumbers Conference
> from last month where I discussed this issue :)
>
> slides: https://lpc.events/event/19/contributions/2156/attachments/1784/3861/improving-stability-for-TCPM-using-boards-that-are-not-self-powered.pdf
> video: https://www.youtube.com/watch?v=DmLsePJoH8I
>
It's a great talk. I understood the issue much better

I have understood the previous discussion regarding the reset failure.
In this specific case, the Type-C power is controlled by the USB 3.0 and USB 2.0
host controller power domains, I feel so.

> Something that might be sensible to do on your end is figure out
> *how* the state machine ended up in the error state and check if
> we can avoid it. The related code for that lives in
> drivers/usb/typec/tcpm/tcpm.c and quite complex. I use the
> following two patches to ease debugging:
>
>  * https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/6edc68e3c0ec4c209b5e96b848e17201059ce9ee
>  * https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commit/8ca8b1d6ee36e80f794bcf351a8b78d5a96daf06
>
> Combined with CONFIG_DYNAMIC_DEBUG=y and booting with the following
> kernel arguments: loglevel=8 tcpm.dyndbg="+p" fusb302.dyndbg="+p"
>
Yep, I have enabled this, but I could not find many details

> Greetings,
>
> -- Sebastian
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
