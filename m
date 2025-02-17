Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 652A6C021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmI7VojySRJ6LjpWgpReGMgKBR+3CdiLW0rd2dFZZZE=; b=lXiFO10wHiHngm
	27c2VLW/gtRqenuDpHDh0NA+plk6SZ5wRa6hnyDexsyxLxhhTH5Q+qRC5Z0j2LTy4UDK1qfqBJJA3
	aWHoZ9NIFPJvoM9UxZIlMMLFAnzKSdKZM4FgXkubKYb2FtOfi7IDzrsejDWI4p9GlJl0D21E2thR3
	PII6S8I1uJX4TLGawk6SZEato4kONQ3qlruZePWwLV7b0sA1LLrPDWGs5NnrZjaAl2kjHabCoeYbu
	aND9ZMVo7xOoSETBOhId86xTFinj0IhJ2TgDGsu91LHqgsVwKLA+ibdLxDXIW1HsaJOndm5xBJFHj
	YtMR2laP8zpyWwEh9akg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk3K1-000000057Gr-3bN0;
	Mon, 17 Feb 2025 15:46:13 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk3Bp-0000000550R-3vdE
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 15:37:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739806625; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=U5dOO/B20cbaS6mc5vlDkgll/xMS9rbnN1ODcBfyAvrw1Jb4sFsNwAVheem87ob3aTly3IH7xB/BnCY/LbZWN1jFXWoWtzjyNRb+O1PU90w9PNqlSg03Yuiuk34pFU7E3HMzlV19xXYGlrXfktVWHucO2IWKe1j5AUQ9VFUZUUM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739806625; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=oyaLc7ouQgrclKFXXRsc/O0tx1PN1BYemSd7LjEmjmk=; 
	b=BJMfU8wLusVoJqMqSRaUpUvR/ystx6kc+bLiEevs/AbYOlsSC3eLR0MqhOSrHEOXkYOD5Z6LCkyjLj4QfOX5toVP0hdgp1aSXjYfGIeO6/EVL2Wx7t/JNjLl+YsRdDOrn/OP/GKVRVdt4T95Ci7d8Q9/Ru2V3V6AAQRIHELE9Ok=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739806625;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=oyaLc7ouQgrclKFXXRsc/O0tx1PN1BYemSd7LjEmjmk=;
	b=fSWAuBxnkdi+Ek3h2Bvc2L9HvjKgG/Fbhdhh6BuZPGOu8zmTyeddLjYZ8LOnyMyz
	ucTtiWmgVm7WLZtPzahICPHDgxqF8yM7q8oN2GY5sw/dkAOd+VTEcA1ltN5au38ECDw
	Cr1Fn+UAYYn+tmIYUpi6WN4EEcDsdmFs17bH8cwk=
Received: by mx.zohomail.com with SMTPS id 1739806622732599.8439504742172;
	Mon, 17 Feb 2025 07:37:02 -0800 (PST)
Message-ID: <3d4b1c45-cc00-4714-8582-0848e38c2ec4@collabora.com>
Date: Mon, 17 Feb 2025 18:36:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/6] media: platform: synopsys: Add support for HDMI
 input driver
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
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <110db742-25a0-4f0c-9620-1af8885d6e1c@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_073746_052152_FF17FE67 
X-CRM114-Status: GOOD (  22.11  )
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

On 2/17/25 11:31, Hans Verkuil wrote:
> On 15/02/2025 22:04, Dmitry Osipenko wrote:
>> From: Shreeya Patel <shreeya.patel@collabora.com>
>>
>> Add initial support for the Synopsys DesignWare HDMI RX
>> Controller Driver used by Rockchip RK3588. The driver
>> supports:
>>  - HDMI 1.4b and 2.0 modes (HDMI 4k@60Hz)
>>  - RGB888, YUV422, YUV444 and YCC420 pixel formats
>>  - CEC
>>  - EDID configuration
>>
>> The hardware also has Audio and HDCP capabilities, but these are
>> not yet supported by the driver.
>>
>> Co-developed-by: Dingxian Wen <shawn.wen@rock-chips.com>
>> Signed-off-by: Dingxian Wen <shawn.wen@rock-chips.com>
>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>  drivers/media/platform/Kconfig                |    1 +
>>  drivers/media/platform/Makefile               |    1 +
>>  drivers/media/platform/synopsys/Kconfig       |    3 +
>>  drivers/media/platform/synopsys/Makefile      |    2 +
>>  .../media/platform/synopsys/hdmirx/Kconfig    |   27 +
>>  .../media/platform/synopsys/hdmirx/Makefile   |    4 +
>>  .../platform/synopsys/hdmirx/snps_hdmirx.c    | 2715 +++++++++++++++++
>>  .../platform/synopsys/hdmirx/snps_hdmirx.h    |  394 +++
>>  .../synopsys/hdmirx/snps_hdmirx_cec.c         |  284 ++
>>  .../synopsys/hdmirx/snps_hdmirx_cec.h         |   44 +
>>  10 files changed, 3475 insertions(+)
>>  create mode 100644 drivers/media/platform/synopsys/Kconfig
>>  create mode 100644 drivers/media/platform/synopsys/Makefile
>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Kconfig
>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/Makefile
>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.c
>>  create mode 100644 drivers/media/platform/synopsys/hdmirx/snps_hdmirx_cec.h
>>
> 
> <snip>
> 
>> +static ssize_t
>> +hdmirx_debugfs_if_read(u32 type, void *priv, struct file *filp,
>> +		       char __user *ubuf, size_t count, loff_t *ppos)
>> +{
>> +	struct snps_hdmirx_dev *hdmirx_dev = priv;
>> +	u8 aviif[3 + 7 * 4];
>> +	int len;
>> +
>> +	if (type != V4L2_DEBUGFS_IF_AVI)
>> +		return 0;
>> +
>> +	hdmirx_read_avi_infoframe(hdmirx_dev, aviif);
>> +
>> +	len = simple_read_from_buffer(ubuf, count, ppos,
>> +				      aviif, ARRAY_SIZE(aviif));
>> +
>> +	return len < 0 ? 0 : len;
>> +}
> 
> Have you tested this with 'edid-decode -c -I /path/to/avi'? Also test that it is
> empty if there is no AVI InfoFrame (e.g. when there is no incoming video). I don't see
> a test for that in the code.
> 
> I also see no sanity check regarding the length of the InfoFrame, it just outputs
> the full array, meaning you get padding as well since the AVI InfoFrame is smaller
> than ARRAY_SIZE(aviif). In fact, edid-decode will fail about that if the -c option
> is used.
> 
> See tc358743_debugfs_if_read of how this is typically handled.

I've tested with 'edid-decode -I /path/to/avi', including the empty AVI
InfoFrame. But without the '-c option'. I'd expect that debugfs should
provide a full-sized raw InfoFrame data, rather than a parsed version.
The parsed data isn't much useful for debugging purposes, IMO. I
intentionally removed the size check that tc358743_debugfs_if_read does
because it appeared wrong to me. Will re-check with '-c option', thanks!

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
