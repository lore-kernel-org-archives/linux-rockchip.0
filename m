Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0056CAC5AE
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 05:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Icv6greoyG9WxFyc3kcW2ukIQV2ILTjxf7dEwaLXYd0=; b=2NA1DuiHz3QHvI
	GH3DsR7MxeX9Uuf1OBGio/mMyPaMmCDLUBDOCLZ3DbxYIHBG0mEyGHBS53o9sQNBVN70zg0G4Y3T1
	BYRMIbmNx1nudzRUzZ3pybEblljdjqNTVt6ZhypZ3llDIuw//0uzIjVhuoXkB2f+tyUp3iY+tf4eZ
	Asprw1UG8UxEHwx/6AoC4Jwn02EnAEJGuuXy7cgGYSu9b+qMOE3gFAdOX0X8rOZ9f3Urr+BU2+U5G
	TNzOwj2EOd+4Hw94oiwHczs3J9aGOIFfZJMcv2OWkxTlTERfulzDxGDSMqcgTD8BiLuQlukfJ6RCK
	bIm8WHtcxUfK9cK77cKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqnSm-00000007UJY-1rgZ;
	Wed, 18 Sep 2024 05:42:52 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqnSi-00000007UI1-3fRO
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Sep 2024 05:42:50 +0000
X-QQ-mid: bizesmtpip3t1726638152t612xs2
X-QQ-Originating-IP: IUWXV2PxHOluGDantpJ83uhm/DZ/VLPGllmzA8Ut3BY=
Received: from [IPV6:240f:10b:7440:1:fcdb:81be ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 18 Sep 2024 13:42:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16164053558485138980
Message-ID: <C295552EB2D8F3B1+a5cf5631-9faf-4fea-87d7-ea66e532b867@radxa.com>
Date: Wed, 18 Sep 2024 14:42:27 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove cd-gpios property in sdmmc0
 for Radxa E25
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
References: <AC9279A68EEE724E+253b27d6-e954-44ba-ab42-e8257ae9a2bb@radxa.com>
 <20240918020016.472157-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240918020016.472157-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_224249_498887_27A40C7A 
X-CRM114-Status: UNSURE (   7.40  )
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

Hi,

On 9/18/24 11:00, Chukun Pan wrote:
>> pcie30x1_clkreqnm0 is unused[1], so it can be used for sdmmc0.
> 
> Please update the pinctrl of pcie3x1 node first to avoid conflicts.

I see. I will add it as first patch of this series.

> Btw I don't think this commit needs a fixes tag.

sure.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
