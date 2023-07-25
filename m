Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4873FEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 18:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oU7G/AmZ80sv293F3PWhH9Og6pQsB5bbMdP8epVXrSA=; b=Dba4p7xhegQWt7
	12SzSsXkP2TOUVgSFDWPRCdUYdM4eitvXXY2xKiaorTUxYfBY1A+/RQLzS8PDWG6y28FvBUDlmP8H
	9H8Psp28FS0GWUMTN+UhJ3BCLAyTpBcWn456dQFhSLbZGgDeIm12BlCyt4DEgKwGaJGnwLgtLLB3Y
	WuFPHtzmukCSaa+hJS3DH7rDlGVNjpbdPXXCyK00XQ/OrCJE56fHyaQV4EXlxC5SlRWNCa1TyJLFW
	zIWfCBZGzglKNJerFAPCUpplgK8+oDn2RXEz7DxGiFFoLhSojAwQ00RFPsAdIj6Cyyjig8orI5VVx
	uYN7Bn40904pR3W3gPFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qON6H-008HSW-1y;
	Tue, 25 Jul 2023 18:49:37 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qON6D-008HRT-1U
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Jul 2023 18:49:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=slvye5wtN2LtYZ0xLS1A+7DvQJ4v5mIZFeSvFvmOaQM=;
	b=M63E3U9ADds9ZQIDFmYyogYxQVR8reCaFsFRNX5EMSPduM3QH7Z+bn4ZLzCV8aTzaIY8
	q75HevhruLSdG77YeO7l9PcfYvZP0RAFq868NCiESDB06mbM6XRrko0vg1ur7iYVdsGEXZ
	jraVRo8DVCjoqDjlQzyiPsN/xnaUFymcBw6CIFk6EVayn62eZ1lc6Xu5RxLkSUitu5t64L
	jP0H23nXPGgJIOcfOUOtZj2Fu6zaPupp3//erDVP8gSnu4rANPEAe9i+4aASVmwQPpJik+
	9dMdx8rr2F9MCQ+XgjJ8rotGhY4uya2I32EMLUlZFqwdtLOrEpLAqwlhcBHwTugA==
Received: by filterdrecv-66949dbc98-2h875 with SMTP id filterdrecv-66949dbc98-2h875-1-64C01936-5A
        2023-07-25 18:49:26.85580565 +0000 UTC m=+6548987.779244678
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-3 (SG) with ESMTP
	id CzoI7C93Q8C6ozvHpFDwpw
	Tue, 25 Jul 2023 18:49:26.565 +0000 (UTC)
Message-ID: <294d2905-79b5-3a49-88e5-47df9a2447ec@kwiboo.se>
Date: Tue, 25 Jul 2023 18:49:27 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] arm64: dts: rockchip: Fix regulators and enable SATA on
 Radxa E25
Content-Language: en-US
References: <20230724145213.3833099-1-jonas@kwiboo.se>
 <169030979754.2939984.9282914456412331786.b4-ty@sntech.de>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <169030979754.2939984.9282914456412331786.b4-ty@sntech.de>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hzhHxSPpdSFr4pHYV?=
 =?us-ascii?Q?0qIOofIH=2FsXgZ+Dsy7M6zY8SPImb9EjGkNHQzKu?=
 =?us-ascii?Q?75EkYebQpT1O=2FE6195t1I78Rk8V34atPNLk91Ek?=
 =?us-ascii?Q?Dge7DLCcCspf0pUPrThW5I=2FfpFyD1X3=2FanV2Eov?=
 =?us-ascii?Q?jNwhE+WETkS=2FLPLapQFHJMUu0piX3ZkAm14rFGs?=
 =?us-ascii?Q?mcA3ZMqpcBtP+7oTDib=2Fw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_114934_174541_1A4A7502 
X-CRM114-Status: GOOD (  13.29  )
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

On 2023-07-25 20:32, Heiko Stuebner wrote:
> On Mon, 24 Jul 2023 14:52:16 +0000 (UTC), Jonas Karlman wrote:
>> Despite its name, the regulator vcc3v3_pcie30x1 has nothing to do with
>> pcie30x1. Instead, it supply power to VBAT1-5 on the M.2 KEY B port as
>> seen on page 8 of the schematic [1].
>>
>> pcie30x1 is used for the mini PCIe slot, and as seen on page 9 the
>> vcc3v3_minipcie regulator is instead related to pcie30x1.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/2] arm64: dts: rockchip: Fix PCIe regulators on Radxa E25
> commit: a87852e37f782257ebc57cc44a0d3fbf806471f6
> 
> [2/2] arm64: dts: rockchip: Enable SATA on Radxa E25
> commit: 2bdfe84fbd57a4ed9fd65a67210442559ce078f0
> 
> As you can see, I've split them in two. Please check that I didn't
> mess anything up. Having an "and" in the commit subject is always a
> very strong indicator that a split is probably a good thing ;-)

Thanks, and they look fine. Should probably have split it in two from
the beginning, I will try to do better next time :-)

Regards,
Jonas

> 
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
