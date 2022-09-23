Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A782BC6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 15:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VwOcutFUc4Fm4FLeWOUhUHs7laycZkodsW3LKy+8rZ4=; b=AH8XBsQgcbHZgwLkWnFhq4AsIT
	NpWFgiL4aTKa5HzE4f2a/oORTlWoAJWDeFcV15bT68j3O5MI7GVXq0e2G2kNPmb4KThyorHoIPdOu
	dYRDqL1wMjYmciPUOnoDw+ciKxmed8i8zeWvIw7q2aQGN66TnU02EuZfBP7Jc4d/EFxzHrekud4Pv
	1qPSQRDCLuBC1n/Lpd7yMl+h+zGr+fFuYACdToW9wESiMypPFwwGbRqHA6mzFa2nlNXW06GkMct3P
	90vL+/hue2YxObiU+FhJtEfJfCCRnd9JwZkdu4E4ZIEAmA35sao+JjlGBAqrdKBqCJShs9bIrDD6C
	NZ2Eei+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obkST-004mZS-MJ; Fri, 23 Sep 2022 15:19:17 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obkSQ-004mXe-JW
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 15:19:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pbypITStEQhEMxhyL4Ix3Hbg+P6nfk4M2aef6prjZl0=; b=gk3oZcRjJ9toE5pALptBfwCLF8
	QmVOFL3KskZTC09iwH5O2so05ctid684166SmIeXMgDld2r0sSRoMa21mt+js6r14D/stv+0151Q4
	2eznExAmWbWw3GWjWtRwNP9ZslFHP+70sJP6DAnJr6Gg72yKLZphyKVqydBA5xSEf8i8=;
Received: from host86-153-126-124.range86-153.btcentralplus.com ([86.153.126.124] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1objKF-000F2x-3b; Fri, 23 Sep 2022 15:06:43 +0100
Message-ID: <59ed09fd-70ee-7366-1993-2213b426e6c8@pscan.uk>
Date: Fri, 23 Sep 2022 16:19:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: (subset) [PATCH v4 0/3] rockchip-dsi for rk3568
To: linux-rockchip@lists.infradead.org, macromorgan@hotmail.com
References: <20220919164616.12492-1-macroalpha82@gmail.com>
 <166392923326.537565.15902590169294407373.b4-ty@sntech.de>
From: Philip C <subs@pscan.uk>
In-Reply-To: <166392923326.537565.15902590169294407373.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_081915_028834_B118B140 
X-CRM114-Status: GOOD (  12.33  )
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

I am trying to get the MIPI-DSI output to work with the Pine64 7" LCD (a 
Feiyang panel) on Quartz64-a.

I was able to get the previous DSI Enablement serious (as published on 
September 6th) working on top of 6.0-RC4, with some help from Chris, but 
I have not been able to recreate the same success with these latest 
patches on top of 6.0-RC6.

Has anyone else gotten their MIP-DSI output to work with these latest 
patches?  and, would they be willing to share their kernel config and 
DTS files with me?  I am probably missing one silly thing, but I don't 
have the skills to figure out what it is.

I would like to get this working and repeatable and then share it with 
the Pine64 community.

thanks, Philip

On 23/09/2022 11:34, Heiko Stuebner wrote:
> On Mon, 19 Sep 2022 11:46:13 -0500, Chris Morgan wrote:
>> This series adds support for the dsi and dphy controllers on the
>> Rockchip RK3568.
>>
>> Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.
>>
>> Changes since V3:
>>   - Added labels to bindings in rk356x.dtsi file to make it easier to
>>     reference in board dts files.
>>
>> [...]
> 
> Applied, thanks!
> 
> [3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
>        commit: e18d9b093006d8abd53e1ce13c0d5a8d0fcd5f64
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
