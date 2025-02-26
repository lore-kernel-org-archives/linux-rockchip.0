Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B3E3C021B8
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 09:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97cb/GrQQ41lyb3u0jirqXZoykZJQ1oWUHbsf4pTlD8=; b=WS46z2cII6BU65
	9dDeCTKX5GM2h3b3VpYXvW6M7+B7t+jrWRAR3MSiHupZfU2H3plhDCXoPM4e9QAeutoSjADlKZEH+
	KGqFSM9PF/rkvCEzp0POB+bEhW2Uq7atKHCBGQ+rQN7HhxVG1DKa3YGeZgwMwcvQ3jVfhpxY+HY+f
	2q8dI6VRX+cC3Si44tKJbChsdi+ZKNPps1b/Xmufa77AZc2/oHc/niVx+/br1OO0nTFHgIv3ILtWb
	bapcZWh+ZxxbRREgl9rAjrZntWrGzs5QdS7ElFfga6/lP4yR7PhKxUFUZbwL0bBjFdQZGSbFpG95c
	CCeAiIVoz5idOop8z6gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDgB-000000035YY-0Y3s;
	Wed, 26 Feb 2025 09:26:11 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDeo-000000035JI-3YEO
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 09:24:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740561875; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SKsCSGL9x8CSYxgxmG1GppeR9EuiHm1uaNCy97VAS2cRpg7zpVqCafaexEklZMTnWkBN+lgApQfewJBaLkJ9Ojf5DQcdjvTmFkV9VuQItOZImruICada8y3uESFPp/+/Hx2unLyTUgGFo628Y77TO+hrV51eCEAgQy0fyTt/np8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740561875; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ERJZihbDHoNUGZrF+m03YExRY3rYkWVkBHV4qVjg41w=; 
	b=blnL47vJpWAi9i8DyYKodzwfj57AL890jTEROaaozltW4YsaOTV398tItEBtAvGsUlGZwih7oqAWxG/zc7Ps6pcF4DUJjx2NrUoyNvd3CgvFd2vyUWaJYlldy4eXj7D7Nn0hjj48qYmQQSd+AG6gCFyAxdzhDMwS9DjtH2zjdto=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740561875;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ERJZihbDHoNUGZrF+m03YExRY3rYkWVkBHV4qVjg41w=;
	b=EmrMlq3K/xTXHOBxduKmtr1jCm/uF0tAW7Gx1mC+HgUbF3ZHqWNV4Xzh/rm7bnra
	QEpmkViK//0NlyUEi38b4j3u10S3nHfXRMAxrsjtYeh9Inrk9zM8r6jYLuWxO1qzLXH
	m0cCPpBYe2WtaqyXxbMfEGczCmtEYtYufD644Jt4=
Received: by mx.zohomail.com with SMTPS id 1740561873228674.1763866303972;
	Wed, 26 Feb 2025 01:24:33 -0800 (PST)
Message-ID: <cf4c855b-6b1f-4a91-b292-5635ee4f7d2e@collabora.com>
Date: Wed, 26 Feb 2025 12:24:22 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/6] media: platform: synopsys: Add support for HDMI
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
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-4-dmitry.osipenko@collabora.com>
 <4236518a-6ed6-4e01-9bf2-d41f0a194c26@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <4236518a-6ed6-4e01-9bf2-d41f0a194c26@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_012446_953071_BCD9BFC1 
X-CRM114-Status: GOOD (  14.83  )
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

On 2/26/25 11:47, Hans Verkuil wrote:
...
>> +static int hdmirx_register_cec(struct snps_hdmirx_dev *hdmirx_dev,
>> +			       struct platform_device *pdev)
>> +{
>> +	struct device *dev = hdmirx_dev->dev;
>> +	struct hdmirx_cec_data cec_data;
>> +	int irq;
>> +
>> +	irq = platform_get_irq_byname(pdev, "cec");
>> +	if (irq < 0) {
>> +		dev_err_probe(dev, irq, "failed to get cec irq\n");
>> +		return irq;
>> +	}
>> +
>> +	hdmirx_dev->cec_notifier = cec_notifier_conn_register(dev, NULL, NULL);
> 
> I never really paid attention to this, but you don't need to use the cec-notifier
> API. The notifier API is needed if an independent CEC device has to be associated
> with an independent HDMI interface, and needs to be notified whenever the
> physical address changes.
> 
> This is a single IP combining both HDMI and CEC, so the HDMI part calls
> cec_s_phys_addr_from_edid()/cec_phys_addr_invalidate() directly whenever the EDID
> changes.
> 
> So just drop the include of cec-notifier.h and anything related to this.

Ack

...
>> +	hdmirx_dev->infoframes = v4l2_debugfs_if_alloc(hdmirx_dev->debugfs_dir,
>> +						       V4L2_DEBUGFS_IF_AVI, hdmirx_dev,
>> +						       hdmirx_debugfs_if_read);
>> +
>> +	return 0;
>> +
>> +err_unreg_video_dev:
>> +	video_unregister_device(&hdmirx_dev->stream.vdev);
> 
> Replace this with vb2_video_unregister_device(). Sorry, I missed this in my previous reviews.
> 
>> +err_unreg_v4l2_dev:
>> +	v4l2_device_unregister(&hdmirx_dev->v4l2_dev);
>> +err_hdl:
>> +	v4l2_ctrl_handler_free(&hdmirx_dev->hdl);
>> +err_pm:
>> +	hdmirx_disable(dev);
>> +
>> +	return ret;
>> +}
>> +
>> +static void hdmirx_remove(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
>> +
>> +	v4l2_debugfs_if_free(hdmirx_dev->infoframes);
>> +	debugfs_remove_recursive(hdmirx_dev->debugfs_dir);
>> +
>> +	snps_hdmirx_cec_unregister(hdmirx_dev->cec);
>> +	cec_notifier_conn_unregister(hdmirx_dev->cec_notifier);
>> +
>> +	hdmirx_disable_irq(dev);
>> +
>> +	video_unregister_device(&hdmirx_dev->stream.vdev);
> 
> vb2_video_unregister_device().
> 
> This function ensures that, if streaming was in progress and the driver was forcibly
> removed, streaming is stopped gracefully and safely.

Ack

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
