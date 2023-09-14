Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB490EEAA71
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 20:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zc6nJCnG2cSiPuTlRoOEO/g7bt4O4y7obXHXERK/zdo=; b=w4IZLSA8dCj7SHCJg+eEu5BNsQ
	9Q7dSxf51Q4qzXl3JRlD63ZeKjiPh3/g1g82T1Y87nVnTg122Rb2w7uQaHwQPykQN8YNyXG0vsavf
	n2drh9frMN+YPzCvT88v4bs96yNXXGJ/pjLG9fagCjw/q2LXbI7vvN674/JrlZgcuxbnKR+bkkaQy
	unQziXYpGybLR3dzxtmkQClJ30bwCSwCGl9Ikdn6kNq8OZOr5zB288ecqU43WpMt8A2cuyCueHX5w
	0dWR5Co3ZAAstcg5ngBlu3YU3Qll0J5d6cuG5FMezpqlWEUjwLlkqpANJoTIx1KMLrWYw0DOJcYtG
	oBo9eohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgt1u-009Edr-0v;
	Thu, 14 Sep 2023 20:33:38 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgt1r-009Eck-0Q;
	Thu, 14 Sep 2023 20:33:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60F1D1FB;
	Thu, 14 Sep 2023 13:34:06 -0700 (PDT)
Received: from [10.57.93.68] (unknown [10.57.93.68])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4370E3F738;
	Thu, 14 Sep 2023 13:33:27 -0700 (PDT)
Message-ID: <dde29b86-1cca-0712-0f0d-25d7e6d3327e@arm.com>
Date: Thu, 14 Sep 2023 21:33:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 02/13] media: rockchip: rga: extract helper to fill
 descriptors
Content-Language: en-GB
To: Michael Tretter <m.tretter@pengutronix.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
 <20230914-rockchip-rga-multiplanar-v1-2-abfd77260ae3@pengutronix.de>
 <239e2853-f89f-20da-2492-7f6d33aede63@arm.com>
 <20230914175724.GB1580188@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230914175724.GB1580188@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_133335_216134_9FC03C66 
X-CRM114-Status: GOOD (  21.26  )
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

On 2023-09-14 18:57, Michael Tretter wrote:
> Hi Robin,
> 
> On Thu, 14 Sep 2023 16:06:27 +0100, Robin Murphy wrote:
>> On 2023-09-14 13:40, Michael Tretter wrote:
>>> The IOMMU of the RGA is programmed with a list of DMA descriptors that
>>> contain an 32 bit address per 4k page in the video buffers. The address
>>> in the descriptor points to the start address of the page.
>>>
>>> Introduce 'struct rga_dma_desc' to make the handling of the DMA
>>> descriptors explicit instead of hiding them behind standard types.
>>>
>>> As the descriptors only handle 32 bit addresses, addresses above 4 GB
>>> cannot be addressed. If this is detected, stop filling the descriptor
>>> list and report an error.
>>
>> That sounds unnecessary, since the only DMA addresses the RGA should be
>> seeing are those from a dma_map_sg() call using the RGA device itself, and
>> that would have failed if it was unable to provide a valid DMA address for
>> the device.
>>
>> The existing rga_buf_map() code is so clearly wrong I can't tell whether
>> that mapping is done somewhere out in the core framework or whether the
>> driver's supposed to be doing it for itself.
> 
> The sg_table is filled by dma_map_sgtable in
> drivers/media/common/videobuf2/videobuf2-dma-sg.c.

Ah, great - in that case all you should need to do here is fill out the 
DMA descriptors with the correct DMA address as you are doing. If 
buf->dev is the right thing and you've set your DMA masks correctly then 
you can rely on the DMA addresses being appropriate already, since it's 
vb2-dma-sg's job to get that right (which per another recent thread it 
will do, but could do better...)

> Do you suggest to just drop the check for the addresses or is there something
> fundamentally wrong with filling the descriptor list in the driver? Can you
> explain what exactly is wrong with this code and do you have a pointer how to
> implement this correctly?

The rest of your patch is frankly more correct than what it's replacing, 
you can just drop the redundant upper_32_bits() check :)

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
