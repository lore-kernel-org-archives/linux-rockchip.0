Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1757CC021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 18:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXXWTf/8jJwBQh4W4c0beepvFG2/C0FymKxeUsxIkDY=; b=c6HrnD6f3922Wi
	GLf08WWbZrCakl2DYa3PjG132QHhS1uksJRJTMK3nsiNr8MW4Qg3uo++n30pQhTX7J+jd5EEObAvN
	nbUD/4sH8CQ4MK9mmPi52CpEyU4Dd15upfg4GY8xIyl6RqLnrM8qlaE6KkXo0gLophtH20cd9HRWM
	Z3e57ZV0Ck7fSQFUhtThyZgePA7U7nLC6C7D+cyp2FNYDSnucW4WJvF+MQbF56fSPli2vBVxEALhq
	lUZ4UDWJNuPqAvdhy9Ag9azReNzOxXBrtBJ5CD+5aj21o65bMh/cA6q8kXL6s2eW/EHEVVAZLHfc+
	SFcGvVtIV/khZXqRDOmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5pU-00000005c5E-47eD;
	Mon, 17 Feb 2025 18:26:52 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5pS-00000005c4s-3Rcd
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 18:26:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739816796; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=NoIyboKH04alw6DBfcifA+A9bKQzHCeZlHsFj7sVEeP9RjB7gS8Bt68pFgmnF0Xq8NYx3UTCwiioatjk2HsfVPQ37kiEwdvqpLXzTEzMM4yuAJOJc55JZFzT3oeaLEo46TzDO6msEaehYL3BSD8TejhKdqVkuxU5zZrw11nmEDk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739816796; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BdnCHjTgkVzDEUqv6NDj7xcfSTG6/LqP76sbmsSNqvc=; 
	b=KLa5dBJ+JPj1J96J/xnNNHhjNpdF8ShnjlRc4wIhfXssyJnCQFJpQK+emrTFlNfQJFmPMMT6B1jkLSnBTwjIE9Ssj4MCQh5xeAYtd/HUOKYOC+3swJchjEGZpItrF2kD0wR+/BN1cFgRSHsbaGIxxmnrfDDlZ2ovAkp/GBxhtTA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739816796;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=BdnCHjTgkVzDEUqv6NDj7xcfSTG6/LqP76sbmsSNqvc=;
	b=L3S963Cpqs9aG9dMINVvSeKGMGFS78UcAy9aA8goWQecVPkOSzuuBFbwoV7HYIPA
	AyCVuNC3aQx+qZU0BuuXOFOiFB2XpXoGQfwR9jO8+MmRmRsL7rO+X6Nowb7O6wDRelZ
	IvV4eZox/PNcokAD2ppW3j0nT8Kuu846/j2Ly/wk=
Received: by mx.zohomail.com with SMTPS id 173981679347726.637860042926263;
	Mon, 17 Feb 2025 10:26:33 -0800 (PST)
Message-ID: <cd40ca74-fe5b-4942-9da8-1117303dd0c4@collabora.com>
Date: Mon, 17 Feb 2025 21:26:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] media: platform: synopsys: Add support for HDMI
 input driver
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>
References: <20250215210417.60074-1-dmitry.osipenko@collabora.com>
 <20250215210417.60074-5-dmitry.osipenko@collabora.com>
 <110db742-25a0-4f0c-9620-1af8885d6e1c@xs4all.nl>
 <3d4b1c45-cc00-4714-8582-0848e38c2ec4@collabora.com>
 <23eacfe3-cf94-45d3-a405-43185ef32512@xs4all.nl>
 <398cffa8-5463-47ff-bdeb-3f3167b72312@collabora.com>
