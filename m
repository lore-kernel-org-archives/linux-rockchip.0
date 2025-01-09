Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8F7E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 08:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmUOB1HsCXp7Nmgz7iIywlhuXsrRMRfK1P2VQbyrKu8=; b=xZqkFhL7gZW5Y6
	M27hjqTVuKhdFlOroRI3+4Iw4Tjy17wyx7FCEKtCeQRVqOuIE9erRXgUIwK1xNu5FPQO57EK9NxNS
	fBkMlk7Uq5o3fpHTBCcrMiS6PBh1eCMFyFvEsSNPivG0ron+hSyRV1a5ibwfUk/BenpNo2NOJuWz9
	lqkmSxfcLxxi+4Bjh8pjYTnsJZBUBQV6XTWF8XcpNlKpZx8pKNcGP8R8/H6jZ7PMaZkntX66MjnSy
	PbM1QSU679/A8Em6sqHSzVKmSBxHe9zi5tCiyYegKjGlKKTJjUrqjp5Sb32NyACG+L3fL8enTLthj
	ZPCFGy+ruPdWmLVMrk7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnvR-0000000BBSu-22Mz;
	Thu, 09 Jan 2025 08:29:57 +0000
Received: from mail-m12769.qiye.163.com ([115.236.127.69])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVnvO-0000000BBPp-2Dwy;
	Thu, 09 Jan 2025 08:29:56 +0000
Received: from [192.168.2.32] (unknown [125.77.104.109])
	by smtp.qiye.163.com (Hmail) with ESMTP id 83580805;
	Thu, 9 Jan 2025 16:29:44 +0800 (GMT+08:00)
Message-ID: <1a8ce846-bae7-4087-ba7c-2cc5be541be9@rock-chips.com>
Date: Thu, 9 Jan 2025 16:29:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] spi: rockchip-sfc: Add rockchip,fspi compatible
To: Krzysztof Kozlowski <krzk@kernel.org>, broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
References: <20250107154755.2037197-1-jon.lin@rock-chips.com>
 <20250107154755.2037197-2-jon.lin@rock-chips.com>
 <1ef2ece5-f4ed-46ca-9bf5-75f898565a62@kernel.org>
From: Jon Lin <jon.lin@rock-chips.com>
In-Reply-To: <1ef2ece5-f4ed-46ca-9bf5-75f898565a62@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGhkaVk8fQx8dT05CSEpJGVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSU5VTExVSktPVUpLQllXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0
	tVSkJLS1kG
X-HM-Tid: 0a944a2f0c2109d9kunm83580805
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODo6Ajo4CzISFwsBCBcRAjJL
	FxlPFD5VSlVKTEhNT0pKSENOQk9KVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlKSU5VTExVSktPVUpLQllXWQgBWUFKSktCNwY+
DKIM-Signature: a=rsa-sha256;
	b=E/hDMvN/uXfDVXVtLxHo1yiWP5wjgZs/7u4vsuJhgy4ioXLgcRGjAz6ZAv9ux34uZXrvKsU/jiZF1i6TrzQfyF0mQIJ79pk+4HjZROAxrsn+n1H6Fc7JepyYkxB9mgzZHO7sGCPVQ0kcDu93CBDUWL4fmG4oDqY0NJ6owKg5dms=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=qdKQdu0yqkEFNpHjhxt/s1/3Z7lTuPUmfZCAiVLRWwE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_002955_108375_3A9EBBBB 
X-CRM114-Status: UNSURE (   9.06  )
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

On 2025/1/8 15:03, Krzysztof Kozlowski wrote:
> On 07/01/2025 16:47, Jon Lin wrote:
>>
>> diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
>> index 59de351499a0..88fbde27925e 100644
>> --- a/drivers/spi/spi-rockchip-sfc.c
>> +++ b/drivers/spi/spi-rockchip-sfc.c
>> @@ -808,6 +808,7 @@ static const struct dev_pm_ops rockchip_sfc_pm_ops = {
>>   };
>>   
>>   static const struct of_device_id rockchip_sfc_dt_ids[] = {
>> +	{ .compatible = "rockchip,fspi"},
>>   	{ .compatible = "rockchip,sfc"},
> I don't understand why you are adding generic compatible which is not
> even used. Use proper SoC specific compatibles and fallbacks when
> applicable (see writing bindings document).
> 

Thanks for the reminder. These two submissions are indeed redundant 
submissions at present and are not recommended to be merged.

It is indeed necessary to add submissions like rockchip,rkxxxxx-fspi 
when there are specific SOC requirements, and attach the associated priv 
data.

The merging of this submission is suspended.

> Best regards,
> Krzysztof
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
