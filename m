From: Chris Zhong <zyw@rock-chips.com>
Subject: Re: [v1,4/4] drm/rockchip: cdn-dp: add cdn DP support for rk3399
Date: Mon, 13 Jun 2016 17:45:18 +0800
Message-ID: <575E80AE.2050809@rock-chips.com>
References: <1464966911-18949-5-git-send-email-zyw@rock-chips.com>
 <20160608221354.GA25675@roeck-us.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160608221354.GA25675@roeck-us.net>
Sender: linux-kernel-owner@vger.kernel.org
To: Guenter Roeck <linux@roeck-us.net>
Cc: dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, linux-rockchip@lists.infradead.org, Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Guenter

Thanks for your comments

On 06/09/2016 06:13 AM, Guenter Roeck wrote:
>> +	if (ret < 0) {
>> >+		dev_err(dp->dev, "failed to request firmware %d\n", ret);
>> >+		return ret;
>> >+	}
>> >+
>> >+	hdr = (struct cdn_firmware_header *)fw->data;
>> >+	if (fw->size != le32_to_cpu(hdr->size_bytes))
>> >+		return -EINVAL;
>> >+
>> >+	ret = cdn_dp_clk_enable(dp);
>> >+	if (ret < 0) {
>> >+		dev_err(dp->dev, "cannot enable dp clk %d\n", ret);
>> >+		return ret;
>> >+	}
>> >+
>> >+	dp_clock_reset_seq(dp);
>> >+
>> >+	iram_data = (const u32 *)(fw->data + hdr->header_size);
>> >+	dram_data = (const u32 *)(fw->data + hdr->header_size + hdr->iram_size);
> No need for endianness conversion here ?
>
The firmware does need for endianness conversio.
And for the other comments, I have done them, v2 has been posted.
