Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7905CC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 11:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/WCc1dihUplb9x50Q6hsZ2SMBKRBxtYMMtKDopLEtM=; b=k0uxgHk+FcaYGz
	cZ5+fMWw5+Twb+uZDFyFqGtomCeI7EyVzkyjqW+p+4wtNRN7/xAVWzj3NCl4Twua6sHwgjByBp3/J
	i4wfmVmBE0naz6nn3u1FRnEpFyODiDrUoygpCmEslDy2YMrjDRAatbk/vc28PstiWl5Adyxc2ZO2C
	QB2EBRkxAdWVFWZrlZKwjoP8f74vbQdcSizgRUWJHGgu1gz+cV7jcbYfpskPa3aDIXZJDcDN1sg9S
	zNuvPMSQIovPoRSv0rN+q4xt2Q2mkqchdSJwjVxCIwYjgfiMFEm4ObFXlHeqTBJkU+Vr3S7T75t27
	IAXJr915wrPfiLfwwoAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAq4N-009vRO-2i;
	Wed, 06 Dec 2023 11:27:59 +0000
Received: from mail-m127214.xmail.ntesmail.com ([115.236.127.214])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAq4K-009vPh-23
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Dec 2023 11:27:58 +0000
DKIM-Signature: a=rsa-sha256;
	b=CGNhd4sjVn5tsHiRRxZ+t3cUlpsvFLcZiVcSSq+FAgX0kIHfaDkoFGroR1A9sALxte2BSIjPb01MqW/ghoKP/q2t2kg5dVxhU4wvHT3dsdr/j0//cydNaZzdKQEgrgL3zl7HqGgdjUL8YLlSZAUurhwuceBCx0aVcGSIw1MTPO4=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mIp43tx+cz3waI2qLXLmWvwYJEbJny5dp/W8y+Cp4Dk=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id B6404780300;
	Wed,  6 Dec 2023 19:27:31 +0800 (CST)
Message-ID: <8140e2f4-2081-4492-af17-ce742eef4404@rock-chips.com>
Date: Wed, 6 Dec 2023 19:27:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/14] drm/rockchip: vop2: Add debugfs support
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, kever.yang@rock-chips.com,
 chris.obbard@collabora.com
References: <20231130122001.12474-1-andyshrk@163.com>
 <20231130122449.13432-1-andyshrk@163.com>
 <20231205091541.GV1057032@pengutronix.de>
 <593f1092-3f5b-42ab-bc6e-dbd0fc8fb8ba@rock-chips.com>
 <20231206112053.GA1318922@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231206112053.GA1318922@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0hOSVZPGEgdHUNMQkkfHxhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c3ee210d1b24fkuuub6404780300
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTY6Cxw5ODwrElEyPQ8yPBES
	KiMwCjVVSlVKTEtKQ01JS05JTk9OVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEpMTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_032756_812624_60AD2C6D 
X-CRM114-Status: GOOD (  13.00  )
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

Hi Sascha:

On 12/6/23 19:20, Sascha Hauer wrote:
> On Wed, Dec 06, 2023 at 06:20:58PM +0800, Andy Yan wrote:
>> Hi Sascha:
>>
>>>> +	unsigned int n = vop2->data->regs_dump_size;
>>>
>>> 'n' is used only once, it might be clearer just to use the value where
>>> needed and drop the extra variable.
>>
>> Okay, will do.
>>>
>>>> +	unsigned int i;
>>>> +
>>>> +	drm_modeset_lock_all(drm_dev);
>>>> +
>>>> +	if (vop2->enable_count) {
>>>> +		for (i = 0; i < n; i++) {
>>>> +			dump = &vop2->data->regs_dump[i];
>>>> +			vop2_regs_print(vop2, s, dump, false);
>>>> +		}
>>>> +	} else {
>>>> +		seq_printf(s, "VOP disabled:\n");
>>>
>>> There's nothing following after the ':', right? Then this should be
>>> "VOP: disabled\n" or without the colon at all.
>>
>> the colon will be droped in next versin.
>>
>>>
>>>> +	}
>>>> +	drm_modeset_unlock_all(drm_dev);
>>>
>>> This code is repeated in vop2_active_regs_show() below. Maybe factor
>>> this out to a common function?
>>>
>>
>>
>> Do you mean all the code between drm_modeset_lock_all and drm_modeset_unlock_all ?
> 
> Including drm_modeset_lock_all() and drm_modeset_unlock_all(), yes.
> 

Okay, will try in v4.


> Sascha
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
