Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 063A4C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 04:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sOhQ0lAo7IH35J9RXRbbhJ1YInT/1kf/Hme2yEf/bM=; b=Bv2m2M0f3yjCFp
	s/E3CFgQpG1oizIVxQTbWQkha7y1bW1oiYwcsLdzYDUocypYIXZCQHROiJfZx56DESBYGE/qxvNlN
	n9s3tSFqh7JPwzFeAbmClvCAA3X/4BTxdOLACI09HXqHDR9aJnoo7zsUnoXYRLxaTMK7F4+OlfJpS
	ASBKf8Jv3huPlucV2c66IYStgT+f03GMmRcmVYdull1MYeCVWR4jyDz2H6H06kyLR/Ot+D3nZXra8
	MCQnKs3DeBVi5C7p1Wj3v0bkpUL0QJ6nDALeCJhLkwVTUyLyYYHt6olGYjBJWjSawgWKSU3dJ7tGN
	J/VJl9SPLOCcCp4KqigA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLEnZ-0000000DJbL-27BW;
	Sun, 23 Jun 2024 04:25:53 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLEnV-0000000DJXo-2i89
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 04:25:52 +0000
X-QQ-mid: bizesmtpsz5t1719116699to838b6
X-QQ-Originating-IP: /Uu0RheMLCYlnou1IU0pZbHkn/oRZL3KyTQMj5G8q9w=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 23 Jun 2024 12:24:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2380804386648222078
Message-ID: <DBE7B5A56069764A+b5680896-bc71-4af8-9d56-bd6828595e74@radxa.com>
Date: Sun, 23 Jun 2024 13:24:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for
 Radxa ROCK 3C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: chris.obbard@collabora.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org,
 sebastian.reichel@collabora.com
References: <20240623023329.1044-3-naoki@radxa.com>
 <20240623040409.1756986-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240623040409.1756986-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_212550_501667_4F1F89F0 
X-CRM114-Status: UNSURE (   6.94  )
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

Thank you very much for your comment!

On 6/23/24 13:04, Chukun Pan wrote:
> Hi,
>> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.
> 
> I don't think a fixes tag is needed, because there is no documentation
> for this. See also (sfc part):
> https://lore.kernel.org/lkml/d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se/

I see, I'll remove fixes tag in v2.
btw, is this change reasonable(acceptable)?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>
>> Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> Thanks,
> Chukun
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
