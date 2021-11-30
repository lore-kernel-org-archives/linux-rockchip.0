Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC37C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 18:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lEVIrGWukpaHPUD2FtrJTLFUCqgo/lTQr4FCAAwZZs=; b=v1k+4JUjyAFcRY
	wRs5f2XUy2anHjFW/FAIBY6weZqQaCCLOr5pPMXwL2mlPWjLavnvikA+YLK24bqbyYvFIsTHLs5XL
	DEP2s7bNRdAN4w3y3S6U4yoEaQV+00gueA3LfXmGGITiMSjIMAuMFMF6NvAwkUlkJE4GQb5lMrCUa
	l65K5myCtWS7x02BFumeZY78JVBc/f5E033nEoRDlILYtfL0jyLtCCBNnksRYBsjXkGj94WhpbMIl
	PHZ5cXyRTZjajiG7WuTmnM+n3FF45dgcKI8pksxyahvcfHHzBNDEI6HTBz4G5I8Et7bYDUa1AxUQl
	n9NfP98XIOvEYo7bmlcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms7c1-006Rzv-IR; Tue, 30 Nov 2021 18:12:17 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms7bz-006RzL-4T
 for linux-rockchip@lists.infradead.org; Tue, 30 Nov 2021 18:12:16 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so15418096wme.4
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Nov 2021 10:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1GfV3zta/z9JoKzgmdmEEj9hpTBApmNs4j7cDZBMOGc=;
 b=VPyaZj70LNlfmo8vyq/bdkYc5lM+6a2xPAMr1Tx4rjiSzTAVfo6mUj1NAJhjKCwNDd
 MtIdyee+YfNfMjDrQ/gqmflPr+f770yMKESXCE+jTlfMdhM+q6oiHTVPI83Zfa82oz6z
 +V5PEMWvE2OsKs8NDpQIsOHL8xqoEpFxiiXAYROdczoIj0Y6tuNkj1M4UH91qTRsHG3O
 PGtsc6hmnXnaI4SaQNny5PkEXDejaJMRHVZc/kSVUEXLML7SFGgpv7y8gxaPq5bAJVWQ
 WvAZuFvYmmefFt6sWsgXhVCY6Rbw4C77d1UDQ6S08O+I+qO6QGcd5PkaeRXgvWRXcgVQ
 x6PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1GfV3zta/z9JoKzgmdmEEj9hpTBApmNs4j7cDZBMOGc=;
 b=xHf/iOmNcJdSffoj3AHaLb22O2etWYAjINMX3iSrW6gudJELiIIa9lfqsUcR8jKwKg
 5rDvfaVrZr5U814LjQ6+IZvjozWdj8ih0Dv21mLdED/2z5xo5OgZC8Ud48RuwCThR+9J
 g0LhSPwbU8qMre/85RkdKNMFRNYBq2mFYU7nDhgRRPx/Imb/NPontXYE3XYvGKQCBPcL
 C9kJ3QjLEXv/6AFwXt0UEt7Tftmt0tx6BxO9plh63dpzXgulje60v3rrZhY3LtYdtG2V
 IeBSKotvPu/LJywo3FOrj1mSGDirtTR6ufJvuOOhPwkkYFkBnrt+2XZFSm5Dbx6pGDxx
 uiWA==
X-Gm-Message-State: AOAM532xqAattccg8crT/pb5X9ZD2TlcK52HsFjcND8dWvYck7u36eRB
 Pcbwq7ySh6d2tNipkG176lc=
X-Google-Smtp-Source: ABdhPJxLLBjy+5pV2Vw7yzKGxAyLHcEUZ/+Cw37st1U6y37HezvYTYbnP5+zZ03FIrQK80aMum5LZg==
X-Received: by 2002:a1c:a711:: with SMTP id q17mr330188wme.158.1638295933311; 
 Tue, 30 Nov 2021 10:12:13 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l4sm16775043wrv.94.2021.11.30.10.12.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 10:12:12 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org, maccraft123mc@gmail.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v4 RESEND 0/4] power: supply: Add Support for RK817 Charger
Date: Tue, 30 Nov 2021 19:12:11 +0100
Message-ID: <2197533.Eh1vGvx6NY@archbook>
In-Reply-To: <SN6PR06MB534222D7CA5732E689F5BA21A5679@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
 <2759402.V8G6Gt6Xmj@archbook>
 <SN6PR06MB534222D7CA5732E689F5BA21A5679@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_101215_219445_DD9F9A56 
