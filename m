Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB56AC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 02:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y63WU3jJewI7RC0xqwg+K0xk8+/jOR2+Hx9FG+JtuRs=; b=FNYi1bJEf79Ll0
	Ui415hgzrWeRX5ykyrYJ5rp3Scb9V/1ipjVJGzeaBZH3b0uttr40UOq8vWRIo2f0XiNKidhJMKDeP
	nkRgJzq9q76iHSnXB2WcDRxfD9AahLWCFwI6H710pVnHVKXB8PzEjsRjsm59CJwAzpURc7DheZO62
	EZC8AgYig20euzbbdBYKMdY1bZFqaezKXqXbZHXM7PkzEAf+V5pxcUB13NhBRVD4OzV+y/x2HQePc
	A+2kbLwJ4zjpkYZRHNTjsPSGGZ1Qg9xmQwqZ2MIHR01fklA9JZbk3FjMI8MvO7EKJzsKRfkuPLAhl
	yNh3Lb68yDp8+FZFgioA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHKj-00C64W-02;
	Wed, 15 Mar 2023 02:57:45 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHKg-00C63v-1p
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 02:57:44 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 39E6768060E;
	Wed, 15 Mar 2023 10:57:37 +0800 (CST)
Message-ID: <d2edd8b0-642a-8519-3676-4591dd5399d0@rock-chips.com>
Date: Wed, 15 Mar 2023 10:57:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/4] usb: typec: tcpm: fix multiple times discover svids
 error
Content-Language: en-US
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux@roeck-us.net, gregkh@linuxfoundation.org, heiko@sntech.de,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-3-frank.wang@rock-chips.com>
 <ZBA8xWmNDSDhUys2@kuha.fi.intel.com>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <ZBA8xWmNDSDhUys2@kuha.fi.intel.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlCTVZKGB0ZTU5PTUlJHh1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kxw6Ihw6DT0NLSI9LBkXDDA3
	CQ8KCSxVSlVKTUxDQ09CS05MQkNNVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPS0lINwY+
X-HM-Tid: 0a86e333a3022eb5kusn39e6768060e
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_195742_766226_4CAAF6B1 
X-CRM114-Status: GOOD (  13.20  )
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

Hi Heikki,

On 2023/3/14 17:22, Heikki Krogerus wrote:
> On Mon, Mar 13, 2023 at 10:58:41AM +0800, Frank Wang wrote:
>> PD3.0 Spec 6.4.4.3.2 say that only Responder supports 12 or more SVIDs,
>> the Discover SVIDs Command Shall be executed multiple times until a
>> Discover SVIDs VDO is returned ending either with a SVID value of
>> 0x0000 in the last part of the last VDO or with a VDO containing two
>> SVIDs with values of 0x0000.
>>
>> In the current implementation, if the last VDO does not find that the
>> Discover SVIDs Command would be executed multiple times even if the
>> Responder SVIDs are less than 12, and we found some odd dockers just
>> meet this case. So fix it.
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>>   drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
>>   1 file changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
>> index 66de02a56f512..2962f7c261976 100644
>> --- a/drivers/usb/typec/tcpm/tcpm.c
>> +++ b/drivers/usb/typec/tcpm/tcpm.c
>> @@ -1515,7 +1515,21 @@ static bool svdm_consume_svids(struct tcpm_port *port, const u32 *p, int cnt)
>>   		pmdata->svids[pmdata->nsvids++] = svid;
>>   		tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
>>   	}
>> -	return true;
>> +
>> +	/*
>> +	 * PD3.0 Spec 6.4.4.3.2: The SVIDs are returned 2 per VDO (see Table
>> +	 * 6-43), and can be returned maximum 6 VDOs per response (see Figure
>> +	 * 6-19). If the Respondersupports 12 or more SVID then the Discover
>> +	 * SVIDs Command Shall be executed multiple times until a Discover
>> +	 * SVIDs VDO is returned ending either with a SVID value of 0x0000 in
>> +	 * the last part of the last VDO or with a VDO containing two SVIDs
>> +	 * with values of 0x0000.
>> +	 *
>> +	 * However, some odd dockers support SVIDs less than 12 but without
>> +	 * 0x0000 in the last VDO, so we need to break the Discover SVIDs
>> +	 * request and return false here.
>> +	 */
>> +	return cnt == 7 ? true : false;
>          return cnt == 7

Okay, next to fix it.

BR.
Frank


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
