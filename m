Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EF1D2CE0B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 17:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cPWE6SCGSlcmC9XEAuQKcS38nXGiB1EDaeY5akSQYAI=; b=urkXk5hS6mo5f/
	Sr4by09GiTYKsLPZhXUvSIH05XvFztXgQMz7mb1+Xd+ha81uL+PF2PlbTk6SCbzxQsVzaiuwrzWPN
	FyWGJSgXwUQYlIZ6D/pt6+G+Q4QvGy12QYsmrkw6H9bjNCOdZBAVpotiDkMb8+Dm92TTyse/QcYsC
	5Ets+OiQZNHuImDwmcgWLYCXsS3D9pIJmtsz2cgHdYt77smbWNlNjYan3Z7B2mNmoVNKaAERlH98e
	DvtT0QkOAgXPFsF9up1etVkFOb/qU2qlJFrRDzsjsORY+bLB7nh2kX10qx0pcZO8Utqo1nukDO6LB
	OHMLzMjtcsjz1AIy6aWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3IRH-0000000Bbt0-01rC;
	Tue, 22 Oct 2024 17:12:59 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3IAe-0000000BYhw-1orQ;
	Tue, 22 Oct 2024 16:55:49 +0000
Received: by mail-io1-xd34.google.com with SMTP id ca18e2360f4ac-83abe7fc77eso158374939f.0;
        Tue, 22 Oct 2024 09:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729616146; x=1730220946; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+e6q9Fhz8aSdy1Z2tIYTTgkqd5/0R5U/RO7S+4nqmqA=;
        b=S4sFyVG6yQoEBi/DSecIqHmjJTLdFdVkttKhpugZ6HivgQC0e4f0iYly8+e/RoXQIg
         9qp/6beIHrXfvcVv8Ok6+DUBOe6fuqWOh6KgYOZEbCa7dYyDp7Ls6FLoTO3qVlz2s6Xb
         EJ8HxryqT+NH1uXBekJySIxt/3inNgbeMUv4Ub6KP3AAva7Bh/6K6KdENXpW9NfF6ZKM
         Y3CSvz3Ma1KRIGalv45ZkB3wih/Xsko25zTwAzTiJEVQPKSbxX3rtdLXqe5nOkZFCHic
         X0JyueZHw52NEDYV7s/JIFRtTsFVZJcfkE7n2H/XIp8lSRMf5rtZ1KVdn6rwRKdHWmWh
         vajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729616146; x=1730220946;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+e6q9Fhz8aSdy1Z2tIYTTgkqd5/0R5U/RO7S+4nqmqA=;
        b=oL2pTurK+H+XmntYifGeCzYSdgWSg/9O93ygFIPLjpVJYjCgrhgnRtFCRW6V7obuvG
         QXoTbCVA2zd8esxlzoVg7xP323LaJIEcKPxfsI+xd2OMKwYsaFecG4/q7updqhWg6lPU
         Y82p24D0qBOaOpfMMAZ7PCrkJslEB7SbAreImz37utWaGmWFMRU1aH+hsJzXfWRPYrQH
         +X78wq/mc9bks8qJNgPOuQ3eUmfGmYPwMD59HATosRkHspNy+/3VPnUssoPYwLrsk8JI
         h5jM8qzjeyOH+3CJC9ZnkCxGifdaZ7JM7ISleKZedWALChNJVCOmQ9mi+hWStYCx9kMd
         TqxA==
X-Forwarded-Encrypted: i=1; AJvYcCWPhLsjN4hz35rjVpmhUnKODmpCTURNt0vBE4cXnJwk9pmrPISmnJdHXPgwN9zV7tpaTeIQJaoyoKDATSuG1dyM@lists.infradead.org
X-Gm-Message-State: AOJu0YxzGuMVbmQUijnNtQnoQMRW/my18yTg2cJQFSP+x0tuPhsgGG+t
	S+vqKyitR9Hw7Ry4rnbcyLaAsjIk1izTqgzI3LbBx+7OGJWQ01h5CSdqlw==
X-Google-Smtp-Source: AGHT+IGDNQ0KQznepv7zqyOItqD3rin06YqQVwyET8jIZSiFKgMxfIX8Egcb9pA38atZkogTYwzGPw==
X-Received: by 2002:a05:6602:3f8a:b0:83a:c296:f5b0 with SMTP id ca18e2360f4ac-83ac296fd5amr1224163839f.9.1729616146011;
        Tue, 22 Oct 2024 09:55:46 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-83ad1dce110sm173957539f.40.2024.10.22.09.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 09:55:44 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Thinking about firmware and hardware description for latest Rockchip platforms
