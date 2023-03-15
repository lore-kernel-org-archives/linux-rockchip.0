Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243BBC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 02:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FCXeOSFBrMjcMKzliw+McCsKtdcZqtbk2RNVtSUfjU=; b=43XULc514KuVfs
	f45PBDEdusThOHCEIS2MuHTXc27Lma9+scNp8Jkd+tUTsezRza1epfEBFYgBVRPbxydNh9XsyOrNm
	rGok03F0vgWq4yerfdyW2JCER7Kx63dMxDnr7Ld/4ZxrXKwP26wddmSfaqWPOxLtr5FCQzSY4g1IZ
	fNyeCQASNe6zaznLSdM6r7W+dNlqbV9b35OPw7+jgxdrPhXNh55O9tdga7Bd9vjuEhDx9dfVdWNSx
	NdcOswZJnVT256FVjPLwArcXilYPacFc8uxHbTUqXanA66bOjhMTli1Tq7O9LhM65Sqsfm3UemDWJ
	CVgZQ8tL7OeB9bRBRWTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHIg-00C5x2-2j;
	Wed, 15 Mar 2023 02:55:38 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHIc-00C5vr-2r
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 02:55:36 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 050976803C1;
	Wed, 15 Mar 2023 10:55:20 +0800 (CST)
Message-ID: <f0f0ac72-0a90-da9e-f686-49c21a76866b@rock-chips.com>
Date: Wed, 15 Mar 2023 10:55:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/4] usb: typec: tcpm: fix cc role at port reset
Content-Language: en-US
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux@roeck-us.net, gregkh@linuxfoundation.org, heiko@sntech.de,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-2-frank.wang@rock-chips.com>
 <ZBA8Y/dbozOk2df7@kuha.fi.intel.com>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <ZBA8Y/dbozOk2df7@kuha.fi.intel.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU5OS1YdHkgYGRpPT0JPH0hVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTo6DAw*Iz0JLSIJPC8wQxEM
	USgKFBNVSlVKTUxDQ09DQklJS09MVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISU1MNwY+
X-HM-Tid: 0a86e3318ef62eb5kusn050976803c1
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_195535_079500_F2256793 
X-CRM114-Status: GOOD (  12.71  )
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

On 2023/3/14 17:20, Heikki Krogerus wrote:
> On Mon, Mar 13, 2023 at 10:58:40AM +0800, Frank Wang wrote:
>> In the current implementation, the tcpm set CC1/CC2 role to open when
>> it do port reset would cause the VBUS removed by the Type-C partner.
>>
>> The Figure 4-20 in the TCPCI 2.0 specification show that the CC1/CC2
>> role should set to 01b (Rp) or 10b (Rd) at Power On or Reset stage
>> in DRP initialization and connection detection.
>>
>> So set CC1/CC2 to Rd to fix it.
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>>   drivers/usb/typec/tcpm/tcpm.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
>> index a0d943d785800..66de02a56f512 100644
>> --- a/drivers/usb/typec/tcpm/tcpm.c
>> +++ b/drivers/usb/typec/tcpm/tcpm.c
>> @@ -4851,7 +4851,7 @@ static void run_state_machine(struct tcpm_port *port)
>>   		break;
>>   	case PORT_RESET:
>>   		tcpm_reset_port(port);
>> -		tcpm_set_cc(port, TYPEC_CC_OPEN);
>> +		tcpm_set_cc(port, TYPEC_CC_RD);
>>   		tcpm_set_state(port, PORT_RESET_WAIT_OFF,
>>   			       PD_T_ERROR_RECOVERY);
>>   		break;
> Will this work if the port is for example source only?

Yeah, this only set at port reset stage and CC value will be set again
(Rd for Sink, Rp_* for Source) when start toggling.

BR.
Frank


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
