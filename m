Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57334C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Oct 2022 18:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s/wVUxOs/hsYQ80wuu5vfXbHEjFLbpm4NNchlI8085Y=; b=Jb28oJLSe2V8sdrMkLkWOnEtDJ
	s7sEGVMbytqltuN7wIx6k9nYKEr15njprWQiJlHd9SxK8w4Wi9KB0u6RpJG7sBIThHwmzN+o/8xjJ
	8fR1u4C/aRNo2IwuR9Ldnowa/aqGpIs8OYBOrTen97Nv7FukmlsCWs5bYOqpMCw972TDshOZMRuEC
	EMqGknBp9nyxxbJDsXKyzIoby/mkzkg9HFY1tm0W2ll80oVEa8lJQEFauBg7B+lugpaICpYUGsPZZ
	ACoBcirqoDZE0syTqOW5oD1Sm3+gdYYxkjiu+wH2j73tumMyHVwWVzkwMlJ9mUsGsoppxTrvZz0Mb
	QxtTEsoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohEay-00DyDL-6E; Sat, 08 Oct 2022 18:30:44 +0000
Received: from 31-193-140-172.static.as29550.net ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohEaw-00DyCn-0M
	for linux-rockchip@lists.infradead.org; Sat, 08 Oct 2022 18:30:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oO8bUZZDKoT4Fb+7EEvM4K4qae/VkpDP0ELABrU/jmE=; b=O0vvvEGxFBTow0Jm/BRMMOBhvy
	lSj9svpqt2wEW/+rTRFErwn6OxzRkA72ZLZyfcMxcFo92bIDfcHrzISeo6AVx1purZSYCeVydrbJQ
	n840FFkOiFxg1qbViifUNfI7s/N2DgemnavGvaOES5kni/EaqlD5SpVa3ej1Xm/mdM6g=;
Received: from host86-153-126-124.range86-153.btcentralplus.com ([86.153.126.124] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1ohDSi-000Ack-LP
	for linux-rockchip@lists.infradead.org; Sat, 08 Oct 2022 18:18:08 +0100
Message-ID: <abba3972-fdd3-e783-8333-c81ed1f724e4@pscan.uk>
Date: Sat, 8 Oct 2022 19:30:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: [PATCH V10 3/4] power: supply: Add charger driver for Rockchip
 RK817
To: linux-rockchip@lists.infradead.org
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <20220827021623.23829-4-macroalpha82@gmail.com>
From: Philip C <subs@pscan.uk>
In-Reply-To: <20220827021623.23829-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221008_113042_140378_4DA27C18 
X-CRM114-Status: UNSURE (   3.87  )
X-CRM114-Notice: Please train this message.
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

I have a question about the RK817 driver.

In Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml it 
says:-
"extcon:
     description:
       Phandle to the extcon device providing the cable state for the 
otg phy."

In the context of an RK356x/RK817 based device, is RK817 an "extcon 
device" that provides the cable state?

should I have statement like:-
&usb2phy0 {
   extcon = <&rk817>;
};
?

or maybe it should be extcon = <&otg_switch> ?

In the BSP kernels it's done the other way round with the charger having 
an extcon declaring a phandle to the phy like this:-

rk817: pmic@20 {
   charger {
     extcon = <&usb2phy0>:
   };
};

thanks, Philip C

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