Date: Tue, 22 Oct 2024 11:53:46 -0500
Message-ID: <20241022165413.2156-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_095548_499872_971002C8 
X-CRM114-Status: GOOD (  31.15  )
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

Hi.

I was writing this because most of my attempts to contribute to this
site (also with older email shimmyshai00@gmail.com) have been
motivated by the fact that newer fast ARM SoCs like the Rockchip
RK3588 and perhaps now the even better Snapdragon X Elite are potent
enough to be used as at least a low- to moderate-grade desktop
machine. And because of that, my ideal has been to try and help
coordinate the development of both the Linux kernel and a suitable
firmware package to make it possible for a user to load a Linux
distribution ideally from a USB stick in the "normal" way that is as
easy to do as on a regular x86 PC, and not to be merely constrained
to vendor-provided images.

Particularly, in regard to the Rockchip RK3588, I think it really
cool how far the support has progressed and that's very good news on
that front, but one thing I'm starting to think more about (and have
thought of before) is the firmware/boot loader situation, in
particular with regard to the hardware description given to the
kernel.

As you know, the kernel currently uses a separately-provided Device
Tree Blob (DTB) file for configuration, and the kernel source code
basically has to know every board and device that exists. From my
reading of discussions on this topic, this is often pointed out as
being due to the fact that ideally one would want to have "good
firmware" on a device that delivers a clean hardware description, and
typically one deals with "bad" vendor-provided firmware with bad
description methods, while the kernel DTBs provide a good idea of what
such a hypothetical good firmware "should" provide. However, because
of the need to have a specific device tree blob file for each board
along with the kernel, one cannot just use the typical USB stick and
install process at least with the commonly used bootloaders assuming
a PC architecture.

But obviously, that equation changes when you DO have good firmware.
And that's the rub. Because this puts me in a situation that it
doesn't seem hardly ever is discussed, probably because it so rarely
exists - having simultaneous open-source control over the development
of both firmware AND kernel. Namely, I've also been helping maintain a
package for some of the RK3588 boards using the EDK2 Tianocore UEFI
framework, which can be found here:

https://github.com/edk2-porting/edk2-rk3588

This type of firmware seems close to ideal; but it puts one in now an
awkward kind of situation because of the HW description process
mentioned. Namely, this firmware has the option to pass either a
Device Tree Blob (DTB) to the kernel, OR use ACPI configuration as is
used on x86 PC machines.

Now it would seem, then, that the most straightforward approach would
be to simply bake a DTB in for the hardware, but the problem is that
it appears that DTBs are continually revised in kernel development
even for long-supported chips (e.g. the RK3568 and earlier). And that
creates the possibility of breaking backward compatibility, so it
seems there's a chance that if one were to just include a mainline
.DTB into a firmware package there is no guarantee it will remain
compatible forever with every future kernel version. And having a
user have to upgrade firmwares all the time just because new kernels
came out also seems kind of to defeat the purpose of having a
firmware-provided HW description.

And to this I can think only of two options. The first would be to
have a "political change" on the part of the kernel developer team to
agree to "freeze" in some part the DTBs for these platforms (I also
seek to work on firmwares for the earlier RK3568 platform and perhaps
also other RK35xx variants) so that they remain continuously
backwards-compatible indefinitely. But I am not sure that would be
something that'd go over well here.

So that gives the alternative option, which is to do like on x86
systems and start to add some form of ACPI support to the entire
Rockchip driver stack, because the ACPI tables are maintained on the
firmware side. However, it likely will still require a fair bit of
back-and-forth here to do the initial establishment of a full
"standard" of such tables for this kind of setup viz. my discussions
in an early attempt at this on the I2C subsystem, e.g.:

https://lore.kernel.org/lkml/20240321173447.15660-1-shimmyshai00@gmail.com/
https://lore.kernel.org/linux-arm-kernel/20240414000355.10984-1-shimmyshai00@gmail.com/T/

but I never really got through to fleshing it all out, though now I'd
be definitely more interested in reviving the project if that's what
you would be interested in.

So I want to ask you: how should one go about this, or is it not
possible at all?

Thanks,
Shimrra SHAI.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
