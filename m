Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C16CDCE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bg+gZVCYE7NRoSSLPRG5NXWS/euplXCkj1DYRQZGKWA=; b=jISeywNjUkHxCe
	BYSD2JHR5nagCZ9RUJDXRElwQ3ZxqGao1Cq7UTcQFcTETNSI9yc4rqbnGKN2iaaPRZ6uFYJWeuPwe
	/bQkK9dZsGwOoFVRLWH1/roMgHl2iyyyHDqCN6Eo8Ph2RY/rXZmoqlVC78BjXe04gQyxNQ9HSUMp+
	8So50AmjAWfQECFh4YjJGp9O9A4Wt832BmE6P+IrNbp36IfAlSWz1WrVN9EDvhm0zqfouASg8llFl
	4JyRh/Wo43OBWoLR2e9LrAUWUDJ+EfhfwO3In5PPCzasrqn6/3q9QKo9UGsAyzUKHLnuCPfa5XK3G
	HzQFsJeSMIqbBliNFLjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVml-0000000Bf1F-3c9e;
	Fri, 06 Sep 2024 10:01:47 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVVb-0000000BZxW-2yih;
	Fri, 06 Sep 2024 09:44:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 35BB6A40DA4;
	Fri,  6 Sep 2024 09:43:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C478EC4CEC4;
	Fri,  6 Sep 2024 09:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725615842;
	bh=ctoIqVk59onNiwJscBSD56mdXhYR1v1Zr4NXCymePbw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=rio4yLoSYG5EyDfNOFnxyZxPCWxLhb1jx4wCWpw93o2hoeOKbBOwI4Jac2Vv9lGMl
	 kahY22CU9OTKEunPG+UPfkrVX3bh/9DJgHY5Zc/GHO/fTKiokoHhDL2t0unXGGLb7p
	 H/+6e4nOQ7Ai+odbaQrqkFJc7vIR8Ds5ws3M1R/N2qwa3XinxPK43OtTonk6YCuN5G
	 osxuBYCDnQzG6yfYLocXOD/HETf0wvKOV8A7RNWpPKb46MXYYzQPAOdeDTFCxsZoW9
	 lT41zdk924orpJTeIbFk9gwRnskpzOp7K3xZzsi66yO5Ur+IdyJh3iJsVU8BkJVGr+
	 XEvHuoE791ueQ==
Message-ID: <e4ee504b-98a8-4b35-9e1a-195395cdacf8@kernel.org>
Date: Fri, 6 Sep 2024 11:43:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] mfd: Add driver for Photonicat power management MCU
To: Junhao Xie <bigfoot@classfun.cn>, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240906093630.2428329-2-bigfoot@classfun.cn>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240906093630.2428329-2-bigfoot@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_024403_919181_3673110C 
X-CRM114-Status: GOOD (  25.18  )
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

On 06/09/2024 11:36, Junhao Xie wrote:
> Add a driver for Photonicat power management MCU, which
> provides battery and charger power supply, real-time clock,
> watchdog, hardware shutdown.
> 
> This driver implementes core MFD/serdev device as well as
> communication subroutines necessary for commanding the device.
> 
> Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
> ---
>  drivers/mfd/Kconfig                |  13 +
>  drivers/mfd/Makefile               |   1 +
>  drivers/mfd/photonicat-pmu.c       | 501 +++++++++++++++++++++++++++++
>  include/linux/mfd/photonicat-pmu.h |  86 +++++
>  4 files changed, 601 insertions(+)
>  create mode 100644 drivers/mfd/photonicat-pmu.c
>  create mode 100644 include/linux/mfd/photonicat-pmu.h

...

> +void *pcat_data_get_data(struct pcat_data *data)
> +{
> +	if (!data)
> +		return NULL;
> +	return data->data;
> +}
> +EXPORT_SYMBOL_GPL(pcat_data_get_data);

You need kerneldoc... or just drop it. Looks a bit useless as an
export... Is it because you want to hide from your own driver pcat_data?
What for? It's your driver...

