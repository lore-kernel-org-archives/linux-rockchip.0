From: "David.Wu" <david.wu@rock-chips.com>
Subject: Re: [PATCH 4/8] clk: rockchip: Add Saradc clock support
	for rk3288
Date: Wed, 13 Sep 2017 19:01:29 +0800
Message-ID: <84dd68d6-40f8-50dd-1f4e-b916d0c569d5@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="----------=_59B9100D.5DECB558"
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: "Dr. Philipp Tomsich" <philipp.tomsich@theobroma-systems.com>
Cc: huangtao@rock-chips.com, u-boot@lists.denx.de, zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org, p.marczak@samsung.com, andy.yan@rock-chips.com, chenjh@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.

------------=_59B9100D.5DECB558
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Spam detection software, running on the system "lists.denx.de",
has identified this incoming email as possible spam.  The original
message has been attached to this so you can view it or label
similar future email.  If you have any questions, see
@@CONTACT_ADDRESS@@ for details.

Content preview:  Hi Dr.Philipp 在 2017/9/13 18:24, Dr. Philipp Tomsich 写道:
   > >> On 13 Sep 2017, at 12:09, David Wu <david.wu@rock-chips.com> wrote:
  >> > > Please add a commit message. > >> Signed-off-by: David Wu <david.wu@rock-chips.com>
   > > Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
  > > See above and below for requested changes. > >> --- >> drivers/clk/rockchip/clk_rk3288.c
   | 45 +++++++++++++++++++++++++++++++++++++++ >> 1 file changed, 45 insertions(+)
   >> >> diff --git a/drivers/clk/rockchip/clk_rk3288.c b/drivers/clk/rockchip/clk_rk3288.c
   >> index 478195b..29652b0 100644 >> --- a/drivers/clk/rockchip/clk_rk3288.c
   >> +++ b/drivers/clk/rockchip/clk_rk3288.c >> @@ -111,6 +111,15 @@ enum {
   >> PERI_ACLK_DIV_SHIFT = 0, >> PERI_ACLK_DIV_MASK = 0x1f << PERI_ACLK_DIV_SHIFT,
   >> >> + /* >> + * CLKSEL24 >> + * saradc_div_con: >> + * clk_saradc=24MHz/(saradc_div_con+1)
   >> + */ >> + CLK_SARADC_DIV_CON_SHIFT = 8, >> + CLK_SARADC_DIV_CON_MASK =
   0xff << CLK_SARADC_DIV_CON_SHIFT, >> + CLK_SARADC_DIV_CON_WIDTH = 8, >> +
   >> SOCSTS_DPLL_LOCK = 1 << 5, >> SOCSTS_APLL_LOCK = 1 << 6, >> SOCSTS_CPLL_LOCK
   = 1 << 7, >> @@ -131,6 +140,11 @@ static const struct pll_div apll_init_cfg
   = PLL_DIVISORS(APLL_HZ, 1, 1); >> static const struct pll_div gpll_init_cfg
   = PLL_DIVISORS(GPLL_HZ, 2, 2); >> static const struct pll_div cpll_init_cfg
   = PLL_DIVISORS(CPLL_HZ, 1, 2); >> >> +static inline u32 extract_bits(u32
  val, unsigned width, unsigned shift) >> +{ >> + return (val >> shift) & ((1
   << width) - 1); >> +} > > Please reuse what’s already available in include/bitfield.h.
   > This also applies to all call-sites for extract_bits below: they should
   directly use the already existing function. [...] 

Content analysis details:   (5.6 points, 5.0 required)

 pts rule name              description
---- ---------------------- --------------------------------------------------
 0.6 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
                            [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 KHOP_BIG_TO_CC         Sent to 10+ recipients instaed of Bcc or a list
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
                            [211.157.147.132 listed in zen.spamhaus.org]
 2.4 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
                            [211.157.147.132 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted



------------=_59B9100D.5DECB558
Content-Type: message/rfc822; x-spam-type=original
Content-Description: original message before SpamAssassin
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.132])
	by lists.denx.de (Postfix) with ESMTPS id 89285C21DAE
	for <u-boot@lists.denx.de>; Wed, 13 Sep 2017 11:01:32 +0000 (UTC)
Received: from david.wu?rock-chips.com (unknown [192.168.167.160])
	by lucky1.263xmail.com (Postfix) with ESMTP id 06EEB64976;
	Wed, 13 Sep 2017 19:01:28 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from [172.16.12.113] (localhost [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTPA id AF00B375;
	Wed, 13 Sep 2017 19:01:26 +0800 (CST)
X-RL-SENDER: david.wu@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 58.22.7.114
X-LOGIN-NAME: david.wu@rock-chips.com
X-UNIQUE-TAG: <583f0b805cfa609394ec5face15a9bf0>
X-ATTACHMENT-NUM: 0
X-SENDER: wdc@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.16.12.113] (unknown [58.22.7.114])
	by smtp.263.net (Postfix) whith ESMTP id 1996R7T56R;
	Wed, 13 Sep 2017 19:01:28 +0800 (CST)
Subject: Re: [PATCH 4/8] clk: rockchip: Add Saradc clock support for rk3288
To: "Dr. Philipp Tomsich" <philipp.tomsich@theobroma-systems.com>
Cc: sjg@chromium.org, p.marczak@samsung.com, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, andy.yan@rock-chips.com, chenjh@rock-chips.com,
 heiko@sntech.de, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org, u-boot@lists.denx.de
References: <1505297379-12638-1-git-send-email-david.wu@rock-chips.com>
 <1505297379-12638-5-git-send-email-david.wu@rock-chips.com>
 <806B0139-A811-47EE-A217-FFB05F9C2042@theobroma-systems.com>
From: "David.Wu" <david.wu@rock-chips.com>
Message-ID: <84dd68d6-40f8-50dd-1f4e-b916d0c569d5@rock-chips.com>
Date: Wed, 13 Sep 2017 19:01:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <806B0139-A811-47EE-A217-FFB05F9C2042@theobroma-systems.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Dr.Philipp

在 2017/9/13 18:24, Dr. Philipp Tomsich 写道:
> 
>> On 13 Sep 2017, at 12:09, David Wu <david.wu@rock-chips.com> wrote:
>>
> 
> Please add a commit message.
> 
>> Signed-off-by: David Wu <david.wu@rock-chips.com>
> 
> Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
> 
> See above and below for requested changes.
> 
>> ---
>> drivers/clk/rockchip/clk_rk3288.c | 45 +++++++++++++++++++++++++++++++++++++++
>> 1 file changed, 45 insertions(+)
>>
>> diff --git a/drivers/clk/rockchip/clk_rk3288.c b/drivers/clk/rockchip/clk_rk3288.c
>> index 478195b..29652b0 100644
>> --- a/drivers/clk/rockchip/clk_rk3288.c
>> +++ b/drivers/clk/rockchip/clk_rk3288.c
>> @@ -111,6 +111,15 @@ enum {
>> 	PERI_ACLK_DIV_SHIFT	= 0,
>> 	PERI_ACLK_DIV_MASK	= 0x1f << PERI_ACLK_DIV_SHIFT,
>>
>> +	/*
>> +	 * CLKSEL24
>> +	 * saradc_div_con:
>> +	 * clk_saradc=24MHz/(saradc_div_con+1)
>> +	 */
>> +	CLK_SARADC_DIV_CON_SHIFT	= 8,
>> +	CLK_SARADC_DIV_CON_MASK		= 0xff << CLK_SARADC_DIV_CON_SHIFT,
>> +	CLK_SARADC_DIV_CON_WIDTH	= 8,
>> +
>> 	SOCSTS_DPLL_LOCK	= 1 << 5,
>> 	SOCSTS_APLL_LOCK	= 1 << 6,
>> 	SOCSTS_CPLL_LOCK	= 1 << 7,
>> @@ -131,6 +140,11 @@ static const struct pll_div apll_init_cfg = PLL_DIVISORS(APLL_HZ, 1, 1);
>> static const struct pll_div gpll_init_cfg = PLL_DIVISORS(GPLL_HZ, 2, 2);
>> static const struct pll_div cpll_init_cfg = PLL_DIVISORS(CPLL_HZ, 1, 2);
>>
>> +static inline u32 extract_bits(u32 val, unsigned width, unsigned shift)
>> +{
>> +	return (val >> shift) & ((1 << width) - 1);
>> +}
> 
> Please reuse what’s already available in include/bitfield.h.
> This also applies to all call-sites for extract_bits below: they should directly use the already existing function.

Okay, i will use the bitfield_extract（) instead of it.

> 
>> +
>> static int rkclk_set_pll(struct rk3288_cru *cru, enum rk_clk_id clk_id,
>> 			 const struct pll_div *div)
>> {
>> @@ -634,6 +648,31 @@ static ulong rockchip_spi_set_clk(struct rk3288_cru *cru, uint gclk_rate,
>> 	return rockchip_spi_get_clk(cru, gclk_rate, periph);
>> }
>>
>> +static ulong rockchip_saradc_get_clk(struct rk3288_cru *cru)
>> +{
>> +	u32 div, val;
>> +
>> +	val = readl(&cru->cru_clksel_con[24]);
>> +	div = extract_bits(val, CLK_SARADC_DIV_CON_WIDTH,
>> +			   CLK_SARADC_DIV_CON_SHIFT);
>> +
>> +	return DIV_TO_RATE(OSC_HZ, div);
>> +}
>> +
>> +static ulong rockchip_saradc_set_clk(struct rk3288_cru *cru, uint hz)
>> +{
>> +	int src_clk_div;
>> +
>> +	src_clk_div = DIV_ROUND_UP(OSC_HZ, hz) - 1;
>> +	assert(src_clk_div < 128);
>> +
>> +	rk_clrsetreg(&cru->cru_clksel_con[24],
>> +		     CLK_SARADC_DIV_CON_MASK,
>> +		     src_clk_div << CLK_SARADC_DIV_CON_SHIFT);
>> +
>> +	return rockchip_saradc_get_clk(cru);
>> +}
>> +
>> static ulong rk3288_clk_get_rate(struct clk *clk)
>> {
>> 	struct rk3288_clk_priv *priv = dev_get_priv(clk->dev);
>> @@ -666,6 +705,9 @@ static ulong rk3288_clk_get_rate(struct clk *clk)
>> 		return gclk_rate;
>> 	case PCLK_PWM:
>> 		return PD_BUS_PCLK_HZ;
>> +	case SCLK_SARADC:
>> +		new_rate = rockchip_saradc_get_clk(priv->cru);
>> +		break;
>> 	default:
>> 		return -ENOENT;
>> 	}
>> @@ -756,6 +798,9 @@ static ulong rk3288_clk_set_rate(struct clk *clk, ulong rate)
>> 		new_rate = rate;
>> 		break;
>> #endif
>> +	case SCLK_SARADC:
>> +		new_rate = rockchip_saradc_set_clk(priv->cru, rate);
>> +		break;
>> 	default:
>> 		return -ENOENT;
>> 	}
>> -- 
>> 2.7.4
>>
>>
> 
> 
> 
> 


------------=_59B9100D.5DECB558
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

------------=_59B9100D.5DECB558--
