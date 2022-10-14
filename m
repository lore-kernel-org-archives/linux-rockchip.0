Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D77C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Oct 2022 15:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOWnQnsIlgYC9umyX8ZmCMtI+lEWzyRVsLO5g/y3/gI=; b=pLrSnGivXimv0T
	CHiq9V7q0n9cnh6lSeGV5gJ8E13Kt3zTpYTHHaXwaSRbA+Bz3Ih9tgZmXg6feUF1quw4lCYZ49VHH
	iKPcTWw1bTA3l+Jm7WSG5wO9XKV4bw91gxeSvuNXtztORI/1C9kbUBqq9OrwCZN8A1pNPO4o3UMUn
	kI6OKb4Sc/n1QLdRzeSD942a3CeL8wtEA9JqiMvk3tMCBIOKd0OlDVcTojjQOCHAQuJf3e2juMzxA
	o7mgajUM7M6nfcZ6VEBVv5taGw8sEYlCmkuKdHMBs07Z1V7AKAelHZY0uHsMIgVo+QRXuE02Ogjwe
	vyNHqjez6CXZ1I8iAQVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMHF-00F7kp-Cq; Fri, 14 Oct 2022 15:07:09 +0000
Received: from 31-193-140-172.static.as29550.net ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMHC-00F7il-Fu
	for linux-rockchip@lists.infradead.org; Fri, 14 Oct 2022 15:07:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jJHB/Z3UZhGW42kD6cOBHuCWcOJvDSqAWEnQSgv+Sd8=; b=jRH9by9PCU+qeeDWS/7DNavwm9
	ktH4RmCFFOthK0qvqGVdb/MtzBvbMI1LsHiVT979Ej/ks78GzPqr3O4xBOZuk08IYx/QFE4KR4POi
	G4ckCtgmG0x8SeKwUJNYGEzbCE9iTi3PXEHkLbst1r/poe8qn/s2Hf4ng4+vV8BAHnHM=;
Received: from host86-153-126-124.range86-153.btcentralplus.com ([86.153.126.124] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1ojL8y-000HeW-Ou; Fri, 14 Oct 2022 14:54:32 +0100
Message-ID: <9fcb7866-7200-70e8-85b3-60371280ab0c@pscan.uk>
Date: Fri, 14 Oct 2022 16:06:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: More RK817 questions
To: Peter Geis <pgwipeout@gmail.com>
Cc: Chris Morgan <macromorgan@hotmail.com>,
 Maciej Matuszczyk <maccraft123mc@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <0ec9541a-8d8c-0fc0-d158-73ba949169a3@pscan.uk>
 <SN6PR06MB5342D159E9E83EAA4FEE9CDBA5239@SN6PR06MB5342.namprd06.prod.outlook.com>
 <CAMdYzYq6vbYgG_c1O3_pR1nNRWLK2QUim0rQ4PZiucU=vVK1Ng@mail.gmail.com>
 <4737d50e-5f5b-670c-227e-e3d84e4fb09d@pscan.uk>
 <9fb765d0-7648-288f-23a7-8d98da9b3561@pscan.uk>
 <CAMdYzYrs0zCQ8UGz7S4frsT3e27p6LbhKrX+OZ9DyjnV3_3kKQ@mail.gmail.com>
From: Philip C <subs@pscan.uk>
In-Reply-To: <CAMdYzYrs0zCQ8UGz7S4frsT3e27p6LbhKrX+OZ9DyjnV3_3kKQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_080706_606465_7638E2CE 
X-CRM114-Status: GOOD (  15.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Peter
> 
> The way Mainline handles this is you tie the port power regulator to
> the phy. When the phy enters a mode that requires the port to be
> powered, it calls the regulator subsystem to enable that regulator.
> I've seen boards where the boost power is fed to a gpio regulator.
> That regulator is tied directly to any non-otg port and to the
> otg-switch. You then use the otg switch to control the otg port power,
> but if the gpio line isn't *also* powered you get nothing. I see that
> tablet dts has a host regulator, so you might have this situation. You
> can always set the boost, otg-switch, and host regulators to always-on
> to see if you get power at the port for testing purposes only.
> 
> You really need a schematic.
> 

This device has no dedicated USB chip.

The data lines connect straight to the RK3566.  It isn't possible for me 
to trace them, but they must do because I have used rkdevtool on the 
device (windows tool connecting directly to the SoC when there is no OS 
running).  The same tool works on the quartz64a so the USB data lines 
must connect straight to USB_OTG0_DP (R37) and USB_OTG0_DM (R38) just as 
they do on the quartz64a.

I have traced the 5V rail on the USB port, and, it connects to pin 55 
labelled USB/OTG on the RK817.

The RK3566 SoC also has pins USB_OTG0_VBUSDET (T38) and USB_OTG0_ID 
(T37) but I don't know specifically if or how they are used.

Would it be possible to help me create a dts for the USB/OTG port of 
this device based on OTG adapter detection within the SoC itself, and 
power for the port coming from the RK817 pin 55 please?

thanks, Philip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