> +
> +int pcat_pmu_send(struct pcat_pmu *pmu, enum pcat_pmu_cmd cmd,
> +		  const void *data, size_t len)
> +{
> +	u16 frame_id = atomic_inc_return(&pmu->frame);
> +
> +	return pcat_pmu_raw_write(pmu, frame_id, cmd, false, data, len);
> +}
> +EXPORT_SYMBOL_GPL(pcat_pmu_send);
> +
> +int pcat_pmu_execute(struct pcat_request *request)
> +{
> +	int ret = 0, retries = 0;
> +	unsigned long flags;
> +	struct pcat_pmu *pmu = request->pmu;
> +	struct pcat_request_request *req = &request->request;
> +	struct pcat_request_reply *reply = &request->reply;
> +
> +	init_completion(&request->received);
> +	memset(reply, 0, sizeof(request->reply));
> +
> +	mutex_lock(&pmu->reply_lock);
> +	if (request->frame_id == 0)
> +		request->frame_id = atomic_inc_return(&pmu->frame);
> +	pmu->reply = request;
> +	mutex_unlock(&pmu->reply_lock);
> +
> +	if (req->want == 0)
> +		req->want = req->cmd + 1;
> +
> +	dev_dbg(pmu->dev, "frame 0x%04X execute cmd 0x%02X\n",
> +		request->frame_id, req->cmd);
> +
> +	while (1) {
> +		spin_lock_irqsave(&pmu->bus_lock, flags);
> +		ret = pcat_pmu_raw_write(pmu, request->frame_id, req->cmd,
> +					 true, req->data, req->size);
> +		spin_unlock_irqrestore(&pmu->bus_lock, flags);
> +		if (ret < 0) {
> +			dev_err(pmu->dev,
> +				"frame 0x%04X write 0x%02X cmd failed: %d\n",
> +				request->frame_id, req->cmd, ret);
> +			goto fail;
> +		}
> +		dev_dbg(pmu->dev, "frame 0x%04X waiting response for 0x%02X\n",
> +			request->frame_id, req->cmd);
> +		if (!wait_for_completion_timeout(&request->received, HZ)) {
> +			if (retries < 3) {
> +				retries++;
> +				continue;
> +			} else {
> +				dev_warn(pmu->dev,
> +					 "frame 0x%04X cmd 0x%02X timeout\n",
> +					 request->frame_id, req->cmd);
> +				ret = -ETIMEDOUT;
> +				goto fail;
> +			}
> +		}
> +		break;
> +	}
> +	dev_dbg(pmu->dev, "frame 0x%04X got response 0x%02X\n",
> +		request->frame_id, reply->head.command);
> +
> +	return 0;
> +fail:
> +	mutex_lock(&pmu->reply_lock);
> +	pmu->reply = NULL;
> +	mutex_unlock(&pmu->reply_lock);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(pcat_pmu_execute);

You need kerneldoc.

> +
> +int pcat_pmu_write_data(struct pcat_pmu *pmu, enum pcat_pmu_cmd cmd,
> +			const void *data, size_t size)
> +{
> +	int ret;
> +	struct pcat_request request = {
> +		.pmu = pmu,
> +		.request.cmd = cmd,
> +		.request.data = data,
> +		.request.size = size,
> +	};
> +	ret = pcat_pmu_execute(&request);
> +	if (request.reply.data)
> +		devm_kfree(pmu->dev, request.reply.data);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(pcat_pmu_write_data);

You need kerneldoc.


> +
> +static const struct serdev_device_ops pcat_pmu_serdev_device_ops = {
> +	.receive_buf = pcat_pmu_receive_buf,
> +	.write_wakeup = serdev_device_write_wakeup,
> +};
> +
> +int pcat_pmu_register_notify(struct pcat_pmu *pmu, struct notifier_block *nb)

You need kerneldoc.

> +{
> +	return blocking_notifier_chain_register(&pmu->notifier_list, nb);
> +}
> +EXPORT_SYMBOL_GPL(pcat_pmu_register_notify);
> +
> +void pcat_pmu_unregister_notify(struct pcat_pmu *pmu, struct notifier_block *nb)

You need kerneldoc.


> +{
> +	blocking_notifier_chain_unregister(&pmu->notifier_list, nb);
> +}
> +EXPORT_SYMBOL_GPL(pcat_pmu_unregister_notify);
> +
> +static int pcat_pmu_probe(struct serdev_device *serdev)
> +{
> +	int ret;
> +	u32 baudrate;
> +	u32 address;
> +	char buffer[64];
> +	struct pcat_pmu *pmu = NULL;
> +	struct device *dev = &serdev->dev;
> +
> +	pmu = devm_kzalloc(dev, sizeof(struct pcat_pmu), GFP_KERNEL);

sizeof(*)

> +	if (!pmu)
> +		return -ENOMEM;

Blank line

> +	pmu->dev = dev;
> +	pmu->serdev = serdev;
> +	spin_lock_init(&pmu->bus_lock);
> +	mutex_init(&pmu->reply_lock);
> +	init_completion(&pmu->first_status);
> +
> +	if (of_property_read_u32(dev->of_node, "current-speed", &baudrate))
> +		baudrate = 115200;
> +
> +	if (of_property_read_u32(dev->of_node, "local-address", &address))
> +		address = 1;
> +	pmu->local_id = address;
> +
> +	if (of_property_read_u32(dev->of_node, "remote-address", &address))
> +		address = 1;
> +	pmu->remote_id = address;
> +
> +	serdev_device_set_client_ops(serdev, &pcat_pmu_serdev_device_ops);
> +	ret = devm_serdev_device_open(dev, serdev);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "Failed to open serdev\n");
> +
> +	serdev_device_set_baudrate(serdev, baudrate);
> +	serdev_device_set_flow_control(serdev, false);
> +	serdev_device_set_parity(serdev, SERDEV_PARITY_NONE);
> +	dev_set_drvdata(dev, pmu);
> +
> +	/* Disable watchdog on boot */
> +	pcat_pmu_write_data(pmu, PCAT_CMD_WATCHDOG_TIMEOUT_SET,
> +			    (u8[]){ 60, 60, 0 }, 3);
> +
> +	/* Read hardware version */
> +	pcat_pmu_read_string(pmu, PCAT_CMD_PMU_HW_VERSION_GET,
> +			     buffer, sizeof(buffer));
> +	if (buffer[0])
> +		dev_info(dev, "PMU Hardware version: %s\n", buffer);

dev_dbg

> +
> +	/* Read firmware version */
> +	pcat_pmu_read_string(pmu, PCAT_CMD_PMU_FW_VERSION_GET,
> +			     buffer, sizeof(buffer));
> +	if (buffer[0])
> +		dev_info(dev, "PMU Firmware version: %s\n", buffer);

dev_dbg. Your driver is supposed to be silent.

> +
> +	return devm_of_platform_populate(dev);
> +}
> +
> +static const struct of_device_id pcat_pmu_dt_ids[] = {
> +	{ .compatible = "ariaboard,photonicat-pmu", },

Undocumented compatible.

Remember about correct order of patches. ABI documentation is before users.


> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, pcat_pmu_dt_ids);
> +
> +static struct serdev_device_driver pcat_pmu_driver = {
> +	.driver = {
> +		.name = "photonicat-pmu",
> +		.of_match_table = pcat_pmu_dt_ids,
> +	},
> +	.probe = pcat_pmu_probe,
> +};
> +module_serdev_device_driver(pcat_pmu_driver);
> +
> +MODULE_ALIAS("platform:photonicat-pmu");

You should not need MODULE_ALIAS() in normal cases. If you need it,
usually it means your device ID table is wrong (e.g. misses either
entries or MODULE_DEVICE_TABLE()). MODULE_ALIAS() is not a substitute
for incomplete ID table.

And it is not even correct. This is not a platform driver!


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
