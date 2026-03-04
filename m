Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC97CEFCE4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 20:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDgCG26x+wDjN4Ac+59QhjBHMs/YyfEor8Dm53QcT7o=; b=xy1yeKnxvnRs6E
	FNMWNTrnPIvSNhGCxCLRMBpce6lMnWNjxlKSedgAsBP0oXPC2AmKyYPh2BVefrnSHmawNURMmMPmt
	3vkpDIkdBZG+mtRH/qRBib3c1YlNc24cvvF6ZPimQGswfwm6bridM0ItD8fPm4BPxGvbTlC4Em2jt
	Sr3BYdse79Z4ZzlWD/0rhwQpKbIxVqxTbsJyOR2TZRlCEIw1sGF0uVTElhI1u6+9G/rz4bnjNOXDW
	clcD2F7P8rLkjrAaLWlYViZ8TzqRofFKNJxDjO7GqBRxwyvPnmPiFUuB2q4LWoEb/NwupsheryKNi
	KRK5VhpouOh4XtTGYj1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxt8k-00000000TOh-3Rb5;
	Wed, 04 Mar 2026 20:48:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxt8k-00000000TOC-0z1z
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Mar 2026 20:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=KYNFqupRvkwAilNqSDcz2z6T7EuDcaIGLGnq2s5luwA=; b=ChsScfNeJwsEKBjxDPhPPVFPBR
	oJKu0hPRFwRc/L8ygwEbX0Nj2Lun2NxUtKrC/Jeqisxfdo0pwqYqsWPvOvnviFb0XS63hZ4D21au/
	0YxwCoIt25g3UETj47Cg1RJTT+lvowGkn141379ve7GM1m9tnYvQiVTSZEaB8ELPaVgLTm71Kr/80
	FSCCDe2Y7PSCa9ptwcOebt3V8hshX6AOsTyJPFAJwJ8T7PwOYBAwzD0XBOQukw04XbNNi4/7XdXLO
	2y5i904yC1S3EKJpD9B/O4lcr1ok0HuDG5CCCizi/KidoZFKuJBJ7bvT1w08JZaorslSqmSpfsInG
	Dwae/sDg==;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxt8h-0000000Dsi9-2RM0
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 20:48:17 +0000
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4327790c4e9so5594805f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 12:48:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772657293; x=1773262093;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYNFqupRvkwAilNqSDcz2z6T7EuDcaIGLGnq2s5luwA=;
        b=gfvySa/cs2ZBwA4oIZQSuXBsNwMgm7WpEp67qQyB/s2+i2YRqh05WSLhLQBnBE5kAw
         lJ2lZcJcVh32XjxQ7ohBq5nwGA9gpWWB6+B9ExuAqavxPuIFLr3hUNnr/ZatQNcQZc2t
         GGIpakkTH5g+KuEkCJ5j8WyFbCOtdtF/WnO39uNWkpnF8X7oUXm7390uyZ1wQP0Rlddm
         GClkGwnVtPuglqE+XwKiy1q1NIwydR6ZdVtEjmmjN9/P/vV/qPU/nom77WoYPrXDN39K
         +gaRn+koQ6LJweEtmTjB2fWmjDBQLSvNShfEN4x6DuNZaw+GTFj2qOtnP0AADMT+6skK
         eQqA==
X-Forwarded-Encrypted: i=1; AJvYcCUszqd7GyEUDj+8GkKj6lMN0qjryDcFWZSfUBXL7rhqQeDRkfyNueu7E0U/kSFTfmZNCqRl11ec4wqQ7Kipgg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzoah9eagVVoDYfutZkhw0wrTJJvc9dPbjZsJh3nM2hfyhTTNC/
	DiGaEUnx+0jy7fbaIf+7AD8SrRm7ClWYYyh2PfhRkog3GUnSHAnOQOOc
X-Gm-Gg: ATEYQzw3rLnRRiPQqrrIM5tQH5K/ks1sXK+Ng65ppqfHEM5SwfRuCiYEhAslhV+h151
	w3qbqJBG+3zLDQLIcw1vXOXNRe5kAlyqQcVlLsKdQy4djN8Xxl0zBalgOf+043v/hjIzDqf1ntP
	VGme3Zz8R4AKNMI+gxIGdBcduZxiltoemddY10if3zD1ASGsVq48ufLBpIFBntlwOt0rTT0z7yE
	8flYkYAKccKaQShRMNkI/TbxCe+UerhFMMcB3/GoQMcjghvfyxEZIZqlFl6NDIhyHkSm2c7Y6SX
	y3p6oOiDHDCy/wKslzIEtobiWJZgSdy1vpNvkUPgpku546ApAn4+DbJEzAVAVyBIJFFSuTJsKU0
	dhkAurIvEymd/cKDUWr8G45Z7OndC+rr+rnDhCRCNR2v3040V4rQbaw8QSepS72lDKCIHBiwrjC
	e9PXjv+rbb8eEJHhI3Qi/5cRLdMUQMOzajvO4HTGt/m8q1QvIIX7ZqafSY6/Kt+j9IlcYuUIAVG
	xY7WYxsaNjfYNerZXd2ZMeKLRs9
X-Received: by 2002:a5d:5d07:0:b0:439:cce7:d04d with SMTP id ffacd0b85a97d-439cce7d0a0mr2269547f8f.58.1772657292586;
        Wed, 04 Mar 2026 12:48:12 -0800 (PST)
Received: from ?IPV6:2001:818:ea73:e00:b102:ff11:db49:2389? ([2001:818:ea73:e00:b102:ff11:db49:2389])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ba2a5970sm22469059f8f.33.2026.03.04.12.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 12:48:12 -0800 (PST)
Message-ID: <7d3c5e4c-37a8-4d12-a7da-3b4d159a8d4d@pta2002.com>
Date: Wed, 4 Mar 2026 20:48:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>,
 Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260304-radxa-r5-itx-hdmirx-v1-1-f77bf1f7ce03@pta2002.com>
 <DGU7SPZQMZR5.1506XM8RO4EHE@cknow-tech.com>
 <CAAEXfUVBVMmT3i+10F3uvmGOtMMLoQK4WXM7_0G88aL5DntOuw@mail.gmail.com>
 <24285215.6Emhk5qWAg@phil>
Content-Language: pt_PT
From: Pedro Alves <pta2002@pta2002.com>
In-Reply-To: <24285215.6Emhk5qWAg@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_204815_651346_05C68173 
X-CRM114-Status: GOOD (  10.08  )
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

On 04/03/2026 20:26, Heiko Stuebner wrote:
> I really want pin-names to reflect the schematics. This makes searching
> so much easier. Sometimes things slip through where that doesn't match,
> but the goal would be to always move to improve things.
> 
> So at least the newly added hdmirx here should follow the schematics,
> and if you are keen to bring everything in line, you could also change
> the other boards. But please make sure via the schematics of those :-)

Thanks for the feedback. I've reverted that and will look into changing
the other boards in a separate patch since there are quite a few.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
