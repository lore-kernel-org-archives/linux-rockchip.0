Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB2BEB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 01:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKA2GqaknRnW/Ccgth0h7p/Qu1oVgbYZTQptyS8yZD8=; b=FNzvTl5071IKxE
	E7ubb9kwDBOdCBP3et07pTyBpxFLVZlZLyAXd2WRUusBolVcCl/Q8OxG8exfe5T4tZGjFtQdUCRqP
	vTC3P52fJ1gK2JY89E6cs/VpPgjmeuMOk/KW/1M/+hvR62DIGhSnJpbvfL5kJ2YPsNwcApe2mZODs
	NfqKU4fSHGElXrAROAfD3Twx5NL8pmENonHyAjos+d6H7XZLPY2XQXsxojFSxg4p8BEpWQ0207CPt
	9BnVXMDOKNtTA4tdOzd5ErDfzJP9w5D07LCDNeYgvk4punWb3wYI8+31J2kGa4nvIXAhImBPuZXK9
	8lAOfMt3dDyv1rU67xPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9yZe-00GXv1-1K;
	Fri, 16 Jun 2023 01:48:26 +0000
Received: from mail-m11876.qiye.163.com ([115.236.118.76])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9yZa-00GXrs-0s
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 01:48:24 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11876.qiye.163.com (Hmail) with ESMTPA id AAFE03C02BE;
	Fri, 16 Jun 2023 09:48:00 +0800 (CST)
Message-ID: <2a833dc5-569b-d7e0-eb93-385f03af81b1@rock-chips.com>
Date: Fri, 16 Jun 2023 09:48:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3] usb: typec: tcpm: add get max power support
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sebastian.reichel@collabora.com, linux@roeck-us.net,
 heikki.krogerus@linux.intel.com, heiko@sntech.de, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, william.wu@rock-chips.com,
 jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230322093120.8686-1-frank.wang@rock-chips.com>
 <2023061551-gumminess-clasp-6285@gregkh>
Content-Language: en-US
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <2023061551-gumminess-clasp-6285@gregkh>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9MSFZLQk5DGR9CH0gZHUhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a88c1e3550e2eb2kusnaafe03c02be
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PEk6Fhw5Cz1OFBAeECwvFz5I
	FhdPCTNVSlVKTUNNQ0NLS0NKTUlDVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT0hNNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_184822_449304_3639B788 
X-CRM114-Status: UNSURE (   7.93  )
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

Hi Greg,

On 2023/6/15 17:39, Greg KH wrote:
> On Wed, Mar 22, 2023 at 05:31:20PM +0800, Frank Wang wrote:
>> Traverse fixed pdos to calculate the maximum power that the charger
>> can provide, and it can be get by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
>> property.
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>>   drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
> What ever happened to this patch?
>
> Frank, can you rebase it and resubmit?

Thanks for your reply, I shall resubmit it later.

BR.
Frank

> thanks,
>
> greg k-h


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
