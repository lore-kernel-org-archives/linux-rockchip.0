Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D536606A31B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 01:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y+Y2zj7S;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=kmH0Rj8R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pwr5VHZY083i1ovBs14CAz+vePlD19vXeiBNLzVBDM8=; b=Y+Y2zj7S3h7f7AbIsy5ie9DecI
	1MvZk+3kAuSxNuXgZH1aK6pthBk0kbIvJ3YwjUuSZrkROp5fgDrpiK17pJuRcBBvbtlUMUQWYFRTE
	2PR6agAPZtn2v5C1BvsW+lxfgwHHpZtXZu2BU0yOV4mIr5ch03zH5PJZ9oRhbv+jdLVdIFkuUfoWY
	15MkTnBOnl52s5S1/edc3C4dYof9+BIp1FjDM5dxPyDme1p8uqjm3hqJJ53il++hfxjyQjznsrHJn
	Q0TTboXiLsqSose7VJcf8ThtBLKpV3urPeqFbEFUS+ga5Mbtk/mYqpN0iojuRafl6k1xIEQTJ/WE4
	SZAx0Q8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOQBz-0000000460r-3H3w;
	Wed, 04 Nov 2026 01:53:35 +0000
Received: from mail-m6033.netease.com ([210.79.60.33])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOQBv-0000000460C-0ez8
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 01:53:33 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5366b3ebf;
	Wed, 4 Nov 2026 09:53:26 +0800 (GMT+08:00)
Message-ID: <95e91156-4ea3-4d1e-a0ed-ddd4de47be73@rock-chips.com>
Date: Wed, 4 Nov 2026 09:53:13 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] usb: dwc3: fix abort on invalid ref clock rate from
 clk_get_rate()
Content-Language: en-US
To: Peter Robinson <pbrobinson@gmail.com>
Cc: marex@denx.de, trini@konsulko.com, mkorpershoek@kernel.org,
 balaji.selvanathan@oss.qualcomm.com, macromorgan@hotmail.com,
 sean.anderson@linux.dev, heiko@sntech.de, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 chenjh@rock-chips.com, wmc@rock-chips.com
References: <20261103082732.18483-1-frank.wang@rock-chips.com>
 <CALeDE9PLaF7rB2RXn9G6ipWW+J5dentCtyNLgdwTUywgiTnooQ@mail.gmail.com>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <CALeDE9PLaF7rB2RXn9G6ipWW+J5dentCtyNLgdwTUywgiTnooQ@mail.gmail.com>
X-HM-Tid: 0aa1a442d5b709d8kunm79f8860c3985fa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQhlKGFYfGUNKQx9KGE
	hKGU1WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUJCSU5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=kmH0Rj8RuclXxYANRsp9+VX7ytvQmWMzF1OG8dzMdgrV3jsrTF8Jd8hAG17a4HEauUs4PzYOFvymOg5hgRbyropkzl1HmyqQAorHnSOmp9CzkhG4Jp6sciq2/mqiZ78P/5WAKYC6WJZO8y5S+fTsWipLRYIbr+Y90mb+loE8gEQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vHxdIPZ/+dSF7dZYQQSYtsg89jNPc+QdopvovD6MqO4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_175331_788081_17233967 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Peter,

On 2026/11/3 17:42, Peter Robinson wrote:
> Hi Frank,
>
> There's a big rebase to sync with upstream Linux driver [1][2], I
> think it's due to land shortly, does the issue still occur with that?
>
> It would be good to get the rockchips SoCs with the dwc3 controller
> tested with that rebase.
>
> Peter
>
> [1] https://lists.u-boot-project.org/pipermail/u-boot/2026-October/637669.html
> [2] https://lists.u-boot-project.org/pipermail/u-boot/2026-October/637734.html

I checked the usb_dwc3_sync_v10 branch referenced in your email, and found no code changes related to this issue.

In the Linux kernel driver, getting the dwc->ref_clk rate is mandatory, so this issue does not surface. In U-Boot,
however, getting the clock rate is optional. Some platform vendor clock drivers do not implement clock rate retrieval
for all clock IDs. Therefore, adding a check for the -ENOENT return value can improve code robustness.

Additionally, mainline U-Boot codes do not yet include support for Rockchip 32-bit SoCs with dwc3 controllers.


Best regards,
Frank

> On Tue, 3 Nov 2026 at 08:28, Frank Wang <frank.wang@rock-chips.com> wrote:
>> On 32-bit platforms, "usb start" aborted with
>> "### ERROR ### Please RESET the board ###". If the clock driver
>> does not implement the "ref" clock, clk_get_rate() returns
>> -ENOENT, which dwc3_ref_clk_period() treated as a valid rate.
>> period became 0 and the fladj calculation divided by zero; the
>> software 64-bit division on 32-bit ARM calls the
>> division-by-zero handler __div0() and hangs (64-bit platforms
>> survive silently since UDIV returns 0).
>>
>> Skip REFCLKPER/GFLADJ programming when clk_get_rate() returns an
>> error code, as is already done for rate == 0.
>>
>> Fixes: 6bae0eb5b8bd ("usb: dwc3: Calculate REFCLKPER based on reference clock")
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>>  drivers/usb/dwc3/core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
>> index be198041f08..9a84ec6a60e 100644
>> --- a/drivers/usb/dwc3/core.c
>> +++ b/drivers/usb/dwc3/core.c
>> @@ -151,7 +151,7 @@ static void dwc3_ref_clk_period(struct dwc3 *dwc)
>>
>>         if (dwc->ref_clk) {
>>                 rate = clk_get_rate(dwc->ref_clk);
>> -               if (!rate)
>> +               if (!rate || IS_ERR_VALUE(rate))
>>                         return;
>>                 period = NSEC_PER_SEC / rate;
>>         } else {
>> --
>> 2.17.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
