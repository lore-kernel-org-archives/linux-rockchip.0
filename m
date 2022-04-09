Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C34EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 11:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBfvCYLHNJZID8ta73R6psqJQYcoOwETyfl5II6NPho=; b=ztSJT3RqsRc7pl
	8G4eA3OF6etRdcJE+OrpcLIJnUnyr6u1EjDtX5BLFHLt37+4XVJnxtmm2zbADehf33864Vad/SZxk
	dhzdzJR2Qby/vqFr/FQ4Vd0vAA/ws/Y99KgxV5s+IfuDoMMVds3HrPNT6gF0HR5QmYCWIqxXFzgSX
	8Q631KJ8tVo8rV5GckrVmBQhaGbgLbj01gyKkNqeJLFneyhqAW+VUcPjpv50hk1fSgv9MfLuXziP5
	sxOQiFjeQqmVUXWf/YG2Ik82AiRFSg5mmBjrvaZYK62mHcDWnvyUbr0Ri/5T6HvuwLSDtPPso2sbl
	7r1Bec5P6yybS6Ql8FtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd8qX-002ste-6T; Sat, 09 Apr 2022 11:01:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd8qU-002ssZ-5E; Sat, 09 Apr 2022 11:01:35 +0000
Received: from p508fd313.dip0.t-ipconnect.de ([80.143.211.19]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nd8qM-0000r9-FR; Sat, 09 Apr 2022 13:01:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dan Johansen <strit@manjaro.org>,
 Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: Aw: Re: Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x
 usb
Date: Sat, 09 Apr 2022 13:01:25 +0200
Message-ID: <4559790.iIbC2pHGDl@phil>
In-Reply-To: <trinity-b6d141b2-264a-4a57-9707-6a38a80cea16-1649501859874@3c-app-gmx-bap35>
References: <20220409075147.136187-1-linux@fw-web.de>
 <ba60121a-a120-b717-6a2f-7883685d17e6@manjaro.org>
 <trinity-b6d141b2-264a-4a57-9707-6a38a80cea16-1649501859874@3c-app-gmx-bap35>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_040134_265521_889DECC3 
X-CRM114-Status: GOOD (  15.07  )
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

Am Samstag, 9. April 2022, 12:57:39 CEST schrieb Frank Wunderlich:
> Hi
> > Gesendet: Samstag, 09. April 2022 um 12:40 Uhr
> > Von: "Dan Johansen" <strit@manjaro.org>
> 
> > So the issue is only with usb 3 ports, not usb 2 ports?
> 
> my board has no standalone usb2-ports. usb2 is integrated into the usb3 ports (dual phy). here both were not working.
> 
> afaik rk3566 has standalone usb2 ports that may not be broken, but i have no such board for testing.

As far as I understand the issue now after checking the code, this
patch actually fixes the usb3 series from Peter, right?

I.e. the usb-nodes that are fixed in this patch are not yet present
in the main rk356x dtsi and only get added in
"arm64: dts: rockchip: add rk356x dwc3 usb3 nodes" [0]

As we don't want to add broken changes, this fix should squashed
into a next version of the patch adding the nodes.


Heiko

[0] https://lore.kernel.org/r/20220408151237.3165046-4-pgwipeout@gmail.com



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
