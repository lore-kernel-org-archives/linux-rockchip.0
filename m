Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A33C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 01:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPQCv67G+FsQ10y/7JssGec4lA7olurdR1CEiEkKxS4=; b=r2bu6Q24etxv+v
	2X5V7yEQ4AAk3I17BdfZMNYKubLJL/PRyarhRiPTbIc4ZbPc0nxXrRzq/zDY4rJU0fVFN+uSomfa9
	ncfR6XcIncEYGMF1cOB7shU14AppCthMcHWhOjwDmwfWPCZStsd2jsXwUqrbZcg+WcPxG1I1H4v/F
	eMe5Acw8Iv6S9iC6d90FVCyDnNo2IdLvCJw8W8t+07WNcZ42hAs4uA6rF5RrSqtBpKcFquIWFAhig
	cXVhb4/UQnSl/RW/vaRw27Nz0DPqBASqqEQEpOGTqZ6ofp77qFsJj34XmvV4yIX7q3EI2P9jiNkg5
	l9hk+/HSUiC6dmu0FXXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peQs7-00AwwO-2E;
	Tue, 21 Mar 2023 01:33:07 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peQs3-00AwvY-0v
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Mar 2023 01:33:05 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 770EF6803D2;
	Tue, 21 Mar 2023 09:32:52 +0800 (CST)
Message-ID: <19b39d82-8510-2717-cf3b-71cb955373d0@rock-chips.com>
Date: Tue, 21 Mar 2023 09:32:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 3/3] usb: typec: tcpm: add get max power support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux@roeck-us.net, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, heiko@sntech.de, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, william.wu@rock-chips.com,
 jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230320100711.3708-1-frank.wang@rock-chips.com>
 <20230320100711.3708-4-frank.wang@rock-chips.com>
 <20230320203139.quld3gmoo6esu56i@mercury.elektranox.org>
Content-Language: en-US
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <20230320203139.quld3gmoo6esu56i@mercury.elektranox.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh9LTlYdGEMaHh0YSR8YTUhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nz46Dww6Dz0WIRA3MxYtNBEL
	F0MaCzNVSlVKTUxCSE1JSExISENNVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPSkJKNwY+
X-HM-Tid: 0a8701cc34f42eb5kusn770ef6803d2
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_183303_488170_636922AB 
X-CRM114-Status: GOOD (  14.63  )
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

Hi Sebastian,

On 2023/3/21 4:31, Sebastian Reichel wrote:
> Hi,
>
> On Mon, Mar 20, 2023 at 06:07:11PM +0800, Frank Wang wrote:
>> Traverse fixed pdos to calculate the maximum power that the charger
>> can provide, and it can be get by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
>> property.
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>>   drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
>>   1 file changed, 24 insertions(+)
>>
>> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
>> index 13830b5e2d09f..d6ad3cdf9e4af 100644
>> --- a/drivers/usb/typec/tcpm/tcpm.c
>> +++ b/drivers/usb/typec/tcpm/tcpm.c
>> @@ -6320,6 +6320,27 @@ static int tcpm_psy_get_current_now(struct tcpm_port *port,
>>   	return 0;
>>   }
>>   
>> +static int tcpm_psy_get_input_power_limit(struct tcpm_port *port,
>> +					  union power_supply_propval *val)
>> +{
>> +	unsigned int src_mv, src_ma, max_src_mw = 0;
>> +	unsigned int i, tmp;
>> +
>> +	for (i = 0; i < port->nr_source_caps; i++) {
>> +		u32 pdo = port->source_caps[i];
>> +
>> +		if (pdo_type(pdo) == PDO_TYPE_FIXED) {
>> +			src_mv = pdo_fixed_voltage(pdo);
>> +			src_ma = pdo_max_current(pdo);
>> +			tmp = src_mv * src_ma / 1000;
>> +			max_src_mw = tmp > max_src_mw ? tmp : max_src_mw;
>> +		}
>> +	}
>> +
>> +	val->intval = max_src_mw;
> The power-supply subsystem expects Microwatts and not Milliwatts.

Yes, but I see the 'power_supply_propval' member 'intval' is an integer 
type, I worry about it may be overflowed that uses Microwatts.


BR.
Frank

> -- Sebastian
>
>> +	return 0;
>> +}
>> +
>>   static int tcpm_psy_get_prop(struct power_supply *psy,
>>   			     enum power_supply_property psp,
>>   			     union power_supply_propval *val)
>> @@ -6349,6 +6370,9 @@ static int tcpm_psy_get_prop(struct power_supply *psy,
>>   	case POWER_SUPPLY_PROP_CURRENT_NOW:
>>   		ret = tcpm_psy_get_current_now(port, val);
>>   		break;
>> +	case POWER_SUPPLY_PROP_INPUT_POWER_LIMIT:
>> +		tcpm_psy_get_input_power_limit(port, val);
>> +		break;
>>   	default:
>>   		ret = -EINVAL;
>>   		break;
>> -- 
>> 2.17.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
