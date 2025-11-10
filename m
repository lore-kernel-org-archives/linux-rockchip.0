Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA152CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 09:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0K7sAfNxHx+Den5Tm0X2As5Kyv1LyJwa1dCKu/rly0=; b=G2iO0Y081qY7xQ
	6mMeE++mwvBk82JbQ1sjrwbJZmds8IMCya+/dIz5TcElyzPDvrywmpaYvH7wDQimdxSUMICBJYbJ9
	cncJAxLUrJ5SyXoT6t9qAqbTZF94AOKiQE/cxs1LY1UBz/0/x23vxQv1IECt4ulsxZvNNlATXv5bG
	nC8iJWXS22hPGzOdmVd6ikeXPcRA+PWSNObzayQ5Skd+xlIcBxCM5WT+auqbtFHixJs7TKyQ4X3B8
	7QBUyZwsINHmp0Eohef2w7XuGX0zRq/eIyxBC7oKO8HjLEX4eIsLtOiFT7lvxrOTZw2hceZV/gLvk
	e9/twQQR667PeBVDjzWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIOT8-000000057I9-3oia;
	Mon, 10 Nov 2025 09:45:52 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIOT5-000000057De-3okh
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 09:45:49 +0000
X-QQ-mid: zesmtpip3t1762767876tdb51fa69
X-QQ-Originating-IP: 2CK8apsjgNKqbwdcvtczSYL+GYNV0vIoSyaleXbZxa8=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 17:44:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18044168164568340078
Message-ID: <8934442FCE2020A5+855829eb-e783-4aa5-b4a1-13b0a519c46d@radxa.com>
Date: Mon, 10 Nov 2025 18:44:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 5A
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
 sebastian.reichel@collabora.com, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
 <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
 <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <65f17890-c052-f303-4731-f882946df1f1@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OHYeUdyRmGQYZMk/YGywGOSRRNIbzQ5OneIawkl6OkbWE8E6v6hdX3Su
	bS9FYW6yWxEFynYa07TZ2mSoqKRI7QcLPcC5asFD5iAO9b3EMpqA/OfECXSEttJAfCG4wGN
	CsTHmQtJOjh45qmtMqx7DNVKy9/VoCxJZsVilFeAFZDbl/cIGd57m40n4nGbA7BHRh/9Wfu
	8HIiN1pecIaq9hFwCXUb8akdpu/QoIMxhqlY7VxGHu1hPeWQqh9Gdk1ztw34pJcJJtjJCYB
	H9XL8bySVoQLnLYVh6mxa3ZjjvtxWi9DpnGyUMMYEnr5Gk85GwIJ2HJ1gmlKvuGoOI3PbSV
	bbwur+CP+iSpua2uReT9RtjoiXVeT4unKRQ6GjphEHzsyRnQlB7nJ6SO+E3E8fSfwHwD95B
	p63Em+VjYmLvctkX/q2d03B+eVxmbENnmx7uf6qVcF8KqwACpuMNVBE7CqhcsWJaVShUDJL
	wJCfOLLnbizhZxGePPMN3vWxn1k0N7bjkKYWZwjgw7K2XOQpU65x4YWGDiH0vdIKRmi2mj0
	EcKAK1oyPcOTkOiaNpJwHZt9OX80BQQNR1LHjFa9+ilyA8CkgyDpwpxFviHbjVHgkg6U0f1
	97ed14CUg3i3KYniHNkLrpOBfpVClOxVb7Sq7eitV8xqQgtn0ZKChgFSGU/m6/MI3Lav9tD
	reM2uUWlF2SDtWhEvR6O14uftjL13/HbnziexjyL4EKYBkPzjlTOc4q2BQeQ2UCeaF/R3eB
	o/LBusoW42GaKNAuZan1ykuOj7eunchMjXLGMkSw3oVULPcA0K74x1iMZMG9rzZoDeaDvyk
	r2vK1vtMM55ESVayngf9SP11x+RaZW3b5hC6XcMryk6VHfQq9ACHCSOlPd5CGCc7W3FTzpH
	kUIo99vYfT7zju3pepjgKeaqPoOwJwQtJZMk9iL6gPtn65cU1codoroCXZIfjVt4bjTcTDI
	tHUdlQuLlkZZy9Spg4cN0JyD8OUAoY39inGM=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_014548_828413_AE854B83 
X-CRM114-Status: UNSURE (   8.81  )
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

Hi Dragan,

On 11/10/25 16:38, Dragan Simic wrote:
(snip)>>> Additionally, it would make sense to squash this patch and your
>>> other patch that addresses the ROCK 5C together.  They're very
>>> similar and having them together in a single commit might actually
>>> help the people browsing the repository understand it better.
>>
>> I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom
>> patches for ROCK 3C/5A/5C.
> 
> Thanks!

I'm preparing a patch series for Radxa ROCK 5A and I just remembered 
that the eeprom node in 5a.dts is totally incorrect. The eeprom is on 
i2c0, not on i2c2.

I'm planning to include this eeprom fix as a part of the patch series 
for 5A.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
