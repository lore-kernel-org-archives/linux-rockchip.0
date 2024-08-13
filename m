Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22807C52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 20:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRu+SY6+aMrgfsAB4EKTO0FtWDf8HV49BZ1zJd0W0Qc=; b=l3+/9yhzUJFb1q
	06KOYhThH/fbMHI84toO9JVi5vuxE0TnisScfnB19KhhXvpgPhp4BBIuiFKp8n2WwqLsaQvqSY89U
	uY7z8zrwdL9QBQfEizpZ0+U7yfGmS05QwqCWBDVgi59EBG+Aw++IJIJwlgglneDx9jSkdV01/cemS
	MoldAvpM6Gzm1LpmPBcBQpEj7lptrDiQ1OdDG9ptSdiJA/z6EwkcyMkd2zZY9nAjbWChZJpAesk4I
	1QYN8Q5XUO4xzaSvaIi6r/2JdeM1/U87P+gHnB1le9avop9dLSCAH86nvtwB0p3KmHCgAafcUtuNB
	bGNcRRJnpjS64Q7ukZ1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdyJo-00000004uLk-21WO;
	Tue, 13 Aug 2024 20:40:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdyJA-00000004uGS-1XxP;
	Tue, 13 Aug 2024 20:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Aw6HPgNtHSv0JTB+x3MRxV4/A5VVag4qDtzrfXOgR6I=; b=udpQwN67fMWJlzBb8qfEZ7owIT
	m/27YJnrE61lK6m3Tvx0n6bpoZevRu67V9NYpUR2R4wvgYCBd7nlMTLftJLEHS+5jKk2D+vqYoSoB
	sZ8hcH5nydNAw2JhMOAel5bZcsZBnR06qDOMMUkyQFppKam8rIzek6N6qcgRSdSJVEulCRoZzVIBV
	Ic78h9QGlfkadTfYXVv/yMqhKojtEBUuDaiMeolt1ipabsWJLzFGuhm1PFCulLy93w4IORh4lb/Aw
	7+732fzymxsrcNauSKX11udR8K/XbynjMfpjcf7ZL5oNSB4llBoGSqBnSzw/OkpY/7t9au54p8vb2
	f3ejNk3A==;
Received: from i53875b02.versanet.de ([83.135.91.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sdyIu-0004Fs-Ho; Tue, 13 Aug 2024 22:39:40 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: lee@kernel.org, jdelvare@suse.com, dmitry.torokhov@gmail.com,
 pavel@ucw.cz, Guenter Roeck <linux@roeck-us.net>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v4 5/7] hwmon: add driver for the hwmon parts of qnap-mcu devices
Date: Tue, 13 Aug 2024 22:39:38 +0200
Message-ID: <7628765.mr9Zh2SJbS@diego>
In-Reply-To: <fd1db8a4-9ea5-49b2-9316-65bf3753a7fa@roeck-us.net>
References: <20240810184743.277248-1-heiko@sntech.de>
 <20240810184743.277248-6-heiko@sntech.de>
 <fd1db8a4-9ea5-49b2-9316-65bf3753a7fa@roeck-us.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_133956_481337_3A2DADC1 
X-CRM114-Status: GOOD (  29.96  )
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

Hi Guenter,

Am Dienstag, 13. August 2024, 18:03:57 CEST schrieb Guenter Roeck:
> On 8/10/24 11:47, Heiko Stuebner wrote:

> > +static int qnap_mcu_hwmon_set_pwm(struct qnap_mcu_hwmon *hwm, u8 pwm)
> > +{
> > +	const u8 cmd[] = {
> > +		[0] = 0x40, /* @ */
> > +		[1] = 0x46, /* F */
> > +		[2] = 0x57, /* W */
> > +		[3] = 0x30, /* 0 ... fan-id? */
> > +		[4] = pwm
> > +	};
> > +
> > +	/* set the fan pwm */
> > +	return qnap_mcu_exec_with_ack(hwm->mcu, cmd, sizeof(cmd));
> > +}

> > +static int qnap_mcu_hwmon_get_cooling_data(struct device *dev, struct qnap_mcu_hwmon *hwm)
> > +{
> > +	struct fwnode_handle *fwnode;
> > +	int num, i, ret;
> > +
> > +	fwnode = device_get_named_child_node(dev->parent, "fan-0");
> 
> Is the dummy "-0" index mandated somewhere ?

I don't think it is. The node should just begin with "fan" I think.

I've added the -0 because from everything I've seen of the qnap software-
side, the mcu firmware can address multiple fans.

In the original firmware, everything is done in userspace wrt. the MCU,
and the fan commands in their abstraction layer allow for multiple fans.

Also there is that suspicious "0" in the command sequence when
getting/setting the fan pwm. And in the original device config this is
labeled as the first fan.

From everything I've seen, the MCU is not limited to the Rockchip-line
of devices and I do hope others will find this useful in the future,
so adding the "-0" was a better safe than sorry choice.

Because that way adding that theoretical 2nd fan in the future won't
cause too much trouble in the dt-binding.


> I don't care either way, it just seems odd. Either case,
> 
> Acked-by: Guenter Roeck <linux@roeck-us.net>
> 
> > +	if (!fwnode)
> > +		return 0;
> > +
> > +	/* if we found the fan-node, we're keeping it until device-unbind */
> > +	hwm->fan_node = fwnode;
> > +	ret = devm_add_action_or_reset(dev, devm_fan_node_release, hwm);
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (!fwnode_property_present(fwnode, "cooling-levels"))
> > +		return 0;
> > +
> 
> Side note: One could argue that a sub-node with no content does not really
> make sense and should be invalid.

I remember thinking about that, but didn't come to a real decision on my
own, hence left it as it was. So will follow your suggestion :-)


> > +	ret = fwnode_property_count_u32(fwnode, "cooling-levels");
> > +	if (ret <= 0) {
> > +		dev_err(dev, "Failed to count elements in 'cooling-levels'\n");
> > +		return ret ? : -EINVAL;
> > +	}
> > +
> > +	num = ret;
> 
> Another side note: Using ret here isn't necessary. I'd just have used
> 'num' directly.

will do

> 
> > +	hwm->fan_cooling_levels = devm_kcalloc(dev, num, sizeof(u32),
> > +					       GFP_KERNEL);
> > +	if (!hwm->fan_cooling_levels)
> > +		return -ENOMEM;
> > +
> > +	ret = fwnode_property_read_u32_array(fwnode, "cooling-levels",
> > +					     hwm->fan_cooling_levels, num);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to read 'cooling-levels'\n");
> > +		return ret;
> > +	}
> > +
> > +	for (i = 0; i < num; i++) {
> > +		if (hwm->fan_cooling_levels[i] > hwm->pwm_max) {
> > +			dev_err(dev, "fan state[%d]:%d > %d\n", i,
> > +				hwm->fan_cooling_levels[i], hwm->pwm_max);
> > +			return -EINVAL;
> 
> In case you send another version, you might want to consider using dev_err_probe().

ok will do.

I was probably way overthinking if I should not use dev_err_probe in a
function that is not a probe function (though of course part of the probe
process).


Thanks a lot for looking over the code once again
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
