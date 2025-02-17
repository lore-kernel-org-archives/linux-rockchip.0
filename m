Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20E17C021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 16:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wma0KQ9NGdwt3wwON9OnwwBv4Z8Qu52x78kvyF7Bhgw=; b=tP2JzgQqDE4n1+
	5WFrX6GIeP5xbdOOpihRrSbP82gnM5waJWFsYSIaqzUUHIcCAQRapg6G0FFvwkBRC3O/ezi6We0PT
	H5X8ehA8BHzYuOAymjjsZdywUKp0hMmKHlT+5YOBxumqOT4xynGJMriNw4bMuQjAoHY2v7CntdEmK
	ASft1WjGNPC3x1aNs+BM2vNfv2Z9Ii8xmHtfZQ2/5I5yNQFi6gvJLf8aV++FoTJPPtnavGIEOPnR0
	uGxGwxAya7d4iR/U+0P+6r9reRqgJa5vz0TjMXixkA9IWKX5MXMl+xKS3tKLuW3+37BcWKeLCeSG1
	7pymKRszXPqetII1MB4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk3oD-00000005ESp-49RF;
	Mon, 17 Feb 2025 16:17:25 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk3IH-000000056q4-0DuZ
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 15:44:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2CF15A40C36;
	Mon, 17 Feb 2025 15:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E46EC4CED1;
	Mon, 17 Feb 2025 15:44:20 +0000 (UTC)
Message-ID: <23eacfe3-cf94-45d3-a405-43185ef32512@xs4all.nl>
Date: Mon, 17 Feb 2025 16:44:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] media: platform: synopsys: Add support for HDMI
 input driver
Content-Language: en-US
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
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
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <3d4b1c45-cc00-4714-8582-0848e38c2ec4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_074425_244092_329B426C 
X-CRM114-Status: GOOD (  21.27  )
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

On 2/17/25 16:36, Dmitry Osipenko wrote:
> On 2/17/25 11:31, Hans Verkuil wrote:
>> On 15/02/2025 22:04, Dmitry Osipenko wrote:
>>> From: Shreeya Patel <shreeya.patel@collabora.com>
>>>
>>> Add initial support for the Synopsys DesignWare HDMI RX
>>> Controller Driver used by Rockchip RK3588. The driver
>>> supports:
>>>  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
>>>  - RGB888, YUV422, YUV444 and YCC420 pixel formats
>>>  - CEC
>>>  - EDID configuration
>>>
>>> The hardware also has Audio and HDCP capabilities, but these are
>>> not yet supported by the driver.
>>>
>>> Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
>>> Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
>>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
>>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>>> ---
>>>  drivers/media/platform/Kconfig                |    1 +
>>>  drivers/media/platform/Makefile               |    1 +
>>>  drivers/media/platform/synopsys/Kconfig       |    3 +
>>>  drivers/media/platform/synopsys/Makefile      |    2 +
>>>  .../media/platform/synopsys/hdmirx/Kconfig    |   27 +
>>>  .../media/platform/synopsys/hdmirx/Makefile   |    4 +
>>>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 2715 +++++++++++++++++
>>>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  394 +++
>>>  .../synopsys/hdmirx/snps_hdmirx_cec.c         |  284 ++
>>>  .../synopsys/hdmirx/snps_hdmirx_cec.h         |   44 +
>>>  10 files changed, 3475 insertions(+)
>>>  create mode 100644 drivers/media/platform/synopsys/Kconfig
>>>  create mode 100644 drivers/media/platform/synopsys/Makefile
>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Kconfig
>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Makefile
>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.c
>>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.h
>>>
>>
>> <snip>
>>
>>> +static ssize_t
>>> +hdmirx_debugfs_if_read(u32 type, void *priv, struct file *filp,
>>> +		       char __user *ubuf, size_t count, loff_t *ppos)
>>> +{
>>> +	struct snps_hdmirx_dev *hdmirx_dev = priv;
>>> +	u8 aviif[3 + 7 * 4];
>>> +	int len;
>>> +
>>> +	if (type != V4L2_DEBUGFS_IF_AVI)
>>> +		return 0;
>>> +
>>> +	hdmirx_read_avi_infoframe(hdmirx_dev, aviif);
>>> +
>>> +	len = simple_read_from_buffer(ubuf, count, ppos,
>>> +				      aviif, ARRAY_SIZE(aviif));
>>> +
>>> +	return len < 0 ? 0 : len;
>>> +}
>>
>> Have you tested this with 'edid-decode -c -I /path/to/avi'? Also test that it is
>> empty if there is no AVI InfoFrame (e.g. when there is no incoming video). I don't see
>> a test for that in the code.
>>
>> I also see no sanity check regarding the length of the InfoFrame, it just outputs
>> the full array, meaning you get padding as well since the AVI InfoFrame is smaller
>> than ARRAY_SIZE(aviif). In fact, edid-decode will fail about that if the -c option
>> is used.
>>
>> See tc358743_debugfs_if_read of how this is typically handled.
> 
> I've tested with 'edid-decode -I /path/to/avi', including the empty AVI
> InfoFrame. But without the '-c option'. I'd expect that debugfs should
> provide a full-sized raw InfoFrame data, rather than a parsed version.
> The parsed data isn't much useful for debugging purposes, IMO. I
> intentionally removed the size check that tc358743_debugfs_if_read does
> because it appeared wrong to me. Will re-check with '-c option', thanks!

The HDMI header contains the actual length that was received. So debugfs should
export the actual payload, not the maximum possible payload.

It is common for hardware to reserve room in the register map for the maximum
payload, but you only want to export what was actually received.

Regards,

	Hans

> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
