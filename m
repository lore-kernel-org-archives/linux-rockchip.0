Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C3C3C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liTYVqRCswZ6iZfR+tlQmkZJx4T4RrGlUk/r0JDvncQ=; b=dyE2kx61ORx1qA
	cSUijutqv0yprUmk/P6CSOjYcK/ctht58FjbMhvCV2AMUdSC25AegRDwjVhK70UEUaZGYyFHpnCHM
	yKjYzKCh6lowLwYP/SLIS7rPfShlNs0K37iwdAf9G5GdVg1bllPKDFmu749QqyeabXDAKZclI6k+U
	LR0k1nrd+JRr7HTbm5UF7NMaXgBuZJ7zchfLMP1ILufI2eA4AT1femb81Rzft++RQmbXYmeK0SrjI
	e3xPDqsKH4qA4sOjNG5VVYsijrxGw4ubV+Bpnd60WLNJ2J1TqbODR3+YKv9Y0bdyHMiEintEoA4ag
	EDjOTQjwwnnn1TcJKSCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUnGD-0000000Gfev-08iq;
	Tue, 30 Jan 2024 12:30:41 +0000
Received: from mx2.securetransport.de ([2a03:4000:13:6c7::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUnG8-0000000Gfe9-3A2S;
	Tue, 30 Jan 2024 12:30:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dh-electronics.com;
	s=dhelectronicscom; t=1706617791;
	bh=LWCEE7Ky7ZqC2xZnLL48J6mdU/wI6QANLum+jdUp8h0=;
	h=From:To:CC:Subject:Date:References:In-Reply-To:From;
	b=NgId3XpE+F7hU3JeeLXAjPrhKu+VadeUAbULAkoAsMkzesjEieSKAiGsfiyrPNtA+
	 qw+d1amDXOCQd5vbru+vg78kXzeNnsGlYQPP6qvSwJRYcgj50+xQlIR6q1jqxaV5Zk
	 SLrv9M0tovDUYBwzTGhkOsceeFUxwzFE1NNE59qcbLxdvqg92rGdJpFPTw9BDvdVaZ
	 ahJkQfTRibb211YJNJQo0vDS56xkNAx04VcAkFhCp1fwxSaSShTX8RM3ZVIsGsl8zv
	 BAF0CiYnEJr2jSuF2Ehn+1sW4AXxy/tVSK0bwDI7TemAp6QAVnFZzOG7VZO7C2kUvV
	 YJeC2zlJhtMAg==
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>, Lino Sanfilippo
	<LinoSanfilippo@gmx.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: Rob Herring <robh@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-serial@vger.kernel.org"
	<linux-serial@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "quentin.schulz@theobroma-systems.com"
	<quentin.schulz@theobroma-systems.com>, Heiko Stuebner
	<heiko.stuebner@cherry.de>
Subject: RE: [PATCH v5 2/6] serial: 8250: Support separate rs485 rx-enable
 GPIO
Thread-Topic: [PATCH v5 2/6] serial: 8250: Support separate rs485 rx-enable
 GPIO
Thread-Index: AQHaUH1C9lFNHAGCbEecDp85JK6VnLDscmeAgAP+JYCAAd4lkA==
Date: Tue, 30 Jan 2024 12:29:47 +0000
Message-ID: <3d31b17ffd4a4f02aaaa1b6c33a09009@dh-electronics.com>
References: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
 <20240126-dev-rx-enable-v5-2-5d934eda05ca@theobroma-systems.com>
 <098216ce-50b3-43e4-ad1a-42228c58b761@gmx.de>
 <37522087-d3ac-4cc7-b11b-c844d36206ba@theobroma-systems.com>
In-Reply-To: <37522087-d3ac-4cc7-b11b-c844d36206ba@theobroma-systems.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_043037_050070_68804395 
X-CRM114-Status: GOOD (  13.32  )
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

From: Farouk Bouabid
Sent: Monday, January 29, 2024 9:57 AM

Hi,

> On 26.01.24 20:58, Lino Sanfilippo wrote:
>> [Some people who received this message don't often get email from linosanfilippo@gmx.de. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>
>> Hi,
>>
>> On 26.01.24 18:27, Farouk Bouabid wrote:
>>> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>>>
>>> The RE signal is used to control the duplex mode of transmissions,
>>> aka receiving data while sending in full duplex mode, while stopping
>>> receiving data in half-duplex mode.
>>>
>>> On a number of boards the !RE signal is tied to ground so reception
>>> is always enabled except if the UART allows disabling the receiver.
>>> This can be taken advantage of to implement half-duplex mode - like
>>> done on 8250_bcm2835aux.
>>>
>>> Another solution is to tie !RE to RTS always forcing half-duplex mode.
>>>
>>> And finally there is the option to control the RE signal separately,
>>> like done here by introducing a new rs485-specific gpio that can be
>>> set depending on the RX_DURING_TX setting in the common em485 callbacks.
>>>
>> we just added the rx_during_tx_gpio to the serial core.
>> Why cant you use this GPIO for your purpose?
>>
>> Regards,
>> Lino.
> What we are trying to implement is a gpio that emulates the RTS signal
> itself as we do not have a dedicated RTS signal that can be controlled
> through MCR. The rx during tx state in our case is a fixed state of
> "NO_RX_WHILE_TX"

Why can't the property rts-gpios be used here for this purpose?


Regards
Christoph
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