Content-Language: en-US
In-Reply-To: <398cffa8-5463-47ff-bdeb-3f3167b72312@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_102650_959640_32A28E92 
X-CRM114-Status: GOOD (  21.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2/17/25 21:21, Dmitry Osipenko wrote:
> On 2/17/25 18:44, Hans Verkuil wrote:
>> On 2/17/25 16:36, Dmitry Osipenko wrote:
>>> On 2/17/25 11:31, Hans Verkuil wrote:
>>>> On 15/02/2025 22:04, Dmitry Osipenko wrote:
>>>>> From: Shreeya Patel <shreeya.patel@collabora.com>
>>>>>
>>>>> Add initial support for the Synopsys DesignWare HDMI RX
>>>>> Controller Driver used by Rockchip RK3588. The driver
>>>>> supports:
>>>>>  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
>>>>>  - RGB888, YUV422, YUV444 and YCC420 pixel formats
>>>>>  - CEC
>>>>>  - EDID configuration
>>>>>
>>>>> The hardware also has Audio and HDCP capabilities, but these are
>>>>> not yet supported by the driver.
>>>>>
>>>>> Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
>>>>> Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
>>>>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
>>>>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>>>>> ---
>>>>>  drivers/media/platform/Kconfig                |    1 +
>>>>>  drivers/media/platform/Makefile               |    1 +
>>>>>  drivers/media/platform/synopsys/Kconfig       |    3 +
>>>>>  drivers/media/platform/synopsys/Makefile      |    2 +
>>>>>  .../media/platform/synopsys/hdmirx/Kconfig    |   27 +
>>>>>  .../media/platform/synopsys/hdmirx/Makefile   |    4 +
>>>>>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 2715 +++++++++++++++++
>>>>>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  394 +++
>>>>>  .../synopsys/hdmirx/snps_hdmirx_cec.c         |  284 ++
>>>>>  .../synopsys/hdmirx/snps_hdmirx_cec.h         |   44 +
>>>>>  10 files changed, 3475 insertions(+)
>>>>>  create mode 100644 drivers/media/platform/synopsys/Kconfig
>>>>>  create mode 100644 drivers/media/platform/synopsys/Makefile
>>>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Kconfig
>>>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Makefile
>>>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>>>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
>>>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.c
>>>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.h
>>>>>
>>>>
>>>> <snip>
>>>>
>>>>> +static ssize_t
>>>>> +hdmirx_debugfs_if_read(u32 type, void *priv, struct file *filp,
>>>>> +		       char __user *ubuf, size_t count, loff_t *ppos)
>>>>> +{
>>>>> +	struct snps_hdmirx_dev *hdmirx_dev = priv;
>>>>> +	u8 aviif[3 + 7 * 4];
>>>>> +	int len;
>>>>> +
>>>>> +	if (type != V4L2_DEBUGFS_IF_AVI)
>>>>> +		return 0;
>>>>> +
>>>>> +	hdmirx_read_avi_infoframe(hdmirx_dev, aviif);
>>>>> +
>>>>> +	len = simple_read_from_buffer(ubuf, count, ppos,
>>>>> +				      aviif, ARRAY_SIZE(aviif));
>>>>> +
>>>>> +	return len < 0 ? 0 : len;
>>>>> +}
>>>>
>>>> Have you tested this with 'edid-decode -c -I /path/to/avi'? Also test that it is
>>>> empty if there is no AVI InfoFrame (e.g. when there is no incoming video). I don't see
>>>> a test for that in the code.
>>>>
>>>> I also see no sanity check regarding the length of the InfoFrame, it just outputs
>>>> the full array, meaning you get padding as well since the AVI InfoFrame is smaller
>>>> than ARRAY_SIZE(aviif). In fact, edid-decode will fail about that if the -c option
>>>> is used.
>>>>
>>>> See tc358743_debugfs_if_read of how this is typically handled.
>>>
>>> I've tested with 'edid-decode -I /path/to/avi', including the empty AVI
>>> InfoFrame. But without the '-c option'. I'd expect that debugfs should
>>> provide a full-sized raw InfoFrame data, rather than a parsed version.
>>> The parsed data isn't much useful for debugging purposes, IMO. I
>>> intentionally removed the size check that tc358743_debugfs_if_read does
>>> because it appeared wrong to me. Will re-check with '-c option', thanks!
>>
>> The HDMI header contains the actual length that was received. So debugfs should
>> export the actual payload, not the maximum possible payload.
>>
>> It is common for hardware to reserve room in the register map for the maximum
>> payload, but you only want to export what was actually received.
> 
> If payload is corrupted, it should be handy to see a full payload.
> Otherwise you won't be able to debug anything because driver returns
> zero payload to userspace since it can't parse the header :)

Note those tc358743 and other drivers are parsing the IF header data.
I'm pretty sure this is not what InfoFrame debugfs is intended to do,
Will revisit it all again in a more details for v7.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
