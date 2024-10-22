Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52768D2CE0D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 17:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTu+V6op/ENWhYe5NsN95yNDlrdYIahM/cn1BiL+TE0=; b=jpL9uaxZtY+qz8
	M6PmkdnuGzCT3wxcIr31ykQ/fZndcTSrrjwyc3RzVbXrZhhN+CWxE3AVk0DZzE8QQx2xsF996hbI9
	xxoyKtAdeFKL1eWyzmM0VUpxe6t2W8ph3iCQmJoBnSbgNn5S8ueEtxvyZC94VhBaj/SbhnFeSRdvr
	bsWUe3DC6if51Lq3kAryF62p7JdemfF1P9P3twY3kgZoCzGXn68r8HwUjHQYELbNxKpcNFEaZWe9k
	XOvgE8Iz/AWmG1Y6MyGzcMOf9GyTRGjDZiON4iFWW/3aQLtk3JWkk/EpfAPGQ5U5IMBkVGRHvWp6l
	6elEYr+0DobcixMOFiHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Im6-0000000BfYs-16Zi;
	Tue, 22 Oct 2024 17:34:30 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3IMY-0000000BbC5-1GAK
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 17:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729616873;
 bh=ntkSVzAxzy7Rcn6JfP4Oqh1kowFYoM8B0tHurfPeglY=;
 b=m5hyNAMjwa70CvaWQEotpSxEueKum3p5Yt1QpLlXCEkH8BKJ5ihKAOIZ1uRZyHYMpSvgQFaAp
 HpMcspcmFfbNp+ks94WdXvoIY3UXbrGfz+O7UCmGvwBlANplK+kLQJsLfvleRqe6rbCEhogRXOP
 5UPCse+RuMyxbGT2yxwaxertiqIjK0pMRkHqzMROqQr97yemBYiw1iuRP4F4iAaEfcCP4dfEkNG
 9u1QXk+AdZkXqHJXx7V/JQwiLCl2TZ2PkgWZxCLSR0gYQjMWCRUZc8uI83kqBNzphAdWOZ/5hzU
 MBEpjYCstTurkah+03snITDIonr0zWJEcFjFmxoq4GQw==
Message-ID: <8684a5a3-48d0-4acf-9ed7-a035fca15119@kwiboo.se>
Date: Tue, 22 Oct 2024 19:07:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi
 R3S
To: Heiko Stuebner <heiko@sntech.de>, Tianling Shen <cnsztl@gmail.com>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>,
 Andy Yan <andyshrk@163.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241020173946.225960-1-cnsztl@gmail.com>
 <172960632903.1476617.9941592027677995572.b4-ty@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <172960632903.1476617.9941592027677995572.b4-ty@sntech.de>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 6717dbe4289888ca1b5a2b67
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_100806_509302_AF2C2280 
X-CRM114-Status: UNSURE (   7.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On 2024-10-22 16:12, Heiko Stuebner wrote:
> On Mon, 21 Oct 2024 01:39:45 +0800, Tianling Shen wrote:
>> Add devicetree binding for FriendlyARM NanoPi R3S.
>>
>>
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi R3S
>       commit: 1e94bfea52bee081c42ab922c19156dd3d2bade8
> [2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board
>       commit: 50decd493c8394c52d04561fe4ede34df27a46ba

I just sent out a review on this patch [1], please leave more then a day
or two to finish up a review ;-)

[1] https://lore.kernel.org/r/13bb8657-f048-4f79-a2c1-3680445f2bef@kwiboo.se/

Regards,
Jonas

> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
