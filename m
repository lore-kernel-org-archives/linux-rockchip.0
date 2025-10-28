Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977D0CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 09:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfSRTjax+mEltO9JIC20FBANas4Gdpn9wUcIHPTASeQ=; b=oE9utmnt/8b904
	G5vnpvQRlUDLL1pt3+C60vw88Fer2csQyzC2MvE0PhsNAPmFpYMz586kcG422tN7Ol7/wd2PtNr/0
	U7/WhvoD/PFNFtxlX9gYHI5pFLNv0wSwE4FU2UaXBs6mYQ+qUchj0bpXY/jewMplT8/skUQMj2yRH
	l0hgq1bD/MPsVpJaY0CG+CD17zNIn85X0SQATBsPrJse7IqWBj6LU4mcMLA6NtH5t+Hk8oWFJucTG
	kTiVDIgcyiGMG4Z6XulDx/T5EDF7Qaxp/H9Xh5JImE1bucx10Jgoj3ccs5vr3E8Eq5UrCQWE4FV3z
	XGK3hQGAK71AmkKB33hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDg65-0000000FeE1-1lky;
	Tue, 28 Oct 2025 09:34:33 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDg62-0000000FeCz-2hzE
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 09:34:32 +0000
X-QQ-mid: zesmtpip3t1761644020t944cb695
X-QQ-Originating-IP: WmyZaQKgFgULUT5JCy5bTNzR7Fslt2fRzX9qsnX5Cns=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 17:33:34 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5111663429691748184
Message-ID: <6443BD03B4C4F1FE+d20c3903-e2dc-4c2b-8f6e-fac38f242898@radxa.com>
Date: Tue, 28 Oct 2025 18:33:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Joseph Kogut <joseph.kogut@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steve deRosier <derosier@cal-sierra.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
 <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250529-impressive-real-monkey-a7818b@kuoka>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: Mvaw++KQIsq0vFjigxIApDXHlXSParZbMBCXdY0NCnb+NjkVkf72zTUz
	laU/rSvBCEYvwiw+KLYBl4tSL/kFDzndJUphGV64uhevw5fR+YgE1f6pgDdY2K8xTDEAeKF
	2zoqnXNpF9nkAxmaPLGU78zQBDJ9G5GPrtSxYX+QjQQL/2bOXaorLnD78twqiI8dcUcXT6E
	02KU1ZZa7C6eioZTW5kRfIXoU/M3SfXULgPheoaom0iYwgLlMOo3fRB0lNUlzHLxuSB40IM
	uwVomI4M/Rq7Px0nTC5hTfCUrd6TqVKGm70pki/EaPCDCBstzOIOZJcOGCbvDd9k+c+Jkz7
	Egs+6DeHoCH46JP69RlTofXDcfEsxm3IXYAlTfuAm/P2VcByHCdNCWlcF0pbUffc6VGnLuV
	JlRi4QAs+eJiKuu2bsy8EA/MqBr/o6uhimhptr4KEYLxCFPTioL1tsiTMqfzXwF4aIJPvWE
	IKLNCnOo0/6nszujGQzNPRHtwdlWOPJ88Q/0eHYCiVU1sVDGUQE/onMFQingUMrdzEAO2Aq
	Q5aJoSX8ONSY7NbKrYGGqt2HrlSndi9JRpoECkCBRwYsrytLvH4CKL7bx5OtBnroSsibtc7
	gj+tFAaQ4Ne+4Jd96Id4qwWeE+i+25YwaQnh8tHAJMEfE81Fk9D5SxQKj3b2Pe8EvMTupcD
	FwHc7yyABBhtQ25ca6KC0VJ3mQ+uhLnWIXwOEaSwAOE2YbJF9GbYAusebMzaodlPzJuwocl
	BPVHAbwsxI4YVhoMcnwYzcDQ1BZBJG97oC4iqBU02E+nVFL7b5OhZ9VvWrKOa6j404c4/YR
	oCHnEI58mt9jlwGVnohX1PWbkur6pwr0+yyz2suvV5VOHoNC/mWrVX3Q7bb+cPa0j1Yqxhi
	Zgk9FV3z7fhbsjrVOztksY0UelcIXjIv6cWY6J5kqjqOS3q3x4YIdZ5icffks/uvVa63zAX
	6NVmbSGvvjDMjtZmeEYhqho8vBjQc1iAJj38bMMHBMReGvMr21/7nF1zg
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_023431_170816_18223BA8 
X-CRM114-Status: UNSURE (   8.80  )
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

Hi Krzysztof,

https://patchwork.kernel.org/project/linux-rockchip/patch/20250528221823.2974653-2-joseph.kogut@gmail.com/

On 5/29/25 18:19, Krzysztof Kozlowski wrote:
> On Wed, May 28, 2025 at 03:18:21PM GMT, Joseph Kogut wrote:
>> Add device tree binding for the Radxa CM5 IO board.
>>
>> This board is based on the rk3588s.
> 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets.
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Please explain the sorting rule used for this file. You must have known 
the sorting rule; otherwise, how can you be sure this patch is correct?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