X-CRM114-Status: GOOD (  38.44  )
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

On Dienstag, 30. November 2021 17:10:21 CET Chris Morgan wrote:
> On Tue, Nov 30, 2021 at 03:03:03AM +0100, Nicolas Frattaroli wrote:
> > On Donnerstag, 16. September 2021 21:42:04 CET Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > This series is to add support for the Rockchip rk817 battery charger
> > > which is present in all Rockchip RK817 PMICs. The driver was written
> > > as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> > > myself Chris Morgan <macromorgan@hotmail.com>.
> > 
> > Hi Chris and Maya,
> > 
> > Gave this a whirl on my Quartz64 Model A. I noticed that this will
> > happily let me discharge past voltage_min_design:
> > 
> >  $ cat /sys/class/power_supply/rk817-battery/voltage_min_design 
> >  3625000
> >  $ cat /sys/class/power_supply/rk817-battery/voltage_avg 
> >  3381360
> > 
> > Is this normal? It went all the way to under 3V before the
> > board finally locked up.
> > 
> > Does the minimum voltage not affect some sort of cutout on
> > the RK817? Does it even have one? Is it the driver's job to
> > do something here or not?

Hi Chris,

> It does not look like I coded that, but I can. The PMIC has a
> selectable register (RK817_PMIC_SYS_CFG0 = 0xf1) to automatically shut
> down the system at a certain voltage (between 2.7v and 3.4v in
> increments of 100mv; bits 6-4), a register to set a low voltage value
> (between 2.8v and 3.5v in increments of 100mv; bits 2-0), and a
> register to set a low voltage action (either shut down the machine or
> trigger an interrupt; bit 3 and then I believe the interrupt is read at
> bit 7 of RK817_PMIC_INT_STS0 - 0xf8).

Excellent, I think shutting down the system is definitely the way to
go here, as by reaching this voltage we can assume userspace has gone
missing and we don't know if the kernel is still alive.

> I guess I just assumed userspace would handle it, but that's probably
> a bad assumption.

Yes, I didn't have upower installed, but over discharge protection
shouldn't be handled by userspace at all. Had I connected an unprotected
cell that didn't cut out at below 3V, it would've been irreversibly
damaged due to a simple forgotten package install. Even if unprotected
batteries are a bad idea, I think we best assume the worst case
situation here.

> What if I set the low voltage value to either 3.5v
> or the min design voltage, whichever is less; and then set the low
> voltage trigger to shut down the system? This would prevent your
> battery from dropping below 3.5v or the min design voltage (whichever
> is less, sadly 3.5v is as high as I can go for the minimum) in the
> event userspace doesn't take action first? We could also set the
> shutdown voltage to be 100mv less than the min design voltage and use
> the low voltage interrupt to trigger an action, but I'm not sure what
> action would be appropriate (and if userspace isn't listening it would
> be moot anyway).

A very simple solution would be to simply set the shutoff point to the
voltage reaching less than 3.1V. The RK817 only charges Lithium/Li-Po
batteries, and they should generally not be discharged below 3.0V. Of
the protected batteries I own, over-discharge protection generally
kicks in at the 3V threshold.

This gets rid of a lot of logic that could lead to bugs by simply setting
a known good value to begin with.

I think I can summarise how I understand this is supposed to work as
follows:

 - if battery reaches 0% and the battery alarm is rang, userspace should
   power down the system
     - this prevents unclean shutdowns
 - if the battery reaches a dangerously low voltage for its chemistry,
   the PMIC should cut power to the system as instructed by the kernel
     - last resort measure in case userspace is absent and the battery
       happens to be unprotected
 - there may or may not be battery protection which kicks in at 3V, but
   we should not rely on this working
      - some 18650 cases infamously aren't sized to fit cells with a
        protection circuit connected to it. I shan't name names.

In a freak accident where the kernel is completely locked up and the
battery is unprotected and being drained, I presume that having set
this PMIC register will still make it kick in, which lets me sleep
a little sounder at night.

Regards,
Nicolas Frattaroli

> 
> Thank you.
> 
> > 
> > Regards,
> > Nicolas Frattaroli
> > 
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
