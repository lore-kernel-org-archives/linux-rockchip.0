Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 625FFC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 15:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhPw2ktRerT+SAUYHPNfEeZWeuJZ8DxD/KMIcHK/9bM=; b=QjE+hCG/YlZQWG
	Mt9r79ye8rFddDpa9dcSBCjX5EDVYEATNVNK3V5FYsaJAYNx9DOU0oqQ7EmR0xXVSmvlx5BMUxxcy
	B6bWQRSAMX/WWO9ohmoeMWo19rsVD3PtklvOby5mkLLZ9jPBsMpNYVvm1Pem8U+ghx9V6+1eWPb2f
	Hzjz3zOtPFp+RJaOWQoH0KFS3gsr970aoTrVnrtezyOLOxEZGj78vuhFrp1VOZ6+6EK8D/bJBGmsA
	fk1IrjoRZaQBOt8V85sYJX3N4Tl1iXHtEwd5sZJQo8Qsjw/XFBdAuv3vVd4TqMoyol6BD5VTkmlAv
	w3aa5mp+owgZMLdoac3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms5TD-0060mn-EG; Tue, 30 Nov 2021 15:55:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms5Sz-0060kb-Br; Tue, 30 Nov 2021 15:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1638287684; bh=Bt8TsQsfm9hCyCEvynPEZD/qLlYwuHKwqHtrdOoZu6E=;
 h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
 b=d2QEBY5Ao71Bg9wh60cU4Mv2soCzaVEPXrpDULM3JD2HOcrmqoqDBKqeixB48Hbpw
 1KneMzUHUDkb82sBUIMKI43cII8J90ZH292Lt2Mb//oxDS+1mJzAtap+C1Kr7fHDf7
 t2ZC/6e9IHvK+Yr0Zif82Lk14WdHtJPX+3cTieAw=
Date: Tue, 30 Nov 2021 16:54:43 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Wolfram Sang <wsa@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [RESEND PATCH] i2c: rk3x: Handle a spurious start completion
 interrupt flag
Message-ID: <20211130155443.sbvpirzj6moikxl2@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Wolfram Sang <wsa@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20210924111528.2924251-1-megous@megous.com>
 <YaSfZxtYtV+SfJqL@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YaSfZxtYtV+SfJqL@kunai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_075449_761012_0019DC1D 
X-CRM114-Status: GOOD (  11.13  )
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

On Mon, Nov 29, 2021 at 10:37:43AM +0100, Wolfram Sang wrote:
> 
> > This causes I2C transfer being aborted in polled mode from a stop completion
> > handler:
> 
> I wonder why this only happens in polling mode? The question behind that
> is: is it really a spurious irq from the HW or is it maybe a race in the
> driver? Because polling uses the same interrupt handler but just
> periodically polls it.

Spurious interupt happens in both modes.

Abort only happens in polled mode, becase polling executes the irq handler
before the stop condition interrupt fires. In that case rk3x_i2c_irq will
execute rk3x_i2c_handle_stop, which will terminate the transfer, becasuse
it's executed without STOP completion interrupt flag being set.

In interrupt mode, the interrupt handler alwyas executes after the stop
condition, so the spurious START interrupt is ignored in this case.

kind regards,
	o.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
