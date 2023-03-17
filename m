Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78315C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8T4+R37LZqqtOZYGvOYS7/ZNXVUbf/ow7iQ3wNMZTkE=; b=CNbp+N2ZZHrjiA
	kPiHRobw7WJK+ej617mqA7RTmlYBwbkHz8beQgjXySryAaYpiRbOQ9XlRZN/CZM4dyZQ/ciCa1szI
	APF+FKBDfzULJcmTZhCIMwLkaXGskVnAByr5cVKzNeCmmKrNLYLFSAQix3mY+xXvRv1CnJWZn9Qhu
	C2e8ElPOvtS7vyvhVi0FfOJm2lZxUP8AaD+XvraqYe6p56Fi+svBgZ3sUk01NhBdHKSk/DClsaYTC
	piiygwsQ1jYs5CzoPZC3oZI3Dkmpw/lhKsvrbXMJ4eSBLJMvMKKqSo9p4Qb34skjcconufuivna5V
	fzn4knx0yAGKI/Bb3Cuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd9UN-002Fiu-2k;
	Fri, 17 Mar 2023 12:47:19 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd9UK-002FhN-2i
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Mar 2023 12:47:18 +0000
Received: by mail-il1-x129.google.com with SMTP id i19so2664305ila.10
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Mar 2023 05:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679057234;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uMPENxtm6B3AsAn3c4xfJq8kPIjS9MSNdQwqeoG6GXk=;
        b=Enor0DrvWQLFMMk1BckAW3zhPQPyM+2hd9Mgj15l08jHxHb8isx1ZlSKkW4WqehgFl
         ByD0bCq8LbMvaeF+gi/BWpxJTsvv1P+JVC/F2zwyL44cEoBi3Vbo+ZLBs4HUlCogom1b
         OXMO4Xq7hypLScLfjGbcEzpoJfwxiGdkpp1X1N2sOqggsM3L9SHXkhsEgiwp5tp86co/
         LgyvfNSSVsHU4gohBSql9Ogto3KrS4BKZZKNe1CpFnPIwALKTBEqyd2r+/U8GMi05v7S
         2zxy21QC3ZdrBkgo8moPfAUPcYSpuINPIKIg5IkQcJ4zQaKsx+rzbT04y+u/t3ejptHE
         29yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679057234;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uMPENxtm6B3AsAn3c4xfJq8kPIjS9MSNdQwqeoG6GXk=;
        b=roSv5hRfbuRClW2Ov6apFV2s/e2RX1CThJUrGfSkCMkgJTUsONVtqJp/ZID68PWN/b
         FiTgkjJbrm/uGjTbqNuB8Jy07duI+8ZGTjzlfAeLfGd3MkSsvETOUqCo88BFVIM7D1da
         3jFr1yOs8b2QyFidK9e4YROa6DYGfI4baOWC9vri04fOGSIX3nNrMoKptEtR6tVwNwzc
         h3rdMRgBJBR8GnpBiJb4TDZwSMSA0Sx9M52ZKJgNaoZZ5fCEAD9NVoRifATE5yfC0csh
         emZn7UrKhaqXc3qvtnryjparr/HnYFmfZQp9Ta/uyzimHR9c1pUjpAourGuRu29Fh8wu
         9vTg==
X-Gm-Message-State: AO0yUKWmMLrX4dra/FrMOicOfrhC2ZDTEo6tXUAsAKoLBAZRCGY0vG85
	9E7nPmoza0UPAeFddq0fw3khh/EZRKM=
X-Google-Smtp-Source: AK7set8B4oT+0estBbN7+ctEL+I0r+koof2KJocD38OwW53LVUU3Bra06/AbHcBbtc03N2IRuxwMbg==
X-Received: by 2002:a92:d6d2:0:b0:317:980d:970 with SMTP id z18-20020a92d6d2000000b00317980d0970mr9038697ilp.7.1679057233818;
        Fri, 17 Mar 2023 05:47:13 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id y4-20020a92d804000000b003231396e317sm556704ilm.88.2023.03.17.05.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 05:47:13 -0700 (PDT)
Message-ID: <d5d1880b-2852-a168-b155-26f972a96457@roeck-us.net>
Date: Fri, 17 Mar 2023 05:47:10 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Frank Wang <frank.wang@rock-chips.com>
Cc: gregkh@linuxfoundation.org, heiko@sntech.de, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, william.wu@rock-chips.com,
 jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-2-frank.wang@rock-chips.com>
 <ZBA8Y/dbozOk2df7@kuha.fi.intel.com>
 <f0f0ac72-0a90-da9e-f686-49c21a76866b@rock-chips.com>
 <ZBRN11OwtkvXk1Hd@kuha.fi.intel.com>
From: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 1/4] usb: typec: tcpm: fix cc role at port reset
In-Reply-To: <ZBRN11OwtkvXk1Hd@kuha.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_054716_894605_CEF17914 
X-CRM114-Status: GOOD (  16.51  )
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

On 3/17/23 04:24, Heikki Krogerus wrote:
> On Wed, Mar 15, 2023 at 10:55:20AM +0800, Frank Wang wrote:
>> Hi Heikki,
>>
>> On 2023/3/14 17:20, Heikki Krogerus wrote:
>>> On Mon, Mar 13, 2023 at 10:58:40AM +0800, Frank Wang wrote:
>>>> In the current implementation, the tcpm set CC1/CC2 role to open when
>>>> it do port reset would cause the VBUS removed by the Type-C partner.
>>>>
>>>> The Figure 4-20 in the TCPCI 2.0 specification show that the CC1/CC2
>>>> role should set to 01b (Rp) or 10b (Rd) at Power On or Reset stage
>>>> in DRP initialization and connection detection.
>>>>
>>>> So set CC1/CC2 to Rd to fix it.
>>>>
>>>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>>>> ---
>>>>    drivers/usb/typec/tcpm/tcpm.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
>>>> index a0d943d785800..66de02a56f512 100644
>>>> --- a/drivers/usb/typec/tcpm/tcpm.c
>>>> +++ b/drivers/usb/typec/tcpm/tcpm.c
>>>> @@ -4851,7 +4851,7 @@ static void run_state_machine(struct tcpm_port *port)
>>>>    		break;
>>>>    	case PORT_RESET:
>>>>    		tcpm_reset_port(port);
>>>> -		tcpm_set_cc(port, TYPEC_CC_OPEN);
>>>> +		tcpm_set_cc(port, TYPEC_CC_RD);
>>>>    		tcpm_set_state(port, PORT_RESET_WAIT_OFF,
>>>>    			       PD_T_ERROR_RECOVERY);
>>>>    		break;
>>> Will this work if the port is for example source only?
>>
>> Yeah, this only set at port reset stage and CC value will be set again
>> (Rd for Sink, Rp_* for Source) when start toggling.
> 
> Okay. Let's wait for comments from Guenter.
> 

Figure 4-20 is specifically for dual role ports. Also, start toggling would not
happen if the low level driver doesn't have a start_toggling callback. I think this
may require some tweaking based on the port type or, rather, tcpm_default_state().
Something like

	tcpm_set_cc(port, tcpm_default_state(port) == SNK_UNATTACHED ? TYPEC_CC_RD : tcpm_rp_cc(port));

Thanks,
Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
