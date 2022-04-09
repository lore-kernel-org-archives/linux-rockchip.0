Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8260DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 10:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oR+QuVSjMPfCEByOYmHiGn5USqa+9Erz3crdIp0MUS0=; b=Q14xxKsWfOIiw4
	WqVhiDFXpOzFAKS5SFBEWj9AVaKmaEqK1p0AupmnIAuFCdMS7/yLp0Mv4K+uOtRnOyZbY65R5Wal3
	it6JC/4C1RQh3tMHdV7kX1HDkRB1g0p0U1pShPJTXVHa/HHiSzGxvbXJIQRj7giWc0EciAC0hF8uz
	2bOYn8twfPi6rytcb1ypGe8V0l3VIVlyyO0BhVl4T4CzMZqitlRb+2mWNnvtt65wuKrLjTljybMqm
	FcoHQPZdAIG0ARt9HGgV41OzvZvnMGHMAHrYrh0lrhTu3yf+ahH4Lb11A5WNKHNVMcyLVKf/PwM6/
	suyLfq3pKCaYp1l6OFGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd8n0-002sAe-1z; Sat, 09 Apr 2022 10:57:58 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd8mw-002s7b-O5; Sat, 09 Apr 2022 10:57:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1649501859;
 bh=UYBoSSsDtH5IH0r6e5nJyRD+MdMFVssXpzqnN/u3PiE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OdydCR0hC1oHEZygmfIQLLh+qLGViNdPHjMfowG070VE8bZkQ8VInYVrhfiUZNV7N
 tqI6g+a/KdyIBsOSnq89uzj4Idn1jusTWbs/2JD2ixznzPa3Fm3YzZZb+yQitCigIy
 3R1smifLAnp+zq85tZEj3ANzNSgcf0i8vnLAOgcQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.105] ([217.61.154.105]) by web-mail.gmx.net
 (3c-app-gmx-bap35.server.lan [172.19.172.105]) (via HTTP); Sat, 9 Apr 2022
 12:57:39 +0200
MIME-Version: 1.0
Message-ID: <trinity-b6d141b2-264a-4a57-9707-6a38a80cea16-1649501859874@3c-app-gmx-bap35>
From: Frank Wunderlich <frank-w@public-files.de>
To: Dan Johansen <strit@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Frank Wunderlich <linux@fw-web.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Aw: Re:  Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x usb
Date: Sat, 9 Apr 2022 12:57:39 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <ba60121a-a120-b717-6a2f-7883685d17e6@manjaro.org>
References: <20220409075147.136187-1-linux@fw-web.de>
 <trinity-71c38625-1a00-47d7-8e23-4f33f25a997a-1649499268581@3c-app-gmx-bap35>
 <9183927.T7Z3S40VBb@phil>
 <trinity-8384790e-d2aa-4041-b4e9-aba1130d8577-1649500371045@3c-app-gmx-bap35>
 <ba60121a-a120-b717-6a2f-7883685d17e6@manjaro.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:dvLdFGxPf9CViU988yGoUmzNpwK2DRKqyr8wB+jCf000bTk3a7kd5Vtof3H1y2wyZx/a0
 HTfoVedNWQiVBEkXcKnHY15A6TlCD3t2It+hSjMF8IMFmNJEzscg/Kr0qgEfWQK/aPJxMRR4nrGu
 C0i319SYNcoXEm0AdDcrZRgZlAGVNQdOwmkW9var8G7BGWM9+2eUiS4+ykORQfBl/j51FButhmE9
 Bql4CGXB8vyfV5u1FN+jzI0MFmxObXIWYoUnwuyNNN4Xe6aSKVBN+9N/+4SDEeiyBHx+vGxi9bLB
 XE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:qgBG/cmMMYM=:zUd6e7MLnWhr7kMouv+61f
 KJp9FN/REP5io8BVUPy8qAtAQW8MTumlJ/LxWMldbnoKp0xcd1Bt9K0FZ9hxgt3qdVA9WAiLC
 NDTtE5ikSIiOBpc/VPpFnZuAX467ZLFaFm2sqS/waTFfKjKQaWaQ6Tw/kbDYLufO3c1ET3cT4
 LgIdYeEAki0xpJp8OH4UDfAkGQZtjU8FUwX+xnjYmRsqC2xSfj5flYwCpOutHbXrYEOB9D4Mt
 hXYuDM2iIO1FWaAUBhv0gseKfru1Jwgkkzm3cOTqLgG3jD5zX3RZTj7S3ooMzQPSCUDBWWIIZ
 IDlMVJAXwbRyJd68pc/Rx/4sUM1X1gTEtq/B6Lakd/j70nvpoYf9UMur5PM03d9lOvJE05ReF
 a0exbZTaFXxYtgKSZSJLi8Ifa+s2tmV1KMe/iprSdmqJNlJJpsYgX0H3QOYGKXQ1km2QLie8X
 brBb80JiVBmHCk2j8hP4H85ndjiD4iUR2ImNLkq3BgAaMsoKsPotX26ukjI4qAhTleK4ziZEc
 VX21HC11EQjqclteuOx2/hdtfk5mDRqsAWqDitPI22RqCCaE+jnps8amypHABMhtUfTW7diCk
 APE3cDEC/TmMXKkScpTBweMMmzYTFWTW/5iJPuKThSxBAejyZHBhl5RlbxtmTxRQW/EzKTHt4
 pOt+IcvsS76V+nMX8O9vIDChUbmjiqshSsSUSsV4xbjNIGcVBVJqNcRGidH7BJJNl07WcOrCH
 aUF3gVFQjn0gcNSN7Xb0Bfdbr/4/Zr0Pd9NFqJblh+lpEPSHMM/CjWkUhjGt8gxl/PwI+tvKU
 SWuFxvD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_035755_125931_94AD1FAA 
X-CRM114-Status: UNSURE (   7.33  )
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

Hi
> Gesendet: Samstag, 09. April 2022 um 12:40 Uhr
> Von: "Dan Johansen" <strit@manjaro.org>

> So the issue is only with usb 3 ports, not usb 2 ports?

my board has no standalone usb2-ports. usb2 is integrated into the usb3 ports (dual phy). here both were not working.

afaik rk3566 has standalone usb2 ports that may not be broken, but i have no such board for testing.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
